// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavePhotoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavePhotoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavePersonPhotoState()';
}


}

/// @nodoc
class $SavePersonPhotoStateCopyWith<$Res>  {
$SavePersonPhotoStateCopyWith(SavePhotoState _, $Res Function(SavePhotoState) __);
}


/// Adds pattern-matching-related methods to [SavePhotoState].
extension SavePersonPhotoStatePatterns on SavePhotoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SavePhotoInitial value)?  initial,TResult Function( _SavePhotoLoading value)?  loading,TResult Function( _SavePhotoSuccess value)?  success,TResult Function( _SavePhotoFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavePhotoInitial() when initial != null:
return initial(_that);case _SavePhotoLoading() when loading != null:
return loading(_that);case _SavePhotoSuccess() when success != null:
return success(_that);case _SavePhotoFailed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SavePhotoInitial value)  initial,required TResult Function( _SavePhotoLoading value)  loading,required TResult Function( _SavePhotoSuccess value)  success,required TResult Function( _SavePhotoFailed value)  failed,}){
final _that = this;
switch (_that) {
case _SavePhotoInitial():
return initial(_that);case _SavePhotoLoading():
return loading(_that);case _SavePhotoSuccess():
return success(_that);case _SavePhotoFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SavePhotoInitial value)?  initial,TResult? Function( _SavePhotoLoading value)?  loading,TResult? Function( _SavePhotoSuccess value)?  success,TResult? Function( _SavePhotoFailed value)?  failed,}){
final _that = this;
switch (_that) {
case _SavePhotoInitial() when initial != null:
return initial(_that);case _SavePhotoLoading() when loading != null:
return loading(_that);case _SavePhotoSuccess() when success != null:
return success(_that);case _SavePhotoFailed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( Failure failure)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavePhotoInitial() when initial != null:
return initial();case _SavePhotoLoading() when loading != null:
return loading();case _SavePhotoSuccess() when success != null:
return success();case _SavePhotoFailed() when failed != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( Failure failure)  failed,}) {final _that = this;
switch (_that) {
case _SavePhotoInitial():
return initial();case _SavePhotoLoading():
return loading();case _SavePhotoSuccess():
return success();case _SavePhotoFailed():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( Failure failure)?  failed,}) {final _that = this;
switch (_that) {
case _SavePhotoInitial() when initial != null:
return initial();case _SavePhotoLoading() when loading != null:
return loading();case _SavePhotoSuccess() when success != null:
return success();case _SavePhotoFailed() when failed != null:
return failed(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _SavePhotoInitial implements SavePhotoState {
  const _SavePhotoInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePhotoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavePersonPhotoState.initial()';
}


}




/// @nodoc


class _SavePhotoLoading implements SavePhotoState {
  const _SavePhotoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePhotoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavePersonPhotoState.loading()';
}


}




/// @nodoc


class _SavePhotoSuccess implements SavePhotoState {
  const _SavePhotoSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePhotoSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SavePersonPhotoState.success()';
}


}




/// @nodoc


class _SavePhotoFailed implements SavePhotoState {
  const _SavePhotoFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of SavePersonPhotoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavePersonPhotoFailedCopyWith<_SavePhotoFailed> get copyWith => __$SavePersonPhotoFailedCopyWithImpl<_SavePhotoFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavePhotoFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SavePersonPhotoState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$SavePersonPhotoFailedCopyWith<$Res> implements $SavePersonPhotoStateCopyWith<$Res> {
  factory _$SavePersonPhotoFailedCopyWith(_SavePhotoFailed value, $Res Function(_SavePhotoFailed) _then) = __$SavePersonPhotoFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class __$SavePersonPhotoFailedCopyWithImpl<$Res>
    implements _$SavePersonPhotoFailedCopyWith<$Res> {
  __$SavePersonPhotoFailedCopyWithImpl(this._self, this._then);

  final _SavePhotoFailed _self;
  final $Res Function(_SavePhotoFailed) _then;

/// Create a copy of SavePersonPhotoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(_SavePhotoFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
