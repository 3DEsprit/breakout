
Powerup = Class{}

pows = {}

function Powerup:init(index, x, y)
  self.x = x
  self.y = y

  self.height = 16
  self.width = 16

  self.type = pow_effects[index].type
  self.effect = pow_effects[index].effect
end

function Powerup:collides(paddle)
  if paddle.y + paddle.height < self.y or paddle.y > self.y + self.height then
    return false
  end

  if paddle.x + paddle.width < self.x or paddle.x > self.x + self.width then
    return false
  end
  
  return true
end

function Powerup:update(dt)
  self.y = self.y + POW_SPEED * dt
end

function Powerup:render()
  love.graphics.draw(gTextures['main'], gFrames['powerups'][self.type], self.x, self.y)
end

