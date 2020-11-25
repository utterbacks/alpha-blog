class ArticlesController < ApplicationController
  def show
    
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    # you need to whitelist what comes in through the params
    # this is a security feature to prevent malicious people
    # from crashing your app
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      # notice or alert can go here. Notice is typcally used to tell the user things worked
      flash[:notice] = "Article was created successfully"
      redirect_to @article
    else
      render 'new'
    end
  end



  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was updated"
      redirect_to @article
    else
      render 'edit'
    end
  end

end