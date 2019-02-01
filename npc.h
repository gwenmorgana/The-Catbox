-- Nillipuss

function event_say(e)
	if(e.message:findi("hail")) then
		e.self:QuestSay(e.other, "Yeah, yeah, you know my name... but drinking [ale] is my new game.");
	elseif(e.message:findi("ale")) then
		e.self:QuestSay(e.other, "Ale fit for a brownie, but delicious to all. I shall give you a [list] so you can craft it for us all!");
	elseif(e.message:findi("list")) then
	  e.self:QuestSay(e.other, "Bring me a Jumjum Stalk, a Short Beer, and the Cherries of a great Paladin.");
		if(e.other:GetLevel() < 4) then
			e.self:Say("I cannot discuss such things with a person as young to the world as you are.");
		elseif(e.other:GetLevel() > 65) then
			e.self:Say("I cannot trouble a person of your stature with such trivial talk.");
		else
			e.self:QuestSay(e.other, "What are you waiting for? Go go go!");
--		e.other:SummonItem(18801);
		end
	elseif(e.message:findi("rumors")) then
		e.self:QuestSay(e.other, "FOO");
	elseif(e.message:findi("fear for your life")) then
		e.self:QuestSay(e.other, "FOO");
	elseif(e.message:findi("guardian")) then
		e.self:QuestSay(e.other, "FOO");
	end
end

function event_trade(e)
	local item_lib = require("item_turnin");

	if(item_lib.check_turn_in(e.trade, {item1 = 13302})) then
		e.self:QuestSay(e.other, "Thank you my friend. I understand that Astaed Wemor of the Temple of Life has been concerned for my well being. Take him this note. I am sure he will reward you for easing my troubled mind.. If you are a respected member.");
		e.other:SummonItem(18862);
		e.other:GiveCash(0, 10, 0, 0);
		e.other:Faction(217, 1, 0);
		e.other:Faction(33, -1, 0);
		e.other:Faction(9, 1, 0);
		e.other:Faction(47, 1, 0);
		e.other:Faction(135, 1, 0);
		e.other:AddEXP(3000);
	end

	if(item_lib.return_items(e.self, e.other, e.trade)) then
		e.other:Message(0, e.self:GetCleanName() .. " does not need this.");
	end
end
