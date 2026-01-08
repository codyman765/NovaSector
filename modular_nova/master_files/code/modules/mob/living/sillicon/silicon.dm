/mob/living/silicon
	/// The Examine Panel datum for the mob.
	var/datum/examine_panel/mob_examine_panel
	/// The scream emote selected in prefs
	var/selected_scream


/mob/living/silicon/Initialize(mapload)
	. = ..()
	mob_examine_panel = new(src) //create the datum
	AddComponent(/datum/component/interactable)
	//Removing ERP IC verbs depending on config
	if(CONFIG_GET(flag/disable_erp_preferences))
		verbs -= /mob/living/carbon/human/verb/toggle_genitals
		verbs -= /mob/living/carbon/human/verb/toggle_arousal
	if(CONFIG_GET(flag/disable_erp_preferences))
		verbs -= /mob/living/carbon/human/verb/climax_verb
	if(CONFIG_GET(flag/disable_lewd_items))
		verbs -= /mob/living/carbon/human/verb/safeword


/mob/living/silicon/Destroy()
	QDEL_NULL(mob_examine_panel)
	return ..()
