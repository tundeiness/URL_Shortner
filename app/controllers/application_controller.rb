class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :success, :notice, :alert, :messages
end
