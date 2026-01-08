/mob/living
	var/pleasure = 0
	var/arousal = 0
	var/pain = 0
	var/satisfaction = 0

	var/pain_limit = 0
	var/arousal_status = AROUSAL_NONE

	var/last_climax = 0
	var/climax_cooldown = 0
	var/obj/item/organ/external/genital/last_climax_source = null

	var/refractory_period

	var/list/simulated_genitals = list(
		"ORGAN_SLOT_PENIS" = FALSE,
		"ORGAN_SLOT_VAGINA" = FALSE,
		"ORGAN_SLOT_BREASTS" = FALSE,
		"ORGAN_SLOT_ANUS" = TRUE,
		"ORGAN_SLOT_BUTT" = FALSE,
	)

	var/list/simulated_interaction_requirements = list(
		"INTERACTION_REQUIRE_SELF_HAND" = TRUE,
		"INTERACTION_REQUIRE_SELF_MOUTH" = TRUE,
		"INTERACTION_REQUIRE_SELF_TOPLESS" = TRUE,
		"INTERACTION_REQUIRE_SELF_BOTTOMLESS" = TRUE,
		"INTERACTION_REQUIRE_SELF_FEET" = 2,
	)

/mob/living/proc/set_pleasure(amount)
	pleasure = clamp(amount, 0, 100)
	update_pleasure_hud()

/// Returns true if the human has an accessible penis for the parameter. Accepts any of the `REQUIRE_GENITAL_` defines.
/mob/living/proc/has_penis(required_state = REQUIRE_GENITAL_ANY)
	var/obj/item/organ/genital/genital = get_organ_slot(ORGAN_SLOT_PENIS)
	if(!genital)
		return FALSE

	switch(required_state)
		if(REQUIRE_GENITAL_ANY)
			return TRUE
		if(REQUIRE_GENITAL_EXPOSED)
			return genital.visibility_preference == GENITAL_ALWAYS_SHOW || is_bottomless()
		if(REQUIRE_GENITAL_UNEXPOSED)
			return genital.visibility_preference != GENITAL_ALWAYS_SHOW && !is_bottomless()
		else
			return TRUE

/// Returns true if the human has a accessible balls for the parameter. Accepts any of the `REQUIRE_GENITAL_` defines.
/mob/living/proc/has_balls(required_state = REQUIRE_GENITAL_ANY)
	var/obj/item/organ/genital/genital = get_organ_slot(ORGAN_SLOT_TESTICLES)
	if(!genital)
		return FALSE

	switch(required_state)
		if(REQUIRE_GENITAL_ANY)
			return TRUE
		if(REQUIRE_GENITAL_EXPOSED)
			return genital.visibility_preference == GENITAL_ALWAYS_SHOW || is_bottomless()
		if(REQUIRE_GENITAL_UNEXPOSED)
			return genital.visibility_preference != GENITAL_ALWAYS_SHOW && !is_bottomless()
		else
			return TRUE

/// Returns true if the human has an accessible vagina for the parameter. Accepts any of the `REQUIRE_GENITAL_` defines.
/mob/living/proc/has_vagina(required_state = REQUIRE_GENITAL_ANY)
	var/obj/item/organ/genital/genital = get_organ_slot(ORGAN_SLOT_VAGINA)
	if(!genital)
		return FALSE

	switch(required_state)
		if(REQUIRE_GENITAL_ANY)
			return TRUE
		if(REQUIRE_GENITAL_EXPOSED)
			return genital.visibility_preference == GENITAL_ALWAYS_SHOW || is_bottomless()
		if(REQUIRE_GENITAL_UNEXPOSED)
			return genital.visibility_preference != GENITAL_ALWAYS_SHOW && !is_bottomless()
		else
			return TRUE

/// Returns true if the human has a accessible breasts for the parameter. Accepts any of the `REQUIRE_GENITAL_` defines.
/mob/living/proc/has_breasts(required_state = REQUIRE_GENITAL_ANY)
	var/obj/item/organ/genital/genital = get_organ_slot(ORGAN_SLOT_BREASTS)
	if(!genital)
		return FALSE

	switch(required_state)
		if(REQUIRE_GENITAL_ANY)
			return TRUE
		if(REQUIRE_GENITAL_EXPOSED)
			return genital.visibility_preference == GENITAL_ALWAYS_SHOW || is_topless()
		if(REQUIRE_GENITAL_UNEXPOSED)
			return genital.visibility_preference != GENITAL_ALWAYS_SHOW && !is_topless()
		else
			return TRUE

/// Returns true if the human has an accessible anus for the parameter. Accepts any of the `REQUIRE_GENITAL_` defines.
/mob/living/proc/has_anus(required_state = REQUIRE_GENITAL_ANY)
	if(issilicon(src))
		return TRUE
	var/obj/item/organ/genital/genital = get_organ_slot(ORGAN_SLOT_ANUS)
	if(!genital)
		return FALSE

	switch(required_state)
		if(REQUIRE_GENITAL_ANY)
			return TRUE
		if(REQUIRE_GENITAL_EXPOSED)
			return genital.visibility_preference == GENITAL_ALWAYS_SHOW || is_bottomless()
		if(REQUIRE_GENITAL_UNEXPOSED)
			return genital.visibility_preference != GENITAL_ALWAYS_SHOW && !is_bottomless()
		else
			return TRUE

/// These are stub procs that should be overridden by human
/mob/living/proc/is_topless()
	return simulated_interaction_requirements["INTERACTION_REQUIRE_SELF_TOPLESS"]

/mob/living/proc/is_bottomless()
	return simulated_interaction_requirements["INTERACTION_REQUIRE_SELF_BOTTOMLESS"]

/mob/living/proc/is_barefoot()
	return TRUE

/mob/living/proc/update_pleasure_hud()
	return // Stub proc that should be overridden by human

/mob/living/proc/set_arousal(amount)
	arousal = clamp(amount, AROUSAL_MINIMUM, AROUSAL_LIMIT)
	update_arousal_hud()

/mob/living/proc/update_arousal_hud()
	return // Stub proc that should be overridden by human

/mob/living/proc/update_pain_hud()
	return // Stub proc that should be overridden by human

/mob/living/proc/is_wearing_condom()
	return FALSE // Stub proc that should be overridden by human

// I'm unsure if mobs should get checked for these, but I'm adding them for now

/mob/living/proc/has_feet(required_state = REQUIRE_GENITAL_ANY)
	return simulated_interaction_requirements["INTERACTION_REQUIRE_SELF_FEET"]

/mob/living/proc/has_balls(required_state = REQUIRE_GENITAL_ANY)
	return simulated_genitals["ORGAN_SLOT_PENIS"]

/mob/living/proc/get_num_feet()
	return simulated_interaction_requirements["INTERACTION_REQUIRE_SELF_FEET"]
