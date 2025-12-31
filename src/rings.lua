PizzaSlices:RegisterModule('rings', function ()
  PS.rings = {}
  PS.rings.default = {}

  function PS.rings.load()
    -- (Re)populate default rings
    PS.rings.default = {}
    local defaultRingNames = { 'ItemRack Sets' }
    for _, name in ipairs(defaultRingNames) do
      local slices = PS.slices.categories[name]
      if slices and PS.utils.length(slices) > 0 then
        table.insert(PS.rings.default, {
          name = name,
          slices = slices,
        })
      end
    end

    -- If player doesn't have any rings, use the default ones initially.
    if not _G.PizzaSlices_rings then
      _G.PizzaSlices_rings = PS.rings.default
    end

    -- Update the settings frame so it shows all rings.
    PS.settings.update()
  end

  function PS.rings.remove(idx)
    if not PizzaSlices_rings then return end
    local rings = PS.utils.clone(PizzaSlices_rings)
    local removed = table.remove(rings, idx)
    _G.PizzaSlices_rings = rings
    return removed
  end

  function PS.rings.init()
    PS.rings.load()
  end
end)
