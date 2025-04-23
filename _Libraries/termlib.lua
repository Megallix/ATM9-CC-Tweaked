--Resets the terminal.
--Supports background colors.
local function reset(color)
    color = color or colors.black
    term.setBackgroundColor(color)
    term.clear()
    term.setCursorPos(1,1)
end

--Handles multiline printing.
--Supports text & background colors.
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

--Prints to center of current line.
--Supports text & background colors.
--Supports multiline prints.
local function printc(text, tColor, bColor)
    text = text or {""}
    tColor = tColor
    bColor = bColor
    local width, height = term.getSize()

    for i, v in ipairs(text) do
        local x, y = term.getCursorPos()
        term.setCursorPos(math.floor((width - #v) / 2) + 1, y)
        printx({v}, tColor, bColor)
    end
end

--Prints a countdown with a settable time.
--Supports text & background colors.
--Supports center prints.
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
