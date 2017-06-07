class SitesController < ApplicationController

	def new
		@site = Site.new
	end

	def create
		s = Site.new
		puts "url short = #{s.generate_short}"

		url_long = params[:url]
		url_short = s.generate_short
		s.url_short = url_short
		s.url_long = url_long
		s.save
		render 'new'
	end

	def show
		@site = Site.find(params[:url_short])
		redirect_to @site.url_long
	end
end
