class ProyectsController < ApplicationController
  before_action :set_proyect, only: [:show, :edit, :update, :destroy]



  # GET /proyects
  # GET /proyects.json
  def index
    @proyects = Proyect.all
  end

  # GET /proyects/1
  # GET /proyects/1.json
  def show
  end

  # GET /proyects/new
  def new
    @director = Director.find(params[:director_id]);
    @proyect = Proyect.new();
  end

  # GET /proyects/1/edit
  def edit
  end

  # POST /proyects
  # POST /proyects.json
  def create


   @proyect = params[:name][:director_id];
   @director = Director.find(params[:director_id]);
   @proyect = Proyect.new({
      :name => @name,
      :director => @director
   });
   if @proyect.save()
      redirect_to @director, :notice => "El proyect ha sido insertado";
   else
      render "new";
   end

  end

  # PATCH/PUT /proyects/1
  # PATCH/PUT /proyects/1.json
  def update
    respond_to do |format|
      if @proyect.update(proyect_params)
        format.html { redirect_to @proyect, notice: 'Proyect was successfully updated.' }
        format.json { render :show, status: :ok, location: @proyect }
      else
        format.html { render :edit }
        format.json { render json: @proyect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyects/1
  # DELETE /proyects/1.json
  def destroy
    @proyect.destroy
    respond_to do |format|
      format.html { redirect_to proyects_url, notice: 'Proyect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyect
      @proyect = Proyect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyect_params
      params.require(:proyect).permit(:name, :proyect_type, :director, :client)
    end
end
