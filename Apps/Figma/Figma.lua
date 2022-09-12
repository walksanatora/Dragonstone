local basalt = require(".BucketOS.OS.Libraries.Basalt")
local databaser = require(".BucketOS.OS.Libraries.Databaser.main")

local mainFrame = basalt.createFrame()
    :setBackground(colors.black)

local rw, rh = mainFrame:getSize()

local ProjectX, ProjectY = 51,19

local Enviroment = mainFrame:addFrame()
    :setSize(ProjectX.."+16", ProjectY.."+10")
    :setPosition(16,6)
    :setBackground(colors.black)
    :setScrollable(true)
    local ew, eh = Enviroment:getSize()

    local Project = Enviroment:addFrame()
    :setSize(ProjectX, ProjectY)
    :setPosition(8,5)

    local EnviromentScrollVert = mainFrame:addScrollbar():hide()
        :setSize(1, rh.."-6")
        :setPosition(rw.."", 6)
        :setBackground(colors.lightGray)
        :setForeground(colors.black)
        :setSymbol(" ")
        local EnviromentScrollVertBorder = mainFrame:addFrame():hide()
        :setSize(1, rh.."-7")
        :setPosition(rw.."-1", 6)
        :setBackground(colors.lightGray, "\149", colors.black)

    local EnviromentScrollHor = mainFrame:addScrollbar():hide()
        :setSize(rw.."-16", 1)
        :setPosition(16, rh)
        :setBackground(colors.lightGray)
        :setForeground(colors.black)
        :setSymbol(" ")
        :setBarType("horizontal")
        local EnviromentScrollHorBorder = mainFrame:addFrame():hide()
        :setSize(rw.."-17", 1)
        :setPosition(16, rh.."-1")
        :setBackground(colors.lightGray, "\143", colors.black)
    
    local EnvSymbolsCorner = mainFrame:addLabel():hide()
        :setPosition(rw.."-1", rh.."-1")
        :setSize(1,1)
        :setBackground(colors.lightGray)
        :setForeground(colors.black)
        :setText("\133")

    local CodeButton1 = mainFrame:addLabel():hide()
        :setSize(1,1)
        :setPosition(rw,rh)
        :setText("\127")
        :setBackground(colors.lightGray)
        :setForeground(colors.black)






local TopMenu = mainFrame:addFrame()
    :setSize(rw, 5)
    :setBackground(colors.gray)
    
    local TopMenuSeparator = TopMenu:addFrame()
        :setPosition(1,5)
        :setSize(rw,6)
        :setBackground(colors.lightGray, "\143", colors.gray)

    local TopMenuMenuBar = TopMenu:addMenubar()
        :setPosition(1,1)
        :setSize(70,1)
        :setBackground(colors.gray)
        :setForeground(colors.lightGray)
        :setSelectedItem(colors.gray, colors.white)
        :addItem("Project", colors.gray, colors.lightGray)
        :addItem("Object", colors.gray, colors.lightGray)
        :addItem("Edit", colors.gray, colors.lightGray)
        :addItem("Events", colors.gray, colors.lightGray)
        :addItem("Animations", colors.gray, colors.lightGray)
        :addItem("ASCII", colors.gray, colors.lightGray)
        :addItem("FAQ", colors.gray, colors.lightGray)

local Explorer = mainFrame:addFrame()
    :setSize(15,rh.."-5")
    :setPosition(1,6)
    :setBackground(colors.gray)

    local ExplorerSeparator = Explorer:addFrame()
        :setSize(1,rh.."-5")
        :setPosition(15,1)
        :setBackground(colors.lightGray, "\149", colors.gray)

local Code = mainFrame:addFrame()
    :setSize(35,20)
    :setPosition(rw.."-34", rh.."+1")
    :setBackground(colors.gray)
    :setBorder(colors.lightGray, "top", "left")





if ProjectX > rw-17 or ProjectY > rh-6 then
    EnviromentScrollVert:show()
    EnviromentScrollHor:show()
    --EnvSymbolsCorner:show()
    CodeButton1:show()
    --nviromentScrollVertBorder:show()
    --EnviromentScrollHorBorder:show()
end
basalt.autoUpdate()