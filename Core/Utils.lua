--// [SETCLIPBOARD]

setclipboard('Hello World')

--// [BASE64 ENCODE]

local Get_Encode = base64_encode('Hello World!')
setclipboard(Get_Encode)
print('Copied to Clipboard: ' .. Get_Encode)

--// [BASE64 DECODE]

local Get_Decode = base64_decode('SGVsbG8gV29ybGQh') --// 'Hello World!'
setclipboard(Get_Decode)
print('Copied to Clipboard: ' .. Get_Decode)

--// [BYTES ENCODE]

local Encode_Text = 'Hello World!'
local Get_Bytes = ''
for i=1,#Encode_Text do 
    Get_Bytes = Get_Bytes..'\\'..string.byte(Encode_Text,i)
end

setclipboard(Get_Bytes)
print('Copied to Clipboard: '.. Get_Bytes)

--// [BYTES DECODE]

local Get_Decode = Get_Bytes:gsub('\\(%d+)', function(v)
    return string.char(tonumber(v))
end)

setclipboard(Get_Decode)
print('Copied to Clipboard: ' .. Get_Decode)  

--// [REVERSE]

local Get_Text = 'Hello World!'
local Get_Reversed = Get_Text:reverse()
setclipboard(Get_Reversed)
print('Copied to Clipboard: ' .. Get_Reversed)

--// [DE-REVERSE]

local Get_Original = Get_Reversed:reverse()
setclipboard(Get_Original)
print('Copied to Clipboard: ' .. Get_Original)

--// [GET HWID]

gethwid()
setclipboard(gethwid())
print('Copied to Clipboard: ' .. gethwid())

--// [EXECUTOR]

local Get_Executor = identifyexecutor()
setclipboard(Get_Executor) 
print('Copied to Clipboard: ' .. Get_Executor)

--// [CUSTOM ASSETS]

getcustomasset()

--// [QOT]

queue_on_teleport([[print('Hello World!')]])
print('This script will run after teleporting.')

--// [CLONEREF]

cloneref(game:GetService('Workspace')) --// EXAMPLE SERVICE.

--// [SAVEINSTANCE]

saveinstance()

--// [MESSAGE BOX]

messagebox('Hello World!', 'Notification', 1)

--// [FILE UTILITIES]

local Assets_Path = 'Noryn/Assets'
local Get_File = Assets_Path..'/Noryn-World.lua'
local Get_File_Context = 'dsc.gg/getnoryn'

if not isfolder(Assets_Path) then
    makefolder(Assets_Path)
end

if not isfile(Get_File) then
    writefile(Get_File, Get_File_Context)
end

local Get_Text = readfile(Get_File)
setclipboard(Get_Text) 
print('File content: '..Get_Text)

--[[// [ETC]
    
makefolder('Example')
isfolder('Example')
isfile('Example')
writefile('Example/file', 'Context.')
readfile('Example/file')
delfolder('Example')
appendfile('Example', 'Context.')
listfiles('Example')
    
]]
