class YearController < ApplicationController
  load_and_authorize_resource

  def index
  	
  end

  def edit
  end

  def update
  	respond_to do |format|
      if @year.update_attributes(max_optatives: params[:year][:max_optatives])
        format.html { redirect_to action: :index, notice: 'El año ha sido satisfactoriamente actualizado.' }
        format.json { render :show, status: :ok, location: @year }
      else
        format.html { render :edit }
        format.json { render json: @year.errors, status: :unprocessable_entity }
      end
  	end
  end

  private

  def year_params
	params.require(:year).permit(:max_optatives)
  end
end
