local SetEnableVehicleSlipstreaming = SetEnableVehicleSlipstreaming
local GetVehicleClass = GetVehicleClass
local GetEntityModel = GetEntityModel

CreateThread(function()
    if Config.Enabled then
        lib.onCache('vehicle', function(value)
            if value then
                if Config.Vehicles.All then
                    SetEnableVehicleSlipstreaming(true)
                elseif Config.Vehicles.UseClasses then
                    SetEnableVehicleSlipstreaming(Config.Vehicles.Classes[GetVehicleClass(value)])
                elseif Config.Vehicles.UseModels then
                    SetEnableVehicleSlipstreaming(Config.Vehicles.Models[GetEntityModel(value)])
                else
                    SetEnableVehicleSlipstreaming(false)
                end 
            else
                SetEnableVehicleSlipstreaming(false)
            end
        end)
    end
end)
