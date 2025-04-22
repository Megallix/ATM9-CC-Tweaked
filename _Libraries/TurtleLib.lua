--TurtleLib V2.1.0

local function invfind()
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    for index, value in ipairs(inventory) do
        for i, v in ipairs(inventory[index]) do
            print(i,v)
        end
    end
end