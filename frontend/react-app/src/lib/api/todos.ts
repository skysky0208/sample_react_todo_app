import client from "./client"
import { Todo } from "../../interfaces/index"

export const getTodos = () => {
    return client.get("/todos")
}

export const createTodo = (data: Todo) => {
    return client.post("/todos", data)
}

export const deleteTodo = (id: number) => {
    return client.delete(`/todos/${id}`)
}