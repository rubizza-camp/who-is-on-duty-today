require 'sinatra'
require 'date'
require 'json'
require './duty_manager'

duty_manager = DutyManager.new

get '/' do
  "Todays dutyman is #{duty_manager.who_is_on_duty?}"
end

get '/duties' do
  duty_manager.store.to_json
end
