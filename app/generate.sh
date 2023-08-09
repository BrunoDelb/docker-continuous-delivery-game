#!/bin/bash

cd ./_output/
rm *
cd ..
echo "Processing cryptobuzz..."
ruby deck.rb cryptobuzz
cd ./_output/
for file in card_*.svg; do
    mv "$file" "cryptobuzz-${file#card_}"
done
cd ..
echo "Processing consommateurs-oups..."
ruby deck.rb consommateurs-oups
cd ./_output/
for file in card_*.svg; do
    mv "$file" "consommateurs-oups-${file#card_}"
done
cd ..
echo "Processing consommateurs-finances..."
ruby deck.rb consommateurs-finances
cd ./_output/
for file in card_*.svg; do
    mv "$file" "consommateurs-finances-${file#card_}"
done
cd ..
echo "Processing consommateurs-usages..."
ruby deck.rb consommateurs-usages
cd ./_output/
for file in card_*.svg; do
    mv "$file" "consommateurs-usages-${file#card_}"
done
cd ..
echo "Processing hackers-avance..."
ruby deck.rb hackers-avance
cd ./_output/
for file in card_*.svg; do
    mv "$file" "hackers-avance-${file#card_}"
done
cd ..
echo "Processing hackers-securite..."
ruby deck.rb hackers-securite
cd ./_output/
for file in card_*.svg; do
    mv "$file" "hackers-securite-${file#card_}"
done
cd ..
echo "Processing hackers-tokeneconomie..."
ruby deck.rb hackers-tokeneconomie
cd ./_output/
for file in card_*.svg; do
    mv "$file" "hackers-tokeneconomie-${file#card_}"
done
cd ..
echo "Processing market-makers..."
ruby deck.rb market-makers
cd ./_output/
for file in card_*.svg; do
    mv "$file" "market-makers-${file#card_}"
done
cd ..
echo "Processing partenaires..."
ruby deck.rb partenaires
cd ./_output/
for file in card_*.svg; do
    mv "$file" "partenaires-${file#card_}"
done
cd ..
echo "Processing projets-securite..."
ruby deck.rb projets-securite
cd ./_output/
for file in card_*.svg; do
    mv "$file" "projets-securite-${file#card_}"
done
cd ..
echo "Processing projets-tokeneconomie..."
ruby deck.rb projets-tokeneconomie
cd ./_output/
for file in card_*.svg; do
    mv "$file" "projets-tokeneconomie-${file#card_}"
done
cd ..
echo "Processing regulateurs..."
ruby deck.rb regulateurs
cd ./_output/
for file in card_*.svg; do
    mv "$file" "regulateurs-${file#card_}"
done
cd ..
echo "Processing traders-oups..."
ruby deck.rb traders-oups
cd ./_output/
for file in card_*.svg; do
    mv "$file" "traders-oups${file#card_}"
done
cd ..
echo "Processing traders-risque..."
ruby deck.rb traders-risque
cd ./_output/
for file in card_*.svg; do
    mv "$file" "traders-risque-${file#card_}"
done
cd ..
echo "Processing traders-strategie..."
ruby deck.rb traders-strategie
cd ./_output/
for file in card_*.svg; do
    mv "$file" "traders-strategie-${file#card_}"
done
cd ..
