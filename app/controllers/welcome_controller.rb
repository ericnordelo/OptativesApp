class WelcomeController < ApplicationController

  def index
  	if params[:profesores] && params[:carreras] && params[:cursos]
  		@optatives = Optative.where professor: params[:profesores], program: params[:carreras], year: params[:cursos]
  	elsif
  		params[:profesores] && params[:carreras]
  		@optatives = Optative.where professor: params[:profesores], program: params[:carreras]
  	elsif
  		params[:cursos] && params[:carreras]
  		@optatives = Optative.where year: params[:cursos], program: params[:carreras]
  	elsif
  		params[:profesores] && params[:cursos]
  		@optatives = Optative.where professor: params[:profesores], year: params[:cursos]
  	elsif
  		params[:profesores]
  		@optatives = Optative.where professor: params[:profesores]
  	elsif
  		params[:cursos]
  		@optatives = Optative.where year: params[:cursos]
  	elsif
  		params[:carreras]
  		@optatives = Optative.where program: params[:carreras]
  	else
  		@optatives = Optative.all
  		@msg = 'mostrando todos'
  	end
  	@msg ||= "mostrando filtrados"
  	@professors = []
  	Optative.all.each do |optative|
  		if not @professors.include? optative.professor
  			@professors.push optative.professor
  		end
  	end
  end
end
