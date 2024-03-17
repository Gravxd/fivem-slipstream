local SetEnableVehicleSlipstreaming = SetEnableVehicleSlipstreaming
local GetVehicleClass = GetVehicleClass
local GetEntityModel = GetEntityModel

CreateThread(function()
    if Config.Enabled then
        lib.onCache('vehicle', function(value)
            if value then
                if Config.Vehicles.All then
                    SetEnableVehicleSlipstreaming(true)
                else
                    if Config.Vehicles.UseClasses then
                        return SetEnableVehicleSlipstreaming(Config.Vehicles.Classes[GetVehicleClass(value)])
                    end
                    if Config.Vehicles.UseModels then
                        return SetEnableVehicleSlipstreaming(Config.Vehicles.Models[GetEntityModel(value)])
                    end

                    SetEnableVehicleSlipstreaming(false)

                end 
            else
                SetEnableVehicleSlipstreaming(false)
            end
        end)
    end
end)