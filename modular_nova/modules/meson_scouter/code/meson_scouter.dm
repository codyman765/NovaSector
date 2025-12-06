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

/obj/item/clothing/glasses/meson/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/meson)

/obj/item/clothing/glasses/meson/night/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

/obj/item/clothing/glasses/meson/gar/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

/obj/item/clothing/glasses/meson/prescription/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

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

/obj/item/clothing/glasses/meson/engine/tray/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

/obj/item/clothing/glasses/meson/engine/shuttle/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

/obj/item/clothing/glasses/meson/engine/atmos_imaging/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))

/obj/item/clothing/glasses/meson/engine/prescription/Initialize(mapload)
	. = ..()
	qdel(GetComponent(/datum/component/reskinable_item))
