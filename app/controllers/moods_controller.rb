require 'soundcloud'

class MoodsController < ApplicationController

  def index
  	@moods = Mood.all
  	# @mood = Mood.find(params[:id])
  	respond_to do |format|
  					format.html{render :index}
  					format.json{render json: @moods}
  				end
  end
# puts 'hello mofo'
  def happy
  	@mood = Mood.find(1)
  	# render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/rebeccajc1711/sets/happy-playlist-1'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :happy}
          format.json{render json: @track}
    end
  end
  def sad
    @mood = Mood.find(2)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/mirandapanda/sets/a-collection-of-sad-songs'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :sad}
          format.json{render json: @track}
    end
  end
  def calm
    @mood = Mood.find(3)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/mrteddy_us/sets/zen'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :calm}
          format.json{render json: @track}
    end
  end
  def angry
    @mood = Mood.find(4)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/heirateittyose/sets/feel-good-hatred'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :angry}
          format.json{render json: @track}
    end
  end
  def chill
    @mood = Mood.find(5)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/chill-session/sets/chillsession-la-selection-37'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :chill}
          format.json{render json: @track}
    end
  end
  def energetic
    @mood = Mood.find(6)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/user563067564/sets/get-you-pumped-up-songs'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :energetic}
          format.json{render json: @track}
    end
  end
  def excited
    @mood = Mood.find(7)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/youngauss/sets/stoked-on-life'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :excited}
          format.json{render json: @track}
    end
  end
  def lonely
    @mood = Mood.find(8)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/bala-subramaniyam/sets/sad'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :lonely}
          format.json{render json: @track}
    end
  end
  def lazy
    @mood = Mood.find(9)
    # render :show
    # soundcloud
    # create a client object with your app credentials
    client = Soundcloud.new(:client_id => '6fc19c2fb18db1b92695ad63776e9764',
                            :client_secret => 'cecd3f6f9d8de5dcdde9531e395e6a28')
    # a permalink to a track
    track_url = 'https://soundcloud.com/karyst/sets/lazy-etc'
    # resolve track URL into track resource
    @track = client.get('/resolve', :url => track_url)
    respond_to do |format|
          format.html{render :lazy}
          format.json{render json: @track}
    end
  end
  def me
    render :me
  end
end
