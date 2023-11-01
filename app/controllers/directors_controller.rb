class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    
    @x = Director.where({:id=>the_id})

    render({ :template => "director_templates/details"})
  end

end
