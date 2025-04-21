TermLib = require("TermLib")

TermLib.reset(colors.gray)
print()
TermLib.printc({"Managing","Sap Extractor"}, colors.yellow)
print()


while turtle.getItemCount() > 0  and not turtle.detect() do
    turtle.placeDown(1)
    TermLib.printx({"Placed Acacia Log..."}, colors.blue)
end

print()
TermLib.printc({"No logs found,","rebooting OS in..."}, colors.red, colors.cyan)
TermLib.countdown(nil, nil, nil, colors.red, colors.cyan)
reboot()