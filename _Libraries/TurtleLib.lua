--TurtleLib V3.1.1
local function invfind()
    local inventory = {
        {
            count = 4,
            name = "minecraft:acacia_log"
        }
    }

    for i, item in ipairs(inventory) do
        for j, value in pairs(item) do
            print(j, value)
        end
    end
end

invfind()
