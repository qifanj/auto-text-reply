require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

get '/sms-autoreply' do
  twiml = Twilio::TwiML::Response.new do |r|
  	r.Message do |message|
        message.Body "Please take this one-minute survey to help us improve the airport and you will have a chance to win a $250 visa gift card! Survey link: https://goo.gl/xTnoY5 . Thank you for your participation!"
        end
  end
  twiml.text
end
