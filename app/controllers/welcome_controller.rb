class WelcomeController < ApplicationController

  def index
  	if params[:profesores] && params[:carreras] && params[:cursos]
  		@optatives = Optative.where professor: params[:profesores], program: params[:carreras], year: params[:cursos]
  		@msg = 'mostrando filtrados (por profesor, año y carrera)'
  	elsif
  		params[:profesores] && params[:carreras]
  		@optatives = Optative.where professor: params[:profesores], program: params[:carreras]
  		@msg = 'mostrando filtrados (por profesor y carrera)'
  	elsif
  		params[:cursos] && params[:carreras]
  		@optatives = Optative.where year: params[:cursos], program: params[:carreras]
  		@msg = 'mostrando filtrados (por año y carrera)'
  	elsif
  		params[:profesores] && params[:cursos]
  		@optatives = Optative.where professor: params[:profesores], year: params[:cursos]
  		@msg = 'mostrando filtrados (por profesor y año)'
  	elsif
  		params[:profesores]
  		@optatives = Optative.where professor: params[:profesores]
  		@msg = 'mostrando filtrados (por profesor)'
  	elsif
  		params[:cursos]
  		@optatives = Optative.where year: params[:cursos]
  		@msg = 'mostrando filtrados (por año)'
  	elsif
  		params[:carreras]
  		@optatives = Optative.where program: params[:carreras]
  		@msg = 'mostrando filtrados (por carrera)'
  	else
  		@optatives = Optative.all
  		@msg = 'mostrando todos'
  	end
  	@msg ||= "mostrando filtrados"
  	@professors = []
    @optatives = @optatives.sort_by do |opt|
      opt.title
    end
  	Optative.all.each do |optative|
  		if not @professors.include? optative.professor
  			@professors.push optative.professor
  		end
  	end
  end
end
