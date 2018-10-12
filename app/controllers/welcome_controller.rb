class WelcomeController < ApplicationController
  def view
    @q = params[:q]
  end
end
