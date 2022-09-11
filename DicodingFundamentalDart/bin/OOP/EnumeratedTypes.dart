enum Rainbow {
  red, orange, yellow, green, blue, indigo, violet
}

enum Status {
  Todo, In_Progress, In_Review, Done
}

var taskStatus = Status.In_Progress;

void main(){
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);

  switch(taskStatus) {
    case Status.Todo:
      print('Task is still in To do');
      break;
    case Status.In_Progress:
      print('Task is in progress');
      break;
    case Status.In_Review:
      print('Task is currently under review');
      break;
    case Status.Done:
      print('Task is done');
      break;
  }
}