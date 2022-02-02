class GreetingsController < ApplicationController
  def index
    @greeting = Greeting.all.order('RANDOM()').first

    render json: @greeting
  end
end
