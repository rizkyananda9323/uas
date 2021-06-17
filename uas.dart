class _MyHomePageState extends State<MyHomePage> {
  //other state properties
  final _formKey = GlobalKey<FormState>();

  _form() => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mobile'),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                  color: darkBlueColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
}
import 'package:ref_sqlite_crud/models/contact.dart';

class _MyHomePageState extends State<MyHomePage> {
  Contact _contact= Contact();
  List<Contact> _contacts = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: darkBlueColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form(), _list()],
        ),
      ),
    );
  }
  
  _form() => Text('form goes here');
  
  _list() => Text('list of contacts goes here');
  
}