class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @episodes = Episode.order(created_at: :desc).first(8)
  end
end
