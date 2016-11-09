class ItemsController < ApplicationController
  def index
    @items  = Item.all
  end

  def create
    @td_list = TDList.find(params[:item][:list_id])
    @items = @td_list.items.new(item_params)

  def show
    @items = Item.find(params[:id])
  end

  def new
    @items = Item.new
  end

  def edit
    @items = Item.find(params[:id])
  end

private
  def item_params
    params.require(:item).permit(:name, :complete)
  end

end
