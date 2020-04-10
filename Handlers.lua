local L = CEPGP_Locale:GetLocale("CEPGP")

function CEPGP_handleComms(event, arg1, arg2)
	--arg1 = message; arg2 = sender
	local calname = ""; --plus
	local subflat = false; --plus
	local orgname = arg2; --plus
	for i = 1, CEPGP_ntgetn(CEPGP_subroster) do --plus
		if CEPGP_subroster[i][3] == arg2 and CEPGP_subroster[i][1] and CEPGP_subroster[i][2] ~= CEPGP_subroster[i][3] then --plus
			if CEPGP_roster[CEPGP_subroster[i][2]] then --plus
				calname = CEPGP_subroster[i][2]; --plus
				subflat = true; --plus
				break; --plus
			end --plus
		end --plus
	end --plus
	local arg2_C = arg2; --plus 0410
	if string.find(arg2, "卍") then --plus 0410
		arg2_C = string.gsub(arg2, "卍", "#"); --plus 0410
	end --plus 0410
	if event == "CHAT_MSG_WHISPER" and (string.lower(arg1) == string.lower(CEPGP_keyword) or string.lower(arg1) == string.lower(CEPGP_keyword_2) or string.lower(arg1) == string.lower(CEPGP_keyword_3)) and CEPGP_distributing then --plus
		local duplicate = false;
		for i = 1, table.getn(CEPGP_responses) do
			if CEPGP_responses[i] == arg2 then
				duplicate = true;
				if CEPGP_debugMode then
					CEPGP_print("Duplicate entry. " .. arg2 .. " not registered (" .. CEPGP_keyword .. ")");
				end
			end
		end
		if not duplicate then
			if CEPGP_debugMode then
				CEPGP_print(arg2 .. " registered (" .. CEPGP_keyword .. ")");
			end
			local _, itemLink , _, _, _, _, _, _, slot = GetItemInfo(CEPGP_DistID);
			if not slot and CEPGP_itemExists(CEPGP_DistID) then
				local item = Item:CreateFromItemID(CEPGP_DistID);
				item:ContinueOnItemLoad(function()
					local _, itemLink , _, _, _, _, _, _, slot = GetItemInfo(CEPGP_DistID)
					local EP, GP = nil;
					local SubEP, SubGP = nil; --plus
					local calname_Mes = ""; --plus
					local calname_Mes_C = ""; --plus 0410
					local inGuild = false;
					if CEPGP_tContains(CEPGP_roster, arg2, true) then
						EP, GP = CEPGP_getEPGP(CEPGP_roster[arg2][5]);
						if CEPGP_minEP[1] and CEPGP_minEP[2] > EP then
							CEPGP_print(arg2 .. " is interested in this item but doesn't have enough EP.");
							return;
						end
						class = CEPGP_roster[arg2][2];
						inGuild = true;
					end
					if subflat then --plus
						SubEP, SubGP = CEPGP_getEPGP(CEPGP_roster[calname][5]); --plus
						if CEPGP_minEP[1] and CEPGP_minEP[2] > SubEP then
							CEPGP_print(calname .. " is interested in this item but doesn't have enough EP.");
							return;
						end
						if inGuild == false then
							local subtotal = GetNumGroupMembers();
							for i = 1, subtotal do
								if arg2 == GetRaidRosterInfo(i) then
									_, _, _, _, class = GetRaidRosterInfo(i);
								end
							end
						end
					end --plus
					--CEPGP_SendAddonMsg(arg2..";distslot;"..CEPGP_distSlot, "RAID");--解放锁私聊（原只能1次），master修改即可
					if CEPGP_distributing then
						if (inGuild or subflat) and not CEPGP_suppress_announcements then --plus
							if subflat then --plus
								EP, GP = SubEP, SubGP; --plus
								calname_Mes = "[" .. calname .. "]"; --plus
								calname_Mes_C = calname_Mes; --plus 0410
								if string.find(calname_Mes, "卍") then --plus 0410
									calname_Mes_C = string.gsub(calname_Mes, "卍", "#"); --plus 0410
								end --plus 0410
								if CEPGP_InitialGP_flag and CEPGP_tContains(CEPGP_InitialGP_roster, calname, true) then --plus 初始GP功能
									if CEPGP_InitialGP_roster[calname][1] then --plus
										if GP < CEPGP_InitialGP_roster[calname][2] then --plus
											GP = CEPGP_InitialGP_roster[calname][2]; --plus
										end --plus
									end --plus
								end --plus
							end --plus
							if string.lower(arg1) == string.lower(CEPGP_keyword_2) then --plus
								CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 貪婪 " .. itemLink, CEPGP_lootChannel); --plus
							elseif string.lower(arg1) == string.lower(CEPGP_keyword_3) then --plus
								CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 放棄 " .. itemLink, CEPGP_lootChannel); --plus
							else
								if CEPGP_InitialGP_flag and not subflat and CEPGP_tContains(CEPGP_InitialGP_roster, arg2, true) then --plus 初始GP功能
									if CEPGP_InitialGP_roster[arg2][1] then --plus
										if GP < CEPGP_InitialGP_roster[arg2][2] then --plus
											GP = CEPGP_InitialGP_roster[arg2][2]; --plus
										end --plus
									end --plus
								end --plus
								CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 需求 " .. itemLink .. " (" .. string.format("%.2f",(math.floor((EP*100/GP))/100)) .. " PR)", CEPGP_lootChannel); --plus
							end
							if CEPGP_DistID == MulDistID then --plus 角色歷史獲取某裝備數量
								local xcount = 0;
								local tname = "";
								for i=1, CEPGP_ntgetn(TRAFFIC) do
									if subflat then 
										tname = calname;
									else
										tname = arg2;
									end
									if TRAFFIC[i][8] == itemLink and TRAFFIC[i][1] == tname then
										xcount = xcount + 1;
									end
								end
								CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 歷史獲取 " .. itemLink .. " 爲 " .. xcount .. " 次", CEPGP_lootChannel);
							end --plus
						elseif not CEPGP_suppress_announcements then
							local total = GetNumGroupMembers();
							for i = 1, total do
								if arg2 == GetRaidRosterInfo(i) then
									_, _, _, _, class = GetRaidRosterInfo(i);
								end
							end
								CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. CEPGP_response_buttons[tonumber(arg1)] .. " (不是公會成員)", CEPGP_lootChannel);
						end
						if CEPGP_isML() == 0 then --If you are the master looter
							CEPGP_SendAddonMsg("!need;"..arg2..";"..CEPGP_DistID, "RAID"); --!need;playername;itemID (of the item being distributed) is sent for sharing with raid assist
							CEPGP_itemsTable[arg2] = {};
							CEPGP_itemsTable[arg2][3] = CEPGP_response_buttons[tonumber(arg1)]; --plus
						end
					end
					CEPGP_UpdateLootScrollBar();
				end);
			else
				--	Sends an addon message to the person who whispered !need to me
				--	See Communications.lua:2 to continue this chain
				local EP, GP = nil;
				local SubEP, SubGP = nil; --plus
				local calname_Mes = ""; --plus
				local calname_Mes_C = ""; --plus 0410
				local inGuild = false;
				if CEPGP_tContains(CEPGP_roster, arg2, true) then
					EP, GP = CEPGP_getEPGP(CEPGP_roster[arg2][5]);
					if CEPGP_minEP[1] and CEPGP_minEP[2] > EP then
						CEPGP_print(arg2 .. " is interested in this item but doesn't have enough EP.");
						return;
					end
					class = CEPGP_roster[arg2][2];
					inGuild = true;
				end
				if subflat then --plus
					SubEP, SubGP = CEPGP_getEPGP(CEPGP_roster[calname][5]); --plus
					if CEPGP_minEP[1] and CEPGP_minEP[2] > SubEP then
						CEPGP_print(calname .. " is interested in this item but doesn't have enough EP.");
						return;
					end
					if inGuild == false then
						local subtotal = GetNumGroupMembers();
						for i = 1, subtotal do
							if arg2 == GetRaidRosterInfo(i) then
								_, _, _, _, class = GetRaidRosterInfo(i);
							end
						end
					end
				end --plus
				--CEPGP_SendAddonMsg(arg2..";distslot;"..CEPGP_distSlot, "RAID"); --解放锁私聊（原只能1次），master修改即可
				if CEPGP_distributing then
					if (inGuild or subflat) and not CEPGP_suppress_announcements then
						if subflat then --plus
							EP, GP = SubEP, SubGP; --plus
							calname_Mes = "[" .. calname .. "]"; --plus
							calname_Mes_C = calname_Mes; --plus 0410
							if string.find(calname_Mes, "卍") then --plus 0410
								calname_Mes_C = string.gsub(calname_Mes, "卍", "#"); --plus 0410
							end --plus 0410
							if CEPGP_InitialGP_flag and CEPGP_tContains(CEPGP_InitialGP_roster, calname, true) then --plus 初始GP功能
								if CEPGP_InitialGP_roster[calname][1] then --plus
									if GP < CEPGP_InitialGP_roster[calname][2] then --plus
										GP = CEPGP_InitialGP_roster[calname][2]; --plus
									end --plus
								end --plus
							end --plus
						end --plus
						if string.lower(arg1) == string.lower(CEPGP_keyword_2) then --plus
							CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 貪婪 " .. itemLink, CEPGP_lootChannel); --plus
						elseif string.lower(arg1) == string.lower(CEPGP_keyword_3) then --plus
							CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 放棄 " .. itemLink, CEPGP_lootChannel); --plus
						else
							if CEPGP_InitialGP_flag and not subflat and CEPGP_tContains(CEPGP_InitialGP_roster, arg2, true) then --plus 初始GP功能
								if CEPGP_InitialGP_roster[arg2][1] then --plus
									if GP < CEPGP_InitialGP_roster[arg2][2] then --plus
										GP = CEPGP_InitialGP_roster[arg2][2]; --plus
									end --plus
								end --plus
							end --plus
							CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 需求 " .. itemLink .. " (" .. string.format("%.2f",(math.floor((EP*100/GP))/100)) .. " PR)", CEPGP_lootChannel);
						end
						if CEPGP_DistID == MulDistID then --plus 歷史獲取
							local xcount = 0;
							local tname = "";
							for i=1, CEPGP_ntgetn(TRAFFIC) do
								if subflat then 
									tname = calname;
								else
									tname = arg2;
								end
								if TRAFFIC[i][8] == itemLink and TRAFFIC[i][1] == tname then
									xcount = xcount + 1;
								end
							end
							CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. calname_Mes_C .. " 歷史獲取 " .. itemLink .. " 爲 " .. xcount .. " 次", CEPGP_lootChannel);
						end --plus
					elseif not CEPGP_suppress_announcements then
						local total = GetNumGroupMembers();
						for i = 1, total do
							if arg2 == GetRaidRosterInfo(i) then
								_, _, _, _, class = GetRaidRosterInfo(i);
							end
						end
						CEPGP_sendChatMessage(arg2_C .. " (" .. class .. ") " .. CEPGP_response_buttons[tonumber(arg1)] .. " (不是公會成員)", CEPGP_lootChannel);
					end
					if CEPGP_isML() == 0 then --If you are the master looter
						CEPGP_SendAddonMsg("!need;"..arg2..";"..CEPGP_DistID, "RAID"); --!need;playername;itemID (of the item being distributed) is sent for sharing with raid assist
						CEPGP_itemsTable[arg2] = {};
						CEPGP_itemsTable[arg2][3] = CEPGP_response_buttons[tonumber(arg1)]; --plus
					end
				end
				CEPGP_UpdateLootScrollBar();
			end
		end
	elseif event == "CHAT_MSG_WHISPER" and string.lower(arg1) == "!info" then
		if CEPGP_getGuildInfo(arg2) ~= nil or subflat then
			local EP, GP = nil;
			local calname_Mes = ""; --plus
			if subflat then
				EP, GP = CEPGP_getEPGP(CEPGP_roster[calname][5]);
				calname_Mes = "[" .. calname .. "]"; --plus
			else
				EP, GP = CEPGP_getEPGP(CEPGP_roster[arg2][5]);
			end
			-- if not CEPGP_vInfo[arg2] then --plus
				SendChatMessage("EPGP Standings" .. calname_Mes .. " - EP: " .. EP .. " / GP: " .. GP .. " / PR: " .. string.format("%.2f",(math.floor((EP*100/GP))/100)), "WHISPER", CEPGP_LANGUAGE, arg2);
			-- else --plus
				-- CEPGP_SendAddonMsg("!info;" .. arg2 .. ";EPGP Standings" .. calname_Mes .. " - EP: " .. EP .. " / GP: " .. GP .. " / PR: " .. math.floor((EP*100/GP))/100, "GUILD"); --plus
			-- end --plus
		end
	elseif event == "CHAT_MSG_WHISPER" and (string.lower(arg1) == "!infoguild" or string.lower(arg1) == "!inforaid" or string.lower(arg1) == "!infoclass" or string.lower(arg1) == "!infoavegp") then --plus
		if CEPGP_getGuildInfo(arg2) ~= nil then
			sRoster = {};
			CEPGP_updateGuild();
			local gRoster = {};
			local rRoster = {};
			local totalraiderGP = 0; --plus
			local totalraiderNum = 0; --plus
			local CEPGP_ave_raiderGP = 0; --plus
			local name, _, class, oNote, EP, GP;
			for i = 1, GetNumGuildMembers() do
				gRoster[i] = {};
				name , _, _, _, class, _, _, oNote = GetGuildRosterInfo(i);
				EP, GP = CEPGP_getEPGP(oNote);
				if string.find(name, "-") then
					name = string.sub(name, 0, string.find(name, "-")-1);
				end
				gRoster[i] = {
					[1] = name,
					[2] = EP,
					[3] = GP,
					[4] = math.floor((EP*100/GP))/100,
					[5] = class
				};
			end
			if string.lower(arg1) == "!infoguild" then
				if CEPGP_critReverse then
					gRoster = CEPGP_tSort(gRoster, 4);
					for i = 1, CEPGP_ntgetn(gRoster) do
						if gRoster[i][1] == arg2 then
							if not CEPGP_vInfo[arg2] then
								SendChatMessage("EP: " .. gRoster[i][2] .. " / GP: " .. gRoster[i][3] .. " / PR: " .. gRoster[i][4] .. " / PR rank in guild: #" .. i, "WHISPER", CEPGP_LANGUAGE, arg2);
							else
								CEPGP_SendAddonMsg("!info;" .. arg2 .. ";EP: " .. gRoster[i][2] .. " / GP: " .. gRoster[i][3] .. " / PR: " .. gRoster[i][4] .. " / PR rank in guild: #" .. i, "GUILD");
							end
						end
					end
				else
					CEPGP_critReverse = true;
					gRoster = CEPGP_tSort(gRoster, 4);
					for i = 1, table.getn(gRoster) do
						if gRoster[i][1] == arg2 then
							if not CEPGP_vInfo[arg2] then
								SendChatMessage("EP: " .. gRoster[i][2] .. " / GP: " .. gRoster[i][3] .. " / PR: " .. gRoster[i][4] .. " / PR rank in guild: #" .. i, "WHISPER", CEPGP_LANGUAGE, arg2);
							else
								CEPGP_SendAddonMsg("!info;" .. arg2 .. ";EP: " .. gRoster[i][2] .. " / GP: " .. gRoster[i][3] .. " / PR: " .. gRoster[i][4] .. " / PR rank in guild: #" .. i, "GUILD");
							end
						end
					end
					CEPGP_critReverse = false;
				end
			else
				local count = 0;
				local compClass; -- Comparative Class
				if string.lower(arg1) == "!infoclass" then
					local name;
					count = 1;
					for i = 1, GetNumGroupMembers() do
						if GetRaidRosterInfo(i) == arg2 then
							name = GetRaidRosterInfo(i);
							compClass = UnitClass("raid"..i);
							break;
						end
					end
					EP, GP = CEPGP_getEPGP(CEPGP_roster[name][5]);
					class = CEPGP_roster[name][2];
					rRoster[count] = {
						[1] = arg2,
						[2] = EP,
						[3] = GP,
						[4] = math.floor((EP*100/GP))/100,
						[5] = compClass
					};
					for i = 1, GetNumGroupMembers() do
						name = GetRaidRosterInfo(i);
						if string.find(name, "-") then
							name = string.sub(name, 0, string.find(name, "-")-1);
						end
						if not CEPGP_roster[name] then
							EP, GP = 0, BASEGP;
							class = UnitClass("raid"..i);
						else
							EP, GP = CEPGP_getEPGP(CEPGP_roster[name][5]);
							class = CEPGP_roster[name][2];
						end
						if class == compClass and name ~= arg2 then
							count = count + 1;
							rRoster[count] = {
								[1] = name,
								[2] = EP,
								[3] = GP,
								[4] = math.floor((EP*100/GP))/100,
								[5] = class
							};
						end
					end
				else --Raid
					local xname = nil; --plus
					local xcalinraidacc = {}; --plus
					for k = 1, CEPGP_ntgetn(CEPGP_subroster) do --plus
						if CEPGP_subroster[k][1] then
							xname = CEPGP_subroster[k][2];
							xcalinraidacc[xname] = { --plus
								[1] = 0
							};
						end
					end --plus
					for i = 1, GetNumGroupMembers() do
						name = GetRaidRosterInfo(i);
						if string.find(name, "-") then
							name = string.sub(name, 0, string.find(name, "-")-1);
						end
						local xcalname = nil; --plus
						local xsubflat = false; --plus
						for i = 1, CEPGP_ntgetn(CEPGP_subroster) do --plus
							if CEPGP_subroster[i][3] == name and CEPGP_subroster[i][1] and CEPGP_subroster[i][2] ~= CEPGP_subroster[i][3] then --plus
								if CEPGP_roster[CEPGP_subroster[i][2]] then --plus
									xcalname = CEPGP_subroster[i][2]; --plus
									xsubflat = true; --plus
									break; --plus
								end --plus
							end --plus
						end --plus
						if xsubflat then --plus
							EP, GP = CEPGP_getEPGP(CEPGP_roster[xcalname][5]); --plus
							class = CEPGP_roster[xcalname][2]; --plus
							if xcalinraidacc[xcalname][1] == 0 then
								if GP > BASEGP then --plus 排斥GP=BASEGP的
									totalraiderGP = totalraiderGP + GP; --plus
									totalraiderNum = totalraiderNum + 1; --plus
									xcalinraidacc[xcalname][1] = xcalinraidacc[xcalname][1] + 1; --plus
								end --plus
							end
						elseif not CEPGP_roster[name] and not xsubflat then --plus
							EP, GP = 0, BASEGP;
							class = UnitClass("raid"..i);
						else
							EP, GP = CEPGP_getEPGP(CEPGP_roster[name][5]);
							class = CEPGP_roster[name][2];
							if GP > BASEGP then --plus 排斥GP=BASEGP的
								if CEPGP_tContains(xcalinraidacc, name, true) then --plus
									if xcalinraidacc[name][1] == 0 then
										totalraiderGP = totalraiderGP + GP; --plus
										totalraiderNum = totalraiderNum + 1; --plus
										xcalinraidacc[name][1] = xcalinraidacc[name][1] + 1; --plus
									end
								else
									totalraiderGP = totalraiderGP + GP; --plus
									totalraiderNum = totalraiderNum + 1; --plus
								end --plus
							end --plus
						end
						count = count + 1;
						rRoster[count] = {
							[1] = name,
							[2] = EP,
							[3] = GP,
							[4] = math.floor((EP*100/GP))/100,
							[5] = class
						};
					end
					CEPGP_ave_raiderGP = math.floor(totalraiderGP/totalraiderNum); --plus
				end
				if CEPGP_critReverse then
					rRoster = CEPGP_tSort(rRoster, 4);
				else
					CEPGP_critReverse = true;
					rRoster = CEPGP_tSort(rRoster, 4);
					CEPGP_critReverse = false;
				end
				if count >= 1 then
					for i = 1, #rRoster do
						if rRoster[i][1] == arg2 then
							if string.lower(arg1) == "!infoclass" then
								if not CEPGP_vInfo[arg2] then
									SendChatMessage("EP: " .. rRoster[i][2] .. " / GP: " .. rRoster[i][3] .. " / PR: " .. rRoster[i][4] .. " / PR rank among " .. compClass .. "s in raid: #" .. i, "WHISPER", CEPGP_LANGUAGE, arg2);
								else
									CEPGP_SendAddonMsg("!info;" .. arg2 .. ";EP: " .. rRoster[i][2] .. " / GP: " .. rRoster[i][3] .. " / PR: " .. rRoster[i][4] .. " / PR rank among " .. compClass .. "s in raid: #" .. i, "GUILD");
								end
							elseif  string.lower(arg1) == "!infoavegp" then  --plus
								SendChatMessage("當前團隊的平均GP: " .. CEPGP_ave_raiderGP .. "（有效人數:" .. totalraiderNum .. "人。已經排除GP值=".. BASEGP .. " 的團員）", "WHISPER", CEPGP_LANGUAGE, arg2);  --plus
							else
								if not CEPGP_vInfo[arg2] then
									SendChatMessage("EP: " .. rRoster[i][2] .. " / GP: " .. rRoster[i][3] .. " / PR: " .. rRoster[i][4] .. " / PR rank in raid: #" .. i, "WHISPER", CEPGP_LANGUAGE, arg2);
								else
									CEPGP_SendAddonMsg("!info;" .. arg2 .. ";EP: " .. rRoster[i][2] .. " / GP: " .. rRoster[i][3] .. " / PR: " .. rRoster[i][4] .. " / PR rank in raid: #" .. i, "GUILD");
								end
							end
						end
					end
				end
			end
		end
	end
end

function CEPGP_handleCombat(name, except)
	if name == L["The Prophet Skeram"] or name == L["Majordomo Executus"] and not except then return; end
	local EP;
	local isLead;
	for i = 1, GetNumGroupMembers() do
		if UnitName("player") == GetRaidRosterInfo(i) then
			_, isLead = GetRaidRosterInfo(i);
		end
	end
	if (((GetLootMethod() == "master" and CEPGP_isML() == 0) or (GetLootMethod() == "group" and isLead == 2)) and CEPGP_ntgetn(CEPGP_roster) > 0) or CEPGP_debugMode then
		local success = CEPGP_getCombatModule(name);
		if name == L["Zealot Zath"] or name == L["Zealot Lor'Khan"] then
			name = L["High Priest Thekal"];
		elseif name == L["Flamewaker Elite"] or name == L["Flamewaker Healer"] then
			name = L["Majordomo Executus"];
		end
		EP = tonumber(EPVALS[name]);
		if AUTOEP[name] and EP > 0 and success then
			local plurals = CEPGP_combatModule == L["The Four Horsemen"] or CEPGP_combatModule == L["The Bug Trio"] or CEPGP_combatModule == L["The Twin Emperors"]
			local message = format(L["%s " .. (plurals and "have" or "has") .. " been defeated! %d EP has been awarded to the raid"], CEPGP_combatModule, EP);
			CEPGP_AddRaidEP(EP, message, CEPGP_combatModule);
			if STANDBYEP and tonumber(STANDBYPERCENT) > 0 then
				CEPGP_addStandbyEP(EP*(tonumber(STANDBYPERCENT)/100), CEPGP_combatModule);
			end
		end
		CEPGP_UpdateStandbyScrollBar();
	end
end

function CEPGP_getCombatModule(name)
	--Majordomo Executus
	if name == L["Flamewaker Elite"] or name == L["Flamewaker Healer"] then
		CEPGP_kills = CEPGP_kills + 1;
		if CEPGP_kills == 8 then
			CEPGP_combatModule = L["Majordomo Executus"];
			return true;
		else
			return false;
		end
	end

	--Razorgore the Untamed
	-- if name == L["Razorgore the Untamed"] then
		-- if CEPGP_kills == 30 then --For this encounter, CEPGP_kills is used for the eggs
			-- CEPGP_combatModule = L["Razorgore the Untamed"];
			-- return true;
		-- else
			-- return false;
		-- end
	-- end

	-- High Priest Thekal
	if name == L["Zealot Lor'Khan"] or name == L["Zealot Zath"] or name == L["High Priest Thekal"] then
		CEPGP_combatModule = L["High Priest Thekal"];
		if CEPGP_THEKAL_PARAMS["LOR'KHAN_DEAD"] and CEPGP_THEKAL_PARAMS["ZATH_DEAD"] and CEPGP_THEKAL_PARAMS["THEKAL_DEAD"] then
			return true;
		else
			if name == L["Zealot Lor'Khan"] then
			CEPGP_THEKAL_PARAMS["LOR'KHAN_DEAD"] = true;
		elseif name == L["Zealot Zath"] then
			CEPGP_THEKAL_PARAMS["ZATH_DEAD"] = true;
		else
			CEPGP_THEKAL_PARAMS["THEKAL_DEAD"] = true;
		end
			return false;
		end
	end

	-- The Edge of Madness
	if name == L["Gri'lek"] or name == L["Hazza'rah"] or name == L["Renataki"] or name == L["Wushoolay"] then
		CEPGP_combatModule = L["The Edge of Madness"];
		return true;
	end

	-- Bug Trio
	if name == L["Princess Yauj"] or name == L["Vem"] or name == L["Lord Kri"] then
		CEPGP_combatModule = L["The Bug Trio"];
		CEPGP_kills = CEPGP_kills + 1;
		if CEPGP_kills == 3 then
			return true;
		else
			return false;
		end
	end

	-- Twin Emperors
	if name == L["Emperor Vek'lor"] or name == L["Emperor Vek'nilash"] then
		CEPGP_combatModule = L["The Twin Emperors"];
		CEPGP_kills = CEPGP_kills + 1;
		if CEPGP_kills == 2 then
			return true;
		else
			return false;
		end
	end

	-- The Four Horseman
	if name == L["Highlord Mograine"] or name == L["Thane Korth'azz"] or name == L["Lady Blaumeux"] or name == L["Sir Zeliek"] then
		CEPGP_combatModule = L["The Four Horsemen"];
		CEPGP_kills = CEPGP_kills + 1;
		if CEPGP_kills == 4 then
			return true;
		else
			return false;
		end
	end
	
	CEPGP_combatModule = name;
	return name;
end

function CEPGP_handleLoot(event, arg1, arg2)
	if event == "LOOT_CLOSED" then
		if CEPGP_isML() == 0 then
			CEPGP_SendAddonMsg("LootClosed;", "RAID");
		end
		CEPGP_distributing = false;
		CEPGP_distItemLink = nil;
		_G["distributing"]:Hide();
		if CEPGP_mode == "loot" then
			CEPGP_cleanTable();
			if CEPGP_isML() == 0 then
				CEPGP_SendAddonMsg("RaidAssistLootClosed", "RAID");
			end
			HideUIPanel(CEPGP_frame);
		end
		HideUIPanel(CEPGP_distribute_popup);
		--HideUIPanel(CEPGP_button_loot_dist);
		HideUIPanel(CEPGP_loot);
		HideUIPanel(CEPGP_distribute);
		HideUIPanel(CEPGP_loot_CEPGP_distributing);
		HideUIPanel(CEPGP_button_loot_dist);
		if UnitInRaid("player") then
			CEPGP_toggleFrame(CEPGP_raid);
		elseif GetGuildRosterInfo(1) then
			CEPGP_toggleFrame(CEPGP_guild);
		else
			HideUIPanel(CEPGP_frame);
			if CEPGP_isML() == 0 then
				distributing:Hide();
			end
		end
		
		if CEPGP_distribute:IsVisible() == 1 then
			HideUIPanel(CEPGP_distribute);
			ShowUIPanel(CEPGP_loot);
			CEPGP_responses = {};
			CEPGP_UpdateLootScrollBar();
		end
	elseif event == "LOOT_OPENED" then --and (UnitInRaid("player") or CEPGP_debugMode) then
		CEPGP_LootFrame_Update();
		ShowUIPanel(CEPGP_button_loot_dist);
		
	elseif event == "LOOT_SLOT_CLEARED" then
		local calname = nil; --plus
		local subflat = false; --plus
		local orgname = CEPGP_distPlayer; --plus
		local calname_Mes = ""; --plus
		for i = 1, CEPGP_ntgetn(CEPGP_subroster) do --plus
			if CEPGP_subroster[i][3] == CEPGP_distPlayer and CEPGP_subroster[i][1] and CEPGP_subroster[i][2] ~= CEPGP_subroster[i][3] then --plus
				if CEPGP_roster[CEPGP_subroster[i][2]] then --plus
					calname = CEPGP_subroster[i][2]; --plus
					subflat = true; --plus
					calname_Mes = "[" .. calname .. "]"; --plus
					break; --plus
				end --plus
			end --plus
		end	--plus
		
		if CEPGP_isML() == 0 then
			CEPGP_SendAddonMsg("RaidAssistLootClosed", "RAID");
		end
		if CEPGP_distributing and arg1 == CEPGP_lootSlot then --Confirms that an item is currently being distributed and that the item taken is the one in question
			if CEPGP_distPlayer ~= "" and CEPGP_award then
				CEPGP_distributing = false;
				LootTyp = ""; --plus
				local Dis_GP_value = math.floor(CEPGP_distribute_GP_value:GetText()*CEPGP_rate); --plus
				if CEPGP_distGP then
					if math.floor(CEPGP_distribute_GP_value:GetText()) ~= 0 and math.floor(CEPGP_distribute_GP_value:GetText()*CEPGP_rate) == 0 and CEPGP_rate ~= 0 then --plus
						Dis_GP_value = 1; --plus
					else --plus
						Dis_GP_value = math.floor(CEPGP_distribute_GP_value:GetText()*CEPGP_rate); --plus
					end --plus
					if math.floor(CEPGP_distribute_GP_value:GetText()) ~= 0 then --plus
						if CEPGP_rate == CEPGP_greedrate then --plus
							LootTyp = "[貪婪]"; --plus
						else --plus
							LootTyp = ""; --plus
						end --plus
					else --plus
						LootTyp = ""; --plus
					end --plus
					SendChatMessage("獎勵" .. _G["CEPGP_distribute_item_name"]:GetText() .. "給 ".. CEPGP_distPlayer .. calname_Mes .. " : " .. Dis_GP_value .. " GP".. LootTyp, CHANNEL, CEPGP_LANGUAGE); --plus
					if subflat then
						CEPGP_addGP(calname, Dis_GP_value, CEPGP_DistID, CEPGP_distItemLink, LootTyp .. "[" .. CEPGP_distPlayer .. "]"); --plus
					else
						CEPGP_addGP(CEPGP_distPlayer, Dis_GP_value, CEPGP_DistID, CEPGP_distItemLink, LootTyp); --plus
					end
				else
					SendChatMessage("獎勵" .. _G["CEPGP_distribute_item_name"]:GetText() .. "給 ".. CEPGP_distPlayer .. calname_Mes .. " : 0 GP", CHANNEL, CEPGP_LANGUAGE);
					if subflat then
						CEPGP_addGP(calname, 0, CEPGP_DistID, CEPGP_distItemLink, "[" .. CEPGP_distPlayer .. "]"); --plus
					else
						CEPGP_addGP(CEPGP_distPlayer, 0, CEPGP_DistID, CEPGP_distItemLink); --plus
					end
				end
				CEPGP_distPlayer = "";
				CEPGP_distribute_popup:Hide();
				CEPGP_distribute:Hide();
				_G["distributing"]:Hide();
				CEPGP_loot:Show();
			else
				CEPGP_distributing = false;
				SendChatMessage(_G["CEPGP_distribute_item_name"]:GetText() .. "沒有通過EPGP被分配", CHANNEL, CEPGP_LANGUAGE); --plus
				CEPGP_distribute_popup:Hide();
				CEPGP_distribute:Hide();
				_G["distributing"]:Hide();
				CEPGP_loot:Show();
			end
		end
		CEPGP_LootFrame_Update();
	end	
end
