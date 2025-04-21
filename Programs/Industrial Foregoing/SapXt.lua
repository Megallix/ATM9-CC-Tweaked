TermLib = require("TermLib")

--initialize
TermLib.reset(colors.gray)
TermLib.printc({"SapXt, V1.0.3"}, colors.lightGray, colors.gray)
print()
TermLib.printc({"Managing","Sap Extractor"}, colors.yellow, colors.gray)
print()

--places a log if nothing below the turtle
--acacia logs are ideal for sap
while turtle.getItemCount() > 0  and not turtle.detectDown() do
    turtle.placeDown(1)
    TermLib.printx({"Placed Acacia Log..."}, colors.blue, colors.gray)
end

--reboots turtle when out of logs
print()
TermLib.printc({"No logs found,","rebooting OS in..."}, colors.red, colors.cyan)
TermLib.countdown(nil, nil, nil, colors.red, colors.cyan)
os.reboot()