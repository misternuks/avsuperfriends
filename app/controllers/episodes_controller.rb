class EpisodesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @episodes = Episode.all
  end

  def show
    set_episode
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to @episode, notice: "Episode successfully created."
    else
      render :new
    end
  end

  def edit
    set_episode
  end

  def update
    if @episode.update(episode_params)
      redirect_to @episode, notice: "Episode successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @episode.destroy
    redirect_to episodes_url, notice: "Episode deleted."
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:title, :thumbnail, :preview_text, :description, :libsyn_embed_url, :published_at)
  end

end
