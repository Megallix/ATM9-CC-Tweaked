--TurtleLib V1.0.0.2

--Cycle through inventory.
--Returns either table of inventory, or search term if found.
local function invcheck(search)
    local inventory = {}
    for i = 1, 16 do
        inventory[i] = turtle.getItemDetail(i)
    end
    return inventory
end

for i, v in ipairs(invcheck()) do --debugging
    for n, a in ipairs(v) do
        print(n, a)
    end
end