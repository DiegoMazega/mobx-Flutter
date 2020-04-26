import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:test_mobx/models/todo.model.dart';
import '../store/todo.store.dart';

final todoStore = new TodoStore();

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder:(_)=> Text("Mobx: " + todoStore.todos.length.toString()), 
        ),centerTitle: true,
      ),
      body: Container(
        child: Observer(
          builder: (_)=> ListView.builder(
            itemCount: todoStore.todos.length,
            itemBuilder: (context, index){
              var todos = todoStore.todos[index];
              

              return Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Observer(builder:(_)=> Text("${todos.title}-${todos.id}-${todos.favorite.toString()}")),
                  ),
                  Observer(builder:(_)=>IconButton(
                icon: Icon(todos.favorite? Icons.favorite: Icons.favorite_border),
                onPressed: (){
                    todos.isfavorite();
                },
                ))
                ],
              );       
            },
            ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          var todo =  new  Todo(id: todoStore.todos.length,  title: "alguma coisa", done: false, favorite: false);
          todoStore.add(todo);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}