class UrlsController < ApplicationController
  def index
    @url = Url.all
    # @url = Url.new
  end

  def create
    @url = Url.new permitted_params
    if @url.save
      flash[:success] = "<p class='success'>here is your url </p> \n <p>#{url.short_uri}</p>"
    else
      flash[:error] = "<p class='danger'>Url cannot be saved</p>"
    end
    redirect_to root_path
  end

  private

  def permitted_params
    params.require(:url).permit(:name, :slug)
  end
end
