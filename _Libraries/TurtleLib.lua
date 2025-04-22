--TurtleLib V2.1.1

local function invfind()
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    for index, value in ipairs(inventory) do
        print(inventory[index])
    end
end

invfind()