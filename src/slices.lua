PizzaSlices:RegisterModule('slices', function ()
  PS.slices = CreateFrame('Frame', 'PizzaSlicesSlices', PS)

  PS.slices.categories = {}

  local function getItemrackSlices()
    local slices = {}
    if Rack_User and Rack and Rack.EquipSet then
      local player = UnitName('player')
      local realm = GetRealmName()
      local rackConfig = Rack_User[player .. ' of ' .. realm]
      if rackConfig and rackConfig.Sets then
        for setName, set in pairs(rackConfig.Sets) do
          if setName ~= 'Rack-CombatQueue' then
            local name = setName
            table.insert(slices, {
              name = 'ItemRack Set: ' .. name,
              tex = set.icon,
              color = PS.utils.getRandomColor(),
              action = 'itemrack:<name>',
            })
          end
        end
      end
    end
    return slices
  end

  local function getMacroSlices()
    local slices = {}
    for i = 1, 36 do
      local name, tex = GetMacroInfo(i)
      if name then
        table.insert(slices, {
          name = 'Macro: ' .. name,
          tex = tex,
          color = PS.utils.getRandomColor(),
          action = 'macro:<name>',
        })
      end
    end
    return slices
  end

  local function getOutfitterSlices()
    local slices = {}
    if Outfitter_GetOutfitsByCategoryID then
      local categories = {"Complete", "Partial"}
      for _, categoryID in pairs(categories) do
        local outfits = Outfitter_GetOutfitsByCategoryID(categoryID)
        if outfits then
          for _, outfit in pairs(outfits) do
            if outfit.Name then
              local actionType = categoryID == "Complete" and "outfitter-complete" or "outfitter-partial"
              table.insert(slices, {
                name = 'Outfitter: ' .. outfit.Name,
                tex = outfit.Icon or "Interface\\Icons\\INV_Misc_QuestionMark",
                color = PS.utils.getRandomColor(),
                action = actionType .. ':<name>',
              })
            end
          end
        end
      end
    end
    return slices
  end

  local getSlices = {
    ['ItemRack Sets'] = getItemrackSlices,
    ['Macros'] = getMacroSlices,
    ['Outfitter'] = getOutfitterSlices,
  }

  function PS.slices.load()
    PS.slices.categories = {}
    for category, get in pairs(getSlices) do
      local slices = get()
      if slices and PS.utils.length(slices) > 0 then
        PS.slices.categories[category] = slices
      end
    end

    PS.rings.load()
  end

  -- We still need to load slices on init() so it doesn't break
  -- when reloading UI because in that case, SPELLS_CHANGED is
  -- not fired...
  function PS.slices.init()
    PS.slices.load()
  end

end)
