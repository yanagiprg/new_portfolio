class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def new
    @music = Music.new
  end

  def show
    @music = Music.find_by(id: params[:id])
  end

  def create
    @music = Music.new(music_params)
    @music.save
    redirect_to musics_path
  end

  def edit
    @music = Music.find_by(id: params[:id])
  end

  def update
    @music = Music.find_by(id: params[:id])
    @music.update(music_params)
    if @music.save
      redirect_to musics_path
    end
  end

  def destroy
    @music = Music.find_by(id: params[:id])
    @music.destroy
    redirect_to :musics
  end

  private
  def music_params
    params.require(:music).permit(:name)
  end

end
