// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsEvent {
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
    required TResult Function(DetailsEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

/// @nodoc
abstract class _$$DetailsEventFetchCopyWith<$Res> {
  factory _$$DetailsEventFetchCopyWith(
          _$DetailsEventFetch value, $Res Function(_$DetailsEventFetch) then) =
      __$$DetailsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsEventFetchCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements _$$DetailsEventFetchCopyWith<$Res> {
  __$$DetailsEventFetchCopyWithImpl(
      _$DetailsEventFetch _value, $Res Function(_$DetailsEventFetch) _then)
      : super(_value, (v) => _then(v as _$DetailsEventFetch));

  @override
  _$DetailsEventFetch get _value => super._value as _$DetailsEventFetch;
}

/// @nodoc

class _$DetailsEventFetch implements DetailsEventFetch {
  const _$DetailsEventFetch();

  @override
  String toString() {
    return 'DetailsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsEventFetch);
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
    required TResult Function(DetailsEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class DetailsEventFetch implements DetailsEvent {
  const factory DetailsEventFetch() = _$DetailsEventFetch;
}

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DetailsData detailsDataLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsStateLoading value) loading,
    required TResult Function(DetailsStateLoaded value) loaded,
    required TResult Function(DetailsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$$DetailsStateLoadingCopyWith<$Res> {
  factory _$$DetailsStateLoadingCopyWith(_$DetailsStateLoading value,
          $Res Function(_$DetailsStateLoading) then) =
      __$$DetailsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsStateLoadingCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$DetailsStateLoadingCopyWith<$Res> {
  __$$DetailsStateLoadingCopyWithImpl(
      _$DetailsStateLoading _value, $Res Function(_$DetailsStateLoading) _then)
      : super(_value, (v) => _then(v as _$DetailsStateLoading));

  @override
  _$DetailsStateLoading get _value => super._value as _$DetailsStateLoading;
}

/// @nodoc

class _$DetailsStateLoading implements DetailsStateLoading {
  const _$DetailsStateLoading();

  @override
  String toString() {
    return 'DetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DetailsData detailsDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
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
    required TResult Function(DetailsStateLoading value) loading,
    required TResult Function(DetailsStateLoaded value) loaded,
    required TResult Function(DetailsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailsStateLoading implements DetailsState {
  const factory DetailsStateLoading() = _$DetailsStateLoading;
}

/// @nodoc
abstract class _$$DetailsStateLoadedCopyWith<$Res> {
  factory _$$DetailsStateLoadedCopyWith(_$DetailsStateLoaded value,
          $Res Function(_$DetailsStateLoaded) then) =
      __$$DetailsStateLoadedCopyWithImpl<$Res>;
  $Res call({DetailsData detailsDataLoaded});

  $DetailsDataCopyWith<$Res> get detailsDataLoaded;
}

/// @nodoc
class __$$DetailsStateLoadedCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$DetailsStateLoadedCopyWith<$Res> {
  __$$DetailsStateLoadedCopyWithImpl(
      _$DetailsStateLoaded _value, $Res Function(_$DetailsStateLoaded) _then)
      : super(_value, (v) => _then(v as _$DetailsStateLoaded));

  @override
  _$DetailsStateLoaded get _value => super._value as _$DetailsStateLoaded;

  @override
  $Res call({
    Object? detailsDataLoaded = freezed,
  }) {
    return _then(_$DetailsStateLoaded(
      detailsDataLoaded: detailsDataLoaded == freezed
          ? _value.detailsDataLoaded
          : detailsDataLoaded // ignore: cast_nullable_to_non_nullable
              as DetailsData,
    ));
  }

  @override
  $DetailsDataCopyWith<$Res> get detailsDataLoaded {
    return $DetailsDataCopyWith<$Res>(_value.detailsDataLoaded, (value) {
      return _then(_value.copyWith(detailsDataLoaded: value));
    });
  }
}

/// @nodoc

class _$DetailsStateLoaded implements DetailsStateLoaded {
  const _$DetailsStateLoaded({required this.detailsDataLoaded});

  @override
  final DetailsData detailsDataLoaded;

  @override
  String toString() {
    return 'DetailsState.loaded(detailsDataLoaded: $detailsDataLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.detailsDataLoaded, detailsDataLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(detailsDataLoaded));

  @JsonKey(ignore: true)
  @override
  _$$DetailsStateLoadedCopyWith<_$DetailsStateLoaded> get copyWith =>
      __$$DetailsStateLoadedCopyWithImpl<_$DetailsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DetailsData detailsDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(detailsDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(detailsDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(detailsDataLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailsStateLoading value) loading,
    required TResult Function(DetailsStateLoaded value) loaded,
    required TResult Function(DetailsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DetailsStateLoaded implements DetailsState {
  const factory DetailsStateLoaded(
      {required final DetailsData detailsDataLoaded}) = _$DetailsStateLoaded;

  DetailsData get detailsDataLoaded;
  @JsonKey(ignore: true)
  _$$DetailsStateLoadedCopyWith<_$DetailsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailsStateErrorCopyWith<$Res> {
  factory _$$DetailsStateErrorCopyWith(
          _$DetailsStateError value, $Res Function(_$DetailsStateError) then) =
      __$$DetailsStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailsStateErrorCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$DetailsStateErrorCopyWith<$Res> {
  __$$DetailsStateErrorCopyWithImpl(
      _$DetailsStateError _value, $Res Function(_$DetailsStateError) _then)
      : super(_value, (v) => _then(v as _$DetailsStateError));

  @override
  _$DetailsStateError get _value => super._value as _$DetailsStateError;
}

/// @nodoc

class _$DetailsStateError implements DetailsStateError {
  const _$DetailsStateError();

  @override
  String toString() {
    return 'DetailsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailsStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(DetailsData detailsDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(DetailsData detailsDataLoaded)? loaded,
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
    required TResult Function(DetailsStateLoading value) loading,
    required TResult Function(DetailsStateLoaded value) loaded,
    required TResult Function(DetailsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailsStateLoading value)? loading,
    TResult Function(DetailsStateLoaded value)? loaded,
    TResult Function(DetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailsStateError implements DetailsState {
  const factory DetailsStateError() = _$DetailsStateError;
}
