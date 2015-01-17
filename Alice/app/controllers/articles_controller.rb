class ArticlesController < ApplicationController

	def article_params
 		params.require(:article).permit(:position,:title,:content)
 	end

	def index
		@articles = Article.order("position")
		@jobs = Job.order("id")
	end

	def search
	end

	def show
		@jobs = Job.order("id")
		@article = Article.find(params[:id])
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
