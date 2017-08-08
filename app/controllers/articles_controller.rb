class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :destroy]

   def index
    @articles = Article.all
   end

   def show

   end

   def new
    @article = Article.new
   end

   def create
    @article = Article.new(params_attribute)
    @article.save
    redirect_to article_path(@article.id)
   end

   def edit

   end

   def update
    @article = Article.new(params_attribute)
    @article.save
    redirect_to article_path(@article.id)
   end

   def destroy
    @article.destroy
    redirect_to articles_path
   end

   protected

   def params_attribute
    params.require(:article).permit(:title, :content)
   end

   def set_article
    @article = Article.find(params[:id])
   end

end
