class ArticlesController < ApplicationController

  # A frequent practice is to place the standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy.

  # All TODO, FIXME and OPTIMIZE comments can be listed with "rake notes" commands

  def index
    @articles = Article.all
  end

  def show
    # TODO change deprecated method
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    # TODO change deprecated method
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    # TODO change deprecated method
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    # TODO change deprecated method
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
