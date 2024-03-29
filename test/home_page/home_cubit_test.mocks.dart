// Mocks generated by Mockito 5.4.2 from annotations
// in voluntiersapp/test/home_page/home_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_bloc/flutter_bloc.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:volunteersapp/presentation/home/home_cubit.dart' as _i3;
import 'package:volunteersapp/presentation/home/home_page_state.dart' as _i2;
import 'package:volunteersapp/presentation/home/widgets/home_card.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeHomeState_0 extends _i1.SmartFake implements _i2.HomeState {
  _FakeHomeState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeCubit extends _i1.Mock implements _i3.HomeCubit {
  MockHomeCubit() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.HomeState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeHomeState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.HomeState);

  @override
  _i4.Stream<_i2.HomeState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i2.HomeState>.empty(),
      ) as _i4.Stream<_i2.HomeState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  void updateCards(List<_i5.HomeCard>? cards) => super.noSuchMethod(
        Invocation.method(
          #updateCards,
          [cards],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i2.HomeState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i6.Change<_i2.HomeState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
