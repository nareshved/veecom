import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veecom/data/remote/api/api_helper/api_helper.dart';
import 'package:veecom/data/remote/api/api_urls/api_urls.dart';
import 'package:veecom/data/store_bloc/store_events.dart';
import 'package:veecom/data/store_bloc/store_states.dart';

class StoreBloc extends Bloc<StoreEvents, StoreStates> {
  ApiHelper apiHelper;
  StoreBloc({required this.apiHelper}) : super(StoreInitialState()) {
    on<LoginUserEvents>(
      (event, emit) async {
        emit(StoreLoadingState());

        try {
          var rawData = await apiHelper.postApi(
            apiUrl: ApiUrls.loginUser,
            userEmail: event.userEmail,
            userName: event.userName,
            userPassword: event.userPassword,
          );

          emit(StoreLoadedState(mData: rawData));
        } catch (e) {
          emit(StoreErrorState(errorMsg: (e as Exception).toString()));
        }
      },
    );
  }
}
