// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DialogState {
  bool get showLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  String? get errorTitle => throw _privateConstructorUsedError;
  String? get errorDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogStateCopyWith<DialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogStateCopyWith<$Res> {
  factory $DialogStateCopyWith(
          DialogState value, $Res Function(DialogState) then) =
      _$DialogStateCopyWithImpl<$Res, DialogState>;
  @useResult
  $Res call(
      {bool showLoading,
      bool showError,
      String? errorTitle,
      String? errorDescription});
}

/// @nodoc
class _$DialogStateCopyWithImpl<$Res, $Val extends DialogState>
    implements $DialogStateCopyWith<$Res> {
  _$DialogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? showError = null,
    Object? errorTitle = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_value.copyWith(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTitle: freezed == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DialogStateCopyWith<$Res>
    implements $DialogStateCopyWith<$Res> {
  factory _$$_DialogStateCopyWith(
          _$_DialogState value, $Res Function(_$_DialogState) then) =
      __$$_DialogStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showLoading,
      bool showError,
      String? errorTitle,
      String? errorDescription});
}

/// @nodoc
class __$$_DialogStateCopyWithImpl<$Res>
    extends _$DialogStateCopyWithImpl<$Res, _$_DialogState>
    implements _$$_DialogStateCopyWith<$Res> {
  __$$_DialogStateCopyWithImpl(
      _$_DialogState _value, $Res Function(_$_DialogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLoading = null,
    Object? showError = null,
    Object? errorTitle = freezed,
    Object? errorDescription = freezed,
  }) {
    return _then(_$_DialogState(
      showLoading: null == showLoading
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTitle: freezed == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDescription: freezed == errorDescription
          ? _value.errorDescription
          : errorDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DialogState implements _DialogState {
  _$_DialogState(
      {this.showLoading = false,
      this.showError = false,
      this.errorTitle,
      this.errorDescription});

  @override
  @JsonKey()
  final bool showLoading;
  @override
  @JsonKey()
  final bool showError;
  @override
  final String? errorTitle;
  @override
  final String? errorDescription;

  @override
  String toString() {
    return 'DialogState(showLoading: $showLoading, showError: $showError, errorTitle: $errorTitle, errorDescription: $errorDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DialogState &&
            (identical(other.showLoading, showLoading) ||
                other.showLoading == showLoading) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.errorTitle, errorTitle) ||
                other.errorTitle == errorTitle) &&
            (identical(other.errorDescription, errorDescription) ||
                other.errorDescription == errorDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showLoading, showError, errorTitle, errorDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DialogStateCopyWith<_$_DialogState> get copyWith =>
      __$$_DialogStateCopyWithImpl<_$_DialogState>(this, _$identity);
}

abstract class _DialogState implements DialogState {
  factory _DialogState(
      {final bool showLoading,
      final bool showError,
      final String? errorTitle,
      final String? errorDescription}) = _$_DialogState;

  @override
  bool get showLoading;
  @override
  bool get showError;
  @override
  String? get errorTitle;
  @override
  String? get errorDescription;
  @override
  @JsonKey(ignore: true)
  _$$_DialogStateCopyWith<_$_DialogState> get copyWith =>
      throw _privateConstructorUsedError;
}
