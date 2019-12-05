class MovingsController < ApplicationController
  before_action :set_moving, only: %i[show edit update destroy]

  def index
    @movings = Moving.all.order(:order_code)
  end

  def show
    @movings = Moving.order_by(@moving.order_code)
  end

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
    if @moving.update(moving_params)
      redirect_to @moving, notice: 'Your moving successfully created.'
    else
      render :edit
    end
=begin
    respond_to do |format|
      if @moving.update(moving_params)
        format.html { redirect_to @moving, notice: 'Moving was successfully updated.' }
        format.json { render :show, status: :ok, location: @moving }
      else
        format.html { render :edit }
        format.json { render json: @moving.errors, status: :unprocessable_entity }
      end
    end
=end
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
    params.require(:moving).permit(:order_code, :product_id, :from_id, :to_id, :shipment, :price, :count, :comment, :status)
  end
end
