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
    @music = Music.new(name: params[:name])
    @music.save
    redirect_to musics_path
  end

  def edit
    @music = Music.find_by(id: params[:id])
  end

  def update
    @music = Music.find_by(id: params[:id])
    @music.name = params[:name]
    if @music.save
      redirect_to :musics
    end
  end

  def destroy
    @music = Music.find_by(id: params[:id])
    @music.destroy
    redirect_to :musics
  end

end
