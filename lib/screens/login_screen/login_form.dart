import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/util.dart';

import '../home_screen/home_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = 'truong@gmail.com';
  String _password = '123456';
  bool _isPasswordVisible = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _loginUser();
    }
  }

  void _loginUser() async {
    try {
      final AuthRepository authRepository = AuthRepository();
      var response = await authRepository.login(_email, _password);
      if (response.statusCode == 200) Get.to(() => const HomeScreen());
    } catch (e) {
      if (e is DioException) {
        if (e.response?.data['error_code'] == "ERR_UNAUTHORIZED") {
          showToast(
              "Đăng nhập thất bại, kiểm tra lại email hoặc mật khẩu", 'error');
        } else {
          showToast(e.response?.data['message'], 'error');
        }
      } else {
        print('Login failed: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "abc@gmail.com",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập email';
                  }
                  return null;
                },
                initialValue: _email,
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    labelText: "Mật khẩu",
                    hintText: "Mật khẩu",
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )),
                initialValue: _password,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập mật khẩu';
                  }
                  return null;
                },
                obscureText: !_isPasswordVisible,
                onSaved: (value) {
                  _password = value ?? '';
                },
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Quên mật khẩu?"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text("ĐĂNG NHẬP"),
                ),
              )
            ],
          ),
        ));
  }
}
