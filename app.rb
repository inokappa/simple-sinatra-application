require 'sinatra'
require 'sinatra/reloader' if settings.development?
require 'json'

get '/' do
  'hello world'
end

get '/dump' do
  http_headers = request.env.select { |k, v| k.start_with?('HTTP_') }
  JSON.dump(http_headers)
end
