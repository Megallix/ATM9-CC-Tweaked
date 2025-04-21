-- reset terminal
-- background color support
local function reset(color)
    color = color or colors.black
    term.setBackgroundColor(color)
    term.clear()
    term.setCursorPos(1,1)
end

-- multiline print
-- color support
local function printx(text, tColor, bColor)
    text = text or {""}
    tColor = tColor or colors.white
    bColor = bColor or colors.black
    term.setTextColor(tColor)
    term.setBackgroundColor(bColor)

    for i, v in ipairs(text) do
        print(v)
    end
end

-- center print
-- multiline support
-- color support
local function printc(text, tColor, bColor)
    text = text or {""}
    tColor = tColor
    bColor = bColor
    local width, height = term.getSize()

    for i, v in ipairs(text) do
        local x, y = term.getCursorPos()
        term.setCursorPos(math.floor((width - #v) / 2) + 1, y)
        term.printx(v, tColor, bColor)
    end
end

-- countdown for specified time
-- color support
-- center support
local function countdown(time, prefix, suffix, tColor, bColor, center)
    time = time or 3
    prefix = prefix or ""
    suffix = suffix or "..."
    tColor = tColor or colors.white
    bColor = bColor or colors.black
    center = center or false

    while time > 0 do
        if center then printc({prefix..time..suffix}, tColor, bColor)
        else printx({prefix..time..suffix}, tColor, bColor) end
        sleep(1)
        time = time - 1
    end
end

return {
    reset = reset, --terminal reset
    printx = printx, --extended print
    printc = printc, --center print
    countdown = countdown --counts down
}
