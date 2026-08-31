Hooks:OverrideFunction(NetworkAccountSTEAM, "inventory_load", function()
  local list, i = {}, 1
  for skin, data in pairs(tweak_data.blackmarket.weapon_skins) do
    if not data.is_a_color_skin and data.global_value ~= "tam" then
      table.insert(list, { amount = 1, bonus = false, category = "weapon_skins", quality = "mint", entry = skin, instance_id = tostring(i) })
      i = i + 1
    end
  end

  for skin, data in pairs(tweak_data.economy.armor_skins) do
    if data.steam_economy then
      table.insert(list, { amount = 1, bonus = false, category = "armor_skins", quality = "", entry = skin, instance_id = tostring(i) })
      i = i + 1
    end
  end

  managers.blackmarket:tradable_update(list)
  if managers.menu_scene then managers.menu_scene:set_blackmarket_tradable_loaded() end
end)