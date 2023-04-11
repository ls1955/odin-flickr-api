class StaticPagesController < ApplicationController
  def index
    if params[:flickr_user_id]
      @response = Flickr.new.people.getPhotos user_id: params[:flickr_user_id]
    end
  end
end
