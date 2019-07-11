require 'sinatra/base'
require 'date'
require 'json'
require './duty_manager'

class Protected < Sinatra::Base
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == ENV['BASIC_AUTH_USERNAME'] &&
    password == ENV['BASIC_AUTH_PASSWORD']
  end

  get '/duties' do
    DutyManager.instance.store.to_json
  end
end

class Public < Sinatra::Base
  get '/' do
    "Todays dutyman is #{DutyManager.instance.who_is_on_duty?}"
  end
end
