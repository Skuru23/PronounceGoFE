import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pronounce_go/api/auth_repository.dart';
import 'package:pronounce_go/screens/login_screen/login_screen.dart';
import 'package:pronounce_go/util.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  bool _isPasswordVisible = false;

  void signUpSubmit() async {
    if (_formKey.currentState!.validate()) {
      try {
        final response = await AuthRepository().register(
          _emailController.text,
          _passwordController.text,
          _nameController.text,
          _phoneController.text,
          _addressController.text,
        );
        if (response.statusCode == 204) {
          showToast("Đăng ký thành công", "success");
          Get.to(() => const LoginScreen());
        }
      } catch (e) {
        if (e is DioException) {
          showToast(e.response?.data['message'], 'error');
        } else {
          showToast("Đã có lỗi xảy ra ", "error");
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "abc@gmail.com",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập đúng email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.fingerprint),
                    labelText: "Password",
                    hintText: "Password",
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
                obscureText: !_isPasswordVisible,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập mật khẩu';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Tên",
                  hintText: "Nguyen Van A",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập tên của bạn';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Số điện thoại",
                  hintText: "0123456789",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập số điện thoại của bạn';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.pin_drop),
                  labelText: "Đia chỉ",
                  hintText: "Hanoi, Vietnam",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hãy nhập địa chỉ của bạn';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: signUpSubmit,
                  child: const Text("Đăng ký"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
