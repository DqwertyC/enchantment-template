# Add components to the first item with enchantment and no tag.
data modify storage component_ench:ench_id Inventory set from entity @s Inventory
data remove storage component_ench:ench_id Inventory[{components:{"minecraft:custom_data":{ench_id:true}}}]
execute if data storage component_ench:ench_id Inventory[{components:{"minecraft:enchantments":{levels:{"component_ench:ench_id":1}}}}] run data modify storage component_ench:ench_id Slot set from storage component_ench:ench_id Inventory[{components:{"minecraft:enchantments":{levels:{"component_ench:ench_id":1}}}}].Slot
execute if data storage component_ench:ench_id Inventory[{components:{"minecraft:enchantments":{levels:{"component_ench:ench_id":1}}}}] run function component_ench:add_macro with storage component_ench:ench_id
