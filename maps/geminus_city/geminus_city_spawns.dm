
GLOBAL_LIST_EMPTY(colony_spawns)

/datum/spawnpoint/colonist
	display_name = "Colony Arrival Shuttle"
	disallow_job = list("Marine","Marine - Squad Leader")

/datum/spawnpoint/colonist/New()
	..()
	turfs = GLOB.colony_spawns

/obj/effect/landmark/start/colonist
	name = "Colonist"

/obj/effect/landmark/start/colonist/New()
	..()
	GLOB.colony_spawns += loc

/obj/effect/landmark/start/colonist/inniesympathiser
	name = "Colonist - Insurrectionist Sympathiser"

/obj/effect/landmark/start/colonist/innierecruiter
	name = "Colonist - Insurrectionist Recruiter"

/obj/effect/landmark/start/colonist/mayor
	name = "Mayor"

//UNSC Landmarks + datums//

GLOBAL_LIST_EMPTY(unsc_spawns)
GLOBAL_LIST_EMPTY(unsc_leader_spawns)

/datum/spawnpoint/unsc
	display_name = "UNSC Peacekeeping Ship"
	restrict_job = list("Marine")

/datum/spawnpoint/unsc/New()
	..()
	turfs = GLOB.unsc_spawns

/obj/effect/landmark/start/unsc
	name = "Marine"

/datum/spawnpoint/unsc/leader
	display_name = "UNSC Peacekeeping Ship - Leader Quarters"
	restrict_job = list("Marine - Squad Leader")

/datum/spawnpoint/unsc/leader/New()
	..()
	turfs = GLOB.unsc_leader_spawns

/obj/effect/landmark/start/unsc/New()
	..()
	GLOB.unsc_leader_spawns += loc

/obj/effect/landmark/start/unsc/leader
	name = "Marine - Squad Leader"
