class MoodsController < ApplicationController

  def index
  	@moods = Mood.all
  	# @mood = Mood.find(params[:id])
  	respond_to do |format|
  					format.html{render :index}
  					format.json{render json: @moods}
  				end
  end

  def show
  	@mood = Mood.all
  	render :json => @mood
  end


  
end
