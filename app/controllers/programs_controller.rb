class ProgramsController < ApplicationController
  def compile
    @program = Program.find params[:id]

    @instructions = @program.instructions
    if params.has_key? :configuration and not params[:configuration].blank?
      params[:configuration].each do |variable|
        unless variable.blank?
          variable_name = variable[0]
          variable_value = variable[1]
          @instructions.gsub! "{#{variable_name}}", variable_value
        end
      end
    end

    file = Tempfile.new @program.name.parameterize
    file.write @instructions.gsub("\n", "").gsub("\r", "")
    file.close

    usb_port = "/dev/tty.usbserial-00001014"
    @command = "./picaxe20x2 -c#{usb_port} #{file.path}"
    @result = `#{@command}`  
    flash.now[:alert] = "Successfully compiled and installed program!"
  end

  def permitted_params
    params.permit program: [:name, :instructions], configuration: []
  end
end
