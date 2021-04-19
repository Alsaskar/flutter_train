import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController fullnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController noHpController = new TextEditingController();

  // select jurusan -> dropdown button
  String jurusan = 'Pilih Jurusan';

  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Form"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Silahkan Mengisi Formulir Dibawah Ini",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _formBuilder(),
            )
          ],
        ),
      ),
    );
  }

  Widget _formBuilder() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
            child: TextFormField(
              controller: fullnameController,
              style: TextStyle(color: Colors.black),
              validator: (value) {
                return value.isEmpty ? 'Tidak boleh kosong' : null;
              },
              decoration: InputDecoration(
                labelText: 'Nama Lengkap',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              validator: (value) {
                return value.isEmpty ? 'Tidak boleh kosong' : null;
              },
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
            child: TextFormField(
              controller: noHpController,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              validator: (value) {
                return value.isEmpty ? 'Tidak boleh kosong' : null;
              },
              decoration: InputDecoration(
                labelText: 'Nomor Handphone',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30, right: 30),
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(jurusan),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              items: [
                'Teknik Komputer',
                'Rekayasa Perangkat Lunak',
                'Perhotelan'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String data) {
                setState(() {
                  jurusan = data;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(
              color: Colors.blue,
              child: Container(
                height: 50,
                width: 260,
                child: Center(
                  child: Text(
                    "Simpan Data",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (formKey.currentState.validate()) {
                  print("Nama Lengkap : " + fullnameController.text);
                  print("Email : " + emailController.text);
                  print("Nomor HP : " + noHpController.text);
                  print("Jurusan : $jurusan");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
