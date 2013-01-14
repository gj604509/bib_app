class PublicationsController < ApplicationController
  before_filter :signed_in_user #, only: [:create]

  def index
  end

  def create
    @publication = current_user.publications.build(params[:publication])
    if @publication.save
      flash[:success] = "Publication created!"
      redirect_to root_url
    else
    	@feed_items = []
      render 'static_pages/home'
    end
  end

end

