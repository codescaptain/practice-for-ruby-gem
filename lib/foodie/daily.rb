require 'active_support/inflector'
require "uri"
require "net/http"
require "json"

module Foodie
  class Daily
    attr_accessor :horoscope
    def initialize(horoscope)
      @horoscope = horoscope.empty? ? "Aslan" : horoscope
      @url = URI("https://burc-yorumlari.herokuapp.com/get/#{@horoscope}")
    end

    def horoscope_name
      horoscope_interpretation(@url).first["Burc"]
    end

    def horoscope_motto
      horoscope_interpretation(@url).first["Mottosu"]
    end

    def horoscope_planet
      horoscope_interpretation(@url).first["Gezegeni"]
    end

    def horoscope_element
      horoscope_interpretation(@url).first["Elementi"]
    end

    def horoscope_description
      horoscope_interpretation(@url).first["GunlukYorum"]
    end


    private

    def horoscope_interpretation(url)
      https = Net::HTTP.new(url.host, url.port)
      https.use_ssl = true

      request = Net::HTTP::Get.new(url)

      response = https.request(request)

      JSON.parse(response.read_body)
    end


  end

end
