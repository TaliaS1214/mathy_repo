class ArticlesController < ApplicationController

  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

  def index
    @subject = Subject.find(params[:subject_id])
    @articles = @subject.articles.sort_by { |a| a.position }
  end

  def new
    @article = Article.new
    @subject = Subject.find(params[:subject_id])
  end

  def create
    @subject = Subject.find(params[:subject_id])
    @article = Article.new(article_params)
    @article.subject = @subject
    if @article.save
      redirect_to(subject_article_path(@subject, @article))
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @subject = Subject.find(params[:subject_id])
    @problems = @article.problems

    @current_position = @article.position
    @last_position = @article.subject.articles.length

    @next_article = Article.where(subject: @subject, position: @current_position + 1).first
    @previous_article = Article.where(subject: @subject, position: @current_position - 1).first
  end

  def edit
    @article = Article.find(params[:id])
    @subject = Subject.find(params[:subject_id])
  end

  def update
    @article = Article.find(params[:id])
    @subject = Subject.find(params[:subject_id])
    if @article.update(article_params)
      redirect_to(subject_article_path(@subject, @article))
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to(subject_articles_path)
  end

  private

  def article_params
      params.require(:article).permit(:position, :title, :introduction, :body, :subject_id)
  end

end
