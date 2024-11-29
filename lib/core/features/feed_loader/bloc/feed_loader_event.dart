part of 'feed_loader_bloc.dart';

@immutable
sealed class FeedLoaderEvent {}

class PickFileAndSendFeedEvent extends FeedLoaderEvent {}

class PushChangesFeedEvent extends FeedLoaderEvent {
  final List<bool> choises;
  final CurrentValidatorErrors errors;

  PushChangesFeedEvent({required this.errors, required this.choises});
}
