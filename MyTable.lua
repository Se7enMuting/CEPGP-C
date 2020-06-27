
CEPGP_DissolveEP = false;
CEPGP_subroster = {}; --plus
CEPGP_rate = 1; --plus
CEPGP_greedrate = 0.1; --plus
CEPGP_response_buttons = {[1]="需求",[2]="貪婪",[3]="放棄"}; --plus
CEPGP_keyword_2 = "2"; --plus
CEPGP_keyword_3 = "3"; --plus
CEPGP_suppress_sub_announcements = true; --小號暗拍plus

MulDistID = "17966"; --plus 奧妮克希亞皮袋 17966 統計此人拾取次數

CEPGP_T2Mes = "L1，T2不可貪婪(狂暴戰/野德除外),要被強X";
CEPGP_AllGreedMes = "可以貪婪";
CEPGP_CallItemMes = "全分[需求]此裝備，請M我\"1\"; [貪婪]M我\"2\"(算10% GP); [Pass/放棄]M我\"3\"。";

---["物品ID"] = {"物品說明", 0 }---(0=不增加通告，1=另外增加通告：此裝備歷史分配數量)
CEPGP_ItemPR = {
---------------MC------------------
			["18703"] = {"L1，獵人不可貪婪", 0 },	--遠古石葉
			["18646"] = {"L1，牧師不可貪婪; 牧師必須有", 0 },	--神聖之眼
			["18814"] = {"L3，法師術士不可貪婪; 法師=術士", 1 },	--火焰之王的項圈
			["17065"] = {"L1，防戰野德不可貪婪; 防戰=野德>狂戰", 0 },	--穩固之力勳章
			["17102"] = {"L3，獵人盜賊不可貪婪; 獵人>盜賊", 0 },	--環霧披風
			["19147"] = {"L3，法師術士不可貪婪; 法師=術士", 1 },	--法術能量之戒
			["19140"] = {"L3，全補師不可貪婪; 全補師平權", 0 },		--灼燒指環
			["18879"] = {"L1，防戰野德不可貪婪; 防戰=野德>狂戰", 0 },	--沉重的黑鐵戒指
			["18821"] = {"L3，獵人盜賊狂戰不可貪婪; 獵人>盜賊=狂戰", 1 },	--迅擊戒指
			["17063"] = {"L3，盜賊戰士獵人野德不可貪婪; 盜賊=狂戰>防戰>獵人>野德", 1 },	--埃古雷亞指環
			["18820"] = {"L3，法師術士不可貪婪; 法師=術士", 1 },	--短暫能量護符
			["19145"] = {"L1，法師術士不可貪婪; 法師=術士", 0 },	--波動長袍
			["19136"] = {"L1，法師術士不可貪婪; 法師=術士", 0 },	--燃魔腰帶
			["19146"] = {"L1，狂戰野德不可貪婪; 狂戰>野德", 0 },	--穩固護腕
			["18810"] = {"L1，補德不可貪婪; 補德最優先", 0 },	--狂野肩鎧
			["19143"] = {"L1，狂戰不可貪婪; 狂戰最優先", 0 },	--烈焰守衛護手
			["19137"] = {"L3，狂戰不可貪婪; 狂戰要被強X; 狂戰最優先", 1 },	--衝擊腰帶
			["17103"] = {"L3，法師術士不可貪婪; 法師=術士", 0 },	--碧空之歌
			["18832"] = {"L3，獵人劍賊狂戰不可貪婪; 獵人=狂戰=劍賊>匕賊", 1 },	--殘忍利刃
			["18805"] = {"L3，匕賊獵人狂戰不可貪婪; 匕賊>獵人=狂戰=劍賊", 1 },	--熔火犬牙
			["18816"] = {"L3，匕賊不可貪婪; 匕賊要被強X; 匕賊>劍賊", 1 },	--毀滅之刃
			["17076"] = {"L3，狂戰不可貪婪; 狂戰>防戰", 1 },	--削骨之刃
			["17069"] = {"L3，盜賊狂戰不可貪婪; 盜賊=狂戰>防戰", 1 },	--速射強弓
			["17072"] = {"L1，盜賊狂戰不可貪婪; 盜賊=狂戰>防戰", 0 },	--爆擊獵槍
			["18563"] = {"", 0 }, 	-- [風劍左]
			["18564"] = {"", 0 }, 	-- [風劍右]
			["17204"] = {"", 0 }, 	-- [薩弗拉斯之眼]
			["19017"] = {"", 0 }, 	-- [火焰之王的精華]
---------------MC圖紙------------------
			["18264"] = {"", 0 }, 	-- [設計圖：元素磨刀石]
			["18292"] = {"", 0 }, 	-- [結構圖：火核狙擊步槍]
			["18291"] = {"", 0 }, 	-- [結構圖：力回饋盾牌]
			["18290"] = {"", 0 }, 	-- [結構圖：比茲尼克247x128精確瞄準鏡]
			["18259"] = {"", 0 }, 	-- [公式：附魔武器 - 法術能量]
			["18260"] = {"", 0 }, 	-- [公式：附魔武器 - 治療能量]
			["18252"] = {"", 0 }, 	-- [圖樣：熔火護甲片]
---------------黑龍-----------------------
			["17966"] = {"沒拿過的請Roll點。Roll點最高的，請[私聊]我打\"1\"。", 0 },	--奧妮克希亞皮袋
			["18422"] = {"L1，只有補師可以貪婪; 防戰最優先", 0 },	--奧妮克希亞的頭顱
			["17064"] = {"L3，全補師不可貪婪; 全補師平權", 0 },		--龍鱗碎片
			["17068"] = {"L3，狂戰不可貪婪; 狂戰>防戰", 0 },	--死亡召喚者
			["17075"] = {"L3，狂戰劍賊不可貪婪; 狂戰=劍賊>匕賊=防戰", 0 },	--放血者維斯卡格
---------------BWL------------------
			["19371"] = {"L1，補師不可貪婪; 補薩>牧師=補德>法師=術士", 0 },	--龍魂墜飾
			["19377"] = {"L3，狂戰盜賊獵人野德不可貪婪; 盜賊獵人要被強X; 盜賊=獵人>野德=防戰", 0 },	--普瑞斯托的陰謀飾物
			["19398"] = {"L1，狂戰盜賊獵人不可貪婪; 盜賊無[環霧/飛龍]要被強X; 盜賊>獵人=防戰", 0 },	--火喉披風
			["19430"] = {"L3，全補師不可貪婪,要被強X; 全補師平權", 0 },	--純淨思維披風
			["19436"] = {"L1，狂戰盜賊野德不可貪婪; 狂戰要被強X; 狂戰>盜賊=防戰=野德", 0 },	--飛龍披風
			["19386"] = {"L1，防戰野德不可貪婪; 防戰要被強X; 防戰=野德", 0 },	--源質絲線披風
			["19378"] = {"L3，法師術士不可貪婪; 法師=術士>其他補師", 0 },	--龍王披風
			["19434"] = {"L1，術士不可貪婪,要被強X; 術士>牧師", 0 },	--龍類統御之戒
			["19397"] = {"L1，法師術士補薩不可貪婪; 補薩最優先,其他平權", 0 },	--黑石之戒
			["19403"] = {"L3，法師術士不可貪婪,要被強X; 法師=術士", 0 },	--專注指環
			["19432"] = {"L1，獵人野德不可貪婪; 盜賊=野德>防戰", 0 },	--源力之環
			["19376"] = {"L3，盜賊獵人野德不可貪婪; 盜賊=野德>防戰", 0 },	--阿基迪羅斯的清算之戒
			["19382"] = {"L3，全補師不可貪婪,要被強X; 全補師平權", 0 },	--純源質指環
			["19348"] = {"L1，補薩不可貪婪,無[生命花環]要被強X", 0 },	--紅龍防禦者
			["19349"] = {"L1，防戰不可貪婪; 戰士要被強X; 防戰最優先", 0 },	--源質壁壘"
			["19395"] = {"L3，全補師不可貪婪,要被強X; 全補師平權", 0 },	--恢復寶石
			["19406"] = {"L3，盜賊戰士獵人野德不可貪婪; 盜賊狂戰獵人要被強X; 盜賊=狂戰>防戰=獵人>野德", 1 },	--龍牙飾物
			["19431"] = {"L3，防戰不可貪婪; 戰士要被強X; 防戰最優先", 0 },	--斯泰林的甲蟲殼
			["19379"] = {"L3，法師術士不可貪婪,要被強X; 法師=術士", 1 },	--奈薩里奧之淚
			["19435"] = {"L1，牧師不可貪婪,要被強X; 牧師最優先", 0 },	--精華收集者
			["19367"] = {"L1，法師術士牧師可貪婪", 0 },	--巨龍之觸
			["19368"] = {"L1，獵人不可貪婪; 盜賊無[紫色遠程武器]要被強X; 盜賊=防戰", 0 },	--龍息手持火炮
			["19350"] = {"L1，獵人不可貪婪; 盜賊無[紫色遠程武器]要被強X; 盜賊=防戰", 0 },	--擊心者
			["19361"] = {"L3，獵人不可貪婪,要被強X; 獵人最優先", 0 },	--埃瑟利蘇爾，懲戒之弩
			["19430"] = {"L1，牧師不可貪婪,要被強X; 牧師最優先", 0 },	--純淨思想長靴
			["19438"] = {"L1，法師不可貪婪,要被強X", 0 },	--林格的暴風雪長靴
			["19370"] = {"L1，法師術士不可貪婪,要被強X; 法師=術士>牧師=補德", 0 },	--黑翼襯肩
			["19369"] = {"L1，法師術士補師可貪婪", 0 },	--疾速進化手套
			["19374"] = {"L1，法師術士不可貪婪,要被強X; 法師=術士>其他補師", 0 },	--秘法精準護腕
			["19399"] = {"L1，法師術士補師可貪婪", 0 },	--黑灰長袍
			["19400"] = {"L1，法師術士不可貪婪; 法師術士補師平權", 0 },	--火喉之握
			["19407"] = {"L1，術士不可貪婪,要被強X; 術士>牧師", 0 },	--黑焰手套
			["19388"] = {"L1，法師術士不可貪婪; 法師術士補師平權", 0 },	--安潔莉絲塔之握
			["19385"] = {"L1，牧師不可貪婪; 牧師最優先", 0 },	--強能護腿
			["19391"] = {"L1，可以貪婪", 0 },	--閃光之鞋
			["19375"] = {"L3，法師術士不可貪婪,要被強X; 法師=術士>其他補師", 1 },	--密蘇達爾，奪魂者的頭飾"
			["19439"] = {"L1，可以貪婪", 0 },	--交織暗影外衣
			["19396"] = {"L1，野德不可貪婪; 野德>盜賊", 0 },	--緊繃龍皮腰帶
			["19405"] = {"L1，野德不可貪婪; 野德最優先", 0 },	--瑪法里恩的祝福
			["19389"] = {"L1，野德不可貪婪; 野德>盜賊", 0 },	--緊繃龍皮護肩
			["19390"] = {"L1，可以貪婪; 補薩=補德", 0 },	--緊繃龍皮手套
			["19381"] = {"L3，盜賊野德不可貪婪; 盜賊要被強X; 盜賊=野德>補薩=補德=防戰", 1 },	--暗影烈焰長靴
			["19373"] = {"L1，可以貪婪", 0 },	--黑龍肩鎧
			["19401"] = {"L1，可以貪婪", 0 },	--首領鎖鏈腿甲
			["19433"] = {"L1，可以貪婪", 0 },	--灰燼護腿
			["19393"] = {"L1，可以貪婪", 0 },	--首領鎖鏈腰帶
			["19380"] = {"L1，可以貪婪; 補薩最優先", 0 },	--塞拉贊恩之鍊
			["19372"] = {"L1，狂戰不可貪婪,無[獅心頭/軍裝頭]要被強X; 狂戰>防戰", 0 },	--無盡怒氣頭盔
			["19394"] = {"L1，狂戰不可貪婪,無[軍裝肩/風石打擊肩膀]要被強X; 狂戰>防戰", 0 },	--龍爪肩鎧
			["19402"] = {"", 0 },	--墮落十字軍腿甲
			["19392"] = {"", 0 },	--墮落十字軍腰帶
			["19387"] = {"L3，狂戰不可貪婪,要被強X; 狂戰>防戰", 0 },	--多彩長靴
			["19362"] = {"L1，狂戰不可貪婪,有[低於70裝等的單手武器]要被強X; 狂戰>防戰", 0 },	--末日之刃
			["19354"] = {"L1，可以貪婪; 狂戰>防戰=補薩", 0 },	--巨龍復仇者
			["19358"] = {"L1，野德不可貪婪; 野德>狂戰=防戰=補薩=補德", 0 },	--龍人之槌
			["19335"] = {"L1，防戰不可貪婪; 防戰>盜賊", 0 },	--碎脊者
			["19334"] = {"L1，可以貪婪; 狂戰=防戰", 0 },	--狂野之刃
			["19346"] = {"L1，匕賊獵人不可貪婪; 匕賊無[狗牙/無面]要被強X; 匕賊>劍賊=防戰=獵人", 0 },	--龍牙之刃
			["19351"] = {"L3，劍賊狂戰不可貪婪; 劍賊要被強X; 劍賊>匕賊=防戰", 0 },	--瑪拉達斯，黑龍軍團的符文之劍
			["19365"] = {"L1，狂戰不可貪婪; 狂戰>盜賊=防戰", 0 },	--黑龍之爪
			["19353"] = {"L1，可以貪婪; 狂戰>防戰=補薩", 0 },	--龍爪巨斧
			["19355"] = {"L1，可以貪婪(法術牧薩德); 法師=術士=補薩=補德>牧師=野德", 0 },	--暗影之翼
			["19357"] = {"L1，可以貪婪", 0 },	--悲哀使者
			["19347"] = {"L3，法師術士補薩補德不可貪婪; 法師術士無[碧空/SSF]要被強X; 法師=術士=補薩=補德>牧師=野德", 0 },	--克洛瑪古斯之爪
			["19352"] = {"L3，劍賊狂戰不可貪婪; 劍賊,非獸人狂戰 要被強X; 狂戰=劍賊>匕賊=防戰", 0 },	--多彩之劍
			["19360"] = {"L3，全補師不可貪婪; 補薩補德無[狗爪]要被強X; 補薩=補德>牧師>野德", 0 },	--洛卡米爾·伊洛曼希斯
			["19363"] = {"L3，狂戰不可貪婪,要被強X; 狂戰>防戰", 0 },	--克盧梭洛克恩，混亂之刃
			["19364"] = {"L3，狂戰獵人不可貪婪; 狂戰要被強X; 狂戰>防戰=獵人", 1 },	--阿什坎迪，兄弟會之劍
			["19356"] = {"L3，法師術士不可貪婪,要被強X; 法師=術士", 1 },	--暗影烈焰法杖
			["19002"] = {"L1，戰士野德盜賊法師術士不可貪婪; 防戰要被強X; 防戰=野德>狂戰=盜賊=法師=術士>全補師;獵人NA", 0 },	--奈法利安的頭顱
---------------BWL職業飾品------------------
			["19341"] = {"", 0 }, 	-- [生命寶石]
			["19342"] = {"", 0 }, 	-- [毒性圖騰]
			["19336"] = {"", 0 }, 	-- [秘法能量寶石]
			["19339"] = {"", 0 }, 	-- [思維加速寶石]
			["19337"] = {"", 0 }, 	-- [黑龍之書]
			["19345"] = {"", 0 }, 	-- [庇護者]
			["19344"] = {"", 0 }, 	-- [自然之盟水晶]
			["19343"] = {"", 0 }, 	-- [盲目光芒卷軸]
			["19340"] = {"", 0 }, 	-- [變形符文]
---------------BWL任務物品----------------------
			["20383"] = {"", 0 }, 	-- [勒西雷爾的頭顱]
---------------TAQ------------------
			 --The Prophet Skeram
			["21699"] = {"", 0 }, -- Barrage Shoulders
			["21814"] = {"", 0 }, -- Breastplate of Annihilation
			["21708"] = {"", 0 }, -- Beetle Scaled Wristguards
			["21698"] = {"", 0 }, -- Leggings of Immersion
			["21705"] = {"", 0 }, -- Boots of the Fallen Prophet
			["21704"] = {"", 0 }, -- Boots of the Redeemed Prophecy
			["21706"] = {"", 0 }, -- Boots of the Unwavering Will
			["21702"] = {"", 0 }, -- Amulet of Foul Warding
			["21700"] = {"", 0 }, -- Pendant of the Qiraji Guardian
			["21701"] = {"", 0 }, -- Cloak of Concentrated Hatred
			["21707"] = {"", 0 }, -- Ring of Swarming Thought
			["21703"] = {"", 0 }, -- Hammer of Ji'zhi
			["21128"] = {"", 0 }, -- Staff of the Qiraji Prophets
			["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			["22222"] = {"", 0 }, -- Plans: Thick Obsidian Breastplate
			 -- The Silithid Royalty
			["21693"] = {"", 0 }, -- Guise of the Devourer
			["21694"] = {"", 0 }, -- Ternary Mantle
			["21697"] = {"", 0 }, -- Cape of the Trinity
			["21696"] = {"", 0 }, -- Robes of the Triumvirate
			["21692"] = {"", 0 }, -- Triad Girdle
			["21695"] = {"", 0 }, -- Angelista's Touch
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			["21680"] = {"", 0 }, -- Vest of Swift Execution
			["21681"] = {"", 0 }, -- Ring of the Devoured
			["21685"] = {"", 0 }, -- Petrified Scarab
			["21603"] = {"", 0 }, -- Wand of Qiraji Nobility
			["21690"] = {"", 0 }, -- Angelista's Charm
			["21689"] = {"", 0 }, -- Gloves of Ebru
			["21691"] = {"", 0 }, -- Ooze-ridden Gauntlets
			["21688"] = {"", 0 }, -- Boots of the Fallen Hero
			["21686"] = {"", 0 }, -- Mantle of Phrenic Power
			["21684"] = {"", 0 }, -- Mantle of the Desert's Fury
			["21683"] = {"", 0 }, -- Mantle of the Desert Crusade
			["21682"] = {"", 0 }, -- Bile-Covered Gauntlets
			["21687"] = {"", 0 }, -- Ukko's Ring of Darkness
			 --Battleguard Sartura
			["21669"] = {"", 0 }, -- Creeping Vine Helm
			["21678"] = {"", 0 }, -- Necklace of Purity
			["21671"] = {"", 0 }, -- Robes of the Battleguard
			["21672"] = {"", 0 }, -- Gloves of Enforcement
			["21674"] = {"", 0 }, -- Gauntlets of Steadfast Determination
			["21675"] = {"", 0 }, -- Thick Qirajihide Belt
			["21676"] = {"", 0 }, -- Leggings of the Festering Swarm
			["21668"] = {"", 0 }, -- Scaled Leggings of Qiraji Fury
			["21667"] = {"", 0 }, -- Legplates of Blazing Light
			["21648"] = {"", 0 }, -- Recomposed Boots
			["21670"] = {"", 0 }, -- Badge of the Swarmguard
			["21666"] = {"", 0 }, -- Sartura's Might
			["21673"] = {"", 0 }, -- Silithid Claw
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			 --Fankriss the Unyielding
			["21665"] = {"", 0 }, -- Mantle of Wicked Revenge
			["21639"] = {"", 0 }, -- Pauldrons of the Unrelenting
			["21627"] = {"", 0 }, -- Cloak of Untold Secrets
			["21663"] = {"", 0 }, -- Robes of the Guardian Saint
			["21652"] = {"", 0 }, -- Silithid Carapace Chestguard
			["21651"] = {"", 0 }, -- Scaled Sand Reaver Leggings
			["21645"] = {"", 0 }, -- Hive Tunneler's Boots
			["21650"] = {"", 0 }, -- Ancient Qiraji Ripper
			["21635"] = {"", 0 }, -- Barb of the Sand Reaver
			["21664"] = {"", 0 }, -- Barbed Choker
			["21647"] = {"", 0 }, -- Fetish of the Sand Reaver
			["22402"] = {"", 0 }, -- Libram of Grace
			["22396"] = {"", 0 }, -- Totem of Life
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			 --Viscidus
			["21624"] = {"", 0 }, -- Gauntlets of Kalimdor
			["21623"] = {"", 0 }, -- Gauntlets of the Righteous Champion
			["21626"] = {"", 0 }, -- Slime-coated Leggings
			["21622"] = {"", 0 }, -- Sharpened Silithid Femur
			["21677"] = {"", 0 }, -- Ring of the Qiraji Fury
			["21625"] = {"", 0 }, -- Scarab Brooch
			["22399"] = {"", 0 }, -- Idol of Health
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			["20928"] = {"", 0 }, -- Qiraji Bindings of Command
			["20932"] = {"", 0 }, -- Qiraji Bindings of Dominance
			 --Princess Huhuran
			["21621"] = {"", 0 }, -- Cloak of the Golden Hive
			["21618"] = {"", 0 }, -- Hive Defiler Wristguards
			["21619"] = {"", 0 }, -- Gloves of the Messiah
			["21617"] = {"", 0 }, -- Wasphide Gauntlets
			["21620"] = {"", 0 }, -- Ring of the Martyr
			["21616"] = {"", 0 }, -- Huhuran's Stinger
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			--["20928"] = {"", 0 }, -- Qiraji Bindings of Command
			--["20932"] = {"", 0 }, -- Qiraji Bindings of Dominance
			 --Twin Emperors
			 --Emperor Vek'lor
			["20930"] = {"", 0 }, -- Vek'lor's Diadem
			["21602"] = {"", 0 }, -- Qiraji Execution Bracers
			["21599"] = {"", 0 }, -- Vek'lor's Gloves of Devastation
			["21598"] = {"", 0 }, -- Royal Qiraji Belt
			["21600"] = {"", 0 }, -- Boots of Epiphany
			["21601"] = {"", 0 }, -- Ring of Emperor Vek'lor
			["21597"] = {"", 0 }, -- Royal Scepter of Vek'lor
			["20735"] = {"", 0 }, -- Formula: Enchant Cloak - Subtlety
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			 --Emperor Vek'nilash
			["20926"] = {"", 0 }, -- Vek'nilash's Circlet
			["21608"] = {"", 0 }, -- Amulet of Vek'nilash
			["21604"] = {"", 0 }, -- Bracelets of Royal Redemption
			["21605"] = {"", 0 }, -- Gloves of the Hidden Temple
			["21609"] = {"", 0 }, -- Regenerating Belt of Vek'nilash
			["21607"] = {"", 0 }, -- Grasp of the Fallen Emperor
			["21606"] = {"", 0 }, -- Belt of the Fallen Emperor
			["21679"] = {"", 0 }, -- Kalimdor's Revenge
			["20726"] = {"", 0 }, -- Formula: Enchant Gloves - Threat
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			 --Ouro
			["21615"] = {"", 0 }, -- Don Rigoberto's Lost Hat
			["21611"] = {"", 0 }, -- Burrower Bracers
			["23558"] = {"", 0 }, -- The Burrower's Shell
			["23570"] = {"", 0 }, -- Jom Gabbar
			["21610"] = {"", 0 }, -- Wormscale Blocker
			["23557"] = {"", 0 }, -- Larvae of the Great Worm
			--["21237"] = {"", 0 }, -- Imperial Qiraji Regalia
			--["21232"] = {"", 0 }, -- Imperial Qiraji Armaments
			["20927"] = {"", 0 }, -- Ouro's Intact Hide
			["20931"] = {"", 0 }, -- Skin of the Great Sandworm
			-- "C'Thun"
			["22732"] = {"", 0 }, -- Mark of C'Thun
			["21583"] = {"", 0 }, -- Cloak of Clarity
			["22731"] = {"", 0 }, -- Cloak of the Devoured
			["22730"] = {"", 0 }, -- Eyestalk Waist Cord
			["21582"] = {"", 0 }, -- Grasp of the Old God
			["21586"] = {"", 0 }, -- Belt of Never-ending Agony
			["21585"] = {"", 0 }, -- Dark Storm Gauntlets
			["21581"] = {"", 0 }, -- Gauntlets of Annihilation
			["21596"] = {"", 0 }, -- Ring of the Godslayer
			["21579"] = {"", 0 }, -- Vanquished Tentacle of C'Thun
			["21839"] = {"", 0 }, -- Scepter of the False Prophet
			["21126"] = {"", 0 }, -- Death's Sting
			["21134"] = {"", 0 }, -- Dark Edge of Insanity
			["20929"] = {"", 0 }, -- Carapace of the Old God
			["20933"] = {"", 0 }, -- Husk of the Old God
			["21221"] = {"", 0 }, -- Eye of C'Thun
			["22734"] = {"", 0 }, -- Base of Atiesh
			 -- AQ40Trash1
			["21838"] = {"", 0 }, -- Garb of Royal Ascension
			["21888"] = {"", 0 }, -- Gloves of the Immortal
			["21889"] = {"", 0 }, -- Gloves of the Redeemed Prophecy
			["21856"] = {"", 0 }, -- Neretzek, The Blood Drinker
			["21837"] = {"", 0 }, -- Anubisath Warhammer
			["21836"] = {"", 0 }, -- Ritssyn's Ring of Chaos
			["21891"] = {"", 0 }, -- Shard of the Fallen Star
			["21218"] = {"", 0 }, -- Blue Qiraji Resonating Crystal
			["21324"] = {"", 0 }, -- Yellow Qiraji Resonating Crystal
			["21323"] = {"", 0 }, -- Green Qiraji Resonating Crystal
			["21321"] = {"", 0 }, -- Red Qiraji Resonating Crystal
			 -- AQ40Trash2
			["20876"] = {"", 0 }, -- Idol of Death
			["20879"] = {"", 0 }, -- Idol of Life
			["20875"] = {"", 0 }, -- Idol of Night
			["20878"] = {"", 0 }, -- Idol of Rebirth
			["20881"] = {"", 0 }, -- Idol of Strife
			["20877"] = {"", 0 }, -- Idol of the Sage
			["20874"] = {"", 0 }, -- Idol of the Sun
			["20882"] = {"", 0 }, -- Idol of War
			["21762"] = {"", 0 }, -- Greater Scarab Coffer Key
			["21156"] = {"", 0 }, -- Scarab Bag
			["21230"] = {"", 0 }, -- Ancient Qiraji Artifact
			["20864"] = {"", 0 }, -- Bone Scarab
			["20861"] = {"", 0 }, -- Bronze Scarab
			["20863"] = {"", 0 }, -- Clay Scarab
			["20862"] = {"", 0 }, -- Crystal Scarab
			["20859"] = {"", 0 }, -- Gold Scarab
			["20865"] = {"", 0 }, -- Ivory Scarab
			["20860"] = {"", 0 }, -- Silver Scarab
			["20858"] = {"", 0 }, -- Stone Scarab
			["22203"] = {"", 0 }, -- Large Obsidian Shard
			["22202"] = {"", 0 }, -- Small Obsidian Shard
			["21229"] = {"", 0 }, -- Qiraji Lord's Insignia
			 -- AQEnchants
			["20728"] = {"", 0 }, -- Formula: Enchant Gloves - Frost Power
			["20731"] = {"", 0 }, -- Formula: Enchant Gloves - Superior Agility
			["20734"] = {"", 0 }, -- Formula: Enchant Cloak - Stealth
			["20729"] = {"", 0 }, -- Formula: Enchant Gloves - Fire Power
			["20736"] = {"", 0 }, -- Formula: Enchant Cloak - Dodge
			["20730"] = {"", 0 }, -- Formula: Enchant Gloves - Healing Power
			["20727"] = {"", 0 }, -- Formula: Enchant Gloves - Shadow Power
---------------NAXX------------------
			 --Anub'Rekhan
			["22726"] = {"", 0 }, -- Splinter of Atiesh
			["22727"] = {"", 0 }, -- Frame of Atiesh
			["22369"] = {"", 0 }, -- Desecrated Bindings
			["22362"] = {"", 0 }, -- Desecrated Wristguards
			["22355"] = {"", 0 }, -- Desecrated Bracers
			["22935"] = {"", 0 }, -- Touch of Frost
			["22938"] = {"", 0 }, -- Cryptfiend Silk Cloak
			["22936"] = {"", 0 }, -- Wristguards of Vengeance
			["22939"] = {"", 0 }, -- Band of Unanswered Prayers
			["22937"] = {"", 0 }, -- Gem of Nerubis
			 --Grand Widow Faerlina
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			--["22369"] = {"", 0 }, -- Desecrated Bindings
			--["22362"] = {"", 0 }, -- Desecrated Wristguards
			--["22355"] = {"", 0 }, -- Desecrated Bracers
			["22943"] = {"", 0 }, -- Malice Stone Pendant
			["22941"] = {"", 0 }, -- Polar Shoulder Pads
			["22940"] = {"", 0 }, -- Icebane Pauldrons
			["22942"] = {"", 0 }, -- The Widow's Embrace
			["22806"] = {"", 0 }, -- Widow's Remorse
			 --Maexxna
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22371"] = {"", 0 }, -- Desecrated Gloves
			["22364"] = {"", 0 }, -- Desecrated Handguards
			["22357"] = {"", 0 }, -- Desecrated Gauntlets
			["22947"] = {"", 0 }, -- Pendant of Forgotten Names
			["23220"] = {"", 0 }, -- Crystal Webbed Robe
			["22954"] = {"", 0 }, -- Kiss of the Spider
			["22807"] = {"", 0 }, -- Wraith Blade
			["22804"] = {"", 0 }, -- Maexxna's Fang
			 --Noth the Plaguebringer
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22370"] = {"", 0 }, -- Desecrated Belt
			["22363"] = {"", 0 }, -- Desecrated Girdle
			["22356"] = {"", 0 }, -- Desecrated Waistguard
			["23030"] = {"", 0 }, -- Cloak of the Scourge
			["23031"] = {"", 0 }, -- Band of the Inevitable
			["23028"] = {"", 0 }, -- Hailstone Band
			["23029"] = {"", 0 }, -- Noth's Frigid Heart
			["23006"] = {"", 0 }, -- Libram of Light
			["23005"] = {"", 0 }, -- Totem of Flowing Water
			["22816"] = {"", 0 }, -- Hatchet of Sundered Bone
			 --Heigan the Unclean
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			--["22370"] = {"", 0 }, -- Desecrated Belt
			--["22363"] = {"", 0 }, -- Desecrated Girdle
			--["22356"] = {"", 0 }, -- Desecrated Waistguard
			["23035"] = {"", 0 }, -- Preceptor's Hat
			["23033"] = {"", 0 }, -- Icy Scale Coif
			["23019"] = {"", 0 }, -- Icebane Helmet
			["23036"] = {"", 0 }, -- Necklace of Necropsy
			["23068"] = {"", 0 }, -- Legplates of Carnage
			 --Loatheb
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22366"] = {"", 0 }, -- Desecrated Leggings
			["22359"] = {"", 0 }, -- Desecrated Legguards
			["22352"] = {"", 0 }, -- Desecrated Legplates
			["23038"] = {"", 0 }, -- Band of Unnatural Forces
			["23037"] = {"", 0 }, -- Ring of Spiritual Fervor
			["23042"] = {"", 0 }, -- Loatheb's Reflection
			["23039"] = {"", 0 }, -- The Eye of Nerub
			["22800"] = {"", 0 }, -- Brimstone Staff
			 --Instructor Razuvious
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22372"] = {"", 0 }, -- Desecrated Sandals
			["22365"] = {"", 0 }, -- Desecrated Boots
			["22358"] = {"", 0 }, -- Desecrated Sabatons
			["23017"] = {"", 0 }, -- Veil of Eclipse
			["23219"] = {"", 0 }, -- Girdle of the Mentor
			["23018"] = {"", 0 }, -- Signet of the Fallen Defender
			["23004"] = {"", 0 }, -- Idol of Longevity
			["23009"] = {"", 0 }, -- Wand of the Whispering Dead
			["23014"] = {"", 0 }, -- Iblis, Blade of the Fallen Seraph
			 --Gothik the Harvester
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			--["22372"] = {"", 0 }, -- Desecrated Sandals
			--["22365"] = {"", 0 }, -- Desecrated Boots
			--["22358"] = {"", 0 }, -- Desecrated Sabatons
			["23032"] = {"", 0 }, -- Glacial Headdress
			["23020"] = {"", 0 }, -- Polar Helmet
			["23023"] = {"", 0 }, -- Sadist's Collar
			["23021"] = {"", 0 }, -- The Soul Harvester's Bindings
			["23073"] = {"", 0 }, -- Boots of Displacement
			 --The Four Horsemen
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22351"] = {"", 0 }, -- Desecrated Robe
			["22350"] = {"", 0 }, -- Desecrated Tunic
			["22349"] = {"", 0 }, -- Desecrated Breastplate
			["23071"] = {"", 0 }, -- Leggings of Apocalypse
			["23025"] = {"", 0 }, -- Seal of the Damned
			["23027"] = {"", 0 }, -- Warmth of Forgiveness
			["22811"] = {"", 0 }, -- Soulstring
			["22809"] = {"", 0 }, -- Maul of the Redeemed Crusader
			["22691"] = {"", 0 }, -- Corrupted Ashbringer
			 --Patchwerk
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22368"] = {"", 0 }, -- Desecrated Shoulderpads
			["22361"] = {"", 0 }, -- Desecrated Spaulders
			["22354"] = {"", 0 }, -- Desecrated Pauldrons
			["22960"] = {"", 0 }, -- Cloak of Suturing
			["22961"] = {"", 0 }, -- Band of Reanimation
			["22820"] = {"", 0 }, -- Wand of Fates
			["22818"] = {"", 0 }, -- The Plague Bearer
			["22815"] = {"", 0 }, -- Severance
			 --Grobbulus
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			--["22368"] = {"", 0 }, -- Desecrated Shoulderpads
			--["22361"] = {"", 0 }, -- Desecrated Spaulders
			--["22354"] = {"", 0 }, -- Desecrated Pauldrons
			["22968"] = {"", 0 }, -- Glacial Mantle
			["22967"] = {"", 0 }, -- Icy Scale Spaulders
			["22810"] = {"", 0 }, -- Toxin Injector
			["22803"] = {"", 0 }, -- Midnight Haze
			["22988"] = {"", 0 }, -- The End of Dreams
			 --Gluth
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22983"] = {"", 0 }, -- Rime Covered Mantle
			["22981"] = {"", 0 }, -- Gluth's Missing Collar
			["22994"] = {"", 0 }, -- Digested Hand of Power
			["23075"] = {"", 0 }, -- Death's Bargain
			["22813"] = {"", 0 }, -- Claymore of Unholy Might
			--["22368"] = {"", 0 }, -- Desecrated Shoulderpads
			--["22369"] = {"", 0 }, -- Desecrated Bindings
			--["22370"] = {"", 0 }, -- Desecrated Belt
			--["22372"] = {"", 0 }, -- Desecrated Sandals
			--["22361"] = {"", 0 }, -- Desecrated Spaulders
			--["22362"] = {"", 0 }, -- Desecrated Wristguards
			--["22363"] = {"", 0 }, -- Desecrated Girdle
			--["22365"] = {"", 0 }, -- Desecrated Boots
			--["22354"] = {"", 0 }, -- Desecrated Pauldrons
			--["22355"] = {"", 0 }, -- Desecrated Bracers
			--["22356"] = {"", 0 }, -- Desecrated Waistguard
			--["22358"] = {"", 0 }, -- Desecrated Sabatons
			 --Thaddius
			--["22726"] = {"", 0 }, -- Splinter of Atiesh
			--["22727"] = {"", 0 }, -- Frame of Atiesh
			["22367"] = {"", 0 }, -- Desecrated Circlet
			["22360"] = {"", 0 }, -- Desecrated Headpiece
			["22353"] = {"", 0 }, -- Desecrated Helmet
			["23000"] = {"", 0 }, -- Plated Abomination Ribcage
			["23070"] = {"", 0 }, -- Leggings of Polarity
			["23001"] = {"", 0 }, -- Eye of Diminution
			["22808"] = {"", 0 }, -- The Castigator
			["22801"] = {"", 0 }, -- Spire of Twilight
			 --Sapphiron
			["23050"] = {"", 0 }, -- Cloak of the Necropolis
			["23045"] = {"", 0 }, -- Shroud of Dominion
			["23040"] = {"", 0 }, -- Glyph of Deflection
			["23047"] = {"", 0 }, -- Eye of the Dead
			["23041"] = {"", 0 }, -- Slayer's Crest
			["23046"] = {"", 0 }, -- The Restrained Essence of Sapphiron
			["23049"] = {"", 0 }, -- Sapphiron's Left Eye
			["23048"] = {"", 0 }, -- Sapphiron's Right Eye
			["23043"] = {"", 0 }, -- The Face of Death
			["23242"] = {"", 0 }, -- Claw of the Frost Wyrm
			["23549"] = {"", 0 }, -- Fortitude of the Scourge
			["23548"] = {"", 0 }, -- Might of the Scourge
			["23545"] = {"", 0 }, -- Power of the Scourge
			["23547"] = {"", 0 }, -- Resilience of the Scourge
			 --Kel'Thuzad
			["23057"] = {"", 0 }, -- Gem of Trapped Innocents
			["23053"] = {"", 0 }, -- Stormrage's Talisman of Seething
			["22812"] = {"", 0 }, -- Nerubian Slavemaker
			["22821"] = {"", 0 }, -- Doomfinger
			["22819"] = {"", 0 }, -- Shield of Condemnation
			["22802"] = {"", 0 }, -- Kingsfall
			["23056"] = {"", 0 }, -- Hammer of the Twisting Nether
			["23054"] = {"", 0 }, -- Gressil, Dawn of Ruin
			["23577"] = {"", 0 }, -- The Hungering Cold
			["22798"] = {"", 0 }, -- Might of Menethil
			["22799"] = {"", 0 }, -- Soulseeker
			["22520"] = {"", 0 }, -- The Phylactery of Kel'Thuzad
			["23061"] = {"", 0 }, -- Ring of Faith
			["23062"] = {"", 0 }, -- Frostfire Ring
			["23063"] = {"", 0 }, -- Plagueheart Ring
			["23060"] = {"", 0 }, -- Bonescythe Ring
			["23064"] = {"", 0 }, -- Ring of the Dreamwalker
			["23067"] = {"", 0 }, -- Ring of the Cryptstalker
			["23065"] = {"", 0 }, -- Ring of the Earthshatterer
			["23066"] = {"", 0 }, -- Ring of Redemption
			["23059"] = {"", 0 }, -- Ring of the Dreadnaught
			["22733"] = {"", 0 }, -- Staff Head of Atiesh
			 -- NAXTrash
			["23664"] = {"", 0 }, -- Pauldrons of Elemental Fury
			["23667"] = {"", 0 }, -- Spaulders of the Grand Crusader
			["23069"] = {"", 0 }, -- Necro-Knight's Garb
			["23226"] = {"", 0 }, -- Ghoul Skin Tunic
			["23663"] = {"", 0 }, -- Girdle of Elemental Fury
			["23666"] = {"", 0 }, -- Belt of the Grand Crusader
			["23665"] = {"", 0 }, -- Leggings of Elemental Fury
			["23668"] = {"", 0 }, -- Leggings of the Grand Crusader
			["23237"] = {"", 0 }, -- Ring of the Eternal Flame
			["23238"] = {"", 0 }, -- Stygian Buckler
			["23044"] = {"", 0 }, -- Harbinger of Doom
			["23221"] = {"", 0 }, -- Misplaced Servo Arm
			["22376"] = {"", 0 }, -- Wartorn Cloth Scrap
			["22373"] = {"", 0 }, -- Wartorn Leather Scrap
			["22374"] = {"", 0 }, -- Wartorn Chain Scrap
			["22375"] = {"", 0 }, -- Wartorn Plate Scrap
			["23055"] = {"", 0 }, -- Word of Thawing
			["22682"] = {"", 0 }, -- Frozen Rune
------------test--------------------
---- 防戰 狂戰 盜賊 獵人 法師 術士 牧師 補德 野德 補薩 全補師 不可貪婪 不可放棄 要被強X 必須有 > = 最優先 平權
			["0000"] = {"test", 0 } -- test
};

CEPGP_subroster_bak = {
			[1]={true, "你太傲慢了", "Vela"},
			[2]={true , "娜娜亞", "希希雷夢"},
			[3]={true, "不能沒有你", "牛轉未來"},
			[4]={true, "我能射你能吗", "鍵盤文藝青年"},
			[5]={true, "棒棒糖先生", "Bazingaa"},
			[6]={true, "大牛比較懒", "夏麵羊死了"},
			[7]={true, "妖獸嘻狼", "妖獸嘻狼骨"},
			[8]={true, "邪天御", "羽飛天"},
			[9]={true, "水噹噹", "花凝雪"},
			[10]={true, "黑田如水", "楠木正成"},
			[11]={true, "日爾曼戰神", "達羅威夫人"},
			[12]={true, "Northface", "Arcteryx"},
			[13]={true, "鬆搗菜瓜布", "兵騎兩百步"},
			[14]={true, "我徒弟珍娜", "小神童"},
			[15]={true, "Epicrit", "Epictotem"},
			[16]={true, "貓魅", "花藝助理貓魅"},
			[17]={true, "三殿", "昆林樹"},
			[18]={true, "我是一隻牛", "小背刺"},
			[19]={true, "活著就是死", "活著德傢伙"},
			[20]={true, "衝鋒釋放", "閃現釋放靈魂"},
			[21]={true, "黑田如水", "楠木正季"},
			[22]={true, "棒棒糖先生", "海綿體堡包"},
			[23]={true, "喵喵步", "梅猶血"},
			[24]={true, "野蠻阿寶", "全省手工茶"},
			[25]={true, "野蠻阿寶", "坦寶"},
			[26]={true, "來啦老弟", "克爾囌加德"},
			[27]={true, "一刀斧", "一刀狼"},
			[28]={true, "不能沒有你", "尼葛"},
			[29]={true, "七星計分用", "七星一包"},
			[30]={true, "火鳳燎原", "Allinwin"},
			[31]={true, "稻葉浩志", "高希茵娜"},
			[32]={true, "低能兒的天空", "低能兒麵包讚"},
			[33]={true, "來啦老弟", "Piapiapia"},
			[34]={true, "七星計分用", "棒會休林刀"},
			[35]={true, "我是一隻牛", "小火球"},
			[36]={true, "薑姆鴨", "卡拉姆酒"},
			[37]={true, "一刀斧", "一刀斬"},
			[38]={true, "妖獸嘻狼", "妖獸歐嬤嬤"},
			[39]={true, "日爾曼戰神", "項塔蘭"},
			[40]={true, "大號aa", "小號bb"},
			[41]={true, "大號aa", "小號bb"},
			[42]={true, "大號aa", "小號bb"},
			[43]={true, "大號aa", "小號bb"},
			[44]={true, "大號aa", "小號bb"},
			[45]={true, "大號aa", "小號bb"},
			[46]={true, "大號aa", "小號bb"},
			[47]={true, "大號aa", "小號bb"},
			[48]={true, "大號aa", "小號bb"},
			[49]={true, "大號aa", "小號bb"},
			[50]={true, "大號aa", "小號bb"},
			[51]={true, "大號aa", "小號bb"},
			[52]={true, "大號aa", "小號bb"},
			[53]={true, "大號aa", "小號bb"},
			[54]={true, "大號aa", "小號bb"},
			[55]={true, "testxxxy", "testxxxx"}
}; -- [i]={true, "公會內計分角色", "替身"}(true/false表示關閉,替身可以是非公會的，請至少保留1個數組)(名字區分大小寫)

CEPGP_subacc_flag = false; -- 替身分數累加功能總開關。false：若計分角色和替身都在團隊裏，CEPGP_AddRaidEP加EP只會加1次到計分角色上，true：表示會多次累加EP到計分角色上
CEPGP_subacc_roster = {["你太傲慢了"]={false, 0 },["八月悠"]={false, 0 },["二月悠"]={false, 0 },["Lessness"]={false, 0 },["三月悠"]={false, 0 }}; -- 替身EP允許累加名單，"0"不能修改，請至少保留1個數組，true/false 表示開關，只在CEPGP_AddRaidEP內有效

CEPGP_InitialGP_flag = false; -- 新會員初始GP功能總開關。初始GP只在團員Call裝備時替代其真實的GP，不影響真實GP的記錄
CEPGP_InitialGP_roster = {["久久牧"]={false, 100 },["就只知道吃"]={false, 100 },["葉法奈"]={false, 100 },["鬆搗菜瓜布"]={false, 100 },["部落之首"]={false, 100 },["聯盟家屬答禮"]={false, 100 }}; -- 新會員初始GP。遇到分身時，要用"公會內計分角色"，用"替身"無效

function Re_Block_Words(Msg)
	local Msg_C = Msg;
	if string.find(Msg_C, "卍") then 
		Msg_C = string.gsub(Msg_C, "卍", "#");
	end
	if string.find(Msg_C, "卐") then 
		Msg_C = string.gsub(Msg_C, "卐", "#");
	end
	return Msg_C;
end

function CEPGP_subrosterUpdate(event)
	if CEPGP_ignoreUpdates or not IsInGuild() then return; end
	if event == "GUILD_ROSTER_UPDATE" then
		local numGuild = GetNumGuildMembers();
		CEPGP_subroster = {};
		local x = 1;
		for i = 1, numGuild do
			local name, _, _, _, _, _, publicNote = GetGuildRosterInfo(i);
			if string.find(name, "-") then
				name = string.sub(name, 0, string.find(name, "-")-1);
			end
			if name then
				local Note = publicNote;
				while (string.find(Note, "%[.-%]")) do
					local starti, endj = string.find(Note, "%[.-%]");
					local subname = string.sub(Note, starti+1, endj-1);
					Note = string.sub(Note, endj+1);
					if subname ~= "" then
						if CEPGP_tContains(CEPGP_roster, subname, true) then
							if not CEPGP_checkEPGP(CEPGP_roster[subname][5]) then
								CEPGP_subroster[x] = {true, name, subname};
								x = x + 1;
							end
						else
							CEPGP_subroster[x] = {true, name, subname};
							x = x + 1;
						end
					end
				end
			end
		end
	end
end