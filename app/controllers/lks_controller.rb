class LksController < ApplicationController
  before_action :set_lk, only: [:show, :edit, :update, :destroy]

  # GET /lks
  # GET /lks.json
  def index
    @lks = Lk.all
  end

  # GET /lks/1
  # GET /lks/1.json
  def show
  end

  # GET /lks/new
  def new
    @lk = Lk.new
  end

  # GET /lks/1/edit
  def edit
  end

  # POST /lks
  # POST /lks.json
  def create
    @lk = Lk.new(lk_params)

    respond_to do |format|
      if @lk.save
        format.html { redirect_to @lk, notice: 'Lk was successfully created.' }
        format.json { render :show, status: :created, location: @lk }
      else
        format.html { render :new }
        format.json { render json: @lk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lks/1
  # PATCH/PUT /lks/1.json
  def update
    respond_to do |format|
      if @lk.update(lk_params)
        format.html { redirect_to @lk, notice: 'Lk was successfully updated.' }
        format.json { render :show, status: :ok, location: @lk }
      else
        format.html { render :edit }
        format.json { render json: @lk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lks/1
  # DELETE /lks/1.json
  def destroy
    @lk.destroy
    respond_to do |format|
      format.html { redirect_to lks_url, notice: 'Lk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lk
      @lk = Lk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lk_params
      params.require(:lk).permit(:name, :content, :url)
    end
end
