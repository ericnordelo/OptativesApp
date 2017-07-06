class OptativesController < ApplicationController
  load_and_authorize_resource
  
  def register
    redirect_to root_path, notice: "Todo bien"
  end

  # GET /optatives
  # GET /optatives.json
  def index
  end

  # GET /optatives/1
  # GET /optatives/1.json
  def show
  end

  # GET /optatives/new
  def new
  end

  # GET /optatives/1/edit
  def edit
  end

  # POST /optatives
  # POST /optatives.json
  def create

    respond_to do |format|
      if @optative.save
        format.html { redirect_to @optative, notice: 'Optative was successfully created.' }
        format.json { render :show, status: :created, location: @optative }
      else
        format.html { render :new }
        format.json { render json: @optative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optatives/1
  # PATCH/PUT /optatives/1.json
  def update
    respond_to do |format|
      if @optative.update(optative_params)
        format.html { redirect_to @optative, notice: 'Optative was successfully updated.' }
        format.json { render :show, status: :ok, location: @optative }
      else
        format.html { render :edit }
        format.json { render json: @optative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optatives/1
  # DELETE /optatives/1.json
  def destroy
    @optative.destroy
    respond_to do |format|
      format.html { redirect_to optatives_url, notice: 'Optative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optative
      @optative = Optative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optative_params
      params.require(:optative).permit(:title, :description, :professor, :duration, :schedule, :year, :program, :enrollment)
    end
end
