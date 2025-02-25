local repo = "https://raw.githubusercontent.com/ssssa4848/asdasdasde/main/"

-- Yüklenmesi gereken tüm dosyalar
local files = {
    "files/games/RogueLineage.lua",
    "require-loader.lua",
    "PFActor.lua"
}

for _, file in ipairs(files) do
    local url = repo .. file
    print("Loading: " .. url)  -- Debugging için
    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)
    
    if success and response then
        loadstring(response)()
    else
        warn("Failed to load: " .. url)
    end
end
