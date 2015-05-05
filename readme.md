# RPG-karaktärer #

Den här uppgiften går ut på att skriva en del av mjukvaran i ett RPG-spel.

## Bedömningsmatris ##

## Planering ##

| Förmågor                         | E 																																   | C | A |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|---|---|
| Aktivitetsdiagram och pseudokod  | Du använder pseudokod och/eller aktivitetsdiagram för att planera dina uppgifter utifrån exempel, eller i samråd med utbildaren.  | Som för E, men utan exempel eller handledning |   |
| Anpassning					   | Du anpassar med viss säkerhet planeringen till uppgiften 																		   |   | Som för E, men med säkerhet
| Utformning                       | Du väljer med viss säkerhet lämpliga kontrollstrukturer, metoder, variabler, datastrukturer och algoritmer | | Som för E, men du väljer med säkerhet, och motiverar utförligt dina val.|
| Utvärdering | Med viss säkerhet utvärderar du, med enkla omdömen, programmets prestanda, använder datalogiska begrepp, och bedömer din egen förmåga | som för E, men med nyanserade omdömen | Som för C, men med säkerhet, och med förbättringsförslag

## Syntax och Teori ##
| Förmågor                                       | E 																			| C | A |
|------------------------------------------------|------------------------------------------------------------------------------|---|---|
| Datatyper					                     | Du kan redogöra för och använda de vanligaste datatyperna                    |   |   |
| Grundläggande syntax		                     | Du kan redogöra för och använda programmeringsspråkets grundläggande syntax  |   |   |
| Variablers synlighet och livslängd             | Du kan redogöra för variablers synlighet och livslängd                       |   |   |

## Kodning och kodningsstil ##

| Förmågor                                      | E                                                                         | C                                               | A                                              |
|-----------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| Komplexitet									| Du kan skriva enkla program                                               | Du kan skriva lite mer avancerade program       | Du kan skriva komplexa program
| Sekventiell- & funktionsbaserad programmering | Du använder dig av sekventiell programmering och fördefinerade funktioner | Du skapar och använder enkla funktioner         | Du skapar mer komplexa funktioner              |
| Struktur		 				                | Du skriver kod som är delvis strukturerad, har en konsekvent kodningsstil och tydlig namngivning | Som för E, men du skriver kod som är helt strukturerad |   			   |
| Felsökning                                    | Du felsöker på egen hand enkla syntaxfel | Som för E, men systematiskt, och dessutom även körtidsfel och programmeringslogiska fel | Som för C, men med effektivitet   	   |
| Undantagshantering                            |     																		| Du validerar användardata						  | Som för C, men du skriver även kod som använder undantagshantering |
| Dokumentering 								| Du skriver kod som är delvis kommenterad									|  												  | Du skriver kod som är utförligt kommenterad    |


## Datastrukturer ##

| Förmågor        | E 														   | C 																     | A 									 |
|-----------------|------------------------------------------------------------|---------------------------------------------------------------------|---------------------------------------|
| Hashtabeller    | Du kan redogöra för vad hashtabeller (Hash) är             | Du kan använda dig av hashtabeller 							     |   									 |


## Algoritmer ##


## Uppgiftsbeskrivning ##


Du har fått ansvaret att skriva en del av mjukvaran för ett Rollspel.
Dessvärre har din chef ingen koll på objektorienterad programmering (vilket hade varit en bra lösning för det här problemet).
Han tvingar dig därför att jobba med Hashklassen.

Du skall skriva tre funktioner: `create_character`, `describe_character` & `hit_character`

`create_character` tar ett par attribut som argument, och returnerar en Hash innehållandes attributen.

`print_format_character` tar en "Character hash" som argument, och returnerar en sträng som är formaterad för utskrift.

`hit_character` tar en "Character hash", och antal hitpoints som argument, och returnerar en ny hash där hitpoints minskats med motsvarande poäng.

### Exempel ###

#### Ruby ####
    
    ```ruby
    thurgar = create_character(first_name: 'Thurgar', last_name: 'Baneswolfe' klass: 'Cleric' hitpoints: 109, weapon: 'Quarterstaff')
    #=> { first_name: 'Thurgar', last_name: 'Baneswolfe', klass: 'Cleric', hitpoints: 109, weapon: 'Quarterstaff' }

    describe_character(character: thurgar) #=> 'Thurgar Baneswolfe the Cleric wields a Quarterstaff\n He appears quite healthy'

    thurgar = hit_character(character: thurgar, damage: 32)
    #=> { first_name: 'Thurgar', last_name: 'Baneswolfe', klass: 'Cleric', hitpoints: 77, weapon: 'Quarterstaff' }
    ```
## Genomförande ##

### Versionshantering ###

Gör en `fork` av repot. Klona sen ner till din dator. Kom ihåg att checka in dina ändringar och synka med GitHub.

### Flödesschema ###

Innan du börjar koda ska du skapa ett flödesschema för programmet.
När du känner att du har ett fungerande flödesschema, be läraren att kolla på det.

### Kodning ###

Programmet skall utvecklas med hjälp av testerna.

##### Ruby #####

Kör `bundle install` för att installera alla dependencies (och `rbenv rehash` om rspec inte redan var installerat)

Skapa funktionerna i `lib/rpg_character.rb`

Testerna finns i `spec/create_character_spec.rb` & `spec/print_format_character_spec.rb`

Kör `rspec funktionens_namn_spec` för att köra testerna för den specifika funktionen, eller enbart `rspec`för att köra samtliga testfiler .

## Tips och länkar ##

* Om du inte kan beskriva lösningen i ord kommer det vara så gott som omöjligt att skapa ett flödesschema
* Fundera på vilka variabler som behövs
* Testa flödesschemat med hjälp av penna och papper

### Ruby ###

[Learn Ruby the Hard Way - Exercise 39: Hashes, Oh Lovely Hashes](http://learnrubythehardway.org/book/ex39.html)
