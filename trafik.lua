--Dette script er lavet af valdemar larsen
--discord: Valdemar#1732
-- Customize dette scirpt:
        --[[ 
        Values:
        0.0 = Ingen biller på vejen.
        1.0 = normal trafik på vejen 
        Du skal altså selv finde den værdi du ønsker.
        du skal ændre i værdierne under "local config"
        ved henholdsvis pedFrequency & trafficFrequency.
        0.0 ≤ x ≤ 1.0
        ]]


local config = {
    pedFrequency = 1.0,
    trafficFrequency = 0.7,
}
-- lad vær med at pille ved de her natives hvis du ikke ved hvad du gør.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
        -----------------------------------------------
        -----------------------------------------------
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end 
end)
