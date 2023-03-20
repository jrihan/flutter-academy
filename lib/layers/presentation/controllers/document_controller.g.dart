// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DocumentController on _DocumentControllerBase, Store {
  late final _$documentsAtom =
      Atom(name: '_DocumentControllerBase.documents', context: context);

  @override
  List<DocumentEntity> get documents {
    _$documentsAtom.reportRead();
    return super.documents;
  }

  @override
  set documents(List<DocumentEntity> value) {
    _$documentsAtom.reportWrite(value, super.documents, () {
      super.documents = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_DocumentControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAllDocumentsAsyncAction =
      AsyncAction('_DocumentControllerBase.getAllDocuments', context: context);

  @override
  Future<void> getAllDocuments() {
    return _$getAllDocumentsAsyncAction.run(() => super.getAllDocuments());
  }

  @override
  String toString() {
    return '''
documents: ${documents},
isLoading: ${isLoading}
    ''';
  }
}
