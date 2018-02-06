class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to [@item.user], :notice => "Todo Added!"
    else
      redirect_to [@item.user], :notice => "Error saving Todo item. Please try again."
    end 
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
