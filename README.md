
# Language System for MTA:SA

With this language system you can make your server international by expanding your player capacity<br>
Demo: https://youtu.be/jiQIiF3VtGU

## Language configuration
In the src/config.lua file you need to insert your language into the table, example:
```lua
languages = {
    {name = "en", file = "locale/en.lng"},
    {name = "pt_br", file = "locale/pt_br.lng"},
    {name = "my_new_language", file = "locale/my_new_language.lng"},
}
```
You will also need to insert the language file in meta.xml
```xml
<file src="locale/my_new_language.lng" />
```

## Usage
With the resource started you can call it in your other resources to load the translation in messages, gui panels, dx, anything as follows:

```lua
-- Syntax
exports["resource-name"]:getTranslation("language-name", "language-key")

-- Method 1
local welcomeMessage = exports["mtasa-languagesystem"]:getTranslation("pt_br", "welcome_message")
outputChatBox(welcomeMessage)

-- Method 2
outputChatBox(exports["mtasa-languagesystem"]:getTranslation("pt_br", "welcome_message"))
```

## Roadmap
Some of the features that are yet to be or have already been implemented
| Feature   | Status  |
| :---------- | :--------- | 
| `Call the translation` | ✅ | 
| `Pass dynamic values ​​in translation (%s)` | ⚠️ | 


