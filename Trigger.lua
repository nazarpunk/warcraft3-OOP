---@class Trigger
Trigger         = {}
Trigger.__index = Trigger

function Trigger.new(...)
	local trigger = CreateTrigger()
	local args    = { ... }
	for i = 1, #args do
	
	end
	local events = {}
	local funcs  = {}

end

--EVENT_UNIT_SPELL_CHANNEL                                  = ConvertUnitEvent(289)    ---@type unitevent
--EVENT_UNIT_SPELL_CAST                                     = ConvertUnitEvent(290)    ---@type unitevent
--EVENT_UNIT_SPELL_EFFECT                                   = ConvertUnitEvent(291)    ---@type unitevent
--EVENT_UNIT_SPELL_FINISH                                   = ConvertUnitEvent(292)    ---@type unitevent
--EVENT_UNIT_SPELL_ENDCAST                                  = ConvertUnitEvent(293)    ---@type unitevent

Trigger
		:new(
		EVENT_UNIT_SPELL_CHANNEL,
		EVENT_UNIT_SPELL_EFFECT,
		EVENT_UNIT_SPELL_CAST,
		function()
			print 'EVENT_UNIT_SPELL_CHANNEL'
		end,
		function()
			print 'EVENT_UNIT_SPELL_EFFECT'
			print 'EVENT_UNIT_SPELL_CAST'
		end
)

Trigger:new(
		function()
			print 'угадай когда та уфнкция вызовется'
		end,
		EVENT_UNIT_SPELL_EFFECT,
		EVENT_UNIT_SPELL_CAST
)