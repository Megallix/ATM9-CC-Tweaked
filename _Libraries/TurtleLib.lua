--TurtleLib V1.0.0.3

--Return table of inventory.
local function invcheck(search)
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    return inventory
end

for i, v in ipairs(invcheck()) do --debugging
    print(i.v)
end