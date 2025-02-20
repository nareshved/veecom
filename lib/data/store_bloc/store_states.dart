
abstract class StoreStates {}

class StoreInitialState extends StoreStates {}

class StoreLoadingState extends StoreStates {}

class StoreLoadedState extends StoreStates {
  Map<String, dynamic> mData;

  StoreLoadedState({required this.mData});
}

class StoreErrorState extends StoreStates {
  String errorMsg;

  StoreErrorState({required this.errorMsg});
}
