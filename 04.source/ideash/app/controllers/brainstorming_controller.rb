class BrainstormingController < ApplicationController
  def replay
  end

  def edit
    @idea = Idea.find_by(id: params[:id])
    @idea_logs = @idea.idea_logs
    @idea_users = @idea.user
    # 既に登録されているかどうか
    is_added_user = @idea_users.where(id: current_user.id).exists?
    p "--------------------------------"
    p @idea_users.inspect
    p "--------------------------------"
    unless is_added_user
      #TODO: 公開状態でない場合はアクセスしてきたユーザを蹴る(公開状態の実装後)
      # redirect_to idea_home_path
      user = User.find_by(id: current_user.id)
      user_idea = user.user_idea.new do|idea|
        idea.user_id = user.id
        idea.idea_id = @idea.id
      end
      p "-----------------------------------------------------"
      p user_idea.save
      p user_idea
    end
  end

  def create
    p params
    user = User.find_by(id: current_user.id)
    new_idea = user.idea.new do |idea|
      idea.idea_category_id = 2
      idea.idea_name = params[:theme]
    end
    if new_idea.save!
      logger.debug "create new idea: #{new_idea.inspect}"
      redirect_to idea_brainstorming_edit_url(id: new_idea.id)
    else

    end
    # render action: :edit
  end

  def new
  end
end
