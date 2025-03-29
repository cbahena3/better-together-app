class DateIdeasController < ApplicationController
  def index
    @date_ideas = DateIdea.all
    render :index
  end

  def create
    @date_idea = DateIdea.new(date_idea_params)
    if @date_idea.save
      render json: @date_idea, status: :created
    else
      render json: @date_idea.errors, status: :unprocessable_entity
    end
  end

  def date_idea_params
    params.permit(:name, :image, :cost, :description)
  end

  def show
    @date_idea = DateIdea.find_by(id: params[:id])
    if @date_idea
      render :show
    else
      render json: { error: "Date idea not found" }, status: :not_found
    end
  end
end
