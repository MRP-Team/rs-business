Config = {}

-- DEBUG CONFIGS --
Config.Debug = true -- Client / Server Debug Prints
Config.DebugPoly = true -- Debug Polyzones

-- PROGRESSBAR CONFIGS --
Config.Times = { -- Time to make items (Set in seconds)
    Food = 30,
    Drinks = 20,
    WashHands = 5
}

-- MINIGAME CONFIG --
Config.Minigame = {
    Circles = 2,
    Time = 20
}

-- BUSINESS CONFIGS --
Config.Job = 'burgershot' -- Name of the job in 'qb-core > shared > jobs.lua'
Config.Business = {
    Name = 'Cholera Burger', -- Blip Name / Business Name
    AutoDuty = true, -- Players on/off duty auto changes when entering/leaving the polyzone

    -- Business Blip Info
    Blip = {
        coords = vector3(-1172.48, -876.67, 14.13),
        sprite = 106,
        color = 81,
        size = 0.5,
    },

    -- For on/off duty when enetering the business (Only used if AutoDuty = true)
    BusinessPoly = {
        Zones = {
            [1] = {
                minZ = 12,
                maxZ = 16,
                zone = {
                    vector2(-1175.1796875, -861.07727050782),
                    vector2(-1212.3972167968, -884.63653564454),
                    vector2(-1193.38, -915.57),
                    vector2(-1154.6486816406, -892.33306884766)
                }
            }
        }
    },
}

Config.Locations = {
    ['Registers'] = { -- Cash Register Locations
        [1] = {
            coords = vector3(-1193.64, -895.28, 14.0),
            heading = 118.21,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Register',
                icon = 'fas fa-dollar-sign',
                event = 'jim-payments:client:Charge', -- Use your own payments event
            }
        },
        [2] = {
            coords = vector3(-1194.92, -893.33, 14.0),
            heading = 119.5,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Register',
                icon = 'fas fa-dollar-sign',
                event = 'jim-payments:client:Charge', -- Use your own payments event
            }
        },
        [3] = {
            coords = vector3(-1196.23, -891.4, 14.0),
            heading = 116.68,
            width = 0.5,
            length = 0.5,
            info = {
                label = 'Register',
                icon = 'fas fa-dollar-sign',
                event = 'jim-payments:client:Charge', -- Use your own payments event
            }
        }
    },
    ['Duty'] = { -- On / Off Duty Locations
        [1] = {
            coords = vector3(-1193.94, -898.43, 14.5),
            heading = 205.33,
            width = 0.9,
            length = 0.5,
            info = {
                label = 'On / Off Duty',
                icon = 'fas fa-clock',
            }
        }
    },
    ['Stashes'] = { -- Stash Locations
        [1] = {
            coords = vector3(-1204.1, -889.87, 14.0),
            heading = 124.54,
            width = 1.0,
            length = 1.0,
            info = {
                label = 'Stash',
                icon = 'fas fa-box',
            }
        },
        [2] = {
            coords = vector3(-1205.48, -893.05, 14.0),
            heading = 301.79,
            width = 2.0,
            length = 0.8,
            info = {
                label = 'Stash',
                icon = 'fas fa-box',
            }
        }
    },
    ['Trays'] = { -- Locations for Trays (Give Food to Customers)
        [1] = {
            coords = vector3(-1194.00, -894.58, 14.0),
            heading = 124.99,
            width = 0.6,
            length = 1,
            info = {
                label = 'Tray',
                icon = 'fas fa-box',
            }
        }
    },
    ['Sink'] = { -- Sink Locations
        [1] = {
            coords = vector3(-1198.05, -903.16, 14.0),
            heading = 31.14,
            width = 1.6,
            length = 1.0,
            info = {
                label = 'Wash Hands',
                icon = 'fas fa-soap',
            }
        },
        [2] = {
            coords = vector3(-1196.77, -902.15, 14.0),
            heading = 34.28,
            width = 1.6,
            length = 1.0,
            info = {
                label = 'Wash Hands',
                icon = 'fas fa-soap',
            }
        },
    },
    ['Food'] = { -- Make Food Locations
        [1] = {
            coords = vector3(-1200.52, -900.94, 14.0),
            heading = 291.53,
            width = 1.6,
            length = 1,
            info = {
                label = 'Prepare a Sandwish',
                icon = 'fas fa-burger',
            }
        }
    },
    ['Drinks'] = { -- Make Drink Locations
        [1] = {
            coords = vector3(-1199.92, -894.89, 14.0),
            heading = 303.66,
            width = 0.8,
            length = 0.5,
            info = {
                label = 'Drinks',
                icon = 'fas fa-droplet',
            }
        }
    },
    ['Coffee'] = { -- Make Coffee Locations
        -- [1] = {
        --     coords = vector3(122.84, -1041.62, 29.28),
        --     heading = 251,
        --     width = 0.5,
        --     length = 1,
        --     info = {
        --         label = 'Coffee',
        --         icon = 'fas fa-mug-hot',
        --     }
        -- }
    },
    ['Alcohol'] = { -- Make Alcohol Locations
        -- [1] = {
        --     coords = vector3(0,0,0),
        --     heading = 0,
        --     width = 0,
        --     length = 0,
        --     info = {
        --         label = 'Alcohol',
        --         icon = 'fas fa-wine-glass',
        --     }
        -- }
    },
}

-- STASH CONFIG --
Config.Stashes = {
    MaxSlots = 10,
    MaxWeight = 200000
}

-- TRAY CONFIG --
Config.Trays = {
    MaxSlots = 10,
    MaxWeight = 10000
}

-- FOOD CONFIG --
Config.Food = {
    [1] = {
        Item = 'tosti', -- Oooh yeah, a grilled cheese
        CraftEmote = 'bbq', -- Emote used when making the item
        UseEmote = 'burger', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Hunger = 20, -- How much hunger it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 2,
            },
        }
    }
}

-- DRINKS CONFIG --
Config.Drinks = {
    [1] = {
        Item = 'water_bottle', -- Yeah, you make that water bottle...
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'water', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }
}

-- COFFEE CONFIG --
Config.Speed = {
    Multiplier = 1.1, -- How fast you run
    Length = math.random(20, 30) -- How long you run fast for (Set in seconds)
}
Config.Coffee = {
    [1] = {
        Item = 'coffee',
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'coffee', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }
}

-- ALCOHOL CONFIG --
Config.Drunk = {
    Liquor = { -- Values for liquor
        Min = 1, -- Slight Buzz
        Max = 3, -- Riggity-Wrecked, my guy
        Length = math.random(2, 3) -- How long you are drunk for, in minutes
    },
    Beer = { -- Values for beer
        Min = 1, -- Slight Buzz
        Max = 3, -- Riggity-Wrecked, my guy
        Length = math.random(2, 3) -- How long you are drunk for, in minutes
    }
}
Config.Alcohol = {
    [1] = {
        Item = 'vodka',
        CraftEmote = 'handshake', -- Emote used when making the item
        UseEmote = 'drink', -- Emote used when using the item
        UseTime = 5, -- How long you use the item for (set in seconds)
        Thirst = 2, -- How much thirst it refills
        Required = {
            [1] = {
                item = 'water_bottle',
                amount = 1,
            },
        }
    }
}
