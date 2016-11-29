class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    message.group = @group
    if @message.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end

end
