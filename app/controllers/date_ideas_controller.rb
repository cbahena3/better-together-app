class DateIdeasController < ApplicationController
  def index
    @date_ideas = DateIdea.all
    render :index
  end
end
