class TaskResponse {
  String? title;
  int? id;

  bool isComplete;

  TaskResponse({required this.title, this.id, this.isComplete = false});
}
