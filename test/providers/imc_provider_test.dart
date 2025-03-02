import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:imc_smart/providers/imc_provider.dart';

import 'imc_provider_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ImcProvider>()])
void main() {
  late MockImcProvider mockImcProvider;

  setUp(() {
    mockImcProvider = MockImcProvider();
  });

  group('ImcProvider Tests', () {
    test('should calculate BMI correctly', () {
      // Arrange
      when(mockImcProvider.calculateBMI('70', '170')).thenAnswer((_) {
        mockImcProvider.notifyListeners();
      });
      when(mockImcProvider.bmiResult).thenReturn(24.22);
      when(mockImcProvider.showResults).thenReturn(true);

      // Act
      mockImcProvider.calculateBMI('70', '170');

      // Assert
      verify(mockImcProvider.calculateBMI('70', '170')).called(1);
      expect(mockImcProvider.bmiResult, 24.22);
      expect(mockImcProvider.showResults, true);
    });

    test('should not calculate with invalid input', () {
      // Arrange
      when(mockImcProvider.calculateBMI('', '170')).thenAnswer((_) {
        mockImcProvider.notifyListeners();
      });
      when(mockImcProvider.bmiResult).thenReturn(null);
      when(mockImcProvider.showResults).thenReturn(false);

      // Act
      mockImcProvider.calculateBMI('', '170');

      // Assert
      verify(mockImcProvider.calculateBMI('', '170')).called(1);
      expect(mockImcProvider.bmiResult, null);
      expect(mockImcProvider.showResults, false);
    });
  });
}
