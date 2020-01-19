---@class Unit
Unit         = {}
Unit.__index = Unit

---@param id player|integer
---@param unitid integer|string
---@param x real
---@param y real
---@param face real
---@return Unit
function Unit.create(id, unitid, x, y, face)
	local self = setmetatable({}, Unit)
	if type(id) == 'number' then id = Player(id) end
	if type(unitid) == 'string' then unitid = FourCC(unitid) end
	self.unit = CreateUnit(id, unitid, x, y, face)
	return self
end

---@return Unit
function Unit.triggering()
	local self = setmetatable({}, Unit)
	self.unit  = GetTriggerUnit()
	return self
end

---@param self Unit
---@param x real|nil
---@return Unit|real
function Unit.x(self, x)
	if x == nil then return GetUnitX(self.unit) end
	SetUnitX(self.unit, x)
	return self
end

---@param self Unit
---@param y real|nil
---@return Unit|real
function Unit.y(self, y)
	if y == nil then return GetUnitY(self.unit) end
	SetUnitY(self.unit, y)
	return self
end

---@param self Unit
---@param x real|nil
---@param y real|nil
---@return Unit|real, real
function Unit.xy(self, x, y)
	if x == nil then return GetUnitX(self.unit), GetUnitY(self.unit) end
	SetUnitX(self.unit, x)
	SetUnitY(self.unit, y)
	return self
end

---@param self Unit
---@param rad real|nil
---@return Unit|real
function Unit.rad(self, rad)
	if rad == nil then return math.rad(GetUnitFacing(self.unit)) end
	SetUnitFacing(self.unit, math.rad(rad))
	return self
end

---@param self Unit
---@param deg real|nil
---@return Unit|real
function Unit.deg(self, deg)
	if deg == nil then return GetUnitFacing(self.unit) end
	SetUnitFacing(self.unit, deg)
	return self
end

---@param self Unit
---@return boolean
function Unit.alive(self)
	return UnitAlive(self.unit)
end