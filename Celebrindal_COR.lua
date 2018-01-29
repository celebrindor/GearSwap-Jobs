function get_sets()
                AccIndex = 1
                AccArray = {"LowACC","MidACC","HighACC","Aftermath"}
                IdleIndex = 1
                IdleArray = {'Movement', 'Regen','Town','Magic'}				-- Default Idle Set Is Movement --
                PreshotIndex = 1
				PreshotArray = {'Any','RDM'}
				Armor = 'None'
                autoRAmode = 0
                target_distance = 5 -- Set Default Distance Here --
                send_command('input /macro book 4;wait .1;input /macro set 1') -- Change Default Macro Book Here --
				send_command('bind ^` gs c flur') --flurry toggle--
				send_command('bind ^- gs c acc') --accuracy toggle--
				send_command('bind ^= gs c pdt') --PDT toggle--
				send_command('bind != gs c mdt') --MDT toggle--
				send_command('bind !- gs c auto') --Gearset update toggle--
				send_command('bind !f12 gs c C6') --Idle Toggle--
				
                ranged_ws = S{
                                "Hot Shot","Split Shot","Sniper Shot","Slug Shot","Blast Shot","Heavy Shot","Detonator",
                                "Numbing Shot","Last Stand","Leaden Salute","Wildfire","Flaming Arrow"}
								
         
                -- Idle/Town Sets --
                sets.Idle = {}
                sets.Idle.Regen = {
                                head="Meghanada Visor +2",neck="Bathy Choker +1",
                                body="Meghanada Cuirie +2",hands="Meg. Gloves +2",ring1="Meghanada Ring",ring2="Defending Ring",left_ear="Infused Earring",ear2="Genmei earring",
                                back="Moonbeam Cape",waist="Flume Belt +1",legs="Meg. Chausses +2",feet="Meg. Jam. +2"}
                
				sets.Idle.Movement = set_combine(sets.Idle.Regen,{legs="Carmine Cuisses +1"})
				
				sets.Idle.Town = {head="Laksa. Tricorne +3",body="Laksa. Frac +3",hands="Adhemar Wrist. +1",legs="Adhemar Kecks +1",feet="Adhe. Gamashes +1",neck="Regal Necklace",waist="Kwahu Kachina Belt",left_ear="Friomisi Earring",right_ear="Telos Earring",left_ring="Dingir Ring",right_ring="Ilabrat Ring",back="Moonbeam Cape"}
	
				sets.Idle.Magic = {head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
				body="Laksa. Frac +3",
				hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
				legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
				feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
				neck="Loricate Torque +1",
				waist="Flax Sash",
				left_ear="Etiolation Earring",
				right_ear="Static Earring",
				left_ring="Defending Ring",
				right_ring="Purity Ring",
				back="Moonbeam Cape"}
         
				
				sets.Fomalhaut = {main="Hep. Sapara +1",sub="Nusku Shield",range="Fomalhaut",ammo="Chrono Bullet"}
				
				sets.Armageddon = {main="Hep. Sapara +1",sub="Nusku Shield",range="Armageddon",ammo="Chrono Bullet"}
				
				sets.DeathPenalty = {main="Fettering Blade",sub="Nusku Shield",range="Death Penalty",ammo="Chrono Bullet"}
				
				sets.Dualwield = {sub="Demers. Degen +1"}
				
				-- Preshot --
				sets.Preshot = {}
				
				sets.Preshot.Fomalhaut = {head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                     body="Oshosi Vest",hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.Fomalhaut.Any = set_combine(sets.Preshot,{head="Chass. Tricorne",body="Laksa. Frac +3"})
				
				sets.Preshot.Fomalhaut.RDM = set_combine(sets.Preshot.Any,{feet="Pursuer's Gaiters"})
				
				
				sets.Preshot.Armageddon = {head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                     body="Oshosi Vest",hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot.Armageddon.Any = set_combine(sets.Preshot,{head="Chass. Tricorne",body="Laksa. Frac +3"})
				
				sets.Preshot.Armageddon.RDM = set_combine(sets.Preshot.Any,{feet="Pursuer's Gaiters"})
				
				
				sets.Preshot['Death Penalty'] = {head={ name="Taeon Chapeau", augments={'"Snapshot"+5','"Snapshot"+5',}},
                     body="Oshosi Vest",hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},waist="Yemaya Belt",legs="Adhemar Kecks",feet="Meg. Jam. +2"}
				
				sets.Preshot['Death Penalty'].Any = set_combine(sets.Preshot,{head="Chass. Tricorne",body="Laksa. Frac +3"})
				
				sets.Preshot['Death Penalty'].RDM = set_combine(sets.Preshot.Any,{feet="Pursuer's Gaiters"})
				
				
				
                -- Shooting Base Set --
				sets.Midshot = {ammo="Chrono Bullet",
					head="Meghanada Visor +2",
					body="Mummu Jacket +2",
					hands="Adhemar Wrist. +1",
					legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
					feet="Adhe. Gamashes +1",
					neck="Iskur Gorget",
					waist="Yemaya Belt",
					left_ear="Dedition Earring",
					right_ear="Telos Earring",
					left_ring="Ilabrat Ring",
					right_ring="Apate Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}}
				
				sets.Midshot.MidACC = set_combine(sets.Midshot,{
								left_ear="Enervating Earring"})
				
				sets.Midshot.HighACC = set_combine(sets.Midshot.MidACC,{
				                body="Laksa. Frac +3",right_ring="Regal Ring",left_ring="Cacoethic Ring +1"})
				sets.Midshot.Aftermath = sets.Midshot
         
                
				
				-- Fomalhaut Sets --
                sets.Midshot.Fomalhaut = {ammo="Chrono Bullet",
					head="Meghanada Visor +2",
					body="Mummu Jacket +2",
					hands="Adhemar Wrist. +1",
					legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
					feet="Adhe. Gamashes +1",
					neck="Iskur Gorget",
					waist="Yemaya Belt",
					left_ear="Dedition Earring",
					right_ear="Telos Earring",
					left_ring="Ilabrat Ring",
					right_ring="Apate Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}}
               
                sets.Midshot.Fomalhaut.MidACC = set_combine(sets.Midshot.Fomalhaut,{
								left_ear="Enervating Earring"})
               
                sets.Midshot.Fomalhaut.HighACC = set_combine(sets.Midshot.Fomalhaut.MidACC,{
                                body="Laksa. Frac +3",right_ring="Regal Ring",left_ring="Cacoethic Ring +1"})
				sets.Midshot.Fomalhaut.Aftermath = sets.Midshot.Fomalhaut

				
				-- Armageddon Sets --
                sets.Midshot.Armageddon = {ammo="Chrono Bullet",
					head="Meghanada Visor +2",
					body="Mummu Jacket +2",
					hands="Adhemar Wrist. +1",
					legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
					feet="Adhe. Gamashes +1",
					neck="Iskur Gorget",
					waist="Yemaya Belt",
					left_ear="Dedition Earring",
					right_ear="Telos Earring",
					left_ring="Ilabrat Ring",
					right_ring="Apate Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}}
               
                sets.Midshot.Armageddon.MidACC =  set_combine(sets.Midshot.Armageddon,{left_ear="Enervating Earring"})
               
                sets.Midshot.Armageddon.HighACC = set_combine(sets.Midshot.Armageddon.MidACC,{
                               body="Laksa. Frac +3",right_ring="Regal Ring",left_ring="Cacoethic Ring +1"})
								
				sets.Midshot.Armageddon.Aftermath = {ammo="Chrono Bullet",head="Meghanada Visor +2",neck="Iskur Gorget",left_ear="Enervating Earring",ear2="Telos Earring",body="Mummu Jacket +2",hands="Mummu Wrists +2",ring1="Begrudging Ring",ring2="Mummu Ring",back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}},waist="Kwahu Kachina Belt",legs="Adhemar Kecks +1",feet="Adhe. Gamashes +1"}	

					
				-- Death Penalty Sets --
				sets.Midshot['Death Penalty'] = {ammo="Chrono Bullet",
					head="Meghanada Visor +2",
					body="Mummu Jacket +2",
					hands="Adhemar Wrist. +1",
					legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
					feet="Adhe. Gamashes +1",
					neck="Iskur Gorget",
					waist="Yemaya Belt",
					left_ear="Dedition Earring",
					right_ear="Telos Earring",
					left_ring="Ilabrat Ring",
					right_ring="Apate Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}}
               
                sets.Midshot['Death Penalty'].MidACC = set_combine(sets.Midshot['Death Penalty'],{
								left_ear="Enervating Earring"})
               
                sets.Midshot['Death Penalty'].HighACC = set_combine(sets.Midshot['Death Penalty'].MidACC,{
                                body="Laksa. Frac +3",right_ring="Regal Ring",left_ring="Cacoethic Ring +1"})
				sets.Midshot['Death Penalty'].Aftermath = sets.Midshot['Death Penalty']
				
				
				
                -- Barrage Base Set --
                Barrage = {}
     
				sets.Midshot.Barrage = {ammo="Chrono Bullet",head="Meghanada Visor +2",
					body="Mummu Jacket +2",
					hands="Adhemar Wrist. +1",
					legs={ name="Adhemar Kecks +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20',}},
					feet="Adhe. Gamashes +1",
					neck="Iskur Gorget",
					waist="Kwahu Kachina Belt",
					left_ear="Enervating Earring",
					right_ear="Telos Earring",
					left_ring="Ilabrat Ring",
					right_ring="Apate Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Rng.Acc.+10','"Store TP"+10',}}}

				sets.Midshot.MidACC.Barrage = set_combine(sets.Midshot.Barrage,{right_ring="Cacoethic Ring +1"})
				
				sets.Midshot.HighACC.Barrage = set_combine(sets.Midshot.Barrage.MidACC,{body="Laksa. Frac +3",right_ring="Regal Ring"})
				
				-- Triple Shot Sets --
				
				sets.Midshot.Fomalhaut.Tripleshot = set_combine(sets.Midshot,{head="Oshosi Mask",body="Chasseur's Frac +1",left_ear="Enervating Earring",right_ring="Cacoethic Ring +1",legs="Oshosi Trousers",feet="Oshosi Leggings"})
				
				sets.Midshot.Fomalhaut.MidACC.Tripleshot = sets.Midshot.Fomalhaut.Tripleshot
				
				sets.Midshot.Fomalhaut.HighACC.Tripleshot = sets.Midshot.Fomalhaut.Tripleshot
				
				sets.Midshot.Fomalhaut.Aftermath.Tripleshot = sets.Midshot.Fomalhaut.Tripleshot
				
				sets.Midshot.Armageddon.Tripleshot = set_combine(sets.Midshot,{head="Oshosi Mask",body="Chasseur's Frac +1",left_ear="Enervating Earring",right_ring="Cacoethic Ring +1",legs="Oshosi Trousers",feet="Oshosi Leggings"})
				
				sets.Midshot.Armageddon.MidACC.Tripleshot = sets.Midshot.Armageddon.Tripleshot
				
				sets.Midshot.Armageddon.HighACC.Tripleshot = sets.Midshot.Armageddon.Tripleshot
				
				sets.Midshot.Armageddon.Aftermath.Tripleshot = set_combine(sets.Midshot.Armageddon.Aftermath,{head="Oshosi Mask",body="Chasseur's Frac +1",legs="Oshosi Trousers",feet="Oshosi Leggings"})
				
				sets.Midshot['Death Penalty'].Tripleshot = set_combine(sets.Midshot,{head="Oshosi Mask",body="Chasseur's Frac +1",left_ear="Enervating Earring",right_ring="Cacoethic Ring +1",legs="Oshosi Trousers",feet="Oshosi Leggings"})
			
				sets.Midshot['Death Penalty'].MidACC.Tripleshot = sets.Midshot['Death Penalty'].Tripleshot
				
				sets.Midshot['Death Penalty'].HighACC.Tripleshot = sets.Midshot['Death Penalty'].Tripleshot
				
				sets.Midshot['Death Penalty'].Aftermath.Tripleshot = sets.Midshot['Death Penalty'].Tripleshot
			   
				
				-- PDT/MDT Sets --
                sets.PDT = {
								head="Meghanada Visor +2",body="Meg. Cuirie +2",hands="Meg. Gloves +2",ring1="Patricius Ring",ring2="Defending Ring",back="Moonbeam Cape",legs="Carmine Cuisses +1",waist="Flume Belt +1",feet="Meg. Jam. +2",neck="Loricate Torque +1"}
         
                sets.MDT = {
								head="Dampening Tam",neck="Loricate Torque +1",body="Laksa. Frac +3",hands="Floral Gauntlets",ring1="Purity Ring",ring2="Defending Ring",legs="Gyve trousers",feet="Oshosi Leggings",waist="Flax Sash",back="Moonbeam Cape",left_ear="Etiolation Earring",ear2="Static Earring"}
         
                -- Melee Sets --
                sets.Melee =  {
					head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
					body={ name="Herculean Vest", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','AGI+2','Accuracy+7',}},
					hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%',}},
					legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
					feet={ name="Taeon Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+2','STR+4 DEX+4',}},
					neck="Combatant's Torque",
					waist="Reiki Yotai",
					left_ear="Eabani Earring",
					right_ear="Suppanomimi",
					left_ring="Hetairoi Ring",
					right_ring="Chirich Ring",
					back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10',}}}
                               
                sets.Melee.MidACC = set_combine(sets.Melee,{hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','DEX+3','Accuracy+9','Attack+3',}},legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},feet={ name="Herculean Boots", augments={'Crit.hit rate+3','DEX+9','Quadruple Attack +2','Accuracy+12 Attack+12','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},left_ear="Cessance Earring"})
                 
                sets.Melee.HighACC = set_combine(sets.Melee.MidACC,{head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','DEX+3','Accuracy+9','Attack+3',}},left_ear="Telos Earring"})
				
				sets.Melee.Aftermath = set_combine(sets.Melee,{hands={ name="Herculean Gloves", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','DEX+3','Accuracy+9','Attack+3',}},legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},feet={ name="Herculean Boots", augments={'Crit.hit rate+3','DEX+9','Quadruple Attack +2','Accuracy+12 Attack+12','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},left_ear="Cessance Earring"})
         
                -- WS Base Set --
                sets.WS = {}
				
         
                -- WS Sets --
                
     
                -- Last Stand --
                sets.WS['Last Stand'] = {
					ammo="Chrono Bullet",
					head={ name="Herculean Helm", augments={'Rng.Acc.+23','Weapon skill damage +3%','AGI+6',}},
					body="Laksa. Frac +3",
					hands="Meg. Gloves +2",
					legs={ name="Herculean Trousers", augments={'Weapon skill damage +3%','AGI+10','Rng.Acc.+11','Rng.Atk.+12',}},
					feet={ name="Herculean Boots", augments={'Rng.Acc.+24 Rng.Atk.+24','"Subtle Blow"+10','STR+6','Rng.Acc.+2','Rng.Atk.+15',}},
					neck="Fotia Gorget",
					waist="Fotia Belt",
					left_ear="Ishvara Earring",
					right_ear={ name="Moonshade Earring", augments={'MP+25','TP Bonus +25',}},
					left_ring="Ilabrat Ring",
					right_ring="Regal Ring",
					back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}}
				
                sets.WS['Last Stand'].MidACC = set_combine(sets.WS["Last Stand"],{left_ring="Cacoethic Ring +1"})
               
                sets.WS['Last Stand'].HighACC = set_combine(sets.WS["Last Stand"].MidACC,{left_ear="Telos Earring",waist="Yemaya Belt"})
								
				sets.WS['Last Stand'].Aftermath = sets.WS['Last Stand']
				
				-- Detonator --
				
				sets.WS.Detonator = sets.WS['Last Stand']
				
				sets.WS.Detonator.MidACC = sets.WS['Last Stand'].MidACC
				
				sets.WS.Detonator.HighACC = sets.WS['Last Stand'].HighACC
				
				sets.WS.Detonator.Aftermath = sets.WS.Detonator
				
				-- Slug Shot --
				
				sets.WS['Slug Shot'] = sets.WS['Last Stand']
				
				sets.WS['Slug Shot'].MidACC = sets.WS['Last Stand'].MidACC
				
				sets.WS['Slug Shot'].HighACC = sets.WS['Last Stand'].HighACC
				
				sets.WS['Slug Shot'].Aftermath = sets.WS['Slug Shot']
				
				-- Wildfire --
				sets.WS['Wildfire'] = {
					ammo="Living Bullet",
					head={ name="Herculean Helm", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Weapon skill damage +4%','Mag. Acc.+3','"Mag.Atk.Bns."+5',}},
					body="Laksa. Frac +3",
					hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
					legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Blood Pact Dmg.+6','Weapon skill damage +5%','Accuracy+6 Attack+6','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
					feet={ name="Herculean Boots", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','"Mag.Atk.Bns."+28','Accuracy+13 Attack+13','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
					neck="Baetyl Pendant",
					waist="Eschan Stone",
					left_ear="Friomisi Earring",
					right_ear="Novio Earring",
					left_ring="Dingir Ring",
					right_ring="Shiva Ring +1",
					back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+1','Weapon skill damage +3%',}}}
				
				sets.WS['Wildfire'].MidACC = set_combine(sets.WS['Wildfire'],{})
				
				sets.WS['Wildfire'].HighACC = set_combine(sets.WS['Wildfire'].MidACC,{neck="Sanctity Necklace"})
				
				sets.WS['Wildfire'].Aftermath = sets.WS['Wildfire']
				
				-- Hot Shot --
				sets.WS['Hot Shot'] = {
					ammo="Living Bullet",
					head={ name="Herculean Helm", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Weapon skill damage +4%','Mag. Acc.+3','"Mag.Atk.Bns."+5',}},
					body="Laksa. Frac +3",
					hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
					legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Blood Pact Dmg.+6','Weapon skill damage +5%','Accuracy+6 Attack+6','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
					feet={ name="Herculean Boots", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','"Mag.Atk.Bns."+28','Accuracy+13 Attack+13','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
					neck="Fotia Gorget",
					waist="Fotia Belt",
					left_ear="Friomisi Earring",
					right_ear={ name="Moonshade Earring", augments={'MP+25','TP Bonus +25',}},
					left_ring="Dingir Ring",
					right_ring="Shiva Ring +1",
					back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+1','Weapon skill damage +3%',}}}
				
				sets.WS['Hot Shot'].MidACC = set_combine(sets.WS['Hot Shot'],{})
				
				sets.WS['Hot Shot'].HighACC = set_combine(sets.WS['Hot Shot'].MidACC,{})
				
				sets.WS['Hot Shot'].Aftermath = sets.WS['Hot Shot']
				
				-- Leaden Salute --
				sets.WS['Leaden Salute'] = {ammo="Living Bullet",
					head="Pixie Hairpin +1",
					body="Laksa. Frac +3",
					hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
					legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Blood Pact Dmg.+6','Weapon skill damage +5%','Accuracy+6 Attack+6','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
					feet={ name="Herculean Boots", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','"Mag.Atk.Bns."+28','Accuracy+13 Attack+13','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
					neck="Baetyl Pendant",
					waist="Eschan Stone",
					left_ear="Friomisi Earring",
					right_ear={ name="Moonshade Earring", augments={'MP+25','TP Bonus +25',}},
					left_ring="Dingir Ring",
					right_ring="Archon Ring",
					back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+1','Weapon skill damage +3%',}}}
				
				sets.WS['Leaden Salute'].MidACC = set_combine(sets.WS['Leaden Salute'],{})
				
				sets.WS['Leaden Salute'].HighACC = set_combine(sets.WS['Leaden Salute'].MidACC,{neck="Sanctity Necklace"})
				
				sets.WS['Leaden Salute'].Aftermath = sets.WS['Leaden Salute']
				
				-- Dagger Weapon Skills --
				
				sets.WS['Exenterator'] = {
							head="Adhemar Bonnet",neck="Fotia Gorget",left_ear="Infused Earring",ear2="Digni. Earring",body="Meg. Cuirie +2",hands="Mummu Wrists +2",ring1="Ilabrat Ring",ring2="Regal Ring",back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%',}},waist="Fotia Belt",legs="Jokushu Haidate",feet="Thereoid Greaves"}
				
				sets.WS['Evisceration'] = sets.WS['Exenterator']
				
				sets.WS['Aeolian Edge'] = sets.WS['Wildfire']
				
				-- Sword Weapon Skills --
				
				sets.WS['Savage Blade'] = {head={ name="Herculean Helm", augments={'Rng.Acc.+23','Weapon skill damage +3%','AGI+6',}},body={ name="Herculean Vest", augments={'Rng.Acc.+26','Weapon skill damage +3%','AGI+15',}},hands="Meg. Gloves +2",legs={ name="Herculean Trousers", augments={'Accuracy+16 Attack+16','Weapon skill damage +4%','STR+8',}},feet="Carmine Greaves +1",neck="Fotia Gorget",waist="Fotia Belt",left_ear="Ishvara Earring",right_ear={ name="Moonshade Earring", augments={'MP+25','TP Bonus +25',}},left_ring="Rufescent Ring",right_ring="Regal Ring",back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+1','Weapon skill damage +3%',}}}
				
				sets.WS['Swift Blade'] = {head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
					body={ name="Herculean Vest", augments={'Accuracy+24 Attack+24','"Triple Atk."+4','AGI+2','Accuracy+7',}},
					hands="Regal Gloves",
					legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
					feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
					neck="Fotia Gorget",
					waist="Fotia Belt",
					left_ear="Brutal Earring",
					right_ear="Cessance Earring",
					left_ring="Regal Ring",
					right_ring="Rufescent Ring",
					back="Bleating Mantle"}
					
				sets.WS.Requiescat = sets.WS['Swift Blade']
				
         
                -- JA Sets --
                sets.JA = {}
                
                -- Waltz Set --
                sets.Waltz = {head="Mummu Bonnet +1",body="Passion Jacket",}
         
                sets.Precast = {}
                -- Fastcast Set --
                sets.Precast.FastCast = {head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},body=	"Dread Jupon",hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},neck="Baetyl Pendant",left_ear="Etiolation Earring",right_ear="Loquac. Earring",left_ring="Weather. Ring",right_ring="Kishar Ring",back="Moonbeam Cape"}
               
                -- Utsusemi Precast Set --
                sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast,{body="Passion Jacket",neck="Magoraga Beads"})
         
                sets.Midcast = {}
               
                -- Magic Haste Set --
                sets.Midcast.Haste = set_combine(sets.PDT,{})
				
				--Quick Draw--
 
				sets.JA['Quick Draw'] = {
					ammo="Living Bullet",
					head={ name="Herculean Helm", augments={'Mag. Acc.+13 "Mag.Atk.Bns."+13','Weapon skill damage +4%','Mag. Acc.+3','"Mag.Atk.Bns."+5',}},
					--"Laksa. Tricorne +3",--
					neck="Baetyl Pendant",
					ear1="Novio earring",
					ear2="Friomisi earring",    
					body="Samnuha Coat",
					hands="Carmine Fin. Ga. +1",
					ring1="Dingir Ring",
					ring2="Shiva Ring +1",
					back={ name="Gunslinger's Cape", augments={'Enmity-2','"Mag.Atk.Bns."+1','Weapon skill damage +3%',}},
					waist="Eschan stone",
					legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Blood Pact Dmg.+6','Weapon skill damage +5%','Accuracy+6 Attack+6','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
					feet={ name="Herculean Boots", augments={'Pet: Attack+28 Pet: Rng.Atk.+28','"Mag.Atk.Bns."+28','Accuracy+13 Attack+13','Mag. Acc.+19 "Mag.Atk.Bns."+19',}}}
					--"Laksa. Boots +3"--
				
				sets.JA['Quick Draw'].MidACC = set_combine(sets.JA['Quick Draw'],{head="Laksa. Tricorne +3"})
				
				sets.JA['Quick Draw'].HighACC = set_combine(sets.JA['Quick Draw'].MidACC,{feet="Laksa. Boots +3"})
				
				sets.JA['Light Shot'] = sets.JA['Quick Draw'].HighACC
				
				sets.JA['Dark Shot'] = sets.JA['Quick Draw'].HighACC
				
				--Rolls/etc --
				
				sets.JA['Random Deal'] = {body="Lanun Frac"}
				
				sets.JA['Wild Card'] = {feet="Lanun Bottes"}
				
				sets.JA['Snake Eye'] = {legs="Lanun Culottes"}
				
				sets.JA['Fold'] = {hands="Lanun Gants"}
				
				sets.JA['Triple Shot'] = {body="Chasseur's Frac +1"}
				
				sets.JA['Phantom Roll'] = {head="Lanun Tricorne",body="Lanun Frac",hands="Chasseur's Gants",neck="Regal Necklace", back="Camulus's Mantle"}
				
				sets.JA['Double-Up'] = {head="Lanun Tricorne",body="Lanun Frac",hands="Chasseur's Gants",neck="Regal Necklace", back="Camulus's Mantle"}
				
				sets.JA["Tactician's Roll"] ={head="Lanun Tricorne",body="Chasseur's Frac +1",hands="Chasseur's Gants",neck="Regal Necklace",back="Camulus's Mantle"}
				
				sets.JA["Courser's Roll"] = {head="Lanun Tricorne",body="Lanun Frac",hands="Chasseur's Gants",feet="Chasseur's Bottes +1",neck="Regal Necklace",back="Camulus's Mantle"}
				
				sets.JA["Blitzer's Roll"] = {head="Chasseur's Tricorne",body="Lanun Frac",hands="Chasseur's Gants",neck="Regal Necklace",back="Camulus's Mantle"}
				
				sets.JA["Caster's Roll"] = {head="Lanun Tricorne",body="Lanun Frac",hands="Chasseur's Gants",legs="Chasseur's Culottes +1",neck="Regal Necklace",back="Camulus's Mantle"}
		
		
		
        end
         
        function pretarget(spell,action)
                if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
                        cancel_spell()
                        send_command('input /item "Echo Drops" <me>')
                elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
                        cancel_spell()
                        send_command('Aggressor')
                elseif spell.english == "Seigan" and buffactive.Seigan then -- Change Seigan To Third Eye If Seigan Is On --
                        cancel_spell()
                        send_command('ThirdEye')
                elseif spell.english == "Meditate" and player.tp > 290 then -- Cancel Meditate If TP Is Above 290 --
                        cancel_spell()
                        add_to_chat(123, spell.name .. ' Canceled: ['..player.tp..' TP]')
                elseif (spell.english == 'Ranged' and spell.target.distance > 24.9) or (player.status == 'Engaged' and ((ranged_ws:contains(spell.english) and spell.target.distance > 16+target_distance))) then -- Cancel Ranged Attack or WS If You Are Out Of Range --
                        cancel_spell()
                        add_to_chat(123, spell.name..' Canceled: [Out of Range]')
                        return
                end
        end
         
        function precast(spell,action)
                if spell.english == 'Ranged' then
					equipSet = sets.Preshot
					add_to_chat(57,"Flurry Level "..PreshotArray[PreshotIndex])
				if buffactive['Flurry'] then
					add_to_chat(122,"Flurry found")
				if PreshotArray[PreshotIndex] == 'RDM' then
				if  equipSet[player.equipment.range].RDM then 
					equipSet =  equipSet[player.equipment.range].RDM
				end
		else
				if  equipSet[player.equipment.range].Any then 
					equipSet =  equipSet[player.equipment.range].Any
		end
		end
		else
				if  equipSet[player.equipment.range] then 
					equipSet =  equipSet[player.equipment.range]
		end
					add_to_chat(122,"No flurry")
		end
   
					equip(equipSet)
			
			
                elseif spell.type == "WeaponSkill" then
									equipSet = sets.WS
                                if equipSet[spell.english] then
                                        equipSet = equipSet[spell.english]
                                end
                                if equipSet[AccArray[AccIndex]] then
                                        equipSet = equipSet[AccArray[AccIndex]]
                                end
                                if player.tp > 2249	 or buffactive.Sekkanoki then
                                        if spell.english == "Last Stand" then -- Equip Telos Earring When You Have 3000 TP or Sekkanoki For Last Stand --
                                                equipSet = set_combine(equipSet,{ear2="Telos Earring"})
                                        elseif spell.english == "Leaden Salute" then --Equip Ishvara Earring When you have 3000 TP or Sekkanoki for Leaden Salute --
												equipSet = set_combine(equipSet,{ear2="Ishvara Earring"})
										end
                                end
                                equip(equipSet)
                        
						
                elseif spell.type=="JobAbility" then
                        if sets.JA[spell.english] then
                                equip(sets.JA[spell.english])
                        end
                elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                        if string.find(spell.english,'Utsusemi') then
                                if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
                                        cancel_spell()
                                        add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
                                        return
                                else
                                        equip(sets.Precast.Utsusemi)
                                end
                        else	
                                equip(sets.Precast.FastCast)
                        end
                elseif spell.type == "Waltz" then
                        equip(sets.Waltz)
                elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
                        cast_delay(0.2)
                        send_command('cancel Sneak')
                end
	
	if spell.type == 'CorsairRoll' or spell.english == "Double-Up" then
		
			sets.JA['Phantom Roll'] = sets.JA['Phantom Roll']
			equip(sets.JA['Phantom Roll'])

	end
	
	if spell.english == "Blitzer's Roll" then
		equip(sets.JA["Blitzer's Roll"])
	end
	if spell.english == "Tactician's Roll" then
		equip(sets.JA["Tactician's Roll"])
	end
	if spell.english == "Courser's Roll" then
		equip(sets.JA["Courser's Roll"])
	end
	if spell.english == "Castor's Roll" then
		equip(sets.JA["Caster's Roll"])
	end
	
	if spell.type == 'CorsairShot' then
		equip(sets.JA['Quick Draw'])
	end
	 
	if spell.english == "Random Deal" then
		equip(sets.JA['Random Deal'])
	end
	
	if spell.english == "Double-Up" then
		equip(sets.JA['Phantom Roll'])
	end
	if spell.english == "Wild Card" then
		equip(sets.JA['Wild Card'])
	end
	if spell.english == "Fold" then
		equip(sets.JA['Fold'])
	end
	if spell.english == "Snake Eye" then
		equip(sets.JA['Snake Eye'])
	end
	if spell.english == "Triple Shot" then
		equip(sets.JA['Triple Shot'])
	end
        end
		


		
        function midcast(spell,action)
                if spell.english == 'Ranged' then
                        equipSet = sets.Midshot
                        if equipSet[player.equipment.range] then
                                equipSet = equipSet[player.equipment.range]
                        end
                        if equipSet[AccArray[AccIndex]] then
                                equipSet = equipSet[AccArray[AccIndex]]
                        end
						
						
                        if buffactive.Barrage and equipSet["Barrage"] then
                                equipSet = equipSet["Barrage"]
                        end
						if buffactive['Triple Shot'] and equipSet["Tripleshot"] then
								equipSet = equipSet["Tripleshot"]
						end
					
                        equip(equipSet)
						
                elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
                        if string.find(spell.english,'Utsusemi') then
                                if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
                                        send_command('@wait 1.7;cancel Copy Image*')
                                end
                                equip(sets.Midcast.Haste)
                        elseif spell.english == 'Monomi: Ichi' then
                                if buffactive['Sneak'] then
                                        send_command('@wait 1.7;cancel sneak')
                                end
                                equip(sets.Midcast.Haste)
                        else
                                equip(sets.Midcast.Haste)
                        end
                end
						if spell.english == "Leaden Salute" and (buffactive['Voidtorm']) then
						add_to_chat(125,'weather mode') 
						equip({waist="Hachirin-no-Obi"})
					
				end
						if spell.english == "Wildfire" and (buffactive['Firestorm']) then
						add_to_chat(125,'weather mode')
						equip({waist="Hachirin-no-Obi"})
				end
				
		
    end
 
        
         
        function aftercast(spell,action)
                if spell.english == 'Ranged' and autoRAmode==1 then
                        autoRA()
                elseif spell.type == "WeaponSkill" and not spell.interrupted then
                        send_command('wait 0.2;gs c TP')
                else
                        status_change(player.status)
                end
        end
         
        function status_change(new,old)
                if Armor == 'PDT' then
                        equip(sets.PDT)
                elseif Armor == 'MDT' then
                        equip(sets.MDT)
                elseif new == 'Engaged' then
                        equipSet = sets.Melee
                        if equipSet[AccArray[AccIndex]] then
                                equipSet = equipSet[AccArray[AccIndex]]
                        end
                        equip(equipSet)
                else
                        equip(sets.Idle[IdleArray[IdleIndex]])
                end
        end


         
        -- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
        function self_command(command)
                if command == 'acc' then -- Accuracy Level Toggle --
                        AccIndex = (AccIndex % #AccArray) + 1
                        add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
                        status_change(player.status)
				elseif command == 'flur' then -- Flurry Level Toggle --
						PreshotIndex = (PreshotIndex % #PreshotArray) + 1
						add_to_chat(158,'Flurry Level: ' ..PreshotArray[PreshotIndex])
						status_change(player.status)
                elseif command == 'auto' then -- Auto Update Gear Toggle --
                        status_change(player.status)
                        add_to_chat(158,'Auto Update Gear')
                elseif command == 'pdt' then -- PDT Toggle --
                        if Armor == 'PDT' then
                                Armor = 'None'
                                add_to_chat(123,'PDT Set: [Unlocked]')
                        else
                                Armor = 'PDT'
                                add_to_chat(158,'PDT Set: [Locked]')
                        end
                        status_change(player.status)
                elseif command == 'mdt' then -- MDT Toggle --
                        if Armor == 'MDT' then
                                Armor = 'None'
                                add_to_chat(123,'MDT Set: [Unlocked]')
                        else
                                Armor = 'MDT'
                                add_to_chat(158,'MDT Set: [Locked]')
                        end
                        status_change(player.status)
                elseif command == 'C8' then -- Distance Toggle --
                        if player.target.distance then
                                target_distance = math.floor(player.target.distance*10)/10
                                add_to_chat(158,'Distance: '..target_distance)
                        else
                                add_to_chat(123,'No Target Selected')
                        end
                elseif command == 'C6' then -- Idle Toggle --
                        IdleIndex = (IdleIndex % #IdleArray) + 1
                        add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
                        status_change(player.status)
                elseif command == 'AutoRA' then -- Auto Ranged Attack Toggle. *Don't Rely On This. It Isn't As Fast As Shooting Manually. It Is Mainly For AFK or When You Dualbox* --
                        if autoRAmode == 0 then
                                autoRAmode = 1
                                add_to_chat(158,'AutoRA Mode: [ON]')
                        else
                                autoRAmode = 0
                                add_to_chat(123,'AutoRA Mode: [OFF]')
                        end
                elseif command == 'TP' then
                        add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
                elseif command:match('^SC%d$') then
                        send_command('//' .. sc_map[command])
                end
        end
         
        function autoRA()
                send_command('@wait 2.5; input /ra <t>')
        end
