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
                          hintText: "Số điện thoại",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                        validator: (String? string) {
                          if (string!.isEmpty) {
                            return " Xin đăng nhập lại ";
                          }
                          if (string.length < 9 || string.length > 11) {
                            return "Số điện thoại không đúng";
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
                        // controller: ,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "Mật khẩu",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                        validator: (String? string) {
                          if (string!.isEmpty) {
                            return "Mật khẩu đăng nhập sai";
                          }
                          if (string.length < 6) {
                            return "Mật khẩu đăng nhập không đúng kí tự";
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
                    "Quên mật khẩu",
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
                  "Đăng Nhập",
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
