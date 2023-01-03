class RedirectsController < ApplicationController
  def index
    link = Link.find_by!(params[:slug]).original_url
    redirect_to link, allow_other_host: true
  end
end
