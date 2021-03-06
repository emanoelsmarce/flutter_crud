import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/data/dummy_user.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Usuários'), actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ]),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i))),
    );
  }
}

//ListViewe.builder ele possibilita colocarmos quantos itens irão aparecer nessa lista.
//pois se a gente colocar sem nenhuma lista, ele irá exibir tudo que estiver dentro desse list.