class ProgramsController < ApplicationController
  def permitted_params
    params.permit program: [:name, :instructions]
  end
end
