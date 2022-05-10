class ArticlesController < ApplicationController
  # get '/articles', to: 'articles#index', as: :articles
  # get '/articles/new', to: 'articles#new', as: :new_article
  # post '/articles', to: 'articles#create'
  # get '/articles/:id', to: 'articles#show', as: :article
  # get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch '/articles', to: 'articles#update'
  # delete '/articles/:id', to: 'articles#destroy'
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
  end

  def show
  end

  def edit
  end

  def update
    @article.update(strong_params)
  end

  def destroy
    @article.destroy
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
