--TurtleLib V1.0.0

local function invcheck(search)
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    return inventory
end

print(invcheck())