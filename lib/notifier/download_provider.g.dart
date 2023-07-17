// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$backgroundDownloadHash() =>
    r'0d4f8362261eaf521e0129b8070f4acc12a82eca';

/// See also [backgroundDownload].
@ProviderFor(backgroundDownload)
final backgroundDownloadProvider = AutoDisposeProvider<FileDownloader>.internal(
  backgroundDownload,
  name: r'backgroundDownloadProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$backgroundDownloadHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BackgroundDownloadRef = AutoDisposeProviderRef<FileDownloader>;
String _$statusUpdateHash() => r'a0017196d13865ae461c8566c3aa91fd17ea3496';

/// See also [statusUpdate].
@ProviderFor(statusUpdate)
final statusUpdateProvider =
    AutoDisposeProvider<BehaviorSubject<TaskUpdate>>.internal(
  statusUpdate,
  name: r'statusUpdateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$statusUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StatusUpdateRef = AutoDisposeProviderRef<BehaviorSubject<TaskUpdate>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
