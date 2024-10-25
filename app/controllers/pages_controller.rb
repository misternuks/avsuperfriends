class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @episodes = Episode.all.order(created_at: :desc)
  end
end
