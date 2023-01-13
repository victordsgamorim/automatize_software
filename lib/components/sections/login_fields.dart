import 'package:automatize/core/utils/validator_utils.dart';
import 'package:automatize/main.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _LoginFieldFilled extends Equatable {
  final bool isUserFieldOK;
  final bool isPasswordFieldOK;

  const _LoginFieldFilled(
      {this.isUserFieldOK = false, this.isPasswordFieldOK = false});

  _LoginFieldFilled copyWith({
    bool? isUserFieldOK,
    bool? isPasswordFieldOK,
  }) {
    return _LoginFieldFilled(
      isUserFieldOK: isUserFieldOK ?? this.isUserFieldOK,
      isPasswordFieldOK: isPasswordFieldOK ?? this.isPasswordFieldOK,
    );
  }

  @override
  List<Object?> get props => [isUserFieldOK, isPasswordFieldOK];
}

class LoginFields extends StatefulWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  late final ValueNotifier<_LoginFieldFilled> _fieldsController;
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _userController;
  late final TextEditingController _passwordController;
  late final FocusNode _passwordNode;

  @override
  void initState() {
    super.initState();
    _fieldsController =
        ValueNotifier<_LoginFieldFilled>(const _LoginFieldFilled());
    _formKey = GlobalKey<FormState>();
    _userController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        widthFactor: .9,
        heightFactor: .95,
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: _userController,
                        onFieldSubmitted: (_) => _passwordNode.requestFocus(),
                        onChanged: (value) {
                          _fieldsController.value =
                              _fieldsController.value.copyWith(
                            isUserFieldOK: value.isNotEmpty,
                          );
                        },
                        decoration:
                            const InputDecoration(label: Text("Usuário")),
                        validator: ValidatorUtils.user,
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      focusNode: _passwordNode,
                      obscureText: true,
                      onChanged: (value) {
                        _fieldsController.value =
                            _fieldsController.value.copyWith(
                          isPasswordFieldOK: value.isNotEmpty,
                        );
                      },
                      onFieldSubmitted: (_) {
                        final fields = _fieldsController.value;
                        if (fields.isUserFieldOK && fields.isPasswordFieldOK) {
                          _isValidated();
                        }
                      },
                      validator: ValidatorUtils.password,
                      decoration: const InputDecoration(label: Text("Senha")),
                    ),
                  ],
                ),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Transform.scale(
                  scale: (constraints.maxWidth / 600).clamp(0.7, 1),
                  child: ValueListenableBuilder<_LoginFieldFilled>(
                    valueListenable: _fieldsController,
                    builder: (context, value, child) {
                      final areFieldsOK =
                          value.isPasswordFieldOK && value.isUserFieldOK;
                      return Opacity(
                        opacity: areFieldsOK ? 1 : 0.3,
                        child: FloatingActionButton.large(
                          onPressed: areFieldsOK ? _isValidated : null,
                          elevation: 0,
                          child: const Icon(FontAwesomeIcons.arrowRight),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            const Text(currentVersion)
          ],
        ),
      ),
    );
  }

  void _isValidated() {
    if (_formKey.currentState!.validate()) {
      print('estou funcionando');
    }
  }
}
