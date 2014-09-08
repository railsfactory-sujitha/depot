class HistoryController < ApplicationController
  def index
  @history = LineItem.where(user_id: current_user.id)
  end
end
