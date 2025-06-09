import 'package:encrypt/encrypt.dart' as encrypt;

class SecurityService {
  static final _key = encrypt.Key.fromUtf8('your32charsecretencryptionkey!!');
  static final _iv = encrypt.IV.fromLength(16);

  static String encryptData(String plainText) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.encrypt(plainText, iv: _iv).base64;
  }
  static String decryptData(String encrypted) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.decrypt64(encrypted, iv: _iv);
  }
}
