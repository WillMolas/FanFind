class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    set_meta_tags title: "#{@chatroom.event.name} Chatroom",
                  description: 'Watch upcoming FIFA World Cup matches with like-minded fans who support your team.
                  Find events near you or create your own.',
                  keywords: 'world cup, FIFA, matches, fans, soccer, football,
                  soccer fans, football fans, events, meet up, find fans,
                  team, football team',
                  og: {
                    description: 'Team up to watch the FIFA World Cup. Find events near you or create your own,
                    chat with other fans, and share posts.',
                    type: 'mobile app',
                    url: 'www.fan-find.com',
                    image: 'metatag-photo.png'
                  }
  end
end
