local filePath = ({...})[1]
local code = ""
local file = io.open(filePath,"r")
if file then
    code = file:read("*all")
else
    print("Unable to open "..filePath)
end

local luacode = "local i, c = 0, {} "
for char in code:gmatch("%w+") do
    if char == "chilindrina" then luacode = luacode .. "i = i + 1 "
    elseif char == "chiquitolina" then luacode = luacode .. "i = i - 1 "
    elseif char == "chompiras" then luacode = luacode .. "c[i] = (c[i] or 0) + 1 "
    elseif char == "chaparron" then luacode = luacode .. "c[i] = (c[i] or 0) - 1 "
    elseif char == "chipote" then luacode = luacode .. "while (c[i] or 0) == 0 do "
    elseif char == "chillon" then luacode = luacode .. "end "
    elseif char == "chanfle" then luacode = luacode .. "io.write(string.char(c[i] or 0)) "
    elseif char == "chapulin" then luacode = luacode .. "c[i] = io.read():byte() "
    elseif char == "chiripiolca" then luacode = luacode .. "while true do io.write(string.char(math.random(255))) end "
    end
end
local exe = loadstring(luacode)
if exe then exe() end
