local objeto =script.Parent.Red
local objeto2 = script.Parent.DamegeRed

local y1 = Random.new():NextNumber(2,4.4)
local y2 = Random.new():NextNumber(0.1,5.2)

while (true) do
	wait()
	objeto.Orientation = objeto.Orientation + Vector3.new(0,y1,0)
	objeto2.Orientation = objeto2.Orientation + Vector3.new(0,y2,0)
	
end