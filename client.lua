CreateThread(function()
    while true do
        Wait(0)

        local ped = PlayerPedId()

        if IsPedArmed(ped, 4) then
            local weapon = GetSelectedPedWeapon(ped)

            -- Keep crosshair for sniper rifles
            if weapon ~= `WEAPON_SNIPERRIFLE`
            and weapon ~= `WEAPON_HEAVYSNIPER`
            and weapon ~= `WEAPON_HEAVYSNIPER_MK2`
            and weapon ~= `WEAPON_MARKSMANRIFLE`
            and weapon ~= `WEAPON_MARKSMANRIFLE_MK2` then
                HideHudComponentThisFrame(14)
            end
        end
    end
end)