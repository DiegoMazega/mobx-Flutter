import 'package:mobx/mobx.dart';
part 'todo.model.g.dart';
 
class Todo = _Todo with _$Todo;

abstract class _Todo with Store{
  int id;
  String title;
  bool done;
  @observable
  bool favorite;


  _Todo({this.id, this.title, this.done, this.favorite});

  _Todo.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    done = json['done'];
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic> ();
    data['id'] = this.id;
    data['title'] = this.title;
    data['done'] = this.done;
    data['favorite'] = this.favorite;
    return data;
  }
  
@action
  void isfavorite(){
    favorite = !favorite; 
  }
}

