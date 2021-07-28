minetest.register_alias("mapgen_stone", "oh_no:stone")

minetest.register_node("oh_no:stone", {
    description = "Stone",
    tiles = {"default_stone.png"},
    groups = {cracky = 3, stone = 1},
    legacy_mineral = true,
})

minetest.register_on_joinplayer(function(player)
    player:set_physics_override({sneak = false})
end)


minetest.register_globalstep(function(dtime)
    local player = minetest.get_player_by_name("singleplayer")

    if (player) then
        print(dump(player:get_physics_override()))
    end
end)