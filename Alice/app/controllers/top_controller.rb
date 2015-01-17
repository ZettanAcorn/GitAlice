class TopController < ApplicationController
  	def index
		@articles = Article.order("position")
		@jobs = Job.order("id")
  	end

  	def about
  	end

  	def show
		@jobs = Job.order("id")
		@article = Article.find(params[:id])
	end
end
