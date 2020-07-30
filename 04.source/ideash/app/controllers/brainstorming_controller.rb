class BrainstormingController < ApplicationController
  def replay
  end

  def edit
  end

  def new
  end

  def _process_1
    @ideas = Idea.all
    @idea_categories = IdeaCategory.all
  end

  def _process_2
    @ideas = Idea.all
  end

  def _process_3
    @ideas = Idea.all
  end
end
