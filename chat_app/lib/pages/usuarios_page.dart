import 'package:flutter/material.dart';

import 'package:chat_app/models/usuario.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final usuarios = [
    Usuario(uid: '1', nombre: 'Maria', email: 'maria@gmail.com', online: true),
    Usuario(uid: '1', nombre: 'Melisa', email: 'maria@gmail.com', online: false),
    Usuario(uid: '1', nombre: 'Carlos', email: 'maria@gmail.com', online: true),
  ];

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi nombre', style: TextStyle(color: Colors.black)),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.exit_to_app)
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.check_circle, color: Colors.blue[400]),
          ),
        ],
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _cargarUsuarios,
        header: WaterDropHeader(
          complete: Icon(Icons.check, color: Colors.blue[400]),
          waterDropColor: Colors.blue[400]!,
        ),
        child: _listViewUsuarios(),        
      )
    );
  }

  ListView _listViewUsuarios() {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (_, i) => _userListTile(usuarios[i]),
      separatorBuilder: (_, i) => Divider(),
      itemCount: usuarios.length,
    );
  }

  ListTile _userListTile(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      leading: CircleAvatar(
        backgroundColor: Colors.blue[100],
        child: Text(usuario.nombre.substring(0, 2)),
      ),
      trailing: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: usuario.online ? Colors.green[300] : Colors.red[100],
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  void _cargarUsuarios() async {
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

}