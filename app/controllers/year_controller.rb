class YearController < ApplicationController
  load_and_authorize_resource

  def index
  	if params[:año] && params[:carrera] && params[:semestre]
  		@years = Year.where value: params[:año], program: params[:carrera], semester: params[:semestre]
  		@msg = 'mostrando filtrados (por profesor, año y carrera)'
  	elsif
  		params[:año] && params[:carrera]
  		@years = Year.where value: params[:año], program: params[:carrera]
  		@msg = 'mostrando filtrados (por profesor y carrera)'
  	elsif
  		params[:semestre] && params[:carrera]
  		@years = Year.where semester: params[:semestre], program: params[:carrera]
  		@msg = 'mostrando filtrados (por año y carrera)'
  	elsif
  		params[:año] && params[:semestre]
  		@years = Year.where value: params[:año], semester: params[:semestre]
  		@msg = 'mostrando filtrados (por profesor y año)'
  	elsif
  		params[:año]
  		@years = Year.where value: params[:año]
  		@msg = 'mostrando filtrados (por profesor)'
  	elsif
  		params[:semestre]
  		@years = Year.where semester: params[:semestre]
  		@msg = 'mostrando filtrados (por año)'
  	elsif
  		params[:carrera]
  		@years = Year.where program: params[:carrera]
  		@msg = 'mostrando filtrados (por carrera)'
  	else
  		@years = Year.all
  		@msg = 'mostrando todos'
  	end
    
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
