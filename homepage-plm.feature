"""

"homepage": [{
		"top-banner": {
			"@id": "/api/pagelayouts/1",
			"@type":"widget",
			"banner": "https://img.saveur-biere.com/,patrick/2018_03_08_15_58_2601_Top_Banner_StPatrick_Desktop.png",
			"title": "La St Patrick s'invite sur Saveur bière",
			"button":{
				"button-title":"Je commande",
				"button-link":"https://www.saveur-biere.com/fr/81-saint-patrick",
				},
			"custom-css": ".featured { display:none;}
					.new_homebanner .banner_footerblock .banner_more a { color:#000;}
					@media screen and (max-width: 480px) {
					.new_homebanner .homebanner .banner_textblock 
                      {max-width: 100% !important;}}
					.featured a {     background-color: #fabd0f;}
					.featured a:after { border-color: transparent #fabd0f transparent transparent;}
					.featured a:before { border-color: transparent transparent #fabd0f transparent;}
					.new_homebanner .homebanner {
					background-color: #ffffff;}",
			"active":true,
			"createdAt": "timestamp"
		},
		"product-carousel": {
			"@id": "/api/pagelayouts/2",
			"@type":"widget",
			"banner": "https://img.saveur-biere.com/home/cms/homepage/2017-02-09_15_51_43_Nouveautes_Visuel_v4.jpg",
			"title": "Nouveautés",
			"button":{
				"button-title":"Je découvre !",
				"button-link":"https://www.saveur-biere.com/fr/9-nouveaute/o-date",
				},
			"custom-css": "null",
			"active":true,
			"createdAt": "timestamp"
		},
		"double-banner": {
			"@id": "/api/pagelayouts/3",
			"@type":"widget",
			"banner-left" :"https://img.saveur-biere.com/patrick/2018_03_09_15_06_20Double_Banners_Beerkit_Futs.png",
			"button-left":{
				"button-title":"Je commande !",
				"button-link":"https://www.saveur-biere.com/fr/beer-kit/27288-beer-kit-je-brasse-ma-biere-de-printemps.html"
				},
			"banner-right" :"https://img.saveur-biere.com/patrick/2018_03_09_15_10_18Double_Banners_StPat_Futs.png",
			"button-right":{
				"button-title":"Je commande !",
				"button-link":"https://www.saveur-biere.com/fr/4-futs-de-biere"
				},
			"active":true,
			"createdAt":"timestamp"
		},
		"html": {
			"@id": "/api/pagelayouts/4",
			"@type":"widget",
			"html":"<div class="fastshipping_block">
       	 			 <div class="fastshipping_antibreakage clearfix">
            		<div class="icon">
            		<a href="https://www.saveur-biere.com/fr/lp/25-cadeaux">
            		<img src="https://img.saveur-biere.com/home/cms/page_cms/2018_02_06_14_39_29picto_cadeau_v2.png"; alt="cadeaux"; width="90%">
            		</a>
            		</div>
            		<div class="left_text">
            		<a href="https://www.saveur-biere.com/fr/lp/25-cadeaux">
                		<h1 class="header">Trouvez le cadeau idéal<span class="remove_mobileversion"></span> </h1>
						<p>Coffret, Beerkit, Carte cadeau... peu importe l'occasion, nous avons le cadeau qu'il vous faut !</p>
                    </a>
                	</div>
          			</div>
					</div>",
			"active":true,
			"CreatedAt":"timestamp"
		},
		"manufacturer-slider": {
			"@id": "/api/pagelayouts/5",
			"@type": "widget",
			"active": true,
			"CreatedAt":"timestamp",
			"Title":"Nos Brasseries",
			"Manufacturer":{
				"name": "Ninkasi",
				"manufacturer-type" : "Brasserie",
				"link": "https://img.saveur-biere.com/home/cms/homepage/brewery_banners/2017_06_01_12_57_18ninkasi.jpg",
				"idbrewery": 1378
				},

		},
		"mobile-flash-banner":{
			"@id": "/api/pagelayouts/6",
			"@type": "widget",
			"active": true,
			"CreatedAt":"timestamp",
			"title":"Livraison offerte",
			"flash-banner": "https://img.saveur-biere.com/pimp-my-glass/2017_06_06_13_05_21Flash_Banner_Pimp359v2.gif",
			"banner-link":"https://www.saveur-biere.com/fr/lp/25-cadeaux"
		},
		"brand-block":{
			"@id": "/api/pagelayouts/7",
			"@type": "widget",
			"active": true,
			"CreatedAt":"timestamp",
			"title":"Bestel eens wat anders, bestel eens een Beck's!",
			"banner": "https://assets.hopt.eu/home/cms/homepage/2016-12-28_08_53_05_becks-products.jpg",
			"logo":"https://assets.hopt.eu/home/cms/homepage/2016-12-28_08_52_53_becks-brand.jpg",
			"button":{
				"link": "https://www.hopt.nl/15_brasserie-beck",
				"name":"Bestel direct"
			},
			"css":"null"
		}
}]

"""
