import 'package:diocese_santos/main/factories/infra/api/repositories/load_churchs_api_repo_factory.dart';
import 'package:diocese_santos/main/factories/infra/api/repositories/load_confessions_api_repo_factory.dart';
import 'package:diocese_santos/main/factories/infra/api/repositories/load_liturgical_informations_api_repo_factory.dart';
import 'package:diocese_santos/main/factories/infra/api/repositories/load_masses_api_repo_factory.dart';
import 'package:diocese_santos/main/factories/infra/storage/adapters/mmkv_adapter_factory.dart';
import 'package:diocese_santos/presentation/presenters/rx/home_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/home/home_page.dart';

import 'package:flutter/material.dart';

final massesRepo = makeMassesApiRepository();
final churchsRepo = makeChurchsApiRepository();
final confessionRepo = makeConfessionApiRepository();
final liturgicalInformationsRepo = makeLiturgicalInformationApiRepository();
final storageClient = getMMKVInstance();

final presenter = HomeRxPresenter(
  storageClient: storageClient,
  liturgicalInformationsLoader:
      liturgicalInformationsRepo.loadLiturgicalInformation,
  churchsLoader: churchsRepo.loadChurchs,
  massesLoader: massesRepo.loadMasses,
  confessionLoader: confessionRepo.loadConfession,
);

Widget makeHomePage() => HomePage(presenter: presenter);
