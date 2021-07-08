class ArticlesController < ApplicationController
    before_action :find_article, only: [:show]

    def index
        if params[:query].present?
            @articles = Article.where(title: params[:query])
        else
            @articles = Article.all
        end
        @article = Article.new
    end
 
    def show
    end

    def create
        # @article = Article.new(article_params)
        # @article.user = current_user
        # if @article.save
        #     redirect_to article_path(@article)
        # else
        #     render :index
        # end
    end

    private

    def find_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :content, :visible)
    end
end