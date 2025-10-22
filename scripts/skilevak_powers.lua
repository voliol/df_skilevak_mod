
skilevak_all_powers = {
	{
		desc="bellow up its cloaks to take flight into the air",
		add_lines=function(lines, options)
			lines[#lines+1]="[FLIER]"
			lines[#lines+1]="[APPLY_CREATURE_VARIATION:STANDARD_FLYING_GAITS:900:750:600:439:1900:2900] 20 kph"
		end
	},
	
	{
		desc="whack those who dare approach with its ghost",
		add_lines=function(lines, options)
			[ATTACK:PUNCH:BODYPART:BY_CATEGORY:GHOST]
				[ATTACK_SKILL:GRASP_STRIKE]
				[ATTACK_VERB:whack:whacks]
				[ATTACK_VELOCITY_MODIFIER:10000]
				[ATTACK_CONTACT_PERC:100]
				[ATTACK_PREPARE_AND_RECOVER:2:4]
				[ATTACK_FLAG_WITH]
				[ATTACK_PRIORITY:MAIN]
		end
	},
	
	{
		desc="paralyze with a gaze of its leg-eyes",
		add_lines=function(lines, options)
			-- TODO
		end
	},

	{
		desc="paralyze with a gaze of its leg-eyes",
		add_lines=function(lines, options)
			-- TODO
		end
	},

	{
		desc="summon ghosts to aid it in battle",
		add_lines=function(lines, options)
			-- TODO
		end
	},

	{
		desc="flutter its eyebat to cause a tempest",
		add_lines=function(lines, options)
			-- TODO
		end
	},

	{
		desc="steal the sight of anyone peering into its eye-legs",
		add_lines=function(lines, options)
			-- TODO
		end
	},

	{
		desc="make its ghost wail a ghastly song which causes all livestock to panic",
		add_lines=function(lines, options)
			-- TODO
		end
	},

}