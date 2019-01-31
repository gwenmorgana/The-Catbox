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
		e.self:QuestSay(e.other, "I have heard that a few of the Qeynos merchants and guards are not very happy with the current state of the city. Taxes are too high and many of the guards have been sent to the outlands, leaving Qeynos vulnerable to attack. I do not feel the same way, but I fear these few may become many. I [fear for my life].");
	elseif(e.message:findi("fear for your life")) then
		e.self:QuestSay(e.other, "During a late night stroll by the pond in north Qeynos I spied a guard carrying a very large carpet on his shoulders. He approached the pond's edge and unrolled the carpet, the body of another guard rolled out and began to moan. The other guard grabbed for a long spear like weapon from his back. He drove the weapon into the man and pushed him into the pond. I screamed. He turned to me and I ran. I do not think he gave chase, too bad, he would not like to run into my [guardian] at home. I told my guardian and we both went to the pond and saw no body. He believes I was drinking too much wine. I do not drink. Now I fear for my life when I am in the streets of Qeynos.");
	elseif(e.message:findi("guardian")) then
		e.self:QuestSay(e.other, "When my big sister left Qeynos for adventure, she left me in the hands of her old time friend Kane Bayle. Yes, the commander of the Qeynos Guards is my guardian. You would think I would be safe. Every time I tell him the rumors I hear he just ignores me. He is too busy I guess.");
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