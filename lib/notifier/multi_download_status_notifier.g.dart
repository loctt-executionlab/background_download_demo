// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_download_status_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$multiDownloadstatusNotifierHash() =>
    r'fd00c477d35adf78c4f5972fd4f8145c18664713';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MultiDownloadstatusNotifier
    extends BuildlessAutoDisposeNotifier<Map<String, DownloadTaskModel>> {
  late final MultipleVideo videos;

  Map<String, DownloadTaskModel> build(
    MultipleVideo videos,
  );
}

/// See also [MultiDownloadstatusNotifier].
@ProviderFor(MultiDownloadstatusNotifier)
const multiDownloadstatusNotifierProvider = MultiDownloadstatusNotifierFamily();

/// See also [MultiDownloadstatusNotifier].
class MultiDownloadstatusNotifierFamily
    extends Family<Map<String, DownloadTaskModel>> {
  /// See also [MultiDownloadstatusNotifier].
  const MultiDownloadstatusNotifierFamily();

  /// See also [MultiDownloadstatusNotifier].
  MultiDownloadstatusNotifierProvider call(
    MultipleVideo videos,
  ) {
    return MultiDownloadstatusNotifierProvider(
      videos,
    );
  }

  @override
  MultiDownloadstatusNotifierProvider getProviderOverride(
    covariant MultiDownloadstatusNotifierProvider provider,
  ) {
    return call(
      provider.videos,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'multiDownloadstatusNotifierProvider';
}

/// See also [MultiDownloadstatusNotifier].
class MultiDownloadstatusNotifierProvider
    extends AutoDisposeNotifierProviderImpl<MultiDownloadstatusNotifier,
        Map<String, DownloadTaskModel>> {
  /// See also [MultiDownloadstatusNotifier].
  MultiDownloadstatusNotifierProvider(
    this.videos,
  ) : super.internal(
          () => MultiDownloadstatusNotifier()..videos = videos,
          from: multiDownloadstatusNotifierProvider,
          name: r'multiDownloadstatusNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$multiDownloadstatusNotifierHash,
          dependencies: MultiDownloadstatusNotifierFamily._dependencies,
          allTransitiveDependencies:
              MultiDownloadstatusNotifierFamily._allTransitiveDependencies,
        );

  final MultipleVideo videos;

  @override
  bool operator ==(Object other) {
    return other is MultiDownloadstatusNotifierProvider &&
        other.videos == videos;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, videos.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Map<String, DownloadTaskModel> runNotifierBuild(
    covariant MultiDownloadstatusNotifier notifier,
  ) {
    return notifier.build(
      videos,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
