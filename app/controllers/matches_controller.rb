class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @matches = Match.all
    @matches = Match.order(match_time: :asc)

    if params[:query].present?
      sql_query = 'team_one ILIKE :query OR team_two ILIKE :query'
      @matches = @matches.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "matches/list", locals: { matches: @matches }, formats: [:html] }
    end

    set_meta_tags title: "Matches",
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
