
Item = Class{}

function Item:init(skin)
    -- simple positional and dimensional variables
    self.width = 8
    self.height = 8

    -- these variables are for keeping track of our velocity on both the
    -- X and Y axis, since the Item can move in two dimensions
    self.dy = 0
    self.dx = 0

    -- this will effectively be the color of our Item, and we will index
    -- our table of Quads relating to the global block texture using this
    self.skin = skin
end

--[[
    Expects an argument with a bounding box, be that a paddle or a brick,
    and returns true if the bounding boxes of this and the argument overlap.
]]
function Item:collides(target)
    -- -- add powerup

    -- if the above aren't true, they're overlapping
    return true
end

function Item:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt

    -- if item touches paddle
end

function Item:render()
    -- gTexture is our global texture for all blocks
    -- gItemFrames is a table of quads mapping to each individual Item skin in the texture
    love.graphics.draw(gTextures['main'], gFrames['Items'][self.skin],
        self.x, self.y)
end