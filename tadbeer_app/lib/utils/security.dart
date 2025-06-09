import 'package:encrypt/encrypt.dart' as encrypt;

class SecurityHelper {
  static final _key = encrypt.Key.fromUtf8('your32charsecretencryptionkey!!');
  static final _iv = encrypt.IV.fromLength(16);

  static String encryptText(String plainText) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.encrypt(plainText, iv: _iv).base64;
  }

  static String decryptText(String encrypted) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.decrypt64(encrypted, iv: _iv);
  }
}
