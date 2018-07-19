class WelcomeController < ApplicationController
  def index
  	redirect_to authors_path
  end
end
