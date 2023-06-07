import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/user_model.dart' as userData;
import 'package:greengrocer/src/pages/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/pages/auth/view/sign_in_screen.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do Usuario'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => SignScreen()),
              );
            },
            icon: Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //Email
          CustomTextField(
              readOnly: true,
              initalValue: userData.user.email,
              icon: Icons.email,
              label: 'Email'),
          //Nome
          CustomTextField(
              readOnly: true,
              initalValue: userData.user.nome,
              icon: Icons.person_2,
              label: 'Nome'),
          //Celular
          CustomTextField(
              readOnly: true,
              initalValue: userData.user.celular,
              icon: Icons.phone,
              label: 'Celular'),
          //CPF
          CustomTextField(
              readOnly: true,
              initalValue: userData.user.cpf,
              icon: Icons.add_card_sharp,
              label: 'CPF',
              isSecret: true),
          //Senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onPressed: () {
                  updatePassword();
                },
                child: const Text('Atualizar Senha')),
          ),
        ],
      ),
    );
  }

  Future<bool?> updatePassword() {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //TITULO
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: Text(
                          'Atualização de Senha',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //senha atual
                      CustomTextField(
                        icon: Icons.lock,
                        label: 'Senha atual',
                        isSecret: true,
                      ),
                      //nova senha
                      CustomTextField(
                        icon: Icons.lock_outline,
                        label: 'Nova senha',
                        isSecret: true,
                      ),
                      //confirma senha
                      CustomTextField(
                        icon: Icons.lock_outline,
                        label: 'Confirmar nova senha',
                        isSecret: true,
                      ),
                      //botao de confirmação
                      SizedBox(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                              onPressed: () {},
                              child: Text('Atualizar')))
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
