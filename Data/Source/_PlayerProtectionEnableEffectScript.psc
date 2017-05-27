Scriptname _PlayerProtectionEnableEffectScript extends activemagiceffect  
{Enables Immortal Dragonborn on effect start}

Event OnEffectStart(Actor akTarget, Actor akCaster)

	_player_protection_enabled.SetValue(1)
	PlayerAlias.EnableImmortalDragonborn(_player_protection_enabled.GetValue())

endEvent


GlobalVariable Property _player_protection_enabled Auto
_PlayerProtection_PlayerAliasScript Property PlayerAlias  Auto  
