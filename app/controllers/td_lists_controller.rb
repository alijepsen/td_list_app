class TdListsController < ApplicationController
  def index
    @td_lists = TdList.all
  end

  def show
    @td_lists = TdList.find(params[:id])
    @items = @td_lists.items.new
  end

  def new
    @td_lists = TdList.new
  end

  def edit
     @td_lists = TdList.find(params[:id])
  end

  def create
    @td_list = TdList.new(td_list_params)

    if @td_list.save
      redirect_to td_lists_path
    else
      render :new
    end
  end

  def update
    @td_list = TdList.find(params[:id])
    if @td_list.update(td_list_params)
      redirect_to td_list_path(@td_list)
    else
      render :edit
    end
  end

  def destroy
    @td_list = TdList.find(params[:id]) #find post
    @td_list.destroy
    redirect_to td_lists_path
  end



  private

    def td_list_params
      params.require(:td_list).permit(:name, :complete)
    end
end
