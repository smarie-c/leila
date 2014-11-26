# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username => "pokemon", :password => "aaaaaaaa", :password_confirmation => "aaaaaaaa")
Contact.create(:texte1 => "Pour me contacter veuillez remplir les champs suivants", :texte1en => "To contact me please fill in the following fields")
Honoraire.create(:texte1 => "french example 1", :texte1en => "en example 1")
Specialite.create(:texte1 => "french example 1", :texte1en => "en example 1")
Index.create(:texte1 => "laila",:texte2 => "EL HALFI",:texte3 => "36 Avenue Bugeaud,",:texte4 => "75016 paris",:texte5 => "09 65 03 61 65",:texte6 => "Avocats spécialisé en droit du travail,",:texte7 => "droit de la sécurité sociale et droit pénal du travail. Expertise en conseil / contentieux / audit social / restructurations d'entreprises",:texte8 => "Lorem ipsum",:texte9 => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",:texte10 => "Lorem ipsum",:texte11 => "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",:texte1en => "laila",:texte2en => "EL HALFI",:texte3en => "36 Avenue Bugeaud,",:texte4en => "75016 paris",:texte5en => "09 65 03 61 65",:texte6en => "lawyer specializing in labor law ,",:texte7en => "right to social security and criminal labor law . Expertise in consulting / litigation / social audit / corporate restructuring",:texte8en => "en example 1 8",:texte9en => "en example 1 9",:texte10en => "en example 1 10",:texte11en => "en example 1 11")

30.times do
Veille.create(:titre => "Renouvellement du CHSCT : l’anticipation est enfin possible !", :texte => "Selon l’article R.4613-6 du code du travail, le collège chargé de désigner les membres du CHSCT doit être réuni dans les 15 jours de l’expiration des mandats des représentants de cette institution. Cette disposition était interprétée littéralement par la jurisprudence depuis un arrêt du 14 janvier 2004 de sorte qu’organiser un scrutin quelques jours avant l’échéance des mandats emportait la nullité des élections.

Dans un arrêt du 8 octobre 2014 (n°13-60.262), la Cour de cassation revient sur cette jurisprudence rigide et précise que  « si le renouvellement des membres du CHSCT ne peut avoir pour effet de mettre fin aux mandats en cours avant leur date d’expiration, l’employeur, afin d’assurer la permanence de l’institution, peut réunir le collège désignatif avant le terme ultime de ces mandats, les désignations ainsi effectuées ne prenant effet qu’à ce terme ».

Dans ces conditions, il y a lieu de considérer :

 1. Que les élections anticipées ne sont plus frappées de nullité

2. Que Les nouveaux représentants devront certes attendre l’expiration des mandats des représentants pour entrer en fonction, mais bénéficieront toutefois de la protection statutaire dès le jour de leur désignation.

Ce revirement de jurisprudence met donc fin à la vacance imposée des sièges, et témoigne de l’importance prise par l’institution du CHSCT ces dernières années.")
end

Associe.create(:name => "Nom", :description => "d'avocat", :link => "http://daempartners.com/")