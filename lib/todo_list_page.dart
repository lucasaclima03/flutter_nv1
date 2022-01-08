import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,        
        title: const Center(child: Text('Lista de tarefas')),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(children: const [
          TextField()
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){} ,
        child: const Icon(Icons.add),
        ),
        
    );
  }
}
