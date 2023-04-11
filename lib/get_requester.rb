# Write your code here
require 'open-uri' 
require 'net/http'
require 'json'

 class GetRequester
   
    attr_accessor :url

    def initialize(url)
        @url = url
    end
  
  def get_response_body
      uri = URI.parse(@url)
      response = Net::HTTP.get_response(uri)
      response.body
  end

  def parse_json
      req_parse = JSON.parse(self.get_response_body)
  end

end

request = GetRequester.new("https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json")
puts request.parse_json
puts request