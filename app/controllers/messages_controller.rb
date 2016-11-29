class MessagesController < ApplicationController

  before_action :set_group, only: [ :create ]

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.group = @group
    @message.time = Time.now
    if @message.save
      respond_to do |format|
        format.html { redirect_to group_dashboards_path(@group) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'dashboards/index' }
        format.js  # <-- idem
      end
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
