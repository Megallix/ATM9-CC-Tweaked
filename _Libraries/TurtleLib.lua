--TurtleLib V3.1.0
local function invfind()
    local inventory = {
        {
            count = 4,
            name = "minecraft:acacia_log"
        }
    }

    for i = 1, #inventory do
        for j, v in pairs(inventory[i]) do
            print(j,v)
        end
    end
end

invfind()
