log("Loading the skilevak mod :)")

creatures.night_creature.troll.voliol_skilevak=function(tok)
    local lines={}
    
	local options={
        spheres={
            NIGHT=true,
            DEATH=true
        },
        fallback_pref_str="macabre ways",
        token=tok
    }
	options.is_male_version=one_in(2)
	
	skilevak_add_general_tokens(lines, options)
	skilevak_build_body(lines, options)
	skilevak_build_powers(lines, options)
	skilevak_build_description(lines, options)
	skilevak_build_name(lines, options)	
	
    return {raws=lines,weight=1}
end

function skilevak_add_general_tokens(lines, options)
	night_creature_universals(lines, options)
    lines[#lines+1]="[NIGHT_CREATURE_HUNTER]"
	lines[#lines+1]="[NO_THOUGHT_CENTER_FOR_MOVEMENT]"
    lines[#lines+1]="[BIOME:ANY_FOREST]"
    lines[#lines+1]="[BIOME:ANY_SHRUBLAND]"
    lines[#lines+1]="[BIOME:ANY_SAVANNA]"
    lines[#lines+1]="[BIOME:ANY_GRASSLAND]"
    lines[#lines+1]="[BIOME:ANY_WETLAND]"
    lines[#lines+1]="[BIOME:TUNDRA]"
	-- afaik being a spouse converter is the only way for a night troll to reproduce
	-- so even though it's not perfect for the skilevak, it will be so
    if options.is_male_version then
        lines[#lines+1]="[CASTE:MALE]"
        lines[#lines+1]="[MALE]"
        lines[#lines+1]="[SPOUSE_CONVERTER]"
        lines[#lines+1]="[ORIENTATION:MALE:1:0:0]"
        lines[#lines+1]="[ORIENTATION:FEMALE:0:0:1]"
    lines[#lines+1]="[CASTE:FEMALE]"
        lines[#lines+1]="[FEMALE]"
        lines[#lines+1]="[CONVERTED_SPOUSE]"
    else
        lines[#lines+1]="[CASTE:FEMALE]"
        lines[#lines+1]="[FEMALE]"
        lines[#lines+1]="[SPOUSE_CONVERTER]"
        lines[#lines+1]="[ORIENTATION:MALE:0:0:1]"
        lines[#lines+1]="[ORIENTATION:FEMALE:1:0:0]"
    lines[#lines+1]="[CASTE:MALE]"
        lines[#lines+1]="[MALE]"
        lines[#lines+1]="[CONVERTED_SPOUSE]"
    end
    lines[#lines+1]="[SELECT_CASTE:ALL]"

    lines[#lines+1]="[CAN_LEARN]"
    lines[#lines+1]="[CAN_SPEAK]"
    lines[#lines+1]="[SENSE_CREATURE_CLASS:GENERAL_POISON:15:4:0:1]"
	
	lines[#lines+1]="[PHYS_ATT_RANGE:STRENGTH:850:900:950:1000:1050:1100:1150]"
	lines[#lines+1]="[PHYS_ATT_RANGE:AGILITY:850:900:950:1000:1050:1100:1150]"
	lines[#lines+1]="[PHYS_ATT_RANGE:TOUGHNESS:850:900:950:1000:1050:1100:1150]"
	lines[#lines+1]="[PHYS_ATT_RANGE:ENDURANCE:850:900:950:1000:1050:1100:1150]"
    lines[#lines+1]="[PHYS_ATT_RANGE:RECUPERATION:450:1050:1150:1250:1350:1550:2250]"
    lines[#lines+1]="[PHYS_ATT_RANGE:DISEASE_RESISTANCE:700:1300:1400:1500:1600:1800:2500]"
    lines[#lines+1]="[MENT_ATT_RANGE:ANALYTICAL_ABILITY:1250:1500:1750:2000:2500:3000:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:FOCUS:1250:1500:1750:2000:2500:3000:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:WILLPOWER:1250:1500:1750:2000:2500:3000:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:PATIENCE:0:333:666:1000:2333:3666:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:MEMORY:1250:1500:1750:2000:2500:3000:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:LINGUISTIC_ABILITY:450:1050:1150:1250:1350:1550:2250]"
    lines[#lines+1]="[MENT_ATT_RANGE:MUSICALITY:0:333:666:1000:2333:3666:5000]"
    lines[#lines+1]="[MENT_ATT_RANGE:SOCIAL_AWARENESS:700:1300:1400:1500:1600:1800:2500]"
    --[[
		MENTAL_ATTRIBUTE_CREATIVITY,
		MENTAL_ATTRIBUTE_INTUITION,
		MENTAL_ATTRIBUTE_SPATIAL_SENSE,
		MENTAL_ATTRIBUTE_KINESTHETIC_SENSE,
		MENTAL_ATTRIBUTE_EMPATHY,
    ]]
    --lines[#lines+1]="[PERSONALITY:ANXIETY_PROPENSITY:0:0:0]"
    --lines[#lines+1]="[PERSONALITY:DEPRESSION_PROPENSITY:0:0:0]"
    lines[#lines+1]="[PERSONALITY:BASHFUL:0:0:0]"
    lines[#lines+1]="[PERSONALITY:STRESS_VULNERABILITY:0:0:0]"
    lines[#lines+1]="[PERSONALITY:FRIENDLINESS:0:0:0]"
    --lines[#lines+1]="[PERSONALITY:ASSERTIVENESS:100:100:100]"
    lines[#lines+1]="[PERSONALITY:DISDAIN_ADVICE:100:100:100]"
    lines[#lines+1]="[PERSONALITY:CHEER_PROPENSITY:0:0:0]"
    lines[#lines+1]="[PERSONALITY:GRATITUDE:0:0:0]"
    lines[#lines+1]="[PERSONALITY:TRUST:0:0:0]"
    lines[#lines+1]="[PERSONALITY:ALTRUISM:0:0:0]"
    --lines[#lines+1]="[PERSONALITY:SWAYED_BY_EMOTIONS:0:0:0]"
    lines[#lines+1]="[PERSONALITY:CRUELTY:100:100:100]"
    --lines[#lines+1]="[PERSONALITY:PRIDE:100:100:100]"

    add_regular_tokens(lines, options)
    populate_sphere_info(lines, options)
    lines[#lines+1]="[NATURAL_SKILL:WRESTLING:6]"
    lines[#lines+1]="[NATURAL_SKILL:BITE:6]"
    lines[#lines+1]="[NATURAL_SKILL:GRASP_STRIKE:6]"
    lines[#lines+1]="[NATURAL_SKILL:STANCE_STRIKE:6]"
    lines[#lines+1]="[NATURAL_SKILL:MELEE_COMBAT:6]"
    lines[#lines+1]="[NATURAL_SKILL:DODGING:6]"
    lines[#lines+1]="[NATURAL_SKILL:SITUATIONAL_AWARENESS:6]"

    lines[#lines+1]="[DIFFICULTY:3]"
    lines[#lines+1]="[LAIR:SIMPLE_MOUND:50]"
    lines[#lines+1]="[LAIR:SIMPLE_BURROW:50]"
    lines[#lines+1]="[LAIR_CHARACTERISTIC:HAS_DOORS:100]"
    lines[#lines+1]="[HABIT_NUM:TEST_ALL]"
    lines[#lines+1]="[HABIT:GRIND_BONE_MEAL:50]"
    lines[#lines+1]="[HABIT:COOK_BLOOD:50]"
    lines[#lines+1]="[HABIT:GRIND_VERMIN:50]"
    lines[#lines+1]="[HABIT:COOK_VERMIN:50]"
    lines[#lines+1]="[HABIT:COOK_PEOPLE:50]"
    lines[#lines+1]="[HABIT:COLLECT_TROPHIES:50]"
    lines[#lines+1]="[ODOR_STRING:DEATH]"
    lines[#lines+1]="[ODOR_LEVEL:90]"
	
    lines[#lines+1]="[CREATURE_TILE:165]" --Ñ
    lines[#lines+1]="[COLOR:2:0:0]" --Ñ
end



function skilevak_build_body(lines, options)
	lines[#lines+1]="[BODY_DETAIL_PLAN:STANDARD_MATERIALS]"
	lines[#lines+1]="[BODY_DETAIL_PLAN:STANDARD_TISSUES]"
	lines[#lines+1]="[TISSUE:LEATHER]"
	lines[#lines+1]="	[TISSUE_NAME:leather:leather]"
	lines[#lines+1]="	[TISSUE_MATERIAL:LOCAL_CREATURE_MAT:LEATHER]"
	lines[#lines+1]="	[STRUCTURAL]"
	lines[#lines+1]="	[RELATIVE_THICKNESS:1]"
	lines[#lines+1]="	[CONNECTS]"
	lines[#lines+1]="	[TISSUE_SHAPE:LAYER]"
	-- leather is a bit thicker than thread, and we want the skilevak to be a bit scary
	lines[#lines+1]="[USE_MATERIAL_TEMPLATE:CLOTH:LEATHER_TEMPLATE]"
	lines[#lines+1]="[SELECT_MATERIAL:CLOTH]"
	lines[#lines+1]="	[STATE_NAME:ALL:cloth]" 
	lines[#lines+1]="[TISSUE:CLOTH]"
	lines[#lines+1]="	[TISSUE_NAME:cloth:cloth]"
	lines[#lines+1]="	[TISSUE_MATERIAL:LOCAL_CREATURE_MAT:CLOTH]"
	lines[#lines+1]="	[STRUCTURAL]"
	lines[#lines+1]="	[RELATIVE_THICKNESS:1]"
	lines[#lines+1]="	[CONNECTS]"
	lines[#lines+1]="	[TISSUE_SHAPE:LAYER]"
	lines[#lines+1]="[TISSUE:GLOVE]"
	lines[#lines+1]="	[TISSUE_NAME:glove:glove]"
	lines[#lines+1]="	[TISSUE_MATERIAL:LOCAL_CREATURE_MAT:CLOTH]"
	lines[#lines+1]="	[STRUCTURAL]"
	lines[#lines+1]="	[RELATIVE_THICKNESS:1]"
	lines[#lines+1]="	[CONNECTS]"
	lines[#lines+1]="	[TISSUE_SHAPE:LAYER]"
	
	lines[#lines+1]="[BODY:VOLIOL_SKILEVAK_BODY:5FINGERS:GENERIC_TEETH]"
	
	lines[#lines+1]="[BODY_DETAIL_PLAN:VOLIOL_SKILEVAK_TISSUE_LAYERS]"
	lines[#lines+1]="[BODY_DETAIL_PLAN:VOLIOL_SKILEVAK_POSITIONS]"
	
	local body_size=70000 + trandom(8) * 10000 + trandom(11) * 1000
    options.body_size=body_size
    lines[#lines+1]="[SELECT_CASTE:"..(options.is_male_version and "MALE" or "FEMALE").."]"
	-- skilevaks are born as adults; the undead don't grow
    lines[#lines+1]="[BODY_SIZE:0:0:"..tostring(math.floor(body_size)).."]"
    body_size_properties(lines, body_size)
    local spouse_size=math.floor(body_size*(trandom(51)+50)/100)
    lines[#lines+1]="[SELECT_CASTE:"..(options.is_male_version and "FEMALE" or "MALE").."]"
    add_body_size(lines,spouse_size)
    lines[#lines+1]="[SELECT_CASTE:ALL]"
	-- TODO
end

function skilevak_build_powers(lines, options)

	lines[#lines+1]="[ATTACK:BITE:CHILD_BODYPART_GROUP:BY_CATEGORY:HEAD:BY_CATEGORY:TOOTH]"
	lines[#lines+1]="	[ATTACK_SKILL:BITE]"
	lines[#lines+1]="	[ATTACK_VERB:bite:bites]"
	lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
	lines[#lines+1]="	[ATTACK_PENETRATION_PERC:100]"
	lines[#lines+1]="	[ATTACK_FLAG_EDGE]"
	lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:3:3]"
	lines[#lines+1]="	[ATTACK_PRIORITY:MAIN]"
	lines[#lines+1]="	[ATTACK_FLAG_CANLATCH]"
	lines[#lines+1]="[ATTACK:KICK:BODYPART:BY_TYPE:STANCE]"
	lines[#lines+1]="	[ATTACK_SKILL:STANCE_STRIKE]"
	lines[#lines+1]="	[ATTACK_VERB:kick:kicks]"
	lines[#lines+1]="	[ATTACK_CONTACT_PERC:100]"
	lines[#lines+1]="	[ATTACK_PREPARE_AND_RECOVER:4:4]"
	lines[#lines+1]="	[ATTACK_FLAG_WITH]"
	lines[#lines+1]="	[ATTACK_PRIORITY:SECOND]"
	lines[#lines+1]="	[ATTACK_FLAG_BAD_MULTIATTACK]"
	-- TODO
end

function skilevak_build_description(lines, options)
	local desc_str="A skeletal horror wrapped in garish robes. Its legs are covered by bulbous eyes, and its skull is adorned by a live bat, covering its eye sockets like a mask. In its arms it cradles a spirit of the dead. "
	log(desc_str)
	log(options.end_phrase)
	desc_str = desc_str .. options.end_phrase

	lines[#lines+1]="[DESCRIPTION:"..desc_str.."]"
	-- TODO
end

function skilevak_build_name(lines, options)
	local n,ns="skilevak","skilevaks"
    night_troll_wife_names=night_troll_wife_names or {
        {"spouse","spouses"},
        {"mate","mates"},
        {"consort","consorts"},
        {"wife","wives"},
        {"bride","brides"},
    }
    night_troll_husband_names=night_troll_husband_names or {
        {"spouse","spouses"},
        {"mate","mates"},
        {"consort","consorts"},
        {"husband","husbands"},
        {"bridegroom","bridegrooms"},
        {"groom","grooms"}
    }
	
    local sn,sns="",""
    if options.is_male_version then
        sn,sns=table.unpack(pick_random(night_troll_wife_names))
        lines[#lines+1]="[SELECT_CASTE:MALE]"
    else
        sn,sns=table.unpack(pick_random(night_troll_husband_names))
        lines[#lines+1]="[SELECT_CASTE:FEMALE]"
    end
    local cstr=n.." "..sn..":"..n.." "..sns..":"..n.." "..sn
	local nstr=n..":"..ns..":"..n
	
    lines[#lines+1]="[CASTE_NAME:"..nstr.."]"
    if options.is_male_version then lines[#lines+1]="[SELECT_CASTE:FEMALE]"
    else lines[#lines+1] = "[SELECT_CASTE:MALE]" end
    lines[#lines+1]="[CASTE_NAME:"..cstr.."]"
    lines[#lines+1]="[GO_TO_START]"
    lines[#lines+1]="[NAME:"..nstr.."]"
end

do_once.arena_skilevak = function()
    lines={}
    for i=1,6 do
        local tok="GEN_SKILEVAK_"..i
        lines[#lines+1]="[CREATURE:"..tok.."]"
        add_generated_info(lines)
        local skilevak = creatures.night_creature.troll.voliol_skilevak(tok)
        table_merge(lines, skilevak.raws)
    end
    raws.register_creatures(lines)
end