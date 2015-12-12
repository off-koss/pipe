class EntriesController < ApplicationController

  def index
    @feed = Feed.find(params[:feed_id])
    @entries = @feed.entries.order('published desc')
  end

  def show
    @feed = Feed.find(params[:feed_id])
    @entry = Entry.find(params[:id])
  end

end
