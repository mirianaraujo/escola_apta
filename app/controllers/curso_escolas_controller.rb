class CursoEscolasController < ApplicationController
  before_action :set_curso_escola, only: [:show, :edit, :update, :destroy]

  # GET /curso_escolas
  # GET /curso_escolas.json
  def index
    @curso_escolas = CursoEscola.all
  end

  # GET /curso_escolas/1
  # GET /curso_escolas/1.json
  def show
  end

  # GET /curso_escolas/new
  def new
    @curso_escola = CursoEscola.new
  end

  # GET /curso_escolas/1/edit
  def edit
  end

  # POST /curso_escolas
  # POST /curso_escolas.json
  def create
    @curso_escola = CursoEscola.new(curso_escola_params)

    respond_to do |format|
      if @curso_escola.save
        format.html { redirect_to @curso_escola, notice: 'Curso escola was successfully created.' }
        format.json { render :show, status: :created, location: @curso_escola }
      else
        format.html { render :new }
        format.json { render json: @curso_escola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curso_escolas/1
  # PATCH/PUT /curso_escolas/1.json
  def update
    respond_to do |format|
      if @curso_escola.update(curso_escola_params)
        format.html { redirect_to @curso_escola, notice: 'Curso escola was successfully updated.' }
        format.json { render :show, status: :ok, location: @curso_escola }
      else
        format.html { render :edit }
        format.json { render json: @curso_escola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curso_escolas/1
  # DELETE /curso_escolas/1.json
  def destroy
    @curso_escola.destroy
    respond_to do |format|
      format.html { redirect_to curso_escolas_url, notice: 'Curso escola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curso_escola
      @curso_escola = CursoEscola.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curso_escola_params
      params.require(:curso_escola).permit(:escola_id, :curso_id, :professor_id)
    end
end
