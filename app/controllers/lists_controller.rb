class ListsController < ApplicationController
  before_action :list, only: [:edit, :update, :destroy, :show]

  def index
    @lists = List.where(completed: false)
  end

  def show
    @items = @list.items.list_priority
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path(@list)
    else
      render :edit
    end
  end

  def complete
    @items = Item.where(completed: true)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end


  private

  def list_params
    params.require(:list).permit(:name, :date, :completed)
  end

  def list
    @list = List.find(params[:id])
  end

end
