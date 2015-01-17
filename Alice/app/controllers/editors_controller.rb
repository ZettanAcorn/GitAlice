class EditorsController < ApplicationController
	def editor_article_params
 		params.require(:article).permit(:position,:title,:content)
 	end

	def index
		@editor_articles = Article.order("position")
		@editor_jobs = Job.order("id")
	end

	def search
	end

	def show
		@editor_jobs = Job.order("id")
		@editor_article = Article.find(params[:id])
	end

	def new
		@editor_article = Article.new
	end

	def edit
		@editor_article = Article.find(params[:id])
	end

	def create
		@editor_article = Article.new(editor_article_params)
		if @editor_article.save
			redirect_to @editor_article, notice: "記事を追加しました"
		else
			render "new"
		end
	end

	def update
		@editor_article = Article.find(params[:id])
		@editor_article.assign_attributes(param[:article])
		if @editor_article.save
			redirect_to @editor_article, notice: "記事を更新しました"
		else
			render "edit"
		end
	end

	def destroy
		@editor_article = Article.find(params[:id])
		@editor_article.destroy
		redirect_to :articles, notice: "記事を削除しました"
	end
end
