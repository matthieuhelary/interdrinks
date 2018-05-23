Feature: Improve footer
As a customer
I need to get more information about website 

@footer @saveur-biere @french
Scenario: Insurance footer section
	Given I'm on saveur-biere.com/fr/
	Then I should have in the insurance footer section those elements which send to:
	|title			|link					|
	|Fast shipping		|"/172-conditions-de-livraison.html"	|
	|The club		|"/my-account/club"			|
	|eKomi			|/					|
	|+1500 beers		|"/3-bouteilles"			|

Scenario: Ekomi mark
	Given I'm on saveur-biere.com/fr/
	And I'm in insurance footer section
	Then "Ekomi" mark should be dynamic

Scenario: Ekomi pop in
	Given I'm on saveur-biere.com/fr/
	And I'm in insurance footer section
	When I click on "Ekomi"
	Then Ekomi pop in should open 

Scenario: Navigation section
	Given I'm on saveur-biere.com/fr/
	Then I should have in the navigation footer section those elements which send to:
	|column				|title				|link												|
	|Customer service		|Contact us via Email		|"/contact" 						|
	|""				|+33 (0)3.20.73.47.76		|/							|
	|""				|Frequetly ask questions	|"/85-faq.html"						|
	|""				|Referral			|"/parrainage"						|
	|About us			|Who are we ? 			|"/168-qui-sommes-nous.html"				|
	|""				|The team			|"/173-equipe-saveur-biere.html"			|
	|""				|Recruitment			|"/86-recrutement.html"					|
	|""				|Saveur Bière, le Drive		|"/89-saveur-biere-le-drive.html"			|
	|Terms				|Terms of sale			|"/48-conditions-generales-de-vente.html"		|
	|""				|Delivery information 		|"/172-conditions-de-livraison.html"			|
	|""				|Kegs returns			|"/88-retour-consigne-futs-6l-perfectdraft.html"	|
	|""				|Legal information		|"/176-mentions-legales.html"				|
	|""				|Privacy policy 		|"/193-politique-de-confidentialite.html"		|
	|""				|Cookies policy 		|"/194-politique-relative-aux-cookies.html"		|
	|""				|Cookies setup 			|"/"							|
	|Follow us			|Le Mag Saveur Bière		|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on saveur-biere.com/fr/
	When I click on "Préférences cookies"
	Then a pop in should open 


Scenario: Choose Language
	Given I'm on saveur-biere.com/fr/
	And I'm in navigation section
	Then I should have below social network logos a place to choose Language
	When I click on little arrow
	Then I should have the choice between :
	|English	|
	|Français	|


Scenario: Social networks
	Given I'm on saveur-biere.com/fr/
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/SaveurBiere 			|
	|Instagram	|https://www.instagram.com/saveurbiere/ 		|
	|Twitter	|https://twitter.com/SaveurBiere 			|
	|Ratebeer	|https://www.ratebeer.com/p/saveur-bierecom/25062/ 	|

Scenario: Payment method section
	Given I'm on saveur-biere.com/fr/
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|
	When I click on one of these logo
	Then I should arrive on "/content/5-paiement-securise"

Scenario: Shipping method section
	Given I'm on saveur-biere.com/fr/
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Mondial Relay	|
	|GLS		|
	When I click on one of these logo
	Then I should arrive on "/172-conditions-de-livraison.html"

Scenario: Newsletter subscription section
	Given I'm on saveur-biere.com/fr/
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Saveur-biere.com/fr/ Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on saveur-biere.com/fr/
	And I'm in They speak about us section
	Then I should see the following logo :
	|TF1		|
	|BFMTV		|
	|Knobini	|
	|Le Figaro	|
	|20 minutes	|
	|VSD		|
	|ELLE		|
	


@footer @hopt.nl
Scenario: Insurance footer section
	Given I'm on hopt.nl
	Then I should have in the insurance footer section those elements which send to:
	|title		|link				|
	|Fast shipping	|"/45-verzendcondities.html"	|
	|The club	|"/my-account/club"		|
	|Trust pilot	|/				|
	|+1500 beers	|"/3-flessen"			|


Scenario: Trust pilot mark
	Given I'm on on hopt.nl
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt.nl
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link							|
	|Customer service	|Contact us via Email		|/							|
	|""			|+31 (0)85-888 08 30		|/							|
	|""			|Frequetly ask questions	|"/52-hopt-veel-gestelde-vragen.html"			|
	|""			|Referral			|"/nodig-je-vrienden-uit"				|
	|About us		|Who are we ? 			|"/44-over-HOPT.html"					|
	|Terms			|Terms of sale			|"/48-algemene-voorwaarden-hopt.html"			|
	|""			|Delivery information 		|"/45-verzendcondities.html"				|
	|""			|Legal information		|"/47-hopt-bedrijfsgegevens.html"			|
	|""			|Disclaimer			|"/55-hopt-disclaimer.html"				|
	|""			|Privacy policy 		|"/193-privacybeleid.html"				|
	|""			|Cookies policy 		|"/194-cookiebeleid.html"				|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on hopt.nl
	When I click on "Cookie instelingen"
	Then a pop in should open 


Scenario: Social networks
	Given I'm on hopt.nl
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link						|
	|Facebook	|https://www.facebook.com/HOPT.nl/ 		|
	|Instagram	|https://www.instagram.com/hopt/		|
	|Twitter	|https://twitter.com/HOPT_craft			|
	|Ratebeer	|https://www.ratebeer.com/p/goto/68783/ 	|

Scenario: Payment method section
	Given I'm on hopt.nl
	And I'm in Payment method section
	Then I should see the following logo :
	|iDeal		|
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt.nl
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/45-verzendcondities.html"

Scenario: Newsletter subscription section
	Given I'm on hopt.nl
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt.nl Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on hopt.nl
	And I'm in They speak about us section
	Then I should see the following logo :
	|rtlnieuws		|
	|AD 			|
	|BNR Nieuwsradio	|
	|Dutch cowboys		|
	|lekker			|
	|ELLE			|



@footer @hopt.be
Scenario: Insurance footer section
	Given I'm on hopt.be
	Then I should have in the insurance footer section those elements which send to:
	|title		|link				|
	|Fast shipping	|"/75-verzendcondities.html"	|
	|The club	|"/my-account/club"		|
	|Trust pilot	|/				|
	|+1500 beers	|"/3-flessen"			|


Scenario: Trust pilot mark
	Given I'm on on hopt.be
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt.be
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link							|
	|Customer service	|Contact us via Email		|/							|
	|""			|+32 (0)16-94 11 77		|/							|
	|""			|Frequetly ask questions	|"/78-hopt-veel-gestelde-vragen.html"			|
	|""			|Referral			|"/nodig-je-vrienden-uit"				|
	|About us		|Who are we ? 			|"/74-over-HOPT.html"					|
	|Terms			|Terms of sale			|"/77-algemene-voorwaarden-hopt.html"			|
	|""			|Delivery information 		|"/75-verzendcondities.html"				|
	|""			|Legal information		|"/76-hopt-bedrijfsgegevens.html"			|
	|""			|Disclaimer			|"/79-hopt-disclaimer.html"				|
	|""			|Privacy policy 		|"/193-privacybeleid.html"				|
	|""			|Cookies policy 		|"/194-cookiebeleid.html"				|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on hopt.be
	When I click on "Cookie instelingen"
	Then a pop in should open 


Scenario: Social networks
	Given I'm on hopt.be
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/HOPT.nl/ 			|
	|Instagram	|https://www.instagram.com/hopt/			|
	|Twitter	|https://twitter.com/HOPT_craft				|
	|Ratebeer	|https://www.ratebeer.com/p/goto/68783/ 		|

Scenario: Payment method section
	Given I'm on hopt.be
	And I'm in Payment method section
	Then I should see the following logo :
	|Bancontact	|
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt.be
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/75-verzendcondities.html"

Scenario: Newsletter subscription section
	Given I'm on hopt.be
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt.be Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on hopt.be
	And I'm in They speak about us section
	Then I should see the following logo :
	|N	|



@footer @hopt.it
Scenario: Insurance footer section
	Given I'm on hopt.it
	Then I should have in the insurance footer section those elements which send to:
	|title		|link					|
	|Fast shipping	|"/45-condizioni-di-consegna.html"	|
	|The club	|"/my-account/club"			|
	|Trust pilot	|/					|
	|+1500 beers	|"/3-bottiglie"				|


Scenario: Trust pilot mark
	Given I'm on on hopt.it
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt.it
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link											|
	|Customer service	|Contact us via Email		|/							|
	|""			|+39 (0)69-480 41 44		|/							|
	|""			|Frequetly ask questions	|"/52-hopt-domande-frequenti.html"			|
	|""			|Referral			|"/invita-un-amico"					|
	|About us		|Who are we ? 			|"/44-chi-siamo.html"					|
	|Terms			|Terms of sale			|"/48-condizioni-generali-di-vendita.html"		|
	|""			|Delivery information 		|"/45-condizioni-di-consegna.html"			|
	|""			|Legal information		|"/47-menzioni-legali.html"				|
	|""			|Disclaimer			|"/55-hopt-disclaimer.html"				|
	|""			|Privacy policy 		|"/193-politica-della-privacy.html"			|
	|""			|Cookies policy 		|"/194-politica-dei-cookies.html"			|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on hopt.it
	When I click on "Cookie setup"
	Then a pop in should open 


Scenario: Social networks
	Given I'm on hopt.it
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/hopt.italia/ 			|
	|Instagram	|https://www.instagram.com/hopt/			|
	|Twitter	|https://twitter.com/HOPT_craft				|


Scenario: Payment method section
	Given I'm on hopt.it
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt.it
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/45-condizioni-di-consegna.html"

Scenario: Newsletter subscription section
	Given I'm on hopt.it
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt.it Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on hopt.it
	And I'm in They speak about us section
	Then I should see the following logo :
	|GQ				|
	|Grazia 			|
	|Vanity Fair 			|
	|Panorama			|
	|ELLE				|
	|Libero quotiano.it		|
	|A Tavola			|




@footer @hopt.es
Scenario: Insurance footer section
	Given I'm on hopt.es
	Then I should have in the insurance footer section those elements which send to:
	|title		|link				|
	|Fast shipping	|"/45-Terminos-de-entrega.html"	|
	|The club	|"/my-account/club"		|
	|Trust pilot	|/				|
	|+1500 beers	|"/3-botellas"			|


Scenario: Trust pilot mark
	Given I'm on on hopt.es
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt.es
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link							|
	|Customer service	|Contact us via Email		|/							|
	|""			|+34 (0)91 143 8041		|/							|
	|""			|Frequetly ask questions	|"/52-preguntas-más-frecuentes.html"			|
	|""			|Referral			|"/invita-a-tus-amigos"					|
	|About us		|Who are we ? 			|"/44-Sobre-nosotros.html"				|
	|Terms			|Terms of sale			|"/48-terminos-y-condiciones-de-venta.html"		|
	|""			|Delivery information 		|"/45-Terminos-de-entrega.html"				|
	|""			|Legal information		|"/"							|
	|""			|Disclaimer			|"/55-descargo-de-responsabilidad.html"			|
	|""			|Privacy policy 		|"/193-politica-de-privacidad.html"			|
	|""			|Cookies policy 		|"/194-politica-de-cookies.html"			|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on hopt.es
	When I click on "Cookie setup"
	Then a pop in should open 

Scenario: Social networks
	Given I'm on hopt.es
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/HOPT.es			|
	|Instagram	|https://www.instagram.com/hopt/			|
	|Twitter	|https://twitter.com/HOPT_craft				|


Scenario: Payment method section
	Given I'm on hopt.es
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt.es
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/45-Terminos-de-entrega.html"	

Scenario: Newsletter subscription section
	Given I'm on hopt.es
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt.es Zaius list 
	And I should see a message to confirm registration 



@footer @hopt-shop.de
Scenario: Insurance footer section
	Given I'm on hopt-shop.de
	Then I should have in the insurance footer section those elements which send to:
	|title		|link					|
	|Fast shipping	|"/45-lieferung.html"			|
	|The club	|"/my-account/club"			|
	|Trust pilot	|/					|
	|+1500 beers	|"/3-flaschen-bier"			|


Scenario: Trust pilot mark
	Given I'm on on hopt-shop.de
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt-shop.de
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link							|
	|Customer service	|Contact us via Email		|/							|
	|""			|+49 (0)32 221 745 070		|/							|
	|""			|Frequetly ask questions	|"52-faq.html"						|
	|""			|Referral			|"/einem-freund-empfehlen"				|
	|About us		|Who are we ? 			|"/44-ueber-HOPT.html"					|
	|Terms			|Terms of sale			|"/48-agb.html"						|
	|""			|Delivery information 		|"/45-lieferung.html"					|
	|""			|Legal information		|"/47-impressum.html"					|
	|""			|Disclaimer			|"/55-disclaimer.html"					|
	|""			|Privacy policy 		|"/193-datenschutzbestimmungen.html"			|
	|""			|Cookies policy 		|"/194-bestimmungen-bezüglich-cookies.html"		|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|

Scenario: Cookies pop in
	Given I'm on hopt-shop.de
	When I click on "Cookie Einstellungen"
	Then a pop in should open 

Scenario: Social networks
	Given I'm on hopt-shop.de
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/HOPT.world/ 			|
	|Instagram	|https://www.instagram.com/hopt/			|
	|Twitter	|https://twitter.com/HOPT_craft				|


Scenario: Payment method section
	Given I'm on hopt-shop.de
	And I'm in Payment method section
	Then I should see the following logo :
	|Sofrot		|
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt-shop.de
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/45-lieferung.html"

Scenario: Newsletter subscription section
	Given I'm on hopt-shop.de
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt-shop.de Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on hopt-shop.de
	And I'm in They speak about us section
	Then I should see the following logo :
	|Der Tagesspiegel	|




@footer @hopt.se
Scenario: Insurance footer section
	Given I'm on hopt.se
	Then I should have in the insurance footer section those elements which send to:
	|title		|link					|
	|Fast shipping	|"/45-terms-of-delivery.html"		|
	|The club	|"/my-account/club"			|
	|Trust pilot	|/					|
	|+1500 beers	|"/3-bottled-beer"			|


Scenario: Trust pilot mark
	Given I'm on on hopt.se
	And I'm in insurance footer section
	Then "Trust pilot" mark should be dynamic


Scenario: Navigation section
	Given I'm on on hopt.se
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link											|
	|Customer service	|Contact us via Email		|/							|
	|""			|+46 776 766 180		|/							|
	|""			|Frequetly ask questions	|"/52-faq.html"						|
	|""			|Referral			|"/teel-a-friend"					|
	|About us		|Who are we ? 			|"/44-about-hopt.html"					|
	|Terms			|Terms of sale			|"/48-terms-and-conditions-of-use.html"			|
	|""			|Delivery information 		|"/45-terms-of-delivery.html"				|
	|""			|Legal information		|"/47-Company-Information.html"				|
	|""			|Disclaimer			|"/55-disclaimer-hopt.html"				|
	|""			|Privacy policy 		|"/195-privacy-policy.html"				|
	|""			|Cookies policy 		|"/196-cookies-policy.html"				|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Allez Hop 			|"/magazine"						|

Scenario: Cookies pop in
	Given I'm on hopt.se
	When I click on "Cookie setup"
	Then a pop in should open 


Scenario: Social networks
	Given I'm on hopt.se
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link						|
	|Facebook	|https://www.facebook.com/HOPT.world/ 		|
	|Instagram	|https://www.instagram.com/hopt/		|
	|Twitter	|https://twitter.com/HOPT_craft			|


Scenario: Payment method section
	Given I'm on hopt.se
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|

Scenario: Shipping method section
	Given I'm on hopt.se
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost	|
	|Dpd		|
	When I click on one of these logo
	Then I should arrive on "/45-terms-of-delivery.html"

Scenario: Newsletter subscription section
	Given I'm on hopt.se
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Hopt.se Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on hopt.se
	And I'm in They speak about us section
	Then I should see the following logo :
	|HOPS				|



@footer @saveur-biere @english
Scenario: Insurance footer section
	Given I'm on saveur-biere.com/en/
	Then I should have in the insurance footer section those elements which send to:
	|title		|link					|
	|Fast shipping	|"/172-shipping-conditions.html"	|
	|The club	|"/my-account/club"			|
	|eKomi		|/					|
	|+1500 beers	|"/3-bottled-beer"			|

Scenario: Ekomi mark
	Given I'm on saveur-biere.com/en/
	And I'm in insurance footer section
	Then "Ekomi" mark should be dynamic

Scenario: Ekomi pop in
	Given I'm on saveur-biere.com/en/
	And I'm in insurance footer section
	When I click on "Ekomi"
	Then Ekomi pop in should open 

Scenario: Navigation section
	Given I'm on saveur-biere.com/en/
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link												|
	|Customer service	|Contact us via Email		|"/contact" 					|
	|""			|+33 (0)3.20.73.47.76		|/						|
	|""			|Frequetly ask questions	|"/85-faq.html"					|
	|""			|Referral			|"/tell-a-friend"				|
	|About us		|Who are we ? 			|"/168-Who-are-we.html"				|
	|""			|The team			|"/170-who-saveur-biere.html"			|
	|""			|Recruitment			|"/86-Recruitment.html"				|
	|Terms			|Terms of sale			|"/48-terms-and-conditions-of-use.html"		|
	|""			|Delivery information 		|"/172-shipping-conditions.html"		|
	|""			|Kegs returns			|"/88-kegs-returns.html"			|
	|""			|Legal information		|"/176-legal-mentions.html"			|
	|""			|Privacy policy 		|"/193-privacy-policy.html"			|
	|""			|Cookies policy 		|"/194-cookies-policy.html"			|
	|""			|Cookies setup 			|/						|
	|Follow us		|Le Mag Saveur Bière		|"/magazine"					|


Scenario: Cookies pop in
	Given I'm on saveur-biere.com/en/
	When I click on "Cookie setup"
	Then a pop in should open 


Scenario: Choose Language
	Given I'm on saveur-biere.com/en/
	And I'm in navigation section
	Then I should have below social network logos a place to choose Language
	When I click on little arrow
	Then I should have the choice between :
	|English	|
	|Français	|


Scenario: Social networks
	Given I'm on saveur-biere.com/en/
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/SaveurBiere 			|
	|Instagram	|https://www.instagram.com/saveurbiere/ 		|
	|Twitter	|https://twitter.com/SaveurBiere 			|
	|Ratebeer	|https://www.ratebeer.com/p/saveur-bierecom/25062/ 	|

Scenario: Payment method section
	Given I'm on saveur-biere.com/en/
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|
	When I click on one of these logo
	Then I should arrive on "/content/5-paiement-securise"

Scenario: Shipping method section
	Given I'm on saveur-biere.com/en/
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost		|
	|Mondial Relay		|
	|GLS			|
	When I click on one of these logo
	Then I should arrive on "/172-shipping-conditions.html"

Scenario: Newsletter subscription section
	Given I'm on saveur-biere.com/en/
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Saveur-biere.com/en/ Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on saveur-biere.com/en/
	And I'm in They speak about us section
	Then I should see the following logo :
	|TF1		|
	|BFMTV		|
	|Knobini	|
	|Le Figaro	|
	|20 minutes	|
	|VSD		|
	|ELLE		|
	


@footer @saveur-biere @belgique
Scenario: Insurance footer section
	Given I'm on saveur-biere.be
	Then I should have in the insurance footer section those elements which send to:
	|title		|link							|
	|Fast shipping	|"/172-conditions-de-livraison.html"			|
	|The club	|"/my-account/club"					|
	|eKomi		|/							|
	|+1500 beers	|"/3-bouteilles"					|

Scenario: Ekomi mark
	Given I'm on saveur-biere.be
	And I'm in insurance footer section
	Then "Ekomi" mark should be dynamic

Scenario: Ekomi pop in
	Given I'm on saveur-biere.be
	And I'm in insurance footer section
	When I click on "Ekomi"
	Then Ekomi pop in should open 

Scenario: Navigation section
	Given I'm on saveur-biere.be
	Then I should have in the navigation footer section those elements which send to:
	|column			|title				|link							|
	|Customer service	|Contact us via Email		|"/contact" 						|
	|""			|+32(0)16-94 11 66		|/							|
	|""			|Frequetly ask questions	|"/85-faq.html"						|
	|""			|Referral			|"/parrainage"						|
	|About us		|Who are we ? 			|"/168-qui-sommes-nous.html"				|
	|""			|The team			|"/173-equipe-saveur-biere.html"			|
	|""			|Recruitment			|"/86-recrutement.html"					|
	|""			|Saveur Bière, le Drive		|"/89-saveur-biere-le-drive.html"			|
	|Terms			|Terms of sale			|"/48-conditions-generales-de-vente.html"		|
	|""			|Delivery information 		|"/172-conditions-de-livraison.html"			|
	|""			|Kegs returns			|"/88-retour-consigne-futs-6l-perfectdraft.html"	|
	|""			|Legal information		|"/176-mentions-legales.html"				|
	|""			|Privacy policy 		|"/193-politique-de-confidentialite.html"		|
	|""			|Cookies policy 		|"/194-politique-relative-aux-cookies.html"		|
	|""			|Cookies setup 			|"/"							|
	|Follow us		|Le Mag Saveur Bière		|"/magazine"						|


Scenario: Cookies pop in
	Given I'm on saveur-biere.be
	When I click on "Préférences cookies"
	Then a pop in should open 


Scenario: Choose Language
	Given I'm on saveur-biere.be
	And I'm in navigation section
	Then I should have below social network logos a place to choose Language
	When I click on little arrow
	Then I should have the choice between :
	|English	|
	|Français	|


Scenario: Social networks
	Given I'm on saveur-biere.be
	When I click on such social network picto 
	Then I should arrive on the following url : 
	|picto		|link							|
	|Facebook	|https://www.facebook.com/SaveurBiere 			|
	|Instagram	|https://www.instagram.com/saveurbiere/ 		|
	|Twitter	|https://twitter.com/SaveurBiere 			|
	|Ratebeer	|https://www.ratebeer.com/p/saveur-bierecom/25062/ 	|

Scenario: Payment method section
	Given I'm on saveur-biere.be
	And I'm in Payment method section
	Then I should see the following logo :
	|Mastercard	|
	|Visa		|
	|Paypal		|
	When I click on one of these logo
	Then I should arrive on "/content/5-paiement-securise"

Scenario: Shipping method section
	Given I'm on saveur-biere.be
	And I'm in Shipping method secion
	Then I should see the following logo :
	|Chronopost		|
	|Mondial Relay		|
	|GLS			|
	When I click on one of these logo
	Then I should arrive on "/172-conditions-de-livraison.html"

Scenario: Newsletter subscription section
	Given I'm on saveur-biere.be
	And I'm in Newsletter subscription section
	When I enter my email in "Your email" field
	And I push "Subscribe" button
	Then my email should be added to Saveur-biere.be Zaius list 
	And I should see a message to confirm registration 

Scenario: They speak about us section
	Given I'm on saveur-biere.be
	And I'm in They speak about us section
	Then I should see the following logo :
	|TF1		|
	|BFMTV		|
	|Knobini	|
	|Le Figaro	|
	|20 minutes	|
	|VSD		|
	|ELLE		|
	
