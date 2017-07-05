class WelcomeController < ApplicationController

  def index
  	@optatives = Optative.all
  end
end
