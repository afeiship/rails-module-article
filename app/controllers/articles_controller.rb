class ArticlesController < ApplicationController

  ###### Create Start ######
  def new
    @article = Article.new
  end

  def create
    # render json: params[:article].inspect

    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end
  ###### Create End ######


  ###### Update Start ######
  def edit
    @article = Article.find(params[:id])
  end

  def update
    def update
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end
  end
  ###### Update End ######


  ###### Retrieve Start ######
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  ###### Retrieve End ######


  ###### Delete Start ######
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  ###### Delete End ######

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
