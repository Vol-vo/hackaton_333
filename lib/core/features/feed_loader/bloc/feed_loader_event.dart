part of 'feed_loader_bloc.dart';

@immutable
sealed class FeedLoaderEvent {}

class PickFileAndSendFeedEvent extends FeedLoaderEvent {}

class PushChangesFeedEvent extends FeedLoaderEvent {
  final List<bool> choises;
  final CurrentValidatorErrors errors;

  PushChangesFeedEvent({required this.errors, required this.choises});
}

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



