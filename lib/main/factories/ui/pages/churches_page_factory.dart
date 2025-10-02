import 'package:diocese_santos/main/factories/infra/storage/adapters/mmkv_adapter_factory.dart';
import 'package:diocese_santos/presentation/presenters/rx/churches_rx_presenter.dart';
import 'package:diocese_santos/ui/pages/churches/churches_page.dart';
import 'package:flutter/material.dart';

final storageClient = getMMKVInstance();

final presenter = ChurchesRxPresenter(storageClient: storageClient);

Widget makeChurchesPage() => ChurchesPage(presenter: presenter);
