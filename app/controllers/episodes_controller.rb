class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
  end


end
