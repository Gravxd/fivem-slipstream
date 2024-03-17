Config = {
    Enabled = true, -- If slipstreaming is even enabled
    Vehicles = {
        All = true, -- If all vehicles should be slipstreamed
        UseClasses = false, -- If classes should be used (you would need to be in a vehicle from a class here to slipstream)
        Classes = { -- If UseClasses is true, this is the list of classes that can slipstream
            [22] = true, -- Open Wheel - https://docs.fivem.net/natives/?_0x29439776AAA00A62
            [8] = false, -- Motorcycles
        },
        UseModels = false, -- If models should be used (you would need to be in a vehicle from a model here to slipstream)
        Models = { -- If UseModels is true, this is the list of models that can slipstream 
            [`adder`] = true, -- make sure models are enclosed in `` (for optimisation)
        },
    },
}