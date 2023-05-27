// dart async library you will refer to when setting up real time updates
import 'dart:async';

// flutter and ui libraries

import 'package:flutter/material.dart';

// amplify packages you will need to use
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import '../amplifyconfiguration.dart';
import '../models/ModelProvider.dart';
import '../navbar/MyNav.dart';
import 'dashboard.dart';




class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);
  //
  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {




  // subscription of Todo QuerySnapshots - to be initialized at runtime
  late StreamSubscription<QuerySnapshot<Appointments>> _subscription;

  bool _isLoading = true;

  // list of Todos - initially empty
  List<Appointments> _todos = [];
  @override
  void initState() {
    // to be filled in a later step
    _initializeApp();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  Future<void> _initializeApp() async {
    // configure Amplify
    await _configureAmplify();
    _subscription = Amplify.DataStore.observeQuery(Appointments.classType)
        .listen((QuerySnapshot<Appointments> snapshot) {
      setState(() {
        if (_isLoading) _isLoading = false;
        _todos = snapshot.items;
      });
    });
  }

  Future<void> _configureAmplify() async {
    try {

      // amplify plugins
      final _dataStorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
      final apiPlugin = AmplifyAPI();
      final authPlugin = AmplifyAuthCognito();
      // add Amplify plugins
      await Amplify.addPlugins([_dataStorePlugin,apiPlugin, authPlugin]);

      // configure Amplify
      //
      // note that Amplify cannot be configured more than once!
      await Amplify.configure(amplifyconfig);
    } catch (e) {

      // error handling can be improved for sure!
      // but this will be sufficient for the purposes of this tutorial
      safePrint('An error occurred while configuring Amplify: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MyNav()));

            },
            child: Icon(Icons.arrow_back)),
        title: const Text('Appointments'),
        centerTitle: true,
      ),
      body: _isLoading                                  // if in a loading state
          ? const Center(child: CircularProgressIndicator())  // display progress indicator
          : TodosList(todos: _todos),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTodoForm()),
          );
        },
        tooltip: 'Add Todo',
        label: Row(
          children: const [Icon(Icons.add), Text('Add todo')],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class TodosList extends StatelessWidget {
  const TodosList({
    required this.todos,
    Key? key,
  }) : super(key: key);

  final List<Appointments> todos;

  @override
  Widget build(BuildContext context) {
    return todos.isNotEmpty
        ? ListView(
        padding: const EdgeInsets.all(8),
        children: todos.map((todo) => TodoItem(todo: todo)).toList())
        : const Center(
      child: Text('Tap button below to add a todo!'),
    );
  }
}

class TodoItem extends StatelessWidget {


  const TodoItem({
    required this.todo,
    Key? key,
  }) : super(key: key);

  final double iconSize = 24.0;
  final Appointments todo;

  void _deleteTodo(BuildContext context) async {
    try {
      // to delete data from DataStore, you pass the model instance to
      print("adsffffffffffffffffffffffffffffffffffff");
      await Amplify.DataStore.delete(todo);
    } catch (e) {
      safePrint('An error occurred while deleting Todo: $e');
    }
  }

  Future<void> _toggleIsComplete() async {

    // copy the Todo you wish to update, but with updated properties
    final updatedTodo = todo.copyWith(isComplete: todo.isComplete);
    try {

      // to update data in DataStore, you again pass an instance of a model to
      // Amplify.DataStore.save()
      await Amplify.DataStore.save(updatedTodo);
    } catch (e) {
      safePrint('An error occurred while saving Todo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
           _toggleIsComplete();
        },
        onLongPress: () {
           _deleteTodo(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        todo.Name ?? 'No Name selected',
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20,),
                      Text(todo.Uhid.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        'Dr ',
                        style: const TextStyle(
                          color:Colors.purple,
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 1,),
                      Text(todo.Doctor??'No Doctor Selected',
                        style: const TextStyle(
                           color: Colors.deepPurpleAccent,
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Type: ', style: TextStyle(
                          fontSize: 18
                      ),),
                      Text(todo.Description ?? 'No description',
                      style: TextStyle(
                        fontSize: 18
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Icon(
                todo.isComplete!
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                size: iconSize),
          ]),
        ),
      ),
    );
  }
}

class AddTodoForm extends StatefulWidget {
  const AddTodoForm({Key? key}) : super(key: key);

  @override
  State<AddTodoForm> createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  late final TextEditingController _nameController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _uhidController;
  late final TextEditingController _doctor;

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _uhidController=TextEditingController();
    _doctor=TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _uhidController.dispose();
    _doctor.dispose();
  }

  Future<void> _saveTodo() async {
    // get the current text field contents
    final name = _nameController.text;
    safePrint(name);
    final description = _descriptionController.text;
    final uhid=int.parse(_uhidController.text);
    final doctor=_doctor.text;
    final date=_dateTime.toString(). substring(0, 10);
    final time=_timeOfDay.toString().substring(10,15);

    // create a new Todo from the form values
    // `isComplete` is also required, but should start false in a new Todo
    final newTodo = Appointments(
      Name: name,
      Uhid: uhid,
      Doctor: doctor,
      Time: time,
      Date: date,
      Description: description.isNotEmpty ? description : null,
      isComplete: false,
    );
    try {
      // to write data to DataStore, you simply pass an instance of a model to
      // Amplify.DataStore.save()
       await Amplify.DataStore.save(newTodo);
      // after creating a new Todo, close the form
      // Be sure the context at that moment is still valid and mounted
      if (mounted) {
        Navigator.of(context).pop();
      }
    } catch (e) {
      safePrint('An error occurred while saving Todo: $e');
    }
  }


  DateTime _dateTime=DateTime.now();
  void _showDatePicker(){
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      _dateTime=value!;
    });
  }

TimeOfDay _timeOfDay=TimeOfDay(hour: 8, minute:30);
  void _showTimePicker(){

    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      _timeOfDay=value!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nameController,
                decoration:
                const InputDecoration(filled: true, labelText: 'Name'),
              ),
              TextField(
                controller: _uhidController,
                decoration:
                const InputDecoration(filled: true, labelText: 'UHID'),
              ),
              TextField(
                controller: _doctor,
                decoration:
                const InputDecoration(filled: true, labelText: 'Doctor'),
              ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:50,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12.0,0,0,0),
                          child: Text(_dateTime==null?'Pick A Date':_dateTime.toString(). substring(0, 10),style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade700
                  ),),
                        ),
                        GestureDetector(onTap: (){
                          _showDatePicker();
                        }
                            ,child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,0,12,0),
                              child: Icon(Icons.calendar_month),
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                       // border: Border.all(color: Colors.black26)
                    ),
                ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:50,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12,0,0,0),
                      child: Text(_timeOfDay==null?'Pick A Time':_timeOfDay.toString(). substring(10, 15),style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey.shade700
                      ),),
                    ),
                    GestureDetector(onTap: (){
                      _showTimePicker();
                    }
                        ,child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,12,0),
                          child: Icon(Icons.alarm),
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                    //border: Border.all(color: Colors.black26)
                ),
              ),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                    filled: true, labelText: 'Description'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _saveTodo,
                child: const Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}