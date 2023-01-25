import 'package:GeoLearn/Data/DataSources/Questions_DataSource.dart';
import 'package:GeoLearn/Data/Models/Question_Model.dart';

class MockQuestions_DataSource implements Questions_DataSource {
  @override
  List<Question_Model> getQuestions() {
    return [
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg/langfr-2560px-Flag_of_France_%281794–1815%2C_1830–1974%2C_2020–present%29.svg.png",
        [
          Answer(value: "Pays-Bas", isValid: false),
          Answer(value: "Russie", isValid: false),
          Answer(value: "France", isValid: true),
          Answer(value: "Roumanie", isValid: false),
          Answer(value: "Italie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/langfr-2560px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
        [
          Answer(value: "Danemark", isValid: false),
          Answer(value: "Irlande", isValid: false),
          Answer(value: "Islande", isValid: false),
          Answer(value: "Royaume Uni", isValid: true),
          Answer(value: "Australie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/1920px-Flag_of_Zimbabwe.svg.png",
        [
          Answer(value: "Sainte-Lucie", isValid: false),
          Answer(value: "Burundi", isValid: false),
          Answer(value: "Zimbabwe", isValid: true),
          Answer(value: "Lituanie", isValid: false),
          Answer(value: "Nouvelle-Zélande", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/165px-Flag_of_Jamaica.svg.png",
        [
          Answer(value: "Jamaïque", isValid: true),
          Answer(value: "Oman", isValid: false),
          Answer(value: "Ukraine", isValid: false),
          Answer(value: "Sierra Leone", isValid: false),
          Answer(value: "Nouvelle-Calédonie", isValid: false),
        ],
        ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://images.emojiterra.com/twitter/v13.1/512px/1f1f3-1f1e8.png",
        [
          Answer(value: "Benin", isValid: false),
          Answer(value: "Japon", isValid: false),
          Answer(value: "Liban", isValid: true),
          Answer(value: "Hongrie", isValid: false),
          Answer(value: "Nouvelle-Calédonie", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Luxembourg.svg/1920px-Flag_of_Luxembourg.svg.png",
        [
          Answer(value: "Algérie", isValid: false),
          Answer(value: "Luxembourg", isValid: true),
          Answer(value: "Cuba", isValid: true),
          Answer(value: "Bosnie Herzégovine", isValid: false),
          Answer(value: "Birmanie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_the_Vatican_City.svg/750px-Flag_of_the_Vatican_City.svg.png",
        [
          Answer(value: "Vatican", isValid: true),
          Answer(value: "Saint-Martin", isValid: false),
          Answer(value: "Andorre", isValid: false),
          Answer(value: "Kirghizistan", isValid: false),
          Answer(value: "Tibet", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Saint_Helena.svg/langfr-338px-Flag_of_Saint_Helena.svg.png",
        [
          Answer(value: "Arménie", isValid: false),
          Answer(value: "Iles Cook", isValid: false),
          Answer(value: "Arabie Saoudite", isValid: false),
          Answer(value: "Sainte-Hélène", isValid: true),
          Answer(value: "Afghanistan", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Flag_of_Nepal.svg/165px-Flag_of_Nepal.svg.png",
        [
          Answer(value: "Guinée Équatoriale", isValid: false),
          Answer(value: "Nepal", isValid: true),
          Answer(value: "Costa Rica", isValid: false),
          Answer(value: "Tonga", isValid: false),
          Answer(value: "Zambie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/165px-Flag_of_Iceland.svg.png",
        [
          Answer(value: "Botswana", isValid: false),
          Answer(value: "Burundi", isValid: false),
          Answer(value: "Islande", isValid: true),
          Answer(value: "Paraguay", isValid: false),
          Answer(value: "Norvège", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de l'Angola ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/1280px-Flag_of_Angola.svg.png",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de l'Albanie ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Slovenia.svg/165px-Flag_of_Slovenia.svg.png",
        [

          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ]
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de Cuba ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Vanuatu.svg/900px-Flag_of_Vanuatu.svg.png",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de Fidji ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/165px-Flag_of_Fiji.svg.png",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Groenland ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_Greenland.svg/1280px-Flag_of_Greenland.svg.png",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),

      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Gabon ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/165px-Flag_of_Belgium.svg.png",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Nicaragua ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/1200px-Flag_of_North_Korea.svg.png",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Cameroun ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/1280px-Flag_of_Cameroon.svg.png",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de la Guyanne ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_Guyana.svg/1200px-Flag_of_Guyana.svg.png",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Ziggarat_of_Ur_001.jpg/1920px-Ziggarat_of_Ur_001.jpg",
        [
          Answer(value: "Algérie", isValid: false),
          Answer(value: "Mongolie", isValid: false),
          Answer(value: "Irak", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://img.maxisciences.com/article/1280/gs-news/l-armee-en-terre-cuite_2284eeed94acdafeb567b21558b73823fdb64b20.jpg",
        [
          Answer(value: "Malaisie", isValid: false),
          Answer(value: "Equateur", isValid: false),
          Answer(value: "Chine", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://static.vecteezy.com/ti/photos-gratuite/p2/2257919-n-seoul-tour-sur-namsan-montagne-repere-de-seoul-sud-coree-gratuit-photo.jpg",
        [
          Answer(value: "Taïwan", isValid: false),
          Answer(value: "Suisse", isValid: false),
          Answer(value: "Corée du Sud", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Taj_Mahal_%28Edited%29.jpeg/1200px-Taj_Mahal_%28Edited%29.jpeg",
        [
          Answer(value: "Inde", isValid: false),
          Answer(value: "Iran", isValid: false),
          Answer(value: "Pakistan", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/5/57/Scott%27s_Monument%2C_Edinburgh.jpg",
        [
          Answer(value: "Lituanie", isValid: false),
          Answer(value: "Pologne", isValid: false),
          Answer(value: "Royaume-uni", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://s3.amazonaws.com/crowdriff-media/full/169869b11cfe93bffa60779a3bb69df4978581160af8aa4709d706ad0551a29e.jpg",
        [
          Answer(value: "Uruguay", isValid: false),
          Answer(value: "Irlande", isValid: true),
          Answer(value: "France", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://www.amis-cathedrale-reims.fr/wp-content/uploads/2020/05/SF-CATHEDRALE2.jpg",
        [
          Answer(value: "France", isValid: true),
          Answer(value: "Espagne", isValid: false),
          Answer(value: "Allemagne", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Berlin_-_0266_-_16052015_-_Brandenburger_Tor.jpg/1280px-Berlin_-_0266_-_16052015_-_Brandenburger_Tor.jpg",

        [
          Answer(value: "Serbie", isValid: false),
          Answer(value: "Grèce", isValid: false),
          Answer(value: "Allemagne", isValid: true),
          Answer(value: "Lituanie", isValid: false),
          Answer(value: "Nouvelle-Zélande", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://www.partir-en-omra.com/wp-content/uploads/2016/09/kaaba-histoire.jpg",
        [
          Answer(value: "Kazakghstan", isValid: false),
          Answer(value: "Arabie Saoudite", isValid: true),
          Answer(value: "Oman", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://voyage-et-partage.fr/wp-content/uploads/2018/11/1280px-Congreso_de_la_Naci%C3%B3n_Argentina_02-768x431.jpg",
        [
          Answer(value: "Irlande", isValid: false),
          Answer(value: "Roumanie", isValid: false),
          Answer(value: "Argentine", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://frenchdistrict.com/australie/wp-content/uploads/sites/14/2020/09/monuments-edifices-eglises-basiliques-palais-temples-visites-touristes-monde-sydney-opera-house.jpg",
        [
          Answer(value: "Australie", isValid: true),
          Answer(value: "Pays-Bas", isValid: false),
          Answer(value: "Mongolie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/President_Rodrigo_Duterte_portrait_%28half-body_crop%29.jpg/1200px-President_Rodrigo_Duterte_portrait_%28half-body_crop%29.jpg",
        [
          Answer(value: "Philippines", isValid: true),
          Answer(value: "Taïwan", isValid: false),
          Answer(value: "Japon", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://images.ladepeche.fr/api/v1/images/view/5c5a866e8fe56f49aa22a913/full/image.jpg",
        [
          Answer(value: "Brésil", isValid: false),
          Answer(value: "Chypre", isValid: false),
          Answer(value: "Espagne", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://upload.wikimedia.org/wikipedia/commons/0/00/Jair_Bolsonaro_2021_%28cropped%29.jpg",
        [
          Answer(value: "Brésil", isValid: true),
          Answer(value: "Suisse", isValid: false),
          Answer(value: "Turquie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://www.francetvinfo.fr/pictures/--IHmVKKGkjgqT4bmQ5oDYUmPEc/1200x900/2018/02/27/phpiGkPCj_1.jpg",
        [
          Answer(value: "Maroc", isValid: true),
          Answer(value: "Slovaquie", isValid: false),
          Answer(value: "Turquie", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Allemagne ?",
        "https://www.rts.ch/2021/12/16/10/13/12663169.image?w=640&h=360",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Allemagne ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/langfr-2560px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Ukraine ?",
        "https://ds.static.rtbf.be/article/image/1920x1080/f/f/2/9fe8498b444ba4e7b2478fe7391d2145.jpg",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante du Sénégal ?",
        "https://information.tv5monde.com/sites/info.tv5monde.com/files/styles/large/public/assets/images/AP22049405158503.jpg?itok=5PV0MvcN",
        [
          Answer(value: "Vrai", isValid: true),
          Answer(value: "Faux", isValid: false),
        ],
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante du Danemark ?",
        "https://upload.wikimedia.org/wikipedia/commons/d/d3/Ilir_Meta_%28portret%29.jpg",
        [
          Answer(value: "Vrai", isValid: false),
          Answer(value: "Faux", isValid: true),
        ],
      ),
    ];
  }
}
