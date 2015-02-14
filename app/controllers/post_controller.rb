class PostController < ApplicationController
    def index
		@articles = Article.all.order('id DESC')
	end

	def show
		@article = Article.find(params[:id])
		@recentArticle = Article.all.order('id DESC').limit(5);
	end 
end
  