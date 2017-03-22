class PageController < ApplicationController
	def index
	end

	def call
		client_name = params[:client_name]
		client_phone = params[:client_phone]
		text = "#{client_name} #{client_phone}"
		url_str = URI::encode "http://bytehand.com:3800/send?id=29449&key=F55589C5235E3E59&to=79536254587&from=LAWYER&text=#{text}"
		url = URI.parse(url_str)
		result = Net::HTTP.get(url)
		@status = result.split(',').first.split(':').second.to_i
		@description = result.split(',').second.split(':').second.split('"').second
		respond_to do |format|
			format.js
		end
	end

	def back
		respond_to do |format|
			format.js
		end
	end
end
