require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-autoreply' do
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Here is the survey link: https://goo.gl/xTnoY5"
  end
  twiml.text
end
