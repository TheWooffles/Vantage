local ReGui = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/ReGui.lua'))()
local IDEModule = loadstring(game:HttpGet('https://raw.githubusercontent.com/depthso/Dear-ReGui/refs/heads/main/lib/ide.lua'))()

local Window = ReGui:TabsWindow({
	Title = "Vantage",
	Size = UDim2.fromOffset(300, 200)
})

local Combat = Window:CreateTab({
	Name="Combat"
})
local Visuals = Window:CreateTab({
	Name="Visuals"
})
local Misc = Window:CreateTab({
	Name="Misc"
})

ReGui:Console({
    LineNumbers = true
})

local EditorTab = Window:CreateTab({
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