class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @messages = Message.all
  end

  private
    # Only allow a list of trusted parameters through.
    def chatroom_params
      params.fetch(:chatroom, {})
    end
end
