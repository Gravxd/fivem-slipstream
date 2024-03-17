local SetEnableVehicleSlipstreaming = SetEnableVehicleSlipstreaming
local GetVehicleClass = GetVehicleClass

CreateThread(function()
    if Config.Enabled then
        lib.onCache('vehicle', function(value)
            if value then
                if Config.Vehicles.All then
                    SetEnableVehicleSlipstreaming(true)
                elseif Config.Vehicles.UseClasses then
                    SetEnableVehicleSlipstreaming(Config.Vehicles.Classes[GetVehicleClass(value)])
                else
                    SetEnableVehicleSlipstreaming(false)
                end
            else
                SetEnableVehicleSlipstreaming(false)
            end
        end)
    end
end)
