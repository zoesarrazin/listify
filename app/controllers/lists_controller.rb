class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find_by(id: params[:id])
    @todos = Todo.where(list_id: @list.id)
  end

  def new
  end

  def create
    @list = List.new
    @list.name = params[:name]

    if @list.save
      redirect_to "/lists/#{ @list.id }"
    else
      render 'new'
    end
  end

  def edit
    @list = List.find_by(id: params[:id])
  end

  def update
    @list = List.find_by(id: params[:id])
    @list.name = params[:name]

    if @list.save
      redirect_to "/lists/#{ @list.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find_by(id: params[:id])
    @list.destroy


    redirect_to "/lists"
  end
end
