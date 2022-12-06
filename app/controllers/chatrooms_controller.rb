class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    set_meta_tags title: "#{@chatroom.event.name} Chatroom"
  end
end
