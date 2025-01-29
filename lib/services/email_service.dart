class EmailService {
  // アカウント登録メールを送る
  // アカウント登録完了メールを送る
  // パスワード変更メールを送る
  // アカウント削除メールを送る
  // 運営から重要なお知らせメールを送る

  Future<void>? sendSignUpEmail() async {}
  Future<void>? sendFinishedSignUpEmail() async {}
  Future<void>? sendChangePasswordEmail() async {}
  Future<void>? sendSigndownEmail() async {} //!!!
  Future<void>? sendNEWSEmail() async {} //!!!
}
