class UrlsController < ApplicationController
  def index
    @urls = Url.all
    # @url = Url.new
  end

  def new 
    @url = Url.new
  end

  def create
    @url = Url.new url_params
    @url.original_url = @url.sanitize
    @url.short_url =@url.generate_short_url

    if @url.save
      redirect_to urls_path
      flash[:success] = "<p class='success'>here is your url </p> \n <p>#{url.short_uri}</p>"
    else
      flash[:error] = "<p class='danger'>Url cannot be saved</p>"
      redirect_to new_url_path
    end
    # redirect_to root_path
  end

  def show
    @url = Url.find_by(short_url: params[:short_url])
    redirect_to @url.sanitize
  end

  private

  def url_params
    # params.require(:url).permit(:name, :slug)
    params.require(:url).permit(:name,:original_url,:user_id)
  end
end
