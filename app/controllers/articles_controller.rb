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
    
      def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
          flash[:notice] = "Article was updated successfully"
          redirect_to @article
        else
          render 'edit'
        end
      end


    def create
      @article = Article.new(article_params) 
      
      if @article.save
        redirect_to @article
      else
        render :new  
      end
    end

    def destroy
      @article = Article.find_by(id: params[:id])
      if @article
        @article.destroy
        flash[:notice] = 'Article was successfully deleted.'
        redirect_to articles_path
      else
        flash[:alert] = 'Article not found.'
        redirect_to articles_path
      end
    end

  private

  

  def article_params
    params.require(:article).permit(:title, :description) 
  end

  def set_article
    @article = Article.find(params[:id])
  end

end





