// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_status_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$downloadStatusNotifierHash() =>
    r'3bb633c1eba20a2a0132c04f34e9f1a20b7c8b15';

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

abstract class _$DownloadStatusNotifier
    extends BuildlessAutoDisposeNotifier<DownloadTaskModel> {
  late final Video video;

  DownloadTaskModel build(
    Video video,
  );
}

/// See also [DownloadStatusNotifier].
@ProviderFor(DownloadStatusNotifier)
const downloadStatusNotifierProvider = DownloadStatusNotifierFamily();

/// See also [DownloadStatusNotifier].
class DownloadStatusNotifierFamily extends Family<DownloadTaskModel> {
  /// See also [DownloadStatusNotifier].
  const DownloadStatusNotifierFamily();

  /// See also [DownloadStatusNotifier].
  DownloadStatusNotifierProvider call(
    Video video,
  ) {
    return DownloadStatusNotifierProvider(
      video,
    );
  }

  @override
  DownloadStatusNotifierProvider getProviderOverride(
    covariant DownloadStatusNotifierProvider provider,
  ) {
    return call(
      provider.video,
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
  String? get name => r'downloadStatusNotifierProvider';
}

/// See also [DownloadStatusNotifier].
class DownloadStatusNotifierProvider extends AutoDisposeNotifierProviderImpl<
    DownloadStatusNotifier, DownloadTaskModel> {
  /// See also [DownloadStatusNotifier].
  DownloadStatusNotifierProvider(
    this.video,
  ) : super.internal(
          () => DownloadStatusNotifier()..video = video,
          from: downloadStatusNotifierProvider,
          name: r'downloadStatusNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$downloadStatusNotifierHash,
          dependencies: DownloadStatusNotifierFamily._dependencies,
          allTransitiveDependencies:
              DownloadStatusNotifierFamily._allTransitiveDependencies,
        );

  final Video video;

  @override
  bool operator ==(Object other) {
    return other is DownloadStatusNotifierProvider && other.video == video;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, video.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  DownloadTaskModel runNotifierBuild(
    covariant DownloadStatusNotifier notifier,
  ) {
    return notifier.build(
      video,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
