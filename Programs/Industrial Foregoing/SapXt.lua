--SapXt V1.0.7.1

TermLib = require("TermLib")

--initialize
TermLib.reset(colors.gray)
TermLib.printc({"SapXt, V1.0.7.1"}, colors.pink, colors.gray)
print()
TermLib.printc({"Managing","Sap Extractor"}, colors.yellow, colors.gray)
print()

--places a log if nothing below the turtle
--acacia logs are ideal for sap
while turtle.getItemCount() > 0 do
    if not turtle.detectDown() then
        turtle.placeDown(1)
        TermLib.printx({"Placed Acacia Log..."}, colors.blue, colors.gray)
    end
end

--reboots turtle when out of logs
print()
TermLib.printc({"No logs found,","rebooting OS in..."}, colors.black, colors.red)
TermLib.countdown(nil, nil, nil, colors.black, colors.red)
os.reboot()
