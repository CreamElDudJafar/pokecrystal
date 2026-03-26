DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, KRABBY,     14
	db  85 percent + 1, GOLDEEN,    14
	db 100 percent,     CORSOLA,    14
.Shore_Good:
	db  35 percent,     KINGLER,    48
	db  70 percent,     MANTINE,    48
	db  90 percent + 1, SEAKING,    48
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     QWILFISH,   100
	db  70 percent,     time_group 1
	db  90 percent + 1, GOLDUCK,    100
	db 100 percent,     OCTILLERY,  100

.Ocean_Old:
	db  70 percent + 1, TENTACOOL,  14
	db  85 percent + 1, CHINCHOU,   14
	db 100 percent,     STARYU,     10
.Ocean_Good:
	db  35 percent,     TENTACOOL,  48
	db  70 percent,     CORSOLA,    48
	db  90 percent + 1, CHINCHOU,   48
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     MANTINE,   100
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 100
	db 100 percent,     LANTURN,    100

.Lake_Old:
	db  70 percent + 1, KABUTO,     14
	db  85 percent + 1, SLOWPOKE,   14
	db 100 percent,     OMANYTE,    14
.Lake_Good:
	db  35 percent,     OMASTAR,    48
	db  70 percent,     KABUTOPS,   48
	db  90 percent + 1, SLOWBRO,    48
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     SLOWBRO,    100
	db  70 percent,     time_group 5
	db  90 percent + 1, KABUTOPS,   100
	db 100 percent,     SLOWKING,   100

.Pond_Old:
	db  70 percent + 1, REMORAID,   14
	db  85 percent + 1, SEEL,       14
	db 100 percent,     POLIWAG,    14
.Pond_Good:
	db  35 percent,     SLOWPOKE,   48
	db  70 percent,     POLIWHIRL,  48
	db  90 percent + 1, WOOPER,     48
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     POLIWHIRL,   99
	db  70 percent,     time_group 7
	db  90 percent + 1, AZUMARILL,   100
	db 100 percent,     QUAGSIRE,    100

.Dratini_Old:
	db  70 percent + 1, DRATINI,    5
	db  85 percent + 1, DRAGONAIR,  5
	db 100 percent,     SEADRA,     5
.Dratini_Good:
	db  35 percent,     DRAGONAIR,  99
	db  70 percent,     DRAGONAIR,  99
	db  90 percent + 1, SEADRA,     99
	db 100 percent,     time_group 8
.Dratini_Super:
	db  40 percent,     DRAGONITE,  100
	db  70 percent,     time_group 9
	db  90 percent + 1, DRAGONITE,  100
	db 100 percent,     KINGDRA,    100

.Qwilfish_Swarm_Old:
	db  70 percent + 1, QWILFISH,   14
	db  85 percent + 1, QWILFISH,   14
	db 100 percent,     QWILFISH,   14
.Qwilfish_Swarm_Good:
	db  35 percent,     QWILFISH,   48
	db  70 percent,     QWILFISH,   48
	db  90 percent + 1, QWILFISH,   48
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   100
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   100
	db 100 percent,     QWILFISH,   100

.Remoraid_Swarm_Old:
	db  70 percent + 1, GOLDEEN,    14
	db  85 percent + 1, CORSOLA,    14
	db 100 percent,     REMORAID,   14
.Remoraid_Swarm_Good:
	db  35 percent,     SEAKING,    48
	db  70 percent,     REMORAID,   48
	db  90 percent + 1, KINGLER,    48
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     OCTILLERY,  100
	db  70 percent,     time_group 13
	db  90 percent + 1, MANTINE,    100
	db 100 percent,     GYARADOS,   100

.Gyarados_Old:
	db  70 percent + 1, GYARADOS,   5
	db  85 percent + 1, GYARADOS,   15
	db 100 percent,     MAGIKARP,   25
.Gyarados_Good:
	db  35 percent,     GYARADOS,   59
	db  70 percent,     GYARADOS,   59
	db  90 percent + 1, MAGIKARP,   59
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   100
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   100
	db 100 percent,     MAGIKARP,   100

.Dratini_2_Old:
	db  70 percent + 1, POLIWHIRL,  93
	db  85 percent + 1, DEWGONG,    91
	db 100 percent,     POLITOED,   92
.Dratini_2_Good:
	db  35 percent,     LANTURN,    92
	db  70 percent,     OMASTAR,    92
	db  90 percent + 1, QUAGSIRE,   92
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     DRAGONAIR,  99
	db  70 percent,     time_group 17
	db  90 percent + 1, DRAGONAIR,  99
	db 100 percent,     DRAGONAIR,  99

.WhirlIslands_Old:
	db  70 percent + 1, DEWGONG,    75
	db  85 percent + 1, SEADRA,     75
	db 100 percent,     SHELLDER,   75
.WhirlIslands_Good:
	db  35 percent,     SHELLDER,   75
	db  70 percent,     SEADRA,     75
	db  90 percent + 1, DEWGONG,    75
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     CLOYSTER,   100
	db  70 percent,     time_group 19
	db  90 percent + 1, SLOWBRO,    100
	db 100 percent,     KINGDRA,    100

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, CLOYSTER,   100
	db  85 percent + 1, DRAGONITE,  100
	db 100 percent,     STARMIE,    100
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     DRAGONITE,  100
	db  70 percent,     VAPOREON,   100
	db  90 percent + 1, LAPRAS,     100
	db 100 percent,     time_group 20
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     STARMIE,   100
	db  70 percent,     time_group 21
	db  90 percent + 1, LAPRAS,    100
	db 100 percent,     KINGDRA,   100

.Remoraid_Old:
	db  70 percent + 1, GOLDEEN,    14
	db  85 percent + 1, KRABBY,     14
	db 100 percent,     POLIWAG,    10
.Remoraid_Good:
	db  35 percent,     POLIWHIRL,  48
	db  70 percent,     SEAKING,    48
	db  90 percent + 1, KINGLER,    48
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     KINGLER,    100
	db  70 percent,     time_group 7
	db  90 percent + 1, SEAKING,    100
	db 100 percent,     OCTILLERY,  100

TimeFishGroups:
	;  day              nite
	db CORSOLA,    48,  STARYU,     48 ; 0
	db CORSOLA,    100, STARYU,    100 ; 1
	db CHINCHOU,   48,  SHELLDER,   48 ; 2
	db STARYU,     100, SHELLDER,  100 ; 3
	db REMORAID,   48,  SEAKING,    48 ; 4
	db QUAGSIRE,   100, QWILFISH,  100 ; 5
	db POLIWHIRL,  48,  SLOWPOKE,   48 ; 6
	db POLITOED,  100,  POLIWRATH, 100 ; 7
	db DRAGONAIR,  99,  SEADRA,     99 ; 8
	db KINGDRA,   100,  DRAGONITE, 100 ; 9
	db QWILFISH,   48,  QWILFISH,   48 ; 10
	db QWILFISH,   100,  QWILFISH, 100 ; 11
	db REMORAID,   48,  REMORAID,   48 ; 12
	db REMORAID,  100,  REMORAID,  100 ; 13
	db GYARADOS,   56,  GYARADOS,   56 ; 14
	db MAGIKARP,  100,  MAGIKARP,  100 ; 15
	db STARYU,     90,  SHELLDER,   91 ; 16
	db DRAGONAIR,  99,  DRAGONAIR,  99 ; 17
	db HORSEA,     74,  SEEL,       74 ; 18
	db SEADRA,     99,  SEADRA,     99 ; 19
	db KINGDRA,   100,  CLOYSTER,  100 ; 20
	db DRAGONITE, 100,  CLOYSTER,  100 ; 21
