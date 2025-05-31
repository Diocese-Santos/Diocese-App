import 'package:diocese_santos/ui/widgets/header.dart';
import 'package:diocese_santos/ui/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      showBottomNavigationBar: true,
      children: [
        Header(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 24,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Text(
                'História',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 42),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A criação da Diocese de Santos foi um fato culminante no processo de catolização das regiões brasílicas. É uma história que começa longe, em Portugal dos Descobrimentos, incumbido, muito antes de 1500, da evangelização das terras descobertas ou por descobrir, por autorização do Papa. Estabelecia-se o regime do padroado concedido desde 1456, à Ordem de Cristo, então tendo por grão-mestre o Infante D. Henrique, o Navegador. No correr dos tempos, o grão-mestrado ficou inerente à Coroa e a administração temporal e espiritual ficaram, em grande parte, unidas.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Gap(40),
              Image.asset(
                'assets/history_map.png',
                fit: BoxFit.cover,
              ),
              Gap(40),
              Text(
                'Em 12 de junho de 1514, quando o Brasil era um Interminável litoral com florestas próximas das praias, freqüentadas por caravelas e naus, carregadas de pau-brasil, o país passou à jurisdição da Diocese do Funchal, sediada na Ilha da Madeira, criada por Leão X. Assim se conservou durante 38 anos, quando foi estabelecido o primeiro Bispado brasileiro, pelo Papa Júlio III, sendo D Pero Fernandes Sardinha, pela Bula SUPER SPECULA MILITANTIS ECLESIAE, de 25 de fevereiro de 1551, o primeiro Bispo do Brasil. A criação da Diocese de S. Salvador, sufragânea de Lisboa, completava a estrutura administrativa do Governo Geral, instituído para corrigir os defeitos do sistema das capitanias hereditárias. É claro que antes da criação do Bispado de S. Salvador lá havia atividades eclesiásticas no Brasil. Na própria armada do Descobrimento, havia frades e, como é sabido, foi um franciscano quem rezou as duas primeiras missas no Brasil. Também a expedição de Martim Afonso de Sousa que chegou à nossa região, em 1532, trouxe dois franciscanos aos quais se atribui a igreja de Santo Antônio, construída próxima à atual Matriz de São Vicente. Há ainda um documento de D. João III, em 1534, que informa sobre um vigário e quatro capelães que iam para Pernambuco, configurando-se, assim, o provimento dos primeiros clérigos nomeados para o Brasil. A criação da paróquia de S. Vicente é de 30 de junho de 1535, sendo a primeira da Capitania de S. Vicente.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Gap(40),
              Image.asset(
                'assets/history_jesuitas.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
