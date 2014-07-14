class ArticlesController < ApplicationController

  def new
    @article = Article.new
    @subject = Subject.find(params[:subject_id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      p @article
      redirect_to(subject_article_path(@article.subject, @article))
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @problems = @article.problems
    @subject = @article.subject

    @current_position = @article.position
    @last_position = @article.subject.articles.length

    @next_article = Article.where(subject: @subject, position: @current_position + 1).first
    @previous_article = Article.where(subject: @subject, position: @current_position - 1).first
  end

  def edit
    @article = Article.find(params[:id])
    @subject = @article.subject
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to(subject_article_path(@article.subject, @article))
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
