class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml {render :xml => @greetings[Math.floor(Math.random() * 8)]}
      format.json {render :json => @greetings[Math.floor(Math.random() * 8)]}
    end
  end
end
