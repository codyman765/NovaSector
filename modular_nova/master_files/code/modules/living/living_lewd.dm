/mob/living

	var/satisfaction = 0


	var/last_climax = 0
	var/climax_cooldown = 0
	var/obj/item/organ/external/genital/last_climax_source = null

	var/list/simulated_genitals = list(
		ORGAN_SLOT_PENIS = FALSE,
		ORGAN_SLOT_VAGINA = FALSE,
		ORGAN_SLOT_BREASTS = FALSE,
		ORGAN_SLOT_ANUS = TRUE,
		ORGAN_SLOT_BUTT = FALSE,
	)

	var/list/simulated_interaction_requirements = list(
		INTERACTION_REQUIRE_SELF_HAND = TRUE,
		INTERACTION_REQUIRE_SELF_MOUTH = TRUE,
		INTERACTION_REQUIRE_SELF_TOPLESS = TRUE,
		INTERACTION_REQUIRE_SELF_BOTTOMLESS = TRUE,
	)

/mob/living/proc/set_pleasure(amount)
	pleasure = clamp(amount, 0, 100)
	update_pleasure_hud()

/// Returns true if the mob has an accessible penis for the parameter

/mob/living/proc/update_pleasure_hud()
	return // Stub proc that should be overridden by human

/mob/living/proc/set_arousal(amount)
	arousal = clamp(amount, AROUSAL_MINIMUM, AROUSAL_LIMIT)
	update_arousal_hud()

/mob/living/proc/update_arousal_hud()
	return // Stub proc that should be overridden by human

/mob/living/proc/update_pain_hud()
	return // Stub proc that should be overridden by human

