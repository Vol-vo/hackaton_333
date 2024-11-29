import 'package:dart_mappable/dart_mappable.dart';
import 'package:hackaton_333/core/data/data.dart';

part 'feed_loader_state.mapper.dart';

@MappableClass()
class FeedLoaderState with FeedLoaderStateMappable {
  FeedLoaderState({
    this.errors,
  });

  final CurrentValidatorErrors? errors;
}

class FeedLoadingState extends FeedLoaderState {}

class FeedErrorState extends FeedLoaderState {}
