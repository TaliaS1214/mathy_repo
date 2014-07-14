class ProblemsController < ApplicationController

  def index
    @subject = Subject.find(params[:subject_id])
    @article = Article.find(params[:article_id])
    @problems = @article.problems
    @tf_problems = @problems.select { |prob| prob.question.include?('(T/F)')}
    @non_tf_problems = @problems.select { |prob| !prob.question.include?('(T/F)')}
  end

  def new
    @problem = Problem.new
    @article = Article.find(params[:article_id])
    @subject = Subject.find(params[:subject_id])
  end

  def create
    @article = Article.find(params[:article_id])
    @subject = Subject.find(params[:subject_id])
    @problem = Problem.new(problem_params)
    @problem.article = @article
    if @problem.save
      redirect_to(subject_article_problems_path(@subject, @article))
    else
      render :new
    end
  end

  def show
    @problem = Problem.find(params[:id])
    @article = @problem.article
    @subject = @article.subject
  end

  def edit
    @problem = Problem.find(params[:id])
    @article = @problem.article
    @subject = @article.subject
  end

  def update
    @problem = Problem.find(params[:id])
    @article = @problem.article
    @subject = @article.subject
    if @problem.update(problem_params)
      redirect_to(subject_article_problem_path(@subject, @article, @problem))
    else
      render :edit
    end
  end

  def destroy
    @problem = Subject.find(params[:id])
    @article = @problem.article
    @subject = @article.subject
    @problem.destroy
    redirect_to(subject_article_problems_path(@subject, @article))
  end

  private

  def problem_params
    params.require(:problem).permit(:question, :answer, :difficulty_level, :article_id, :subject_id)
  end

end
