class TaskService{
  getTasks(){
    return List.generate(1000, (index) => 'texto $index');
  }

}