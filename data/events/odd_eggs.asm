DEF NUM_ODD_EGGS EQU 14

DEF odd_egg_prob_total = 0

MACRO odd_egg_prob
	DEF odd_egg_prob_total += \1
	dw odd_egg_prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2
; Bulbsaur
	odd_egg_prob 8
; Charmander
	odd_egg_prob 1
; Squirtle
	odd_egg_prob 16
; Cyndaquil
	odd_egg_prob 3
; Chikorita
	odd_egg_prob 16
; Totodile
	odd_egg_prob 3
; Eevee
	odd_egg_prob 14
; Smoochum
	odd_egg_prob 2
; Dratini
	odd_egg_prob 10
; Magby
	odd_egg_prob 2
; Larvitar
	odd_egg_prob 12
; Elekid
	odd_egg_prob 2
; Tyrogue
	odd_egg_prob 10
	odd_egg_prob 1
	assert_table_length NUM_ODD_EGGS
	assert odd_egg_prob_total == 100, "OddEggProbabilities sum to {d:odd_egg_prob_total}%, not 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH

	db BULBASAUR
	db NO_ITEM
	db GIGA_DRAIN, SLEEP_POWDER, SYNTHESIS, BODY_SLAM
	dw 02048 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db CHARMANDER
	db NO_ITEM
	db FIRE_PUNCH, BODY_SLAM, OUTRAGE, SEISMIC_TOSS
	dw 00256 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db SQUIRTLE
	db NO_ITEM
	db BUBBLEBEAM, ICE_BEAM, SEISMIC_TOSS, BODY_SLAM
	dw 04096 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 7 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 10 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db CYNDAQUIL
	db NO_ITEM
	db FLAME_WHEEL, DOUBLE_EDGE, QUICK_ATTACK, 0
	dw 00768 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 7 ; Atk
	bigdw 8 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db CHIKORITA
	db NO_ITEM
	db GIGA_DRAIN, SYNTHESIS, LIGHT_SCREEN, REFLECT
	dw 04096 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 9 ; SAtk
	bigdw 7 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db TOTODILE
	db NO_ITEM
	db BUBBLEBEAM, CRUNCH, DOUBLE_EDGE, ICE_BEAM
	dw 00768 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db EEVEE
	db NO_ITEM
	db QUICK_ATTACK, BODY_SLAM, BITE, REFLECT
	dw 03584 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 6 ; Def
	bigdw 11 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db SMOOCHUM
	db NO_ITEM
	db LOVELY_KISS, ICE_PUNCH, PSYCHIC_M, 0
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 2, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 14 ; SAtk
	bigdw 12 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db DRATINI
	db NO_ITEM
	db THUNDER_WAVE, SAFEGUARD, OUTRAGE, DOUBLE_EDGE
	dw 02560 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 8 ; Def
	bigdw 13 ; Spd
	bigdw 12 ; SAtk
	bigdw 10 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db MAGBY
	db NO_ITEM
	db FIRE_PUNCH, CROSS_CHOP, CONFUSE_RAY, PSYCHIC_M
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 9 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db LARVITAR
	db NO_ITEM
	db CRUNCH, ROCK_SLIDE, EARTHQUAKE, RETURN
	dw 03072 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 8 ; Def
	bigdw 14 ; Spd
	bigdw 11 ; SAtk
	bigdw 10 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db ELEKID
	db NO_ITEM
	db THUNDERPUNCH, CROSS_CHOP, THUNDER_WAVE, PSYCHIC_M
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 5 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 11 ; Atk
	bigdw 9 ; Def
	bigdw 15 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db TYROGUE
	db NO_ITEM
	db MACH_PUNCH, DIZZY_PUNCH, HI_JUMP_KICK, 0
	dw 02560 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 10 ; DVs
	db 5, 5, 5, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 8 ; Def
	bigdw 8 ; Spd
	bigdw 8 ; SAtk
	bigdw 8 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db TYROGUE
	db NO_ITEM
	db HI_JUMP_KICK, DIZZY_PUNCH, MACH_PUNCH, 0
	dw 00256 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 7, 10, 10, 10 ; DVs
	db 5, 5, 5, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 18 ; Max HP
	bigdw 8 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	assert_table_length NUM_ODD_EGGS
