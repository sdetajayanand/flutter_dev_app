import 'package:first_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_project/logOut.dart';
import 'package:first_project/_logOut.dart';

void main() {
  testWidgets('Login Screen rendering', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MaterialApp(
      home: Starter(),
    ));
  
    expect(find.text('TestVagrant'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.text('Forgot Password'), findsOneWidget);
  });

  testWidgets('Navigating to home page after login', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Starter(),
    ));
    final emailElement = find.widgetWithText(TextField, 'EMAIL');
    await tester.tap(emailElement); 
    await tester.pump(); // Wait for the focus to update the widget
    await tester.enterText(emailElement, 'sample@gmail.com');

    final passwordElement = find.widgetWithText(TextField, 'PASSWORD');
    await tester.tap(passwordElement);
    await tester.enterText(emailElement, 'pass123');// Simulate entering text into the text field
    //await tester.testTextInput.receiveAction(TextInputAction.done);
    //rebuilding widget tree
    await tester.pump(const Duration(seconds: 5));
    final iconButtonFinder = find.byType(IconButton);
    await tester.tap(iconButtonFinder);
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 3));

    expect(find.text('TestVagrant'), findsOneWidget);
    expect(find.byType(InkWell), findsAtLeastNWidgets(2));
    final rowFinder = find.byType(Row);
    final iconFinder = find.byKey(const Key('logoutIcon'));
    final text = find.descendant(of: rowFinder, matching: find.text('TestVagrant'));
    //await tester.ensureVisible(iconFinder);
    //expect(iconFinder, findsOneWidget);
    expect(text, findsOneWidget);
    //expect(find.text('SIGN IN'), findsNothing);
  });

  testWidgets('redirection to pantry screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: TvHome(),
    ));

    final pantryElement = find.byKey(const Key('PantryKey'));
    await tester.tap(pantryElement);
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 2));
    final pantryPageText = find.text('Details about the Pantry');
    expect(pantryPageText, findsOneWidget);
  });

  testWidgets('redirection to equipments screen', (WidgetTester tester) async{
    await tester.pumpWidget(
      MaterialApp(
        home: TvHome(),
      )
    );

    final equipmentElement = find.byKey(const Key('EquipmentKey'));
    await tester.ensureVisible(equipmentElement);
    await tester.tap(equipmentElement);
    await tester.pumpAndSettle(); //pumpNSettle because we are navigating to a new screen
    final equipmentPageText = find.text('Details about the Equipment');
    expect(equipmentPageText, findsOneWidget);
  });

  testWidgets('redirection to Events Screen', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp
    (home: TvHome(),));

    final eventsElement = find.byKey(const Key('EventsKey'));
    await tester.ensureVisible(eventsElement);
    await tester.tap(eventsElement);
    await tester.pumpAndSettle();
    final eventsPageText = find.text('Details about the Events');

    expect(eventsPageText, findsOneWidget);
  });
}
