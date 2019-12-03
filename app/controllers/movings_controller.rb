class MovingsController < ApplicationController
  before_action :set_moving, only: %i[show edit update destroy]

  def index
    @movings = Moving.all
  end

  def show; end

  def new
    @moving = Moving.new
  end

  def edit; end

  def create
    @moving = Moving.new(moving_params)

    if @moving.save
      redirect_to @moving, notice: 'Your moving successfully created.'
    else
      render :new
    end
  end

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

  def destroy
    @moving.destroy
    respond_to do |format|
      format.html { redirect_to movings_url, notice: 'Moving was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_moving
      @moving = Moving.find(params[:id])
    end

    def moving_params
      params.require(:moving).permit(:product_id, :shipment, :price, :count, :comment, :status)
    end
end
