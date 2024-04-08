languageData = {}
languageSelected = "en"

function getTranslation(languageReceived, key)
    local stringReturn = "No translation"
    for i, v in pairs(languageData) do
        if v.key == key and v.language == languageReceived then
            stringReturn = v.value     
        end
    end
    return stringReturn
end

addEventHandler("onClientResourceStart", resourceRoot, function()
    for i, language in pairs(languages) do
        if not language.name then return end
        local file = fileOpen(language.file, true)
        local count = fileGetSize(file)
        local content = fileRead(file, count)
        local lines = split(content, "\n")
        
        for _, value in ipairs(lines) do
            local translation = split(value, "=")
            table.insert(languageData, {key = translation[1], value = translation[2], language = language.name})
        end

        fileClose(file)
    end
end)