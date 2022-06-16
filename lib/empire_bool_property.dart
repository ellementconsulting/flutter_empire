part of 'empire_property.dart';

///An [EmpireProperty] with similar characteristics as a an
///ordinary dart bool object
///
///Then underlying bool value cannot be null
///
///When the value of this changes, it will send a [EmpireStateChanged] event by default. This includes
///automatically triggering a UI rebuild.
class EmpireBoolProperty extends EmpireProperty<bool> {
  EmpireBoolProperty(super.value, super.viewModel, {super.propertyName});

  ///Whether the underlying value is true
  bool get isTrue => _value;

  ///Whether the underlying value is false
  bool get isFalse => !_value;

  ///Sets the value to true
  void setTrue() => super.set(true);

  ///Sets the value to false
  void setFalse() => super.set(false);
}

///An [EmpireProperty] with similar characteristics as a an
///ordinary dart bool object.
///
///Then underlying bool value *CAN* be null
///
///When the value of this changes, it will send a [EmpireStateChanged] event by default. This includes
///automatically triggering a UI rebuild.
class EmpireNullableBoolProperty extends EmpireProperty<bool?> {
  EmpireNullableBoolProperty(super.value, super.viewModel,
      {super.propertyName});

  ///Whether the underlying value is not null and true
  bool get isTrue => isNotNull && _value == true;

  ///Whether the underlying value is not null and false
  bool get isFalse => isNotNull && _value == false;

  ///Sets the value to true
  void setTrue() => super.set(true);

  ///Sets the value to false
  void setFalse() => super.set(false);

  ///Sets the value to null
  void setNull() => super.set(null);
}
