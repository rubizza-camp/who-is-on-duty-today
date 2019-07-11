require './app'

run Rack::URLMap.new({
  "/" => Public,
  "/auth" => Protected
})
