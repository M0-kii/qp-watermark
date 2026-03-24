CreateThread(function()
    SendNUIMessage({ action = "showLogo" })

    while true do
        Wait(500)
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        if vehicle ~= 0 then
            SendNUIMessage({ action = "inVehicle" })
        else
            SendNUIMessage({ action = "onFoot" })
        end
    end
end)