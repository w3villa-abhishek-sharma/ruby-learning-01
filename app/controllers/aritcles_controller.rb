class AritclesController < ApplicationController
  before_action :set_aritcle, only: %i[ show edit update destroy ]

  # GET /aritcles or /aritcles.json
  def index
    @aritcles = Aritcle.all
  end

  # GET /aritcles/1 or /aritcles/1.json
  def show
  end

  # GET /aritcles/new
  def new
    @aritcle = Aritcle.new
  end

  # GET /aritcles/1/edit
  def edit
  end

  # POST /aritcles or /aritcles.json
  def create
    @aritcle = Aritcle.new(aritcle_params)

    respond_to do |format|
      if @aritcle.save
        format.html { redirect_to aritcle_url(@aritcle), notice: "Aritcle was successfully created." }
        format.json { render :show, status: :created, location: @aritcle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aritcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aritcles/1 or /aritcles/1.json
  def update
    respond_to do |format|
      if @aritcle.update(aritcle_params)
        format.html { redirect_to aritcle_url(@aritcle), notice: "Aritcle was successfully updated." }
        format.json { render :show, status: :ok, location: @aritcle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aritcle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aritcles/1 or /aritcles/1.json
  def destroy
    @aritcle.destroy

    respond_to do |format|
      format.html { redirect_to aritcles_url, notice: "Aritcle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aritcle
      begin
        @aritcle = Aritcle.find(params[:id])
      rescue => exception
        redirect_to aritcles_path, notice: exception
      end
    end

    # Only allow a list of trusted parameters through.
    def aritcle_params
      params.require(:aritcle).permit(:title, :description)
    end
end
