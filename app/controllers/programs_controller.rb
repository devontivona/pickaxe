class ProgramsController < ApplicationController


  def halt
    
  end

  def permitted_params
    params.permit program: [:name, :instructions]
  end
end
