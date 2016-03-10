module Doorkeeper
  class ApplicationController < ActionController::Base
    include Helpers::Controller

    if ::Rails.version.to_i < 4 && !::Rails.configuration.api_only
      protect_from_forgery
    elsif !::Rails.configuration.api_only
      protect_from_forgery with: :exception
    end

    helper 'doorkeeper/dashboard'
  end
end
