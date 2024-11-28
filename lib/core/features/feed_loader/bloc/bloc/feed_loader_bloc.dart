import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'feed_loader_event.dart';
part 'feed_loader_state.dart';

class FeedLoaderBloc extends Bloc<FeedLoaderEvent, FeedLoaderState> {
  FeedLoaderBloc() : super(FeedLoaderInitial()) {
    on<FeedLoaderEvent>((event, emit) {
      
    });
  }
}
