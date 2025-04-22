--TurtleLib V3.0.0

local function invfind()
    local inventory = {
        {
            count = 4,
            name = "minecraft:acacia_log"
        }
    }

    for i, item in ipairs(inventory) do
        print(item, inventory[i])
    end
end

invfind()