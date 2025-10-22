
skilevak_all_powers = {
	{
		desc="bellow up its cloaks to take flight into the air",
		add_lines=function(lines, options)
			lines[#lines+1]="[FLIER]"
			lines[#lines+1]="[APPLY_CREATURE_VARIATION:STANDARD_FLYING_GAITS:900:750:600:439:1900:2900] 20 kph"
		end
	},

	{
		desc="kick 1",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK1:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 1:kicks 1]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 2",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK2:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 2:kicks 2]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 3",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK3:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 3:kicks 3]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 4",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK4:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 4:kicks 4]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 5",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK5:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 5:kicks 5]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 6",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK6:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 6:kicks 6]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 7",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK7:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 7:kicks 7]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 8",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK8:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 8:kicks 8]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},

	{
		desc="kick 9",
		add_lines=function(lines, options)
			lines[#lines+1]="[ATTACK:KICK9:BODYPART:BY_TYPE:STANCE]"
			lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
			lines[#lines+1]="	[ATTACK_VERB:kick 9:kicks 9]"
			lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
			lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
			lines[#lines+1]="	[ATTACK_FLAG_WITH]"
			lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
			lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
		end
	},
}