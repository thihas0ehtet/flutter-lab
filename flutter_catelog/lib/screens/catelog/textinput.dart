import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextinput extends StatefulWidget {
  MyTextinput({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyTextinputState createState() => _MyTextinputState();
}

class _MyTextinputState extends State<MyTextinput> {
  bool _numberInputsValid = true;

  Widget _buildNumberTextField() {
    return TextField(
      keyboardType: TextInputType.number,
      style: Theme.of(context).textTheme.headline4,
      decoration: InputDecoration(
          icon: const Icon(Icons.attach_money),
          labelText: 'Enter an interger',
          errorText: _numberInputsValid ? null : 'Please enter an inter!',
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
      onSubmitted: (val) => null,
      onChanged: (String val) {
        final v = int.tryParse(val);
        debugPrint('parsed value=$v');
        if (v == null) {
          setState(() => _numberInputsValid = false);
        } else {
          setState(() => _numberInputsValid = true);
        }
      },
    );
  }

  final _controller = TextEditingController();
  Widget _buildMultiLineTextField() {
    return TextField(
      maxLines: 10,
      controller: this._controller,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counterText: '${this._controller.text.split('').length} words',
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: 'type something ...',
          labelText: 'Enter multiline text:'),
      onChanged: (text) => setState(() {}),
    );
  }

  bool _showPassword = false;
  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: this._showPassword,
      decoration: InputDecoration(
          labelText: 'password',
          prefixIcon: const Icon(Icons.security),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            color: this._showPassword ? Colors.blue : Colors.grey,
            onPressed: () {
              setState(() => this._showPassword = !this._showPassword);
            },
          )),
    );
  }

  Widget _buildBorderlessTextField() {
    return TextField(
      maxLines: 3,
      decoration: InputDecoration.collapsed(hintText: 'borderless input'),
    );
  }

  String _name;
  String _phoneNumber;
  String _email;

  String _validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = RegExp(r'[A-Za-z]+$');
    if (!nameExp.hasMatch(value)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Textinput"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            ListTile(
              title: Text("1. Number input field"),
            ),
            _buildNumberTextField(),
            ListTile(
              title: Text("2. Multiline input field"),
            ),
            _buildMultiLineTextField(),
            ListTile(
              title: Text("3. Password input field"),
            ),
            _buildPasswordTextField(),
            ListTile(
              title: Text("4. Borderless input field"),
            ),
            _buildBorderlessTextField(),
            const SizedBox(height: 24.0),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.person),
                  labelText: 'Name *',
                  hintText: 'What do people call you?'),
              onSaved: (String value) {
                this._name = value;
                print('name=$_name');
              },
              validator: _validateName,
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  filled: true,
                  icon: Icon(Icons.phone),
                  labelText: 'Phone Number *',
                  hintText: '',
                  prefixText: '+95'),
              keyboardType: TextInputType.phone,
              onSaved: (String value) {
                this._phoneNumber = value;
                print('phone=$_phoneNumber');
              },
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            const SizedBox(height: 24.0),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.email),
                labelText: 'Email',
                hintText: 'Your email address',
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (String value) {
                this._email = value;
                print('phone=$_email');
              },
            ),
          ],
        ));
  }
}
