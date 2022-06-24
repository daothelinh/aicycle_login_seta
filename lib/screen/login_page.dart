import 'package:aicycle_login_seta/string/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Container(
        height: Get.height,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: TextFormField(
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        // controller: usernameController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: AppStrings.phone,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                        validator: (String? string) {
                          if (string!.isEmpty) {
                            return AppStrings.errorEmpty;
                          }
                          if (string.length < 9 || string.length > 11) {
                            return AppStrings.errorPhone;
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        // controller: passwordController ,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: AppStrings.password,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                        validator: (String? string) {
                          if (string!.isEmpty) {
                            return AppStrings.errorEmpty;
                          }
                          if (string.length < 6) {
                            return AppStrings.errorPassword;
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                // height: 50,
                width: double.infinity,
                child: CupertinoButton(
                  child: Text(
                    AppStrings.forgetPassword,
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: null,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
            //(() => FlatButton(onPressed: null, child: Text("Đăng Nhập")))
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(350, 50)),
                child: const Text(
                  AppStrings.logIn,
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
