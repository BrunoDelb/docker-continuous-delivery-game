# Indicateurs techniques

## Le Biais Institutionnel EMA 9

Le Biais Institutionnel EMA 9 est une stratégie de trading basée sur le principe de l’EMA (Exponential Moving Average). Le Biais Institutionnel EMA 9 est un système de trading qui suit l’EMA 9 à court terme pour déterminer les points d’entrée et de sortie. L’EMA est une moyenne mobile exponentielle qui est utilisée pour suivre la tendance à court terme des prix des actifs sur le marché.

Le Biais Institutionnel EMA 9 est une stratégie de trading basée sur l’identification d’un seuil de prise ou de sortie. Lorsque le prix d’un actif atteint le seuil de prise, le trader peut entrer dans une position longue. Une fois que le prix d’un actif atteint le seuil de sortie, le trader peut fermer sa position et prendre ses bénéfices.

Le système est considéré comme un moyen efficace de suivre et de profiter des tendances du marché à court terme. Les traders peuvent utiliser le Biais Institutionnel EMA 9 pour prendre des positions longues ou courtes. En outre, le système peut être utilisé pour déterminer des points d’entrée et de sortie pour les traders qui souhaitent utiliser des stratégies plus complexes basées sur l’analyse technique.

Exemple
Un exemple de biais institutionnel EMA 9 en trading crypto serait le fait de suivre le mouvement des prix des cryptomonnaies sur une période de 9 jours en regardant leur moyenne exponentielle mobile (EMA). Si le prix est supérieur à sa moyenne mobile, cela pourrait indiquer une tendance à la hausse et un investisseur pourrait choisir d'acheter des actifs crypto. Si le prix est inférieur à sa moyenne mobile, cela pourrait indiquer une tendance à la baisse et un investisseur pourrait choisir de vendre des actifs crypto.

Utilisation dans TradingView
Pour ajouter l'EMA 9 à Tradingview, vous devez d'abord cliquer sur le menu Analyse situé en haut à droite de votre écran.
Une fois que vous avez cliqué sur Analyse, cliquez sur l'onglet Indicateurs. Il affichera une liste d'indicateurs disponibles.
Trouvez l'option EMA (moyenne mobile exponentielle) et cliquez dessus.
Une fois que vous avez cliqué sur l'EMA, une fenêtre contextuelle s'ouvrira. Vous pouvez entrer le nombre de jours sur lequel vous souhaitez appliquer l'EMA. Entrez 9 comme valeur et cliquez sur OK.
Vous verrez maintenant l'EMA 9 affichée sur votre graphique. Vous pouvez personnaliser sa couleur et sa largeur si vous le souhaitez.
Historique
Le 18 janvier 2020, le prix de la crypto-monnaie Ethereum était de 139,14 é
.
Le 5 février 2020, le prix de la crypto-monnaie Ethereum était de 188,09 é
.
Le 28 mars 2020, le prix de la crypto-monnaie Ethereum était de 185,48 é
.
Le 18 avril 2020, le prix de la crypto-monnaie Ethereum était de 173,45 é
.
Le 12 juin 2020, le prix de la crypto-monnaie Ethereum était de 230,19 é
.
Le 5 juillet 2020, le prix de la crypto-monnaie Ethereum était de 226,75 é
.
Le 22 août 2020, le prix de la crypto-monnaie Ethereum était de 412,01 é
.
Le 8 septembre 2020, le prix de la crypto-monnaie Ethereum était de 442,53 é
.
Le 8 octobre 2020, le prix de la crypto-monnaie Ethereum était de 408,64 é
.
Le 3 novembre 2020, le prix de la crypto-monnaie Ethereum était de 515,33 é
.



## MACD

MACD (Moving Average Convergence / Divergence) a pour objectif de mesurer la force et la direction de la tendance.

La ligne de signal du MACD est un signal pour entrer ou sortir d'un trace.

Il correspond à la différence entre deux moyennes mobiles : une lente et une rapide.

En ajoutant une moyenne mobile à long terme, le trader dispose d'une ligne de signal pour déterminer quand entrer ou sortir d'un trade.

Interprétation :
- S'il y a une divergence entre le MACD et le prix, cela peut indiquer une inversion de la tendance. 

Exemple de stratégie :
- Lorsque le MACD croise à la hausse, c'est un signal d'achat. Remarque : Dans un marché haussier, le MACD devrait rester au-dessus de sa ligne de signal.
- Lorsque le MACD croise à la baisse, c'est un signal de vente. Remarque : Dans un marché baissier, le MACD devrait rester en dessous de sa ligne de signal.

Sur TradingView :
- Sélectionner la paire (exemple : BTC / USDT),
- Ajouter l'indicateur "MACD".
- `FastLength` : c'est l'EMA à court terme (12 jours par défaut),
- `Slowlength` : c'est l'EMA à long terme (26 jours par défaut),
- `MACDlength` : c'est longueur de la ligne de signal (9 jours par défaut).

## L'oscillateur W%R(EMA)13

L'oscillateur W%R (EMA) 13 permet de détecter des niveaux de surachat et de survente sur le marché.

Il consiste à comparer le prix à son niveau le plus élevé et le plus bas des 13 dernières périodes.

Pour cela, il utilise une moyenne mobile exponentielle (EMA) 13 périodes.

Calcul :
- Comparer l'EMA 13 périodes à la plus haute et la plus basse des 13 dernières périodes.
- La valeur varie de 0 à -100.

Interprétation :
- Si l'indicateur est supérieur à -20, c'est un niveau de surachat : c'est un signal pour prendre des positions courtes,
- S'il est inférieur à -80, c'est un niveau de survente : c'est un signal pour prendre des positions longues.

Exemple de stratégie :
- Si le W%R(EMA)13 passe sous la ligne de signal à -50, prendre une position de vente. 
- S'il remonte au-dessus de -50, prendre une position d'achat.

## Le W%R traditionnel (14)

Le W%R traditionnel a pour objectif de déterminer la direction de la tendance et sa force, d'identifier des moments où une tendance pourrait s'inverser.

Calcul :
- Il est calculé avec la formule : (prix le plus haut de la période de trading) / (prix le plus bas de la même période) * 100
- Par exemple, si le prix le plus haut est 5000 et le prix le plus bas 4500, cela donne un W%R égal à `(5000/4500) x 100 = 111,11 %`.

Interprétation :
- Si le W%R est supérieur à 80%, c'est un signal de surachat : c'est un signal de vente,
- S'il est inférieur à 20%, c'est un signal de survente : c'est un signal d'achat.

Exemple de stratégie :
- Si le prix est en dessous des niveaux de résistance des 14 jours, c'est un signal d'achat. 
- Fixer un stop-loss à seulement quelques points en dessous du niveau de résistance pour limiter la perte potentielle. 
- Une fois le prix remonté au-dessus du niveau de résistance, prendre les profits et fermer la position.

