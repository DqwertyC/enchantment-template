advancement revoke @s only component_ench:has_item

execute if items entity @s container.* \
 *[enchantments~[{enchantments:"component_ench:ench_id"}],!custom_data~{ench_id:true}] \
  run function component_ench:add_base

execute if items entity @s container.* \
 *[!enchantments~[{enchantments:"component_ench:ench_id"}],custom_data~{ench_id:true}] \
  run function component_ench:del_base