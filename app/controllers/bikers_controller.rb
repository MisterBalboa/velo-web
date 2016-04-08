class BikersController < ApplicationController
  def index
  end

  def new
  	@biker = Biker.new
  end

  def create
  	@biker = Biker.new(params_biker)

  	if @biker.save
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end

	private 

	def params_biker
		params.require(:biker).permit(:email, :name, :number, :bank, :rut, :ocupation, :acc_type, :acc_number, :address)
	end

end