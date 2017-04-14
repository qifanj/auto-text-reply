require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-autoreply' do
  twiml = Twilio::TwiML::Response.new do |r|
  	r.Message do |message|
        message.Body "Here is the survey link: https://goo.gl/xTnoY5, thank you for your participation!"
        end
  end
  twiml.text
end
