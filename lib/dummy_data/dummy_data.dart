import 'package:yesist_ios_app/models/accomodation.dart';
import 'package:yesist_ios_app/models/home_banner.dart';
import 'package:yesist_ios_app/models/place.dart';
import 'package:yesist_ios_app/models/track.dart';
import 'package:yesist_ios_app/static/constants.dart';

class DummyData {
  static List<Track> tracks = [
    Track(
      firstPrize: '500\$',
      secondPrize: '200\$',
      description: "Innovation Challenge is an international project competition established by IEEE Madras Section and IEEE Education Society to encourage the participants to come up with innovative ideas for the social and humanitarian issues. Here YESIST12 acts as a platform to bridge the gap between the engineers and visonaries to contribute to the society with innovations.This exceptional platform conducts competition in two stages. The preliminary stage is conducted across Asian and African countries and the team that tops the round wins a chance to compete globally to address humanitarian and social issues like poverty, famine, special needs, women safety, healthcare, disaster management, and many more",
      fees:
          '1. Prize Money will be announce later.2. Vibrant Pilot Awards3. Training Opportunities4. Certificates will be provided for the participants',
      id: 1,
      name: 'Track 1',
      rules:
          '1. Under the Innovation Challenge theme, the projects can be Mobile Apps or Computer Based or IoT based.2. In addition to developing the projects, the developers should ensure that their creation follows the international industry level technical standards set by the various agencies and approved universally. The evaluation criteria will be as follows:a. Creativityb. Applicationc. Relevance to the themed. Application of Standardse. Deliverability3. Students with drive and passion towards helping humanity are invited to register for the competition. The first round of the competition is to be held all over Asia in the pilots selected on the basis of registration. The winning teams will be called for the final round to be organised in September 2021.',
      imgUrl:
          'https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1158&q=80',
      sp: '1. Novelty2. Clarity3. Feasibility and Practicability4. User Experience5. Scale of impact6. Sustainability7. Potential for future work progression.',
    ),
    Track(
      firstPrize: '500\$',
      secondPrize: '200\$',
      description: "This is a description",
      fees: '100',
      id: 2,
      name: 'Track 2',
      rules: 'Some rules',
      sp: 'Some sp',
      imgUrl:
          'https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1158&q=80',
    ),
    Track(
      firstPrize: '500\$',
      secondPrize: '200\$',
      description: "This is a description",
      fees: '100',
      id: 3,
      name: 'Track 3',
      rules: 'Some rules',
      sp: 'Some sp',
      imgUrl:
          'https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1158&q=80',
    ),
    Track(
      firstPrize: '500\$',
      secondPrize: '200\$',
      description: "This is a description",
      fees: '100',
      id: 4,
      name: 'Track 4',
      rules: 'Some rules',
      sp: 'Some sp',
      imgUrl:
          'https://images.unsplash.com/photo-1608178398319-48f814d0750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1158&q=80',
    ),
  ];

  static List<Accomodation> accomodations = [
    Accomodation(
      address: 'Some address',
      name: 'COMSATS University Islamabad',
      image:
          'https://tutoria.pk/blog/wp-content/uploads/2021/01/Everything-to-Know-About-COMSATS-University-Islamabad.jpg',
      goLink: 'link',
    ),
    Accomodation(
      address: 'Some address',
      name: 'COMSATS University Islamabad',
      image:
          'https://tutoria.pk/blog/wp-content/uploads/2021/01/Everything-to-Know-About-COMSATS-University-Islamabad.jpg',
      goLink: 'link',
    ),
    Accomodation(
      address: 'Some address',
      name: 'COMSATS University Islamabad',
      image:
          'https://tutoria.pk/blog/wp-content/uploads/2021/01/Everything-to-Know-About-COMSATS-University-Islamabad.jpg',
      goLink: 'link',
    ),
    Accomodation(
      address: 'Some address',
      name: 'COMSATS University Islamabad',
      image:
          'https://tutoria.pk/blog/wp-content/uploads/2021/01/Everything-to-Know-About-COMSATS-University-Islamabad.jpg',
      goLink: 'link',
    ),
  ];

  static List<Place> places = [
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 4,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 4,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 4,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
    Place(
      description: 'Some random description',
      id: 'id',
      image1: 'https://i.redd.it/9zaf5napqe721.jpg',
      lat: 123.4,
      lng: 1274.212,
      location: "Some random location",
      name: 'ISB',
      stars: 5,
    ),
  ];

  static const homeBanner = HomeBanner(
      cardBtnText: 'View PDF',
      cardBtnUrl: AppConstants.viewPdfUrl,
      cardHeader: 'Room Allocation',
      cardDescription: '');
}
