class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @new_item = Item.new           # to clear the item form

    if @item.save
      flash[:notice] = "Todo Added!"
    else
      flash[:alert] = "Error saving Todo item. Please try again."
    end 

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Way to go!"
    else
      flash[:alert] = "Error removing todo. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
