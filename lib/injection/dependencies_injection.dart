import 'package:academy/layers/data/datasource/document_datasource.dart';
import 'package:academy/layers/data/datasource/document_datasource_impl.dart';
import 'package:academy/layers/data/repository/document_repository_impl.dart';
import 'package:academy/layers/domain/repositories/document_repository.dart';
import 'package:academy/layers/domain/usecases/create_document_usecase.dart';
import 'package:academy/layers/domain/usecases/fetch_documents_usecase.dart';
import 'package:academy/layers/presentation/controllers/document_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  if (!getIt.isRegistered<DocumentDataSource>()) {
    getIt.registerFactory<DocumentDataSource>(() => DocumentDataSourceImpl());
  }

  if (!getIt.isRegistered<DocumentRepository>()) {
    getIt.registerFactory<DocumentRepository>(
        () => DocumentRepositoryImpl(dataSource: getIt<DocumentDataSource>()));
  }

  if (!getIt.isRegistered<FetchDocumentsUseCase>()) {
    getIt.registerFactory<FetchDocumentsUseCase>(() =>
        FetchDocumentUseCaseImpl(repository: getIt<DocumentRepository>()));
  }

  if (!getIt.isRegistered<CreateDocumentUseCase>()) {
    getIt.registerFactory<CreateDocumentUseCase>(() =>
        CreateDocumentUseCaseImpl(repository: getIt<DocumentRepository>()));
  }

  if (!getIt.isRegistered<DocumentController>()) {
    getIt.registerFactory<DocumentController>(
      () => DocumentController(
        createDocumentUseCase: getIt<CreateDocumentUseCase>(),
        fetchDocumentUseCase: getIt<FetchDocumentsUseCase>(),
      ),
    );
  }
}
