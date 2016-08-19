class ItemsController < ApplicationController
  before_action :list
  before_action :item, except: [:index, :new, :create]
  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = @list.items.new(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to list_item_path(@list, @item)
    else
      redirect_to :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to list_path(@list)
  end

  private

    def item_params
      params.require(:item).permit(:item_name, :note, :completed, :priority)
    end

    def list
      @list = List.find(params[:list_id])
    end

    def item
      @item = @list.items.find(params[:id])
    end

end
