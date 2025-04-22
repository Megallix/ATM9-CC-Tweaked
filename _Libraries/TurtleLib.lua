--TurtleLib V2.1.3

local function invfind()
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    for i, v in ipairs(inventory) do
        for j, w in ipairs(v) do
            print(inventory[i][j])
        end
    end
end

invfind()
