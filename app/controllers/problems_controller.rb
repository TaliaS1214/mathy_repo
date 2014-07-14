class ProblemsController < ApplicationController

  def index
    @subject = Subject.find(params[:subject_id])
    @article = Article.find(params[:article_id])
    @problems = @article.problems
  end

  def new
  end

  def create
  end

  def show
    @subject = Subject.find(params[:subject_id])
    @article = Article.find(params[:article_id])
    @problem = Problem.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
