Citizen.CreateThread(function()
	while true do
		local Player = PlayerPedId()
		local _, Weapon = GetCurrentPedWeapon(Player)
		local Unarmed = `WEAPON_UNARMED`
		local Jerrycan = `WEAPON_PETROLCAN`
		if Weapon ~= Unarmed and Weapon ~= Jerrycan then
			Wait(4)
			if IsPedShooting(Player) then
				Recoil()
			end
		else
			Wait(500)
		end
	end
end)

function Recoil()
	local Player = PlayerPedId()
	local Weapon = GetSelectedPedWeapon(Player)
	local _,Wep = GetCurrentPedWeapon(Player)
	if not IsPedDoingDriveby(Player) then
		--Bounce
		for hash, data in pairs(Config.Weapons) do
			if Weapon == hash then	
				ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', data.Shake)
			end
		end

		--Up recoil		
		if Config.Weapons[Wep] then
			tv = 0
			repeat 
				Wait(0)
				p = GetGameplayCamRelativePitch()
				SetGameplayCamRelativePitch(p+0.3, 0.2)
				tv = tv+0.1
			until tv >= (Config.Weapons[Wep].Recoil)
		end
	else
		if Config.Weapons[Wep] and Config.VehicleRecoil then
			local GetWidthRecoil = GetGameplayCamRelativeHeading()
			local WidthRecoil = math.random() + math.random() - math.random() - math.random()
			SetGameplayCamRelativeHeading(GetWidthRecoil + WidthRecoil * ((Config.Weapons[Wep].Recoil * 20)))
		end
	end
end
