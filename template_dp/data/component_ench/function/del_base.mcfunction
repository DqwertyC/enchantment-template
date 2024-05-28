# Remove components from the first item with tag and no enchantment.
data modify storage component_ench:ench_id Inventory set from entity @s Inventory
data remove storage component_ench:ench_id Inventory[{components:{"minecraft:enchantments":{levels:{"component_ench:ench_id":1}}}}]
execute if data storage component_ench:ench_id Inventory[{components:{"minecraft:custom_data":{ench_id:true}}}] run data modify storage component_ench:ench_id Slot set from storage component_ench:ench_id Inventory[{components:{"minecraft:custom_data":{ench_id:true}}}].Slot
execute if data storage component_ench:ench_id Inventory[{components:{"minecraft:custom_data":{ench_id:true}}}] run function component_ench:del_macro with storage component_ench:ench_id
