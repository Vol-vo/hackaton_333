part of 'feed_loader_bloc.dart';

@immutable
sealed class FeedLoaderEvent {}

class PickFileAndSendFeedEvent extends FeedLoaderEvent {}
