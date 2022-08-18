// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$$CartEventFetchCopyWith<$Res> {
  factory _$$CartEventFetchCopyWith(
          _$CartEventFetch value, $Res Function(_$CartEventFetch) then) =
      __$$CartEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEventFetchCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements _$$CartEventFetchCopyWith<$Res> {
  __$$CartEventFetchCopyWithImpl(
      _$CartEventFetch _value, $Res Function(_$CartEventFetch) _then)
      : super(_value, (v) => _then(v as _$CartEventFetch));

  @override
  _$CartEventFetch get _value => super._value as _$CartEventFetch;
}

/// @nodoc

class _$CartEventFetch implements CartEventFetch {
  const _$CartEventFetch();

  @override
  String toString() {
    return 'CartEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CartEventFetch implements CartEvent {
  const factory CartEventFetch() = _$CartEventFetch;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartData cartDataLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateLoading value) loading,
    required TResult Function(CartStateLoaded value) loaded,
    required TResult Function(CartStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$CartStateLoadingCopyWith<$Res> {
  factory _$$CartStateLoadingCopyWith(
          _$CartStateLoading value, $Res Function(_$CartStateLoading) then) =
      __$$CartStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateLoadingCopyWith<$Res> {
  __$$CartStateLoadingCopyWithImpl(
      _$CartStateLoading _value, $Res Function(_$CartStateLoading) _then)
      : super(_value, (v) => _then(v as _$CartStateLoading));

  @override
  _$CartStateLoading get _value => super._value as _$CartStateLoading;
}

/// @nodoc

class _$CartStateLoading implements CartStateLoading {
  const _$CartStateLoading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartData cartDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateLoading value) loading,
    required TResult Function(CartStateLoaded value) loaded,
    required TResult Function(CartStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartStateLoading implements CartState {
  const factory CartStateLoading() = _$CartStateLoading;
}

/// @nodoc
abstract class _$$CartStateLoadedCopyWith<$Res> {
  factory _$$CartStateLoadedCopyWith(
          _$CartStateLoaded value, $Res Function(_$CartStateLoaded) then) =
      __$$CartStateLoadedCopyWithImpl<$Res>;
  $Res call({CartData cartDataLoaded});

  $CartDataCopyWith<$Res> get cartDataLoaded;
}

/// @nodoc
class __$$CartStateLoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateLoadedCopyWith<$Res> {
  __$$CartStateLoadedCopyWithImpl(
      _$CartStateLoaded _value, $Res Function(_$CartStateLoaded) _then)
      : super(_value, (v) => _then(v as _$CartStateLoaded));

  @override
  _$CartStateLoaded get _value => super._value as _$CartStateLoaded;

  @override
  $Res call({
    Object? cartDataLoaded = freezed,
  }) {
    return _then(_$CartStateLoaded(
      cartDataLoaded: cartDataLoaded == freezed
          ? _value.cartDataLoaded
          : cartDataLoaded // ignore: cast_nullable_to_non_nullable
              as CartData,
    ));
  }

  @override
  $CartDataCopyWith<$Res> get cartDataLoaded {
    return $CartDataCopyWith<$Res>(_value.cartDataLoaded, (value) {
      return _then(_value.copyWith(cartDataLoaded: value));
    });
  }
}

/// @nodoc

class _$CartStateLoaded implements CartStateLoaded {
  const _$CartStateLoaded({required this.cartDataLoaded});

  @override
  final CartData cartDataLoaded;

  @override
  String toString() {
    return 'CartState.loaded(cartDataLoaded: $cartDataLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.cartDataLoaded, cartDataLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartDataLoaded));

  @JsonKey(ignore: true)
  @override
  _$$CartStateLoadedCopyWith<_$CartStateLoaded> get copyWith =>
      __$$CartStateLoadedCopyWithImpl<_$CartStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartData cartDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(cartDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(cartDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartDataLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateLoading value) loading,
    required TResult Function(CartStateLoaded value) loaded,
    required TResult Function(CartStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CartStateLoaded implements CartState {
  const factory CartStateLoaded({required final CartData cartDataLoaded}) =
      _$CartStateLoaded;

  CartData get cartDataLoaded;
  @JsonKey(ignore: true)
  _$$CartStateLoadedCopyWith<_$CartStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartStateErrorCopyWith<$Res> {
  factory _$$CartStateErrorCopyWith(
          _$CartStateError value, $Res Function(_$CartStateError) then) =
      __$$CartStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartStateErrorCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$CartStateErrorCopyWith<$Res> {
  __$$CartStateErrorCopyWithImpl(
      _$CartStateError _value, $Res Function(_$CartStateError) _then)
      : super(_value, (v) => _then(v as _$CartStateError));

  @override
  _$CartStateError get _value => super._value as _$CartStateError;
}

/// @nodoc

class _$CartStateError implements CartStateError {
  const _$CartStateError();

  @override
  String toString() {
    return 'CartState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CartData cartDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CartData cartDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartStateLoading value) loading,
    required TResult Function(CartStateLoaded value) loaded,
    required TResult Function(CartStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartStateLoading value)? loading,
    TResult Function(CartStateLoaded value)? loaded,
    TResult Function(CartStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CartStateError implements CartState {
  const factory CartStateError() = _$CartStateError;
}
