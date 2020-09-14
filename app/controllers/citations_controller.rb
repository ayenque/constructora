class CitationsController < ApplicationController
  before_action :set_citation, only: [:show, :edit, :update, :destroy]

  # GET /citations
  # GET /citations.json
  def index
    @citations = Citation.all
  end

  # GET /citations/1
  # GET /citations/1.json
  def show
  end

  # GET /citations/new
  def new
    @citation = Citation.new
  end

  # GET /citations/1/edit
  def edit
  end

  # POST /citations
  # POST /citations.json
  def create
    @citation = Citation.new(citation_params)

    respond_to do |format|
      if @citation.save
        format.html { redirect_to @citation, notice: 'Sus datos fueron enviados con éxito.' }
        format.json { render :show, status: :created, location: @citation }
      else
        format.html { render :new }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citations/1
  # PATCH/PUT /citations/1.json
  def update
    respond_to do |format|
      if @citation.update(citation_params)
        format.html { redirect_to @citation, notice: 'Los datos de la cita fueron actualizados.' }
        format.json { render :show, status: :ok, location: @citation }
      else
        format.html { render :edit }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citations/1
  # DELETE /citations/1.json
  def destroy
    @citation.destroy
    respond_to do |format|
      format.html { redirect_to citations_url, notice: 'Cita eliminada' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citation
      @citation = Citation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def citation_params
      params.require(:citation).permit(:dni, :nombre, :apellido, :email, :telefono, :fechacita)
    end
end
