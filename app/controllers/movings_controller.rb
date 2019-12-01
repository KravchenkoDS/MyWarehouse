class MovingsController < ApplicationController
  before_action :set_moving, only: [:show, :edit, :update, :destroy]

  # GET /movings
  # GET /movings.json
  def index
    @movings = Moving.all
  end

  # GET /movings/1
  # GET /movings/1.json
  def show
  end

  # GET /movings/new
  def new
    @moving = Moving.new
  end

  # GET /movings/1/edit
  def edit
  end

  # POST /movings
  # POST /movings.json
  def create
    @moving = Moving.new(moving_params)

    respond_to do |format|
      if @moving.save
        format.html { redirect_to @moving, notice: 'Moving was successfully created.' }
        format.json { render :show, status: :created, location: @moving }
      else
        format.html { render :new }
        format.json { render json: @moving.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movings/1
  # PATCH/PUT /movings/1.json
  def update
    respond_to do |format|
      if @moving.update(moving_params)
        format.html { redirect_to @moving, notice: 'Moving was successfully updated.' }
        format.json { render :show, status: :ok, location: @moving }
      else
        format.html { render :edit }
        format.json { render json: @moving.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movings/1
  # DELETE /movings/1.json
  def destroy
    @moving.destroy
    respond_to do |format|
      format.html { redirect_to movings_url, notice: 'Moving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moving
      @moving = Moving.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moving_params
      params.require(:moving).permit(:product, :price, :count, :comment)
    end
end
