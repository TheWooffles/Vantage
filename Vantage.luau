local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()
local IDEModule = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/lib/ide.lua'))()

local Window = ReGui:TabsWindow({
	Title = "Vantage",
	Size = UDim2.fromOffset(300, 200)
})

local Combat = TabsWindow:CreateTab({
	Name="Combat"
})
local Visuals = TabsWindow:CreateTab({
	Name="Visuals"
})
local Misc = TabsWindow:CreateTab({
	Name="Misc"
})

ReGui:Console({
    LineNumbers = true
})

local EditorTab = TabSelector:CreateTab({
	Name = "Editor"
}) --> Canvas

local CodeEditor = IDEModule.CodeFrame.new({
    Editable = false,
    FontSize = 13,
    Colors = SyntaxColors,
    FontFace = TextFont
})

--// Parent and apply custom ReGui properties
ReGui:ApplyFlags({
	Object = CodeEditor.Gui,
	WindowClass = Window,
	Class = {
		--Border = true,
		Fill = true,
		Active = true,
		Parent = EditorTab:GetObject(), -- Canvas function
		BackgroundTransparency = 1,
	}
})