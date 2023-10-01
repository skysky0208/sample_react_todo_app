class Api::V1::TodosController < ApplicationController
    def index
        render json: {status: 200, todos: Todo.all}
    end

    def create_table
        todo = Todo.new(todo_params)

        if todo.save
            render json: {status: 200, todo: todo}
        else
            render json: {status: 500, message: "Failed to create Todo."}
        end
    end

    def destroy
        todo = Todo.find(params[:id])

        if todo.destroy
            render json: {status: 200, todo: todo}
        else
            render json: {status: 500, message: "Failed to create Todo."}
        end
    end

    private

        def todo_params
            params.require(:todo).permit(:title)
        end
end
