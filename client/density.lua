local density = {
    ['parked'] = 0.1,
    ['vehicle'] = 0.1,
    ['multiplier'] = 0.1,
    ['peds'] = 0.1,
    ['scenario'] = 0.1,
}

CreateThread(function()
	while true do
		SetParkedVehicleDensityMultiplierThisFrame(density['parked'])
		SetVehicleDensityMultiplierThisFrame(density['vehicle'])
		SetRandomVehicleDensityMultiplierThisFrame(density['multiplier'])
		SetPedDensityMultiplierThisFrame(density['peds'])
		SetScenarioPedDensityMultiplierThisFrame(density['scenario'], density['scenario']) -- Walking NPC Density
        SetVehicleModelIsSuppressed(GetHashKey("rubble"), true)
      --  SetVehicleModelIsSuppressed(GetHashKey("dump"), true)
    --    SetVehicleModelIsSuppressed(GetHashKey("taco"), true)
       -- SetVehicleModelIsSuppressed(GetHashKey("biff"), true)
        SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
		Wait(0)
	end
end)

function DecorSet(Type, Value)
    if Type == 'parked' then
        density['parked'] = Value
    elseif Type == 'vehicle' then
        density['vehicle'] = Value
    elseif Type == 'multiplier' then
        density['multiplier'] = Value
    elseif Type == 'peds' then
        density['peds'] = Value
    elseif Type == 'scenario' then
        density['scenario'] = Value
    end
end

exports('DecorSet', DecorSet)
