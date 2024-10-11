local polyzones = {
    greenZones = {
        {center = vector3(608.54, -1028.32, 36.96), radius = 50.0}
    },
    amberZones = {
        {center = vector3(300.0, -280.0, 54.0), radius = 50.0}
    },
    redZones = {
        {center = vector3(150.0, -1040.0, 29.0), radius = 50.0}
    }
}

function isInPolyzone(playerPos, zones)
    for _, zone in ipairs(zones) do
        local distance = #(playerPos - zone.center)
        if distance <= zone.radius then
            return true
        end
    end
    return false
end

function displayZoneText(zone)
    SendNUIMessage({
        action = 'displayZone',
        zone = zone
    })
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Check every second
        local playerPed = PlayerPedId()
        local playerPos = GetEntityCoords(playerPed)

        if isInPolyzone(playerPos, polyzones.greenZones) then
            displayZoneText('Green Zone')
        elseif isInPolyzone(playerPos, polyzones.amberZones) then
            displayZoneText('Amber Zone')
        elseif isInPolyzone(playerPos, polyzones.redZones) then
            displayZoneText('Red Zone')
        else
            displayZoneText('')
        end
    end
end)