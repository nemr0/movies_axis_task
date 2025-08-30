// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_person_photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPersonPhotosState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPersonPhotosState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPersonPhotosState()';
}


}

/// @nodoc
class $GetPersonPhotosStateCopyWith<$Res>  {
$GetPersonPhotosStateCopyWith(GetPersonPhotosState _, $Res Function(GetPersonPhotosState) __);
}


/// Adds pattern-matching-related methods to [GetPersonPhotosState].
extension GetPersonPhotosStatePatterns on GetPersonPhotosState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPersonPhotosStateInitial value)?  initial,TResult Function( _GetPersonPhotosStateLoading value)?  loading,TResult Function( _GetPersonPhotosStateSuccess value)?  success,TResult Function( _GetPersonPhotosStateFailes value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial() when initial != null:
return initial(_that);case _GetPersonPhotosStateLoading() when loading != null:
return loading(_that);case _GetPersonPhotosStateSuccess() when success != null:
return success(_that);case _GetPersonPhotosStateFailes() when failed != null:
return failed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPersonPhotosStateInitial value)  initial,required TResult Function( _GetPersonPhotosStateLoading value)  loading,required TResult Function( _GetPersonPhotosStateSuccess value)  success,required TResult Function( _GetPersonPhotosStateFailes value)  failed,}){
final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial():
return initial(_that);case _GetPersonPhotosStateLoading():
return loading(_that);case _GetPersonPhotosStateSuccess():
return success(_that);case _GetPersonPhotosStateFailes():
return failed(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPersonPhotosStateInitial value)?  initial,TResult? Function( _GetPersonPhotosStateLoading value)?  loading,TResult? Function( _GetPersonPhotosStateSuccess value)?  success,TResult? Function( _GetPersonPhotosStateFailes value)?  failed,}){
final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial() when initial != null:
return initial(_that);case _GetPersonPhotosStateLoading() when loading != null:
return loading(_that);case _GetPersonPhotosStateSuccess() when success != null:
return success(_that);case _GetPersonPhotosStateFailes() when failed != null:
return failed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( PersonPhotos personPhoto)?  success,TResult Function( Failure failure)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial() when initial != null:
return initial();case _GetPersonPhotosStateLoading() when loading != null:
return loading();case _GetPersonPhotosStateSuccess() when success != null:
return success(_that.personPhoto);case _GetPersonPhotosStateFailes() when failed != null:
return failed(_that.failure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( PersonPhotos personPhoto)  success,required TResult Function( Failure failure)  failed,}) {final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial():
return initial();case _GetPersonPhotosStateLoading():
return loading();case _GetPersonPhotosStateSuccess():
return success(_that.personPhoto);case _GetPersonPhotosStateFailes():
return failed(_that.failure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( PersonPhotos personPhoto)?  success,TResult? Function( Failure failure)?  failed,}) {final _that = this;
switch (_that) {
case _GetPersonPhotosStateInitial() when initial != null:
return initial();case _GetPersonPhotosStateLoading() when loading != null:
return loading();case _GetPersonPhotosStateSuccess() when success != null:
return success(_that.personPhoto);case _GetPersonPhotosStateFailes() when failed != null:
return failed(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _GetPersonPhotosStateInitial implements GetPersonPhotosState {
  const _GetPersonPhotosStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPersonPhotosStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPersonPhotosState.initial()';
}


}




/// @nodoc


class _GetPersonPhotosStateLoading implements GetPersonPhotosState {
  const _GetPersonPhotosStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPersonPhotosStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetPersonPhotosState.loading()';
}


}




/// @nodoc


class _GetPersonPhotosStateSuccess implements GetPersonPhotosState {
  const _GetPersonPhotosStateSuccess(this.personPhoto);
  

 final  PersonPhotos personPhoto;

/// Create a copy of GetPersonPhotosState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPersonPhotosStateSuccessCopyWith<_GetPersonPhotosStateSuccess> get copyWith => __$GetPersonPhotosStateSuccessCopyWithImpl<_GetPersonPhotosStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPersonPhotosStateSuccess&&(identical(other.personPhoto, personPhoto) || other.personPhoto == personPhoto));
}


@override
int get hashCode => Object.hash(runtimeType,personPhoto);

@override
String toString() {
  return 'GetPersonPhotosState.success(personPhoto: $personPhoto)';
}


}

/// @nodoc
abstract mixin class _$GetPersonPhotosStateSuccessCopyWith<$Res> implements $GetPersonPhotosStateCopyWith<$Res> {
  factory _$GetPersonPhotosStateSuccessCopyWith(_GetPersonPhotosStateSuccess value, $Res Function(_GetPersonPhotosStateSuccess) _then) = __$GetPersonPhotosStateSuccessCopyWithImpl;
@useResult
$Res call({
 PersonPhotos personPhoto
});




}
/// @nodoc
class __$GetPersonPhotosStateSuccessCopyWithImpl<$Res>
    implements _$GetPersonPhotosStateSuccessCopyWith<$Res> {
  __$GetPersonPhotosStateSuccessCopyWithImpl(this._self, this._then);

  final _GetPersonPhotosStateSuccess _self;
  final $Res Function(_GetPersonPhotosStateSuccess) _then;

/// Create a copy of GetPersonPhotosState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? personPhoto = null,}) {
  return _then(_GetPersonPhotosStateSuccess(
null == personPhoto ? _self.personPhoto : personPhoto // ignore: cast_nullable_to_non_nullable
as PersonPhotos,
  ));
}


}

/// @nodoc


class _GetPersonPhotosStateFailes implements GetPersonPhotosState {
  const _GetPersonPhotosStateFailes(this.failure);
  

 final  Failure failure;

/// Create a copy of GetPersonPhotosState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPersonPhotosStateFailesCopyWith<_GetPersonPhotosStateFailes> get copyWith => __$GetPersonPhotosStateFailesCopyWithImpl<_GetPersonPhotosStateFailes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPersonPhotosStateFailes&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'GetPersonPhotosState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$GetPersonPhotosStateFailesCopyWith<$Res> implements $GetPersonPhotosStateCopyWith<$Res> {
  factory _$GetPersonPhotosStateFailesCopyWith(_GetPersonPhotosStateFailes value, $Res Function(_GetPersonPhotosStateFailes) _then) = __$GetPersonPhotosStateFailesCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$GetPersonPhotosStateFailesCopyWithImpl<$Res>
    implements _$GetPersonPhotosStateFailesCopyWith<$Res> {
  __$GetPersonPhotosStateFailesCopyWithImpl(this._self, this._then);

  final _GetPersonPhotosStateFailes _self;
  final $Res Function(_GetPersonPhotosStateFailes) _then;

/// Create a copy of GetPersonPhotosState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_GetPersonPhotosStateFailes(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
