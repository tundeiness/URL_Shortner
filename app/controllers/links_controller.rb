# frozen_string_literal: true

class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def show
    link = Link.find_by!(params[:slug]).original_url
    redirect_to link, allow_other_host: true
  end

  def create
    link = Link.new(link_params)
    if link.save
      flash[:success] = "Here is your link:  http://localhost:3000/r?#{link.slug}"

    else
      flash[:error] = 'the link cannot be created'
    end
    redirect_to root_path
  end

  private

  def link_params
    params.require(:link).permit(:id, :original_url, :slug)
  end
end
