Scriptname _RO_Quest extends Quest  

Int Property pScriptVersion Auto
SPELL[] Property DefaultSpells  Auto
Int Property CarryWeight  Auto

Int scriptVersion = 0


Event OnInit()
	UpdateScript()
endEvent


Event OnSleepStop(bool abInterrupted)
	if scriptVersion != pScriptVersion
		UpdateScript()
	endIf
endEvent


Function UpdateScript()

	scriptVersion = pScriptVersion
	Debug.Notification("Roleplaying Overhaul: Quest v" + scriptVersion)
	
	Actor player = Game.GetPlayer()
	
	; Add default spells
	Int i = 0
	While i < DefaultSpells.Length
		player.AddSpell(DefaultSpells[i], false)
		i = i + 1	
	endWhile
	
	; Set the base carry weight
	if CarryWeight > 0
		player.SetActorValue("CarryWeight", CarryWeight)
	endIf
	
	; Register for when the player goes to sleep and wakes up to update the script in the future
	RegisterForSleep()

endFunction

