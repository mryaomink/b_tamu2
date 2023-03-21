import 'package:flutter/material.dart';

class YaoForm extends StatefulWidget {
  const YaoForm({super.key});

  @override
  State<YaoForm> createState() => _YaoFormState();
}

class _YaoFormState extends State<YaoForm> {
  final GlobalKey _myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A1818),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('assets/images/headpic.png')),
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Form(
                      key: _myKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Buku Tamu Diskominfo Banjarbaru',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 240, 233, 233),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          _buildNamaField(),
                          const SizedBox(height: 30.0),
                          const MyTextField(),
                          const SizedBox(height: 30.0),
                          _buildKeperluanField(),
                          const SizedBox(height: 30.0),
                          _noTelpField(),
                          const SizedBox(height: 30.0),
                          _buildDitemui(),
                          const SizedBox(height: 30.0),
                          _jumlahTamu(),
                          const SizedBox(height: 30.0),
                          _buildKetTextfield(),
                          const SizedBox(height: 30.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 40.0,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff3615F7),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'uploadfile');
                              },
                              icon: const Icon(Icons.send_sharp),
                              label: const Text('Submit'),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNamaField() {
    return Container(
      padding: const EdgeInsets.all(4.0),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Nama',
            hintText: 'Masukkan Nama',
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Tolong Isi Form";
          }
          return null;
        },
      ),
    );
  }
}

Widget _buildAsalField() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      onTap: () {},
      readOnly: true,
      decoration: const InputDecoration(
          labelText: 'Instansi',
          hintText: 'Asal Instansi',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

Widget _buildKeperluanField() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      decoration: const InputDecoration(
          labelText: 'Keperluan',
          hintText: 'Keperluan',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

Widget _noTelpField() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
          labelText: 'No.Telp',
          hintText: 'Nomor Telepon',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

Widget _buildDitemui() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      decoration: const InputDecoration(
          labelText: 'Ditemui',
          hintText: 'Yang Ditemui',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

Widget _jumlahTamu() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Jumlah Tamu',
          hintText: 'Jumlah Tamu',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

Widget _buildKetTextfield() {
  return Container(
    padding: const EdgeInsets.all(4.0),
    clipBehavior: Clip.antiAlias,
    margin: const EdgeInsets.symmetric(horizontal: 24.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      decoration: const InputDecoration(
          labelText: 'Keterangan',
          hintText: 'Keterangan',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0)),
      validator: (value) {
        if (value!.isEmpty) {
          return "Tolong Isi Form";
        }
        return null;
      },
    ),
  );
}

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  List<String> dataList = [
    'Data 1',
    'Data 2',
    'Data 3',
  ];
  String? _selectedData;

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextFormField(
              controller: _textEditingController,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChoiceChipPage(
                      dataList: dataList,
                      selectedData: _selectedData,
                      onSelectedData: (selectedData) {
                        setState(() {
                          _selectedData = selectedData;
                          _textEditingController.text = _selectedData!;
                        });
                      },
                    ),
                  ),
                );
              },
              readOnly: true,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                labelText: "Pilih Nama Instansi",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChoiceChipPage extends StatefulWidget {
  final List<String>? dataList;
  final String? selectedData;
  final Function(String)? onSelectedData;

  const ChoiceChipPage(
      {super.key, this.dataList, this.selectedData, this.onSelectedData});

  @override
  _ChoiceChipPageState createState() => _ChoiceChipPageState();
}

class _ChoiceChipPageState extends State<ChoiceChipPage> {
  String? _selectedData;

  @override
  void initState() {
    super.initState();
    _selectedData = widget.selectedData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pilih Data"),
      ),
      body: ListView.builder(
        itemCount: widget.dataList!.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(widget.dataList![index]),
            trailing: _selectedData == widget.dataList![index]
                ? const Icon(Icons.check)
                : null,
            onTap: () {
              setState(() {
                _selectedData = widget.dataList![index];
              });
              widget.onSelectedData!(_selectedData!);
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
