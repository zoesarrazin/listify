class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find_by(id: params[:id])
  end

  def new
  end

  def create
    @todo = Todo.new
    @todo.list_id = params[:list_id]
    @todo.reminder = params[:reminder]

    if @todo.save
      redirect_to "/todos/#{ @todo.id }"
    else
      render 'new'
    end
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.list_id = params[:list_id]
    @todo.reminder = params[:reminder]

    if @todo.save
      redirect_to "/todos/#{ @todo.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy


    redirect_to "/todos"
  end
end
