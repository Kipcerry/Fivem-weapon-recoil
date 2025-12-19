Config = {}

Config.VehicleRecoil = false
Config.Weapons = {
	--Pistols
	[GetHashKey('WEAPON_PISTOL')] = {Recoil = 0.25, Shake = 0.045},
	[GetHashKey('WEAPON_PISTOL_MK2')] = {Recoil = 0.2, Shake = 0.065},
	[GetHashKey('WEAPON_COMBATPISTOL')] = {Recoil = 0.22, Shake = 0.04},
	--Smg
	[GetHashKey('WEAPON_SMG')] = {Recoil = 0.1, Shake = 0.01},
	[GetHashKey('WEAPON_MINISMG')] = {Recoil = 0.1, Shake = 0.04},
	--Shotgun
	[GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = {Recoil = 1.5, Shake = 0.06},
	--Rifles
	[GetHashKey('WEAPON_ASSAULTRIFLE')] = {Recoil = 0.05, Shake = 0.03},
	[GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = {Recoil = 0.1, Shake = 0.035},
	[GetHashKey('WEAPON_COMBATRIFLE')] = {Recoil = 0.075, Shake = 0.026},
	[GetHashKey('WEAPON_COMBATRIFLE_MK2')] = {Recoil = 0.125, Shake = 0.02},
}