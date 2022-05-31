class PickupsController < ApplicationController
  def show
    @pickup = Pickup.find(params[:id])
  end

  def new
    @item = Item.find(params[:item_id])
    @item_host = @item.user
    @pickup = Pickup.new
  end

  def create
    @item = Item.find(params[:item_id])
    @pickup = Pickup.new(pickup_params)
    @pickup.item = Item.find(params[:item_id])
    @pickup.user = current_user
    if @pickup.save
      redirect_to pickup_path(@pickup)
    else
      render :new
    end
  end

  private

  def pickup_params
    params.require(:pickup).permit(:arrive_at)
  end
end