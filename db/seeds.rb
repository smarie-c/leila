# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username => "pokemon", :password => "aaaaaaaa", :password_confirmation => "aaaaaaaa")
Contact.create(:texte1 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Honoraire.create(:texte1 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Specialite.create(:texte1 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Index.create(:texte1 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 1",:texte2 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 2",:texte3 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 3",:texte4 => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 4")
Veille.create(:titre => "Renouvellement du CHSCT : l’anticipation est enfin possible !", :texte => "Selon l’article R.4613-6 du code du travail, le collège chargé de désigner les membres du CHSCT doit être réuni dans les 15 jours de l’expiration des mandats des représentants de cette institution. Cette disposition était interprétée littéralement par la jurisprudence depuis un arrêt du 14 janvier 2004 de sorte qu’organiser un scrutin quelques jours avant l’échéance des mandats emportait la nullité des élections.

Dans un arrêt du 8 octobre 2014 (n°13-60.262), la Cour de cassation revient sur cette jurisprudence rigide et précise que  « si le renouvellement des membres du CHSCT ne peut avoir pour effet de mettre fin aux mandats en cours avant leur date d’expiration, l’employeur, afin d’assurer la permanence de l’institution, peut réunir le collège désignatif avant le terme ultime de ces mandats, les désignations ainsi effectuées ne prenant effet qu’à ce terme ».

Dans ces conditions, il y a lieu de considérer :

 1. Que les élections anticipées ne sont plus frappées de nullité

2. Que Les nouveaux représentants devront certes attendre l’expiration des mandats des représentants pour entrer en fonction, mais bénéficieront toutefois de la protection statutaire dès le jour de leur désignation.

Ce revirement de jurisprudence met donc fin à la vacance imposée des sièges, et témoigne de l’importance prise par l’institution du CHSCT ces dernières années.")

Associe.create(:name => "steve", :description => "dev noob", :link => "http://panda.cat")