TermLib = require("TermLib")

--initialize
TermLib.reset(colors.gray)
TermLib.printc({"SapXt, V1.0.1"}, colors.lightGray)
print()
TermLib.printc({"Managing","Sap Extractor"}, colors.yellow)
print()

--places a log if nothing below the turtle
--acacia logs are ideal for sap
while turtle.getItemCount() > 0  and not turtle.detectDown() do
    turtle.placeDown(1)
    TermLib.printx({"Placed Acacia Log..."}, colors.blue)
end

--reboots turtle when out of logs
print()
TermLib.printc({"No logs found,","rebooting OS in..."}, colors.red, colors.cyan)
TermLib.countdown(nil, nil, nil, colors.red, colors.cyan)
os.reboot()