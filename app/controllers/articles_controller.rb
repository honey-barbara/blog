class ArticlesController < ApplicationController
  def new
  end
  def create
    allowed_params = params.require(:article).permit(:title,:text)
    @article = Article.new(allowed_params)
    @article.save
    redirect_to @article
   end
   def show
     @article = Article.find(params[:id])
     


   end

end
