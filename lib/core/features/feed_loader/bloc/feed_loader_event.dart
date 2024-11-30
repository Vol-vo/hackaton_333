part of 'feed_loader_bloc.dart';

@immutable
sealed class FeedLoaderEvent {}

class PickFileAndSendFeedEvent extends FeedLoaderEvent {}

class LoadUserAnswerEvent extends FeedLoaderEvent {
  LoadUserAnswerEvent( {
    required this.userAnswer,
    required this.workId,
  });

  final List<String> userAnswer;
  final String workId;
}

class LoadCurrencyFeedEvent  extends FeedLoaderEvent{
  
}


 
