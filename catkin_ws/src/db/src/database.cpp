#include "ros/ros.h"
#include "robot_config/ingredient_status.h"
#include "robot_config/user_status.h"

#include "database.h"

static const uint32_t service_count = 10;
static ros::ServiceServer services[service_count];

static const uint32_t num_ingredients = 2;
ingredient_info ingredients[num_ingredients] = 
{
    {"STEAK", 0},
    {"VEGGIE_BURGER", 0}
};

std::vector<person_info> active_orders;

int32_t find_ingredient_index(std::string name)
{
    for (uint32_t i = 0; i < num_ingredients; i++)
    {
        if(ingredients[i].name.compare(name) == 0)
        {
            return i;
        }
    }
    return -1;
}

int32_t find_user_index(std::string name)
{
    for (uint32_t i = 0; i < active_orders.size(); i++)
    {
        if(active_orders[i].name.compare(name) == 0)
        {
            return i;
        }
    }
    return -1;
}

bool add_order(robot_config::user_status::Request& req,
               robot_config::user_status::Response& res)
{
    bool success = false;
    person_info user;
    user.name = req.name;
    user.status = PROCESSING;

    for (uint32_t i = 0; i < FOOD_MAX; i++)
    {
        if (food_strings[i].compare(req.food_request) == 0)
        {
            active_orders.push_back(user);

            res.current_state = user.status;
            res.readable_state = state_strings[user.status];
            success = true;
            break;
        }
    }
    return success;
}

bool get_order_status(robot_config::user_status::Request& req,
                      robot_config::user_status::Response& res)
{
    bool success = false;
    uint32_t index = find_user_index(req.name);

    if (index != -1)
    {
        res.current_state = active_orders[index].status;
        res.readable_state = state_strings[active_orders[index].status];
        success = true;
    }
    return success;
}

bool increment_order_status(robot_config::user_status::Request& req,
                            robot_config::user_status::Response& res)
{
    bool success = false;
    uint32_t index = find_user_index(req.name);

    if (index != -1)
    {
        active_orders[index].status++;
        res.current_state = active_orders[index].status;
        res.readable_state = state_strings[active_orders[index].status];
        success = true;

        if (active_orders[index].status == COMPLETE)
        {
            active_orders.erase(active_orders.begin() + index);
        }
    }
    return success;
}

bool decrement_request(robot_config::ingredient_status::Request& req,
                       robot_config::ingredient_status::Response& res)
{
    bool success = false;
    int32_t index = find_ingredient_index(req.name);

    if (index != -1)
    {
        ingredients[index].amount_remaining -= req.amount;
        res.amount_remaining = ingredients[index].amount_remaining;
        success = true;
    }
    return success;
}

bool write_request(robot_config::ingredient_status::Request& req,
                   robot_config::ingredient_status::Response& res)
{
    bool success = false;
    int32_t index = find_ingredient_index(req.name);

    if (index != -1)
    {   
        ingredients[index].amount_remaining = req.amount;
        res.amount_remaining = ingredients[index].amount_remaining;
        success = true;
    }
    return success;
    
}

bool read_request(robot_config::ingredient_status::Request& req,
                  robot_config::ingredient_status::Response& res)
{
    bool success = false;
    int32_t index = find_ingredient_index(req.name);

    if (index != -1)
    {
        res.amount_remaining = ingredients[index].amount_remaining;
        success = true;
    }
    return success;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "Ingredient_Database");
    ros::NodeHandle n_handle;

    services[0] = n_handle.advertiseService("read_from_db", read_request);
    services[1] = n_handle.advertiseService("write_to_db", write_request);
    services[2] = n_handle.advertiseService("decrement_in_db", decrement_request);

    services[3] = n_handle.advertiseService("add_order", add_order);
    services[4] = n_handle.advertiseService("get_order_status", get_order_status);
    services[5] = n_handle.advertiseService("increment_order_status", increment_order_status);

    ROS_INFO("Ingredient Database Active");
    ros::spin();

    return 0;
}