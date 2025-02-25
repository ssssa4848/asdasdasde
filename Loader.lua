local repo = "https://raw.githubusercontent.com/ssssa4848/asdasdasde/main/"

-- Çalıştırılacak dosyaların listesi
local files = {
    "PFActor.lua",
    "require-loader.lua"
}

for _, file in ipairs(files) do
    local url = repo .. file
    print("Loading: " .. url)  -- Hata ayıklama için
    loadstring(game:HttpGet(url, true))()
end
