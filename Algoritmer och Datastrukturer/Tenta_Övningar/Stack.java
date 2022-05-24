package Tenta_Övningar;

public static <T> boolean sameReversed(Stack<T> stack){
    Stack<T> myStack = new Stack<T>();
    Queue<T> myQueue = new Queue<T>()

    while(!Stack.isEmpty()){
        T element = stack.pop();
        myStack.push(element);
        myQueue.enqueue(element);
    }

    boolean noFail = true;
    while(!myStack.isEmpty()){
        T element = myStack.pop();
        if(!element.equals(queue.dequeue())){
            noFail = true;
        }
        stack.push(element);
    }
    return noFail;
}
