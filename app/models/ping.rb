class Ping < ActiveRecord::Base
require 'httparty'

    def self.check_pings
      response = HTTParty.get("http://data.api.hackthedrive.com:80/v1/Trips?limit=10&offset=0&sortBy=StartTime&desc=false&criteria=tripId%3Dcc7479ae-3841-453e-8627-859fdb99de71", :headers => { "MojioAPIToken" => "49f3b5ff-9e6d-4b49-863a-1ea75a9c0e80"})
    max_speed = response["Data"].first["MaxSpeed"]
    last_lat = response["Data"][0]["LastKnownLocation"]["Lat"]
    last_long = response["Data"][0]["LastKnownLocation"]["Lng"]

    account_sid = 'AC637f3eb8522510b7005993e2dbd00f8f'
    auth_token = '3b0edbea925db23e15b3a3f8cf277ab1'
    @client = Twilio::REST::Client.new account_sid, auth_token
    sms = @client.account.sms.messages.create(:body => "Your son has exceeded the speed limit that you indicated on your setting. Here is the possible place  http://bit.ly/1FI6zi5 and the speed #{max_speed}",
     :media_url =>'http://example.com/smileyface.jpg',
     :from => "+19163850335",
     :to => "+16508230443"
     )

    end

  end