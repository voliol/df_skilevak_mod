
skilevak_all_powers = {
	{
		desc="billow its cloaks to take flight into the air",
		weight=1,
		add_lines=function(lines, options)
			lines[#lines+1]="[FLIER]"
			lines[#lines+1]="[APPLY_CREATURE_VARIATION:STANDARD_FLYING_GAITS:900:750:600:439:1900:2900] 20 kph"
		end,
		interaction_lines=function() end
	},
	
	{
		desc="whack those who dare approach with its ghost",
		weight=1,
		add_lines=function(lines, options)
			lines=split_to_lines(lines,[[
				[ATTACK:GHOST_PUNCH:BODYPART:BY_CATEGORY:GHOST]
					[ATTACK_SKILL:GRASP_STRIKE]
					[ATTACK_VERB:whack:whacks]
					[ATTACK_VELOCITY_MODIFIER:10000]
					[ATTACK_CONTACT_PERC:100]
					[ATTACK_PREPARE_AND_RECOVER:2:4]
					[ATTACK_FLAG_WITH]
					[ATTACK_PRIORITY:MAIN]
			]])
		end,
		interaction_lines=function() end
	},
	
	{ --PARALYZE
		desc="paralyze with a gaze of its leg-eyes",
		weight=2,
		add_lines=function(lines, options)
			lines[#lines+1]="[CAN_DO_INTERACTION:"..options.token.."_PARALYZE]"
			lines=split_to_lines(lines,[[
				[CDI:ADV_NAME:Paralyze]
				[CDI:DEFAULT_ICON:ADVENTURE_INTERACTION_ICON_PARALYZE]
				[CDI:USAGE_HINT:ATTACK]
				[CDI:TARGET:A:LINE_OF_SIGHT]
				[CDI:TARGET_RANGE:A:25]
				[CDI:MAX_TARGET_NUMBER:A:1]
				[CDI:WAIT_PERIOD:200]
				[CDI:VERB:stare unblinkingly with your leg-eyes:stares unblinkingly with its leg-eyes:NA]
				[CDI:TARGET_VERB:feel frozen:freezes]
				[CDI:BP_REQUIRED:BY_CATEGORY:LEG_UPPER]
				[CDI:BP_REQUIRED:BY_CATEGORY:LEG_LOWER]
			]])
			end,
		interaction_lines=function(options)
			local lines = {"[INTERACTION:"..options.token.."_PARALYZE]"}
			add_generated_info(lines)
			lines=split_to_lines(lines,[[
			[I_TARGET:A:CREATURE]
				[IT_LOCATION:CONTEXT_CREATURE]
				[IT_MANUAL_INPUT:victim]
			[I_EFFECT:ADD_SYNDROME]
				[IE_TARGET:A]
				[IE_IMMEDIATE]
				[SYNDROME]
					[SYN_CONCENTRATION_ADDED:1000:0]
					[CE_PARALYSIS:SEV:500:PROB:100:START:0:PEAK:0:END:1:RESISTABLE]
			]])
			return lines
		end
	},
	
	{ --SUMMON_NIGHTMARE
		desc="summon horrors to aid it in battle",
		weight=1,
		add_lines=function(lines, options)
			lines[#lines+1]="[CAN_DO_INTERACTION:"..options.token.."_SUMMON_NIGHTMARE]"
			lines=split_to_lines(lines,[[
				[CDI:ADV_NAME:Summon nightmare]
				[CDI:DEFAULT_ICON:ADVENTURE_INTERACTION_ICON_SUMMON_NIGHTMARE]
				[CDI:VERB:call upon the night:calls upon the night:NA]
				[CDI:WAIT_PERIOD:12000]
				[CDI:VERBAL]
			]])
			end,
		interaction_lines=function(options)
			local lines = {"[INTERACTION:"..options.token.."_SUMMON_NIGHTMARE]"}
			add_generated_info(lines)
			lines=split_to_lines(lines,[[
			[I_TARGET:A:LOCATION]
				[IT_LOCATION:CONTEXT_LOCATION]
			[I_TARGET:B:LOCATION]
				[IT_LOCATION:RANDOM_NEARBY_LOCATION:A:5]
			[I_EFFECT:SUMMON_UNIT]
				[IE_TARGET:B]
				[IE_IMMEDIATE]
				[IE_CREATURE_CASTE_FLAG:NIGHT_CREATURE_NIGHTMARE]
				[IE_TIME_RANGE:200:300]
			]])
			return lines
		end
	},
	
	{ --PROPEL
		desc="flutter its bat face to cause a tempest",
		weight=1,
		add_lines=function(lines, options)
			lines[#lines+1]="[CAN_DO_INTERACTION:"..options.token.."_PROPEL]"
			lines=split_to_lines(lines,[[
				[CDI:ADV_NAME:Propel away]
				[CDI:DEFAULT_ICON:ADVENTURE_INTERACTION_ICON_PROPEL_AWAY]
				[CDI:USAGE_HINT:ATTACK]
				[CDI:TARGET:A:LINE_OF_SIGHT]
				[CDI:TARGET_RANGE:A:25]
				[CDI:MAX_TARGET_NUMBER:A:1]
				[CDI:WAIT_PERIOD:250]
				[CDI:VERB:flutters your bat face:flutters its bat face:NA]
				[CDI:BP_REQUIRED:BY_CATEGORY:BAT]
			]])
			end,
		interaction_lines=function(options)
			local lines = {"[INTERACTION:"..options.token.."_PROPEL]"}
			add_generated_info(lines)
			lines=split_to_lines(lines,[[
			[I_TARGET:A:LOCATION]
				[IT_LOCATION:CONTEXT_LOCATION]
			[I_TARGET:B:CREATURE]
				[IT_LOCATION:CONTEXT_CREATURE]
				[IT_MANUAL_INPUT:target]
			[I_EFFECT:PROPEL_UNIT]
				[IE_PROPEL_FORCE:100000]
				[IE_TARGET:A]
				[IE_TARGET:B]
				[IE_IMMEDIATE]
			]])
			return lines
		end
	},
	
	{ --BLIND
		desc="steal the sight of anyone peering into its eye-legs",
		weight=1,
		add_lines=function(lines, options)
			lines[#lines+1]="[CAN_DO_INTERACTION:"..options.token.."_BLIND]"
			lines=split_to_lines(lines,[[
				[CDI:ADV_NAME:Blind]
				[CDI:DEFAULT_ICON:ADVENTURE_INTERACTION_ICON_BLIND]
				[CDI:USAGE_HINT:ATTACK]
				[CDI:TARGET:A:LINE_OF_SIGHT]
				[CDI:TARGET_RANGE:A:25]
				[CDI:MAX_TARGET_NUMBER:A:1]
				[CDI:WAIT_PERIOD:500]
				[CDI:VERB:steal sight:steals sight:NA]
				[CDI:TARGET_VERB:find your sight is fading:pauses]
				[CDI:BP_REQUIRED:BY_CATEGORY:LEG_UPPER]
				[CDI:BP_REQUIRED:BY_CATEGORY:LEG_LOWER]
			]])
			end,
		interaction_lines=function(options)
			local lines = {"[INTERACTION:"..options.token.."_BLIND]"}
			add_generated_info(lines)
			lines=split_to_lines(lines,[[
			[I_TARGET:A:CREATURE]
				[IT_LOCATION:CONTEXT_CREATURE]
				[IT_MANUAL_INPUT:victim]
			[I_EFFECT:ADD_SYNDROME]
				[IE_TARGET:A]
				[IE_IMMEDIATE]
				[SYNDROME]
					[SYN_CONCENTRATION_ADDED:1000:0]
					[CE_IMPAIR_FUNCTION:SEV:500:PROB:100:START:0:PEAK:0:END:1:BP:BY_CATEGORY:ALL:EYE:RESISTABLE]
			]])
			return lines
		end
	},
	
	{ --SCARE_ANIMALS
	desc="make its ghost wail a ghastly song which causes all livestock to panic",
		weight=1,
		add_lines=function(lines, options)
			lines[#lines+1]="[CAN_DO_INTERACTION:"..options.token.."_SCARE_ANIMALS]"
			lines=split_to_lines(lines,[[
				[CDI:ADV_NAME:Scare animals]
				[CDI:DEFAULT_ICON:ADVENTURE_INTERACTION_ICON_CAUSE_PAIN]
				[CDI:USAGE_HINT:ATTACK]
				[CDI:TARGET:A:LINE_OF_SIGHT]
				[CDI:TARGET_RANGE:A:100]
				[CDI:MAX_TARGET_NUMBER:A:60]
				[CDI:WAIT_PERIOD:200]
				[CDI:VERB:have your ghost wail a ghastly song:and its ghost wail a ghastly song:NA]
				[CDI:TARGET_VERB:feel frozen:freezes]
				[CDI:VERBAL]
			]])
			end,
		interaction_lines=function(options)
			local lines = {"[INTERACTION:"..options.token.."_SCARE_ANIMALS]"}
			add_generated_info(lines)
			lines=split_to_lines(lines,[[
			[I_TARGET:A:CREATURE]
				[IT_LOCATION:CONTEXT_CREATURE]
				[IT_MANUAL_INPUT:victim]
				[IT_FORBIDDEN:CAN_SPEAK]
				[IT_FORBIDDEN:CAN_LEARN]
				[IT_FORBIDDEN:NOT_LIVING]
				[IT_FORBIDDEN:NOTHOUGHT]
				[IT_FORBIDDEN:NOEMOTION]
				[IT_FORBIDDEN:NOFEAR]
				[IT_CANNOT_TARGET_IF_ALREADY_AFFECTED]
			[I_EFFECT:ADD_SYNDROME]
				[IE_TARGET:A]
				[IE_IMMEDIATE]
				[SYNDROME]
					[SYN_NAME:a skilevak's ghastly song]
					[SYN_CONCENTRATION_ADDED:1000:0]
					[CE_FEEL_EMOTION:EMOTION:PANIC:SEV:1000000:PROB:100:SIZE_DILUTES:START:10:PEAK:120:END:480]
					[CE_MENT_ATT_CHANGE:WILLPOWER:50:0:START:10:PEAK:120:END:480]
			]])
			return lines
		end
	}
	
}
