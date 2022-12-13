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
        {
          "Pays-Bas": false,
          "Russie": false,
          "France": true,
          "Roumanie": false,
          "Italie": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/langfr-2560px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
        {
          "Danemark":false,
          "Irlande":false,
          "Islande":false,
          "Royaume Uni": true,
          "Australie": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Flag_of_Zimbabwe.svg/1920px-Flag_of_Zimbabwe.svg.png",
        {
          "Sainte-Lucie":false,
          "Burundi":false,
          "Zimbabwe": true,
          "Lituanie":false,
          "Nouvelle-Zélande": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/165px-Flag_of_Jamaica.svg.png",
        {
          "Jamaïque":true,
          "Oman":false,
          "Ukraine":false,
          "Sierra Leone": false,
          "Nouvelle-Calédonie": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://images.emojiterra.com/twitter/v13.1/512px/1f1f3-1f1e8.png",
        {
          "Benin":false,
          "Japon":false,
          "Liban":false,
          "Hongrie": false,
          "Nouvelle-Calédonie": true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Flag_of_Luxembourg.svg/1920px-Flag_of_Luxembourg.svg.png",
        {
          "Algérie":false,
          "Luxembourg":true,
          "Cuba":false,
          "Bosnie Herzégovine": false,
          "Birmanie": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_the_Vatican_City.svg/750px-Flag_of_the_Vatican_City.svg.png",
        {
          "Vatican":true,
          "Saint-Martin":false,
          "Andorre":false,
          "Kirghizistan": false,
          "Tibet": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Flag_of_Saint_Helena.svg/langfr-338px-Flag_of_Saint_Helena.svg.png",
        {
          "Arménie":false,
          "Iles Cook":false,
          "Arabie Saoudite":false,
          "Sainte-Hélène": true,
          "Afghanistan": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Flag_of_Nepal.svg/165px-Flag_of_Nepal.svg.png",
        {
          "Guinée Équatoriale":false,
          "Nepal":true,
          "Costa Rica":false,
          "Tonga": false,
          "Zambie": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "A quel pays est ce drapeau ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/165px-Flag_of_Iceland.svg.png",
        {
          "Botswana":false,
          "Lettonie":false,
          "Islande":true,
          "Paraguay": false,
          "Norvège": false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de l'Angola ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/1280px-Flag_of_Angola.svg.png",
        {
          "Vrai":true,
          "Faux":false,

        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de l'Albanie ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Slovenia.svg/165px-Flag_of_Slovenia.svg.png",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de Cuba ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Vanuatu.svg/900px-Flag_of_Vanuatu.svg.png",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de Fidji ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Fiji.svg/165px-Flag_of_Fiji.svg.png",
        {
          "Vrai":true,
          "Faux":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Groenland ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_Greenland.svg/1280px-Flag_of_Greenland.svg.png",
        {
          "Vrai":true,
          "Faux":false,
        },
      ),

      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Gabon ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/165px-Flag_of_Belgium.svg.png",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Nicaragua ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/1200px-Flag_of_North_Korea.svg.png",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau du Cameroun ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Flag_of_Cameroon.svg/1280px-Flag_of_Cameroon.svg.png",
        {
          "Vrai":true,
          "Faux":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question Drapeau",
        "Ceci est-il le drapeau de la Guyanne ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_Guyana.svg/1200px-Flag_of_Guyana.svg.png",
        {
          "Vrai":true,
          "Faux":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Ziggarat_of_Ur_001.jpg/1920px-Ziggarat_of_Ur_001.jpg",
        {
          "Algérie":false,
          "Mongolie":false,
          "Irak":true,

        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://img.maxisciences.com/article/1280/gs-news/l-armee-en-terre-cuite_2284eeed94acdafeb567b21558b73823fdb64b20.jpg",
        {
          "Malaisie":false,
          "Chine":true,
          "Equateur":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://static.vecteezy.com/ti/photos-gratuite/p2/2257919-n-seoul-tour-sur-namsan-montagne-repere-de-seoul-sud-coree-gratuit-photo.jpg",
        {
          "Taïwan":false,
          "Suisse":false,
          "Corée du Sud":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Taj_Mahal_%28Edited%29.jpeg/1200px-Taj_Mahal_%28Edited%29.jpeg",
        {
          "Inde":false,
          "Iran":false,
          "Pakistan":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/5/57/Scott%27s_Monument%2C_Edinburgh.jpg",
        {
          "Lituanie":false,
          "Pologne":false,
          "Royaume-uni":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://s3.amazonaws.com/crowdriff-media/full/169869b11cfe93bffa60779a3bb69df4978581160af8aa4709d706ad0551a29e.jpg",
        {
          "Uruguay":false,
          "Irlande":true,
          "France":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://www.amis-cathedrale-reims.fr/wp-content/uploads/2020/05/SF-CATHEDRALE2.jpg",
        {
          "France":true,
          "Espagne":false,
          "Allemagne":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Berlin_-_0266_-_16052015_-_Brandenburger_Tor.jpg/1280px-Berlin_-_0266_-_16052015_-_Brandenburger_Tor.jpg",
        {
          "Serbie":false,
          "Grèce":false,
          "Allemagne":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://www.partir-en-omra.com/wp-content/uploads/2016/09/kaaba-histoire.jpg",
        {
          "Kazakghstan":false,
          "Arabie Saoudite":true,
          "Oman":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://voyage-et-partage.fr/wp-content/uploads/2018/11/1280px-Congreso_de_la_Naci%C3%B3n_Argentina_02-768x431.jpg",
        {
          "Irlande":false,
          "Roumanie":false,
          "Argentine":true,

        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question monument",
        "Dans quel pays se trouve ce monument ?",
        "https://frenchdistrict.com/australie/wp-content/uploads/sites/14/2020/09/monuments-edifices-eglises-basiliques-palais-temples-visites-touristes-monde-sydney-opera-house.jpg",
        {
          "Australie":true,
          "Pays-Bas":false,
          "Mongolie":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/President_Rodrigo_Duterte_portrait_%28half-body_crop%29.jpg/1200px-President_Rodrigo_Duterte_portrait_%28half-body_crop%29.jpg",
        {
          "Philippines":true,
          "Taïwan":false,
          "Japon":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://images.ladepeche.fr/api/v1/images/view/5c5a866e8fe56f49aa22a913/full/image.jpg",
        {
          "Brésil":false,
          "Chypre":false,
          "Espagne":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://upload.wikimedia.org/wikipedia/commons/0/00/Jair_Bolsonaro_2021_%28cropped%29.jpg",
        {
          "Suisse":false,
          "Turquie":false,
          "Brésil":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "De quel pays est-il(elle) le dirigeant ?",
        "https://www.francetvinfo.fr/pictures/--IHmVKKGkjgqT4bmQ5oDYUmPEc/1200x900/2018/02/27/phpiGkPCj_1.jpg",
        {
          "Maroc":true,
          "Slovaquie":false,
          "Turquie":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Allemagne ?",
        "https://www.rts.ch/2021/12/16/10/13/12663169.image?w=640&h=360",
        {
          "Vrai":false,
          "Faux":true,

        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Allemagne ?",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Flag_of_the_United_Kingdom_%283-5%29.svg/langfr-2560px-Flag_of_the_United_Kingdom_%283-5%29.svg.png",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante de l'Ukraine ?",
        "https://ds.static.rtbf.be/article/image/1920x1080/f/f/2/9fe8498b444ba4e7b2478fe7391d2145.jpg",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante du Sénégal ?",
        "https://information.tv5monde.com/sites/info.tv5monde.com/files/styles/large/public/assets/images/AP22049405158503.jpg?itok=5PV0MvcN",
        {
          "Vrai":true,
          "Faux":false,
        },
      ),
      Question_Model(
        QuestionType.IMAGE,
        "Question chef d'Etat",
        "Cette personne est-elle dirigeante du Danemark ?",
        "https://upload.wikimedia.org/wikipedia/commons/d/d3/Ilir_Meta_%28portret%29.jpg",
        {
          "Vrai":false,
          "Faux":true,
        },
      ),
    ];
  }
}
