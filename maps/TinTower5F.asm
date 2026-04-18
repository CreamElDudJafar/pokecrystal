	object_const_def
	const TINTOWER5F_POKE_BALL

TinTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTower5FRareCandy:
	itemball RARE_CANDY

TinTower5FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_TIN_TOWER_5F_HIDDEN_FULL_RESTORE

TinTower5FHiddenCarbos:
	hiddenitem CARBOS, EVENT_TIN_TOWER_5F_HIDDEN_CARBOS

TinTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  3, TIN_TOWER_6F, 2
	warp_event 10,  7, TIN_TOWER_4F, 2
	warp_event 18, 17, TIN_TOWER_4F, 3
	warp_event  4,  3, TIN_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event 14,  8, BGEVENT_ITEM, TinTower5FHiddenFullRestore
	bg_event  5, 10, BGEVENT_ITEM, TinTower5FHiddenCarbos

	def_object_events
	object_event  1,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TinTower5FRareCandy, EVENT_TIN_TOWER_5F_RARE_CANDY
