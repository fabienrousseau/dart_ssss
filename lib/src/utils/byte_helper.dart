/**
 *  byte_helper.dart
 */

import 'dart:math';

/**
 * Class that provides methods to help with bytes.
 */
class ByteHelper {

  /**
   * Returns true if all values in the provided list is representable as an
   * unsigned byte value (0-255).
   */
  static bool isListAllBytes(List<int> vals){

    // If it is null, return false.
    if (vals == null){
      return false;
    }

    // If any of the values in the list is not a byte, return false.
    if (vals.any(isNotByte)){
      return false;
    }

    // All values are bytes, return true.
    return true;
  }


  /**
   * Returns true if the val is representable as an unsigned byte value (0-255).
   */
  static bool isByte(int val) {
    return val >= 0 && val <= 255;
  }

  /**
   * Returns true if the val is NOT representable as an unsigned byte value
   * (0-255).
   */
  static bool isNotByte(int val){
    return !isByte(val);
  }

  /**
   * Returns a random value between 0 - 255.
   */
  static int generateRandomByte(Random generator){

    if (generator == null){
      throw new ArgumentError('Generator cannot be null');
    }

    // We set 256 to be the max as it is exclusive
    // https://api.dartlang.org/stable/1.24.3/dart-math/Random/nextInt.html
    return generator.nextInt(256);

  }


}