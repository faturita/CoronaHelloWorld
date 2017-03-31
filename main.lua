-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local physics = require( "physics" )
physics.start()

local sky = display.newImage( "Icon.png" )
sky.x = 160; sky.y = 195

local ground = display.newImage( "Icon.png" )
ground.x = 160; ground.y = 445

physics.addBody( sky, { density=3.0, friction=0.5, bounce=0.3 } )
physics.addBody( ground, "static", { friction=0.5, bounce=0.3 } )

print( "Hello World!" )

local myTextObject = display.newText( "Hello World!", 160, 240, "Arial", 60 )

myTextObject:setFillColor( 1, 0, 0 )


function screenTap()
    local r = math.random( 0, 100 )
    local g = math.random( 0, 100 )
    local b = math.random( 0, 100 )
    myTextObject:setFillColor( r/100, g/100, b/100 )
end

display.currentStage:addEventListener( "tap", screenTap )
