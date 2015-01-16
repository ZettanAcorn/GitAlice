class ArticlesController < ApplicationController

	def index
		@articles = Article.order("position")
	end

	def search
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end
		
end
