// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return _HomeData.fromJson(json);
}

/// @nodoc
mixin _$HomeData {
  @JsonKey(name: 'home_store')
  List<HotSale> get hotSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_seller')
  List<BestSeller> get bestSellers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataCopyWith<HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) then) =
      _$HomeDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'home_store') List<HotSale> hotSales,
      @JsonKey(name: 'best_seller') List<BestSeller> bestSellers});
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res> implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._value, this._then);

  final HomeData _value;
  // ignore: unused_field
  final $Res Function(HomeData) _then;

  @override
  $Res call({
    Object? hotSales = freezed,
    Object? bestSellers = freezed,
  }) {
    return _then(_value.copyWith(
      hotSales: hotSales == freezed
          ? _value.hotSales
          : hotSales // ignore: cast_nullable_to_non_nullable
              as List<HotSale>,
      bestSellers: bestSellers == freezed
          ? _value.bestSellers
          : bestSellers // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeDataCopyWith<$Res> implements $HomeDataCopyWith<$Res> {
  factory _$$_HomeDataCopyWith(
          _$_HomeData value, $Res Function(_$_HomeData) then) =
      __$$_HomeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'home_store') List<HotSale> hotSales,
      @JsonKey(name: 'best_seller') List<BestSeller> bestSellers});
}

/// @nodoc
class __$$_HomeDataCopyWithImpl<$Res> extends _$HomeDataCopyWithImpl<$Res>
    implements _$$_HomeDataCopyWith<$Res> {
  __$$_HomeDataCopyWithImpl(
      _$_HomeData _value, $Res Function(_$_HomeData) _then)
      : super(_value, (v) => _then(v as _$_HomeData));

  @override
  _$_HomeData get _value => super._value as _$_HomeData;

  @override
  $Res call({
    Object? hotSales = freezed,
    Object? bestSellers = freezed,
  }) {
    return _then(_$_HomeData(
      hotSales: hotSales == freezed
          ? _value._hotSales
          : hotSales // ignore: cast_nullable_to_non_nullable
              as List<HotSale>,
      bestSellers: bestSellers == freezed
          ? _value._bestSellers
          : bestSellers // ignore: cast_nullable_to_non_nullable
              as List<BestSeller>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeData with DiagnosticableTreeMixin implements _HomeData {
  const _$_HomeData(
      {@JsonKey(name: 'home_store')
          required final List<HotSale> hotSales,
      @JsonKey(name: 'best_seller')
          required final List<BestSeller> bestSellers})
      : _hotSales = hotSales,
        _bestSellers = bestSellers;

  factory _$_HomeData.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDataFromJson(json);

  final List<HotSale> _hotSales;
  @override
  @JsonKey(name: 'home_store')
  List<HotSale> get hotSales {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotSales);
  }

  final List<BestSeller> _bestSellers;
  @override
  @JsonKey(name: 'best_seller')
  List<BestSeller> get bestSellers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSellers);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeData(hotSales: $hotSales, bestSellers: $bestSellers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeData'))
      ..add(DiagnosticsProperty('hotSales', hotSales))
      ..add(DiagnosticsProperty('bestSellers', bestSellers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeData &&
            const DeepCollectionEquality().equals(other._hotSales, _hotSales) &&
            const DeepCollectionEquality()
                .equals(other._bestSellers, _bestSellers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hotSales),
      const DeepCollectionEquality().hash(_bestSellers));

  @JsonKey(ignore: true)
  @override
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      __$$_HomeDataCopyWithImpl<_$_HomeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDataToJson(
      this,
    );
  }
}

abstract class _HomeData implements HomeData {
  const factory _HomeData(
      {@JsonKey(name: 'home_store')
          required final List<HotSale> hotSales,
      @JsonKey(name: 'best_seller')
          required final List<BestSeller> bestSellers}) = _$_HomeData;

  factory _HomeData.fromJson(Map<String, dynamic> json) = _$_HomeData.fromJson;

  @override
  @JsonKey(name: 'home_store')
  List<HotSale> get hotSales;
  @override
  @JsonKey(name: 'best_seller')
  List<BestSeller> get bestSellers;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDataCopyWith<_$_HomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

HotSale _$HotSaleFromJson(Map<String, dynamic> json) {
  return _HotSale.fromJson(json);
}

/// @nodoc
mixin _$HotSale {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new', nullable: true)
  bool? get isNew => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get pictureURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_buy')
  bool get isBuy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotSaleCopyWith<HotSale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotSaleCopyWith<$Res> {
  factory $HotSaleCopyWith(HotSale value, $Res Function(HotSale) then) =
      _$HotSaleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'is_new', nullable: true) bool? isNew,
      String title,
      String subtitle,
      @JsonKey(name: 'picture') String pictureURL,
      @JsonKey(name: 'is_buy') bool isBuy});
}

/// @nodoc
class _$HotSaleCopyWithImpl<$Res> implements $HotSaleCopyWith<$Res> {
  _$HotSaleCopyWithImpl(this._value, this._then);

  final HotSale _value;
  // ignore: unused_field
  final $Res Function(HotSale) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? pictureURL = freezed,
    Object? isBuy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      pictureURL: pictureURL == freezed
          ? _value.pictureURL
          : pictureURL // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HotSaleCopyWith<$Res> implements $HotSaleCopyWith<$Res> {
  factory _$$_HotSaleCopyWith(
          _$_HotSale value, $Res Function(_$_HotSale) then) =
      __$$_HotSaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'is_new', nullable: true) bool? isNew,
      String title,
      String subtitle,
      @JsonKey(name: 'picture') String pictureURL,
      @JsonKey(name: 'is_buy') bool isBuy});
}

/// @nodoc
class __$$_HotSaleCopyWithImpl<$Res> extends _$HotSaleCopyWithImpl<$Res>
    implements _$$_HotSaleCopyWith<$Res> {
  __$$_HotSaleCopyWithImpl(_$_HotSale _value, $Res Function(_$_HotSale) _then)
      : super(_value, (v) => _then(v as _$_HotSale));

  @override
  _$_HotSale get _value => super._value as _$_HotSale;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? pictureURL = freezed,
    Object? isBuy = freezed,
  }) {
    return _then(_$_HotSale(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      pictureURL: pictureURL == freezed
          ? _value.pictureURL
          : pictureURL // ignore: cast_nullable_to_non_nullable
              as String,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotSale with DiagnosticableTreeMixin implements _HotSale {
  const _$_HotSale(
      {required this.id,
      @JsonKey(name: 'is_new', nullable: true) required this.isNew,
      required this.title,
      required this.subtitle,
      @JsonKey(name: 'picture') required this.pictureURL,
      @JsonKey(name: 'is_buy') required this.isBuy});

  factory _$_HotSale.fromJson(Map<String, dynamic> json) =>
      _$$_HotSaleFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_new', nullable: true)
  final bool? isNew;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  @JsonKey(name: 'picture')
  final String pictureURL;
  @override
  @JsonKey(name: 'is_buy')
  final bool isBuy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HotSale(id: $id, isNew: $isNew, title: $title, subtitle: $subtitle, pictureURL: $pictureURL, isBuy: $isBuy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HotSale'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isNew', isNew))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('pictureURL', pictureURL))
      ..add(DiagnosticsProperty('isBuy', isBuy));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotSale &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality()
                .equals(other.pictureURL, pictureURL) &&
            const DeepCollectionEquality().equals(other.isBuy, isBuy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNew),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(pictureURL),
      const DeepCollectionEquality().hash(isBuy));

  @JsonKey(ignore: true)
  @override
  _$$_HotSaleCopyWith<_$_HotSale> get copyWith =>
      __$$_HotSaleCopyWithImpl<_$_HotSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotSaleToJson(
      this,
    );
  }
}

abstract class _HotSale implements HotSale {
  const factory _HotSale(
      {required final int id,
      @JsonKey(name: 'is_new', nullable: true) required final bool? isNew,
      required final String title,
      required final String subtitle,
      @JsonKey(name: 'picture') required final String pictureURL,
      @JsonKey(name: 'is_buy') required final bool isBuy}) = _$_HotSale;

  factory _HotSale.fromJson(Map<String, dynamic> json) = _$_HotSale.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'is_new', nullable: true)
  bool? get isNew;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(name: 'picture')
  String get pictureURL;
  @override
  @JsonKey(name: 'is_buy')
  bool get isBuy;
  @override
  @JsonKey(ignore: true)
  _$$_HotSaleCopyWith<_$_HotSale> get copyWith =>
      throw _privateConstructorUsedError;
}

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) {
  return _BestSeller.fromJson(json);
}

/// @nodoc
mixin _$BestSeller {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorites')
  bool get isFavorites => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_without_discount')
  int get priceWithoutDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_price')
  int get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get pictureURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellerCopyWith<BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerCopyWith<$Res> {
  factory $BestSellerCopyWith(
          BestSeller value, $Res Function(BestSeller) then) =
      _$BestSellerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'is_favorites') bool isFavorites,
      String title,
      @JsonKey(name: 'price_without_discount') int priceWithoutDiscount,
      @JsonKey(name: 'discount_price') int discountPrice,
      @JsonKey(name: 'picture') String pictureURL});
}

/// @nodoc
class _$BestSellerCopyWithImpl<$Res> implements $BestSellerCopyWith<$Res> {
  _$BestSellerCopyWithImpl(this._value, this._then);

  final BestSeller _value;
  // ignore: unused_field
  final $Res Function(BestSeller) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? pictureURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pictureURL: pictureURL == freezed
          ? _value.pictureURL
          : pictureURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BestSellerCopyWith<$Res>
    implements $BestSellerCopyWith<$Res> {
  factory _$$_BestSellerCopyWith(
          _$_BestSeller value, $Res Function(_$_BestSeller) then) =
      __$$_BestSellerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'is_favorites') bool isFavorites,
      String title,
      @JsonKey(name: 'price_without_discount') int priceWithoutDiscount,
      @JsonKey(name: 'discount_price') int discountPrice,
      @JsonKey(name: 'picture') String pictureURL});
}

/// @nodoc
class __$$_BestSellerCopyWithImpl<$Res> extends _$BestSellerCopyWithImpl<$Res>
    implements _$$_BestSellerCopyWith<$Res> {
  __$$_BestSellerCopyWithImpl(
      _$_BestSeller _value, $Res Function(_$_BestSeller) _then)
      : super(_value, (v) => _then(v as _$_BestSeller));

  @override
  _$_BestSeller get _value => super._value as _$_BestSeller;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? pictureURL = freezed,
  }) {
    return _then(_$_BestSeller(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pictureURL: pictureURL == freezed
          ? _value.pictureURL
          : pictureURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestSeller with DiagnosticableTreeMixin implements _BestSeller {
  const _$_BestSeller(
      {required this.id,
      @JsonKey(name: 'is_favorites')
          required this.isFavorites,
      required this.title,
      @JsonKey(name: 'price_without_discount')
          required this.priceWithoutDiscount,
      @JsonKey(name: 'discount_price')
          required this.discountPrice,
      @JsonKey(name: 'picture')
          required this.pictureURL});

  factory _$_BestSeller.fromJson(Map<String, dynamic> json) =>
      _$$_BestSellerFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'is_favorites')
  final bool isFavorites;
  @override
  final String title;
  @override
  @JsonKey(name: 'price_without_discount')
  final int priceWithoutDiscount;
  @override
  @JsonKey(name: 'discount_price')
  final int discountPrice;
  @override
  @JsonKey(name: 'picture')
  final String pictureURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestSeller(id: $id, isFavorites: $isFavorites, title: $title, priceWithoutDiscount: $priceWithoutDiscount, discountPrice: $discountPrice, pictureURL: $pictureURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BestSeller'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isFavorites', isFavorites))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('priceWithoutDiscount', priceWithoutDiscount))
      ..add(DiagnosticsProperty('discountPrice', discountPrice))
      ..add(DiagnosticsProperty('pictureURL', pictureURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestSeller &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isFavorites, isFavorites) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.priceWithoutDiscount, priceWithoutDiscount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality()
                .equals(other.pictureURL, pictureURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isFavorites),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(priceWithoutDiscount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(pictureURL));

  @JsonKey(ignore: true)
  @override
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      __$$_BestSellerCopyWithImpl<_$_BestSeller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestSellerToJson(
      this,
    );
  }
}

abstract class _BestSeller implements BestSeller {
  const factory _BestSeller(
      {required final int id,
      @JsonKey(name: 'is_favorites')
          required final bool isFavorites,
      required final String title,
      @JsonKey(name: 'price_without_discount')
          required final int priceWithoutDiscount,
      @JsonKey(name: 'discount_price')
          required final int discountPrice,
      @JsonKey(name: 'picture')
          required final String pictureURL}) = _$_BestSeller;

  factory _BestSeller.fromJson(Map<String, dynamic> json) =
      _$_BestSeller.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'is_favorites')
  bool get isFavorites;
  @override
  String get title;
  @override
  @JsonKey(name: 'price_without_discount')
  int get priceWithoutDiscount;
  @override
  @JsonKey(name: 'discount_price')
  int get discountPrice;
  @override
  @JsonKey(name: 'picture')
  String get pictureURL;
  @override
  @JsonKey(ignore: true)
  _$$_BestSellerCopyWith<_$_BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}
