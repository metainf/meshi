#ifndef DATABASE_H
#define DATABASE_H

enum
{
    STEAK               = 0,
    VEGGIE_BURGER       = 1,
    FOOD_MAX            = 2 //Put all food before this
};

const std::string food_strings[] = 
{
    "STEAK",
    "VEGGIE_BURGER"
};

enum
{
    PROCESSING          = 0,
    PICKUP_RAW          = 1,
    COOKING_SIDE_1      = 2,
    FLIP_NEEDED         = 3,
    COOKING_SIDE_2      = 4,
    COOKING_COMPLETE    = 5,
    DELIVERY            = 6,
    COMPLETE            = 7,
    STATE_MAX           = 8  //Put all states before this
};

const std::string state_strings[] = 
{
    "PROCESSING",
    "PICKUP_RAW",
    "COOKING_SIDE_1",
    "FLIP_NEEDED",
    "COOKING_SIDE_2",
    "COOKING_COMPLETE",
    "DELIVERY",
    "COMPLETE"
};  

typedef struct
{
    std::string name;
    volatile uint32_t amount_remaining;
}ingredient_info;

typedef struct
{
    std::string name;
    uint32_t    food;
    uint32_t    status;
}person_info;

#endif  