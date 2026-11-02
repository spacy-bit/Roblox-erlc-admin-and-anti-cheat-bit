-- Place in ServerScriptService; remove after testing.
local HttpService=game:GetService("HttpService")
local URL="https://roblox-erlc-admin-bot-main-a1e345.vybebot.com/api/anticheat/report"
local KEY="REPLACE_WITH_AC_API_KEY"
local data={player={userId=123456789,name="StudioTest"},reason="TEST ONLY - movement reconstruction",points={}}
for i=1,30 do table.insert(data.points,{t=i*0.25,x=i*3,y=5,z=math.sin(i/4)*15}) end
local ok,result=pcall(function() return HttpService:RequestAsync({Url=URL,Method="POST",Headers={["Content-Type"]="application/json",["x-ac-key"]=KEY},Body=HttpService:JSONEncode(data)}) end)
print("[AC TEST]",ok,ok and result.StatusCode or result,ok and result.Body or "")
