// class AuthRes {
//   AuthRes({
//     required this.msg,
//     required this.assessorInfo,
//   });

//   String msg;
//   AssessorInfo assessorInfo;

//   factory AuthRes.fromJson(Map<String, dynamic> json) => AuthRes(
//         msg: json["msg"] ?? '',
//         assessorInfo: json["assessorInfo"] == null
//             ? AssessorInfo.fromJson({})
//             : AssessorInfo.fromJson(json["assessorInfo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "msg": msg,
//         "assessorInfo": assessorInfo.toJson(),
//       };
// }

// class AssessorInfo {}
