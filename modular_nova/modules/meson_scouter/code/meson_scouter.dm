/datum/atom_skin/meson
	abstract_type = /datum/atom_skin/meson
	new_icon_state = "meson_scouter"

/datum/atom_skin/mesons/glasses
	preview_name = "Meson Glasses"
	new_icon = 'icons/obj/clothing/glasses.dmi'
	new_icon_state = "meson"
	new_worn_icon = 'icons/mob/clothing/eyes.dmi'

/datum/atom_skin/meson/scouter
	preview_name = "Meson Scouter"
	new_icon_state = "meson_scouter"

/obj/item/clothing/glasses/meson
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/night
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/gar
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/prescription
	can_reskin = FALSE

/datum/atom_skin/meson/engine
	abstract_type = /datum/atom_skin/meson/engine

/datum/atom_skin/meson/engine/trayson
	preview_name = "Engine Glasses"
	new_icon = 'icons/obj/clothing/glasses.dmi'
	new_icon_state = "trayson-"
	new_worn_icon = 'icons/mob/clothing/eyes.dmi'

/datum/atom_skin/meson/engine/trayson
	preview_name = "Engine Scouter"
	new_icon_state = "trayson-"

/obj/item/clothing/glasses/meson/engine

/obj/item/clothing/glasses/meson/engine/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/meson/engine)

/obj/item/clothing/glasses/meson/engine/tray
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/engine/shuttle
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/engine/atmos_imaging
	can_reskin = FALSE

/obj/item/clothing/glasses/meson/engine/prescription
	can_reskin = FALSE
