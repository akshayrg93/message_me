class ChatroomsController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.custom_display
  end

  private
    # Only allow a list of trusted parameters through.
    def chatroom_params
      params.fetch(:chatroom, {})
    end
end
