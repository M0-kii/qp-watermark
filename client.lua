CreateThread(function()
    SendNUIMessage({ action = "showLogo" })

    local wasInVehicle = nil

    while true do
        Wait(500)
        local isInVehicle = GetVehiclePedIsIn(PlayerPedId(), false) ~= 0

        if isInVehicle ~= wasInVehicle then
            SendNUIMessage({ action = isInVehicle and "inVehicle" or "onFoot" })
            wasInVehicle = isInVehicle
        end
    end
end)