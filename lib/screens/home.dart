import 'dart:io';

import 'package:skool_ar/data/model_data.dart';
import 'package:skool_ar/screens/web_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../widgets/model_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String homeid = 'tohomepage';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
    WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features


   // if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  List<ModelData> models = [
    ModelData(
        'https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Astronaut.glb?v=1649417799534',
        "assets/astro.jpg",
        "Explore Astronaut",
        "Applicants must meet the following minimum requirements before submitting an application. Bachelor's degree from an accredited institution in engineering, biological science, physical science, computer science or mathematics. Degree must be followed by at least 3 years of related, progressively responsible, professional experience or at least 1,000 hours of pilot-in-command time in jet aircraft.Ability to pass the NASA Astronaut physical. There have been 22 classes of astronauts selected from the original “Mercury Seven” in 1959 to the most recent 2017 class. Other notable classes includeThe fourth class in 1965 known as “The Scientists” because this was the academic experience was favored over pilot skills. The eighth class in 1978 was a huge step forward for diversity, featuring the first female, African American, and Asian American selections. The 16th class in 1996 was the largest class yet with 44 members – 35 U.S. astronauts and 9 international astronauts. They were selected for the frequent Space Shuttle flights and the anticipated need for International Space Station crewmembers.The 21st class in 2013 was the first class to have a 50/50 gender split with 4 female members and 4 male members. They could be assigned on any of four different spacecraft: the International Space Station, NASA’s Orion spacecraft for deep space exploration, or one of two American-made commercial crew spacecraft currently in development. These astronauts will be part of expanded crews aboard the space station that will significantly increase the crew time available to conduct the important research and technology demonstrations that are advancing our knowledge for missions farther into space than humans have gone before, while also returning benefits to Earth. They will also be candidates for missions beyond the moon and into deep space aboard our Orion spacecraft on flights that help pave the way for missions to Mars. After completing two years of general training, these astronaut candidates will be considered full astronauts, eligible to be assigned spaceflight missions. While they wait for their turn, they will be given technical duties within the Astronaut Office at Johnson. Technical duties can range from supporting current missions in roles such as CAPCOM in Mission Control, to advising on the development of future spacecraft. The first two years of astronaut candidate training will focus on the basic skills astronauts need. They’ll practice for spacewalks in Johnson’s 60-foot deep swimming pool, the Neutral Buoyancy Lab, which requires SCUBA certification. They’ll also simulate bringing visiting spacecraft in for a berthing to the space station using its robotic arm, Canadarm2, master the ins and outs of space station system and learn Russian. And, whether they have previous experience piloting an aircraft or not, they’ll learn to fly NASA’s fleet of T-38s. In addition, they’ll perfect their expeditionary skills, such as leadership and followership, through activities like survival training and geology treks. They will join a team that supports missions going on at many different missions going on at NASA centers across the country, but they’ll also interact with commercial partners developing spaceflight hardware. In addition, they will work with NASA’s international partners around the globe: ESA (the European Space Agency), the Canadian Space Agency, the Japan Aerospace Exploration Agency, and the Russian space agency, Roscosmos.Astronauts are susceptible to a variety of health risks including decompression sickness, barotrauma, immunodeficiencies, loss of bone and muscle, loss of eyesight, orthostatic intolerance, sleep disturbances, and radiation injury.A variety of large scale medical studies are being conducted in space via the National Space Biomedical Research Institute (NSBRI) to address these issues. Prominent among these is the Advanced Diagnostic Ultrasound in Microgravity Study in which astronauts (including former ISS commanders Leroy Chiao and Gennady Padalka) perform ultrasound scans under the guidance of remote experts to diagnose and potentially treat hundreds of medical conditions in space. This study's techniques are now being applied to cover professional and Olympic sports injuries as well as ultrasound performed by non-expert operators in medical and high school students. It is anticipated that remote guided ultrasound will have application on Earth in emergency and rural care situations, where access to a trained physician is often rare. An astronaut on the International Space Station requires about 830 g (29 oz) mass of food per meal each day (inclusive of about 120 g or 4.2 oz packaging mass per meal). In Russia, cosmonauts are awarded Pilot-Cosmonaut of the Russian Federation upon completion of their missions, often accompanied with the award of Hero of the Russian Federation. This follows the practice established in the USSR where cosmonauts were usually awarded the title Hero of the Soviet Union."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/EarthAR.glb?v=1649417849715",
        "assets/Earth.jpg",
        "Explore Earth",
        "Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large amounts of water can be found throughout the Solar System, only Earth sustains liquid surface water. About 71% of Earth's surface is made up of the ocean, dwarfing Earth's polar ice, lakes, and rivers. The remaining 29% of Earth's surface is land, consisting of continents and islands. Earth's surface layer is formed of several slowly moving tectonic plates, interacting to produce mountain ranges, volcanoes, and earthquakes. Earth's liquid outer core generates the magnetic field that shapes Earth's magnetosphere, deflecting destructive solar winds.Earth's atmosphere consists mostly of nitrogen and oxygen. More solar energy is received by tropical regions than polar regions and is redistributed by atmospheric and ocean circulation. Water vapor is widely present in the atmosphere and forms clouds that cover most of the planet. Greenhouse gases in the atmosphere like carbon dioxide (CO2) trap a part of the energy from the Sun close to the surface. A region's climate is governed by latitude, but also by elevation and proximity to moderating oceans. Severe weather, such as tropical cyclones, thunderstorms, and heatwaves, occurs in most areas and greatly impacts life. Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System. Of the four rocky planets, it is the largest and most massive. Earth is about eight light minutes away from the Sun and orbits it, taking a year (about 365.25 days) to complete one revolution. Earth rotates around its own axis in a day. Earth's axis of rotation is tilted with respect to its orbital plane with the Sun, producing seasons. Earth is orbited by one permanent natural satellite, the Moon, which orbits Earth at 380,000 km (1.3 light seconds) and is roughly a quarter as wide as Earth. The Moon always faces the Earth with the same side through tidal locking and causes tides, stabilizes Earth's axis, and gradually slows its rotation. Earth formed over 4.5 billion years ago. During the first billion years of Earth's history, the ocean formed and then life developed within it. Life spread globally and began to affect Earth's atmosphere and surface, leading to Earth's Great Oxidation Event two billion years ago. Humans emerged 300,000 years ago, and have reached a population of almost 8 billion today. Humans depend on Earth's biosphere and natural resources for their survival, but have increasingly impacted Earth's environment. Today, humanity's impact on Earth's climate, soils, waters, and ecosystems is unsustainable, threatening people's lives and causing widespread extinction of other life."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Jupiter.glb?v=1649427371338",
        "assets/Jupiter.jpg",
        "Explore Jupiter",
        "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, but slightly less than one-thousandth the mass of the Sun. Jupiter is the third brightest natural object in the Earth's night sky after the Moon and Venus. People have been observing it since prehistoric times; it was named after the Roman god Jupiter, the king of the gods. Jupiter is primarily composed of hydrogen, but helium constitutes one-quarter of its mass and one-tenth of its volume. It likely has a rocky core of heavier elements,but, like the other giant planets, Jupiter lacks a well-defined solid surface.The ongoing contraction of its interior generates heat greater than the amount received from the Sun. Because of its rapid rotation,the planet's shape is an oblate spheroid; it has a slight but noticeable bulge around the equator. The outer atmosphere is visibly segregated into several bands at different latitudes, with turbulence and storms along their interacting boundaries. A prominent result of this is the Great Red Spot, a giant storm known to have existed since at least the 17th century when telescopes first saw it. Surrounding Jupiter is a faint planetary ring system and a powerful magnetosphere. Jupiter's magnetic tail is nearly 800 million km (5.3 AU 500 million mi) long, covering nearly the entire distance to Saturn's orbit. Jupiter has 80 known moons and possibly many more, including the four large Galilean moons discovered by Galileo Galilei in 1610: Io, Europa, Ganymede, and Callisto. Io and Europa are about the size of Earth's Moon Callisto is almost the size of the planet Mercury, and Ganymede is larger. Pioneer 10 was the first spacecraft to visit Jupiter, making its closest approach to the planet in December 1973. Jupiter has since been explored on several occasions by robotic spacecraft, beginning with the Pioneer and Voyager flyby missions from 1973 to 1979, and later by the Galileo orbiter, which arrived at Jupiter in 1995. In 2007, the New Horizons visited Jupiter using its gravity to increase its speed, bending its trajectory en route to Pluto. The latest probe to visit the planet, Juno, entered orbit around Jupiter in July 2016. Future targets for exploration in the Jupiter system include the probable ice-covered liquid ocean of Europa."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Moon.glb?v=1649417827674",
        "assets/Moon.jpg",
        "Explore Moon",
        "The Moon is Earth's only natural satellite. At about one-quarter the diameter of Earth (comparable to the width of Australia), it is the fifth largest satellite in the Solar System, the largest satellite in the Solar System relative to its major planet,[f] and larger than any known dwarf planet. The Moon is a planetary-mass object that formed a differentiated rocky body, making it a satellite planet under the geophysical definitions of the term. It lacks any significant atmosphere, hydrosphere, or magnetic field. Its surface gravity is about one-sixth of Earth's (0.1654 g). Jupiter's moon Io is the only satellite in the Solar System known to have a higher surface gravity and density. Orbiting Earth at an average distance of 384,400 km (238,900 mi), or about 30 times Earth's diameter, its gravitational influence very slowly lengthens Earth's day and is the main driver of Earth's tides. The Moon's orbit around Earth has a sidereal period of 27.3 days. During each synodic period of 29.5 days, the amount of visible surface illuminated by the Sun varies from none up to 100%, resulting in lunar phases that form the basis for the months of a lunar calendar. The Moon is tidally locked to Earth, which means that the length of a full rotation of the Moon on its own axis causes its same side (the near side) to always face Earth, and the somewhat longer lunar day is the same as the synodic period. That said, 59% of the total lunar surface can be seen from Earth through shifts in perspective due to libration. The most widely accepted origin explanation posits that the Moon formed 4.51 billion years ago, not long after Earth, out of the debris from a giant impact between the planet and a hypothesized Mars-sized body called Theia. It then receded to a wider orbit because of tidal interaction with the Earth. The near side of the Moon is marked by dark volcanic maria ('seas'), which fill the spaces between bright ancient crustal highlands and prominent impact craters. Most of the large impact basins and mare surfaces were in place by the end of the Imbrian period, some three billion years ago. The lunar surface is relatively non-reflective, with a reflectance just slightly brighter than that of worn asphalt. However, because it has a large angular diameter, the full moon is the brightest celestial object in the night sky. The Moon's apparent size is nearly the same as that of the Sun, allowing it to cover the Sun almost completely during a total solar eclipse. Both the Moon's prominence in the earthly sky and its regular cycle of phases have provided cultural references and influences for human societies throughout history. Such influences can be found in language, calendar systems, art, and mythology. The first artificial object to reach the Moon was the Soviet Union's Luna 2 uncrewed spacecraft in 1959; this was followed by the first successful soft landing by Luna 9 in 1966. The only human lunar missions to date have been those of the United States' Apollo program, which landed twelve men on the surface between 1969 and 1972. These and later uncrewed missions returned lunar rocks that have been used to develop a detailed geological understanding of the Moon's origins, internal structure, and subsequent history."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Neptune.glb?v=1649427374512",
        "assets/Neptune.jpg",
        "Explore Neptune",
        "Neptune is the eighth and farthest-known Solar planet from the Sun. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus. Neptune is denser and physically smaller than Uranus because its greater mass causes more gravitational compression of its atmosphere. It is referred to as one of the solar system's two ice giant planets (the other one being its near-twin Uranus).Being composed primarily of gases and liquids, it has no well-defined 'solid surface'. The planet orbits the Sun once every 164.8 years at an average distance of 30.1 AU (4.5 billion km; 2.8 billion mi). It is named after the Roman god of the sea and has the astronomical symbol ♆, representing Neptune's trident. Neptune is not visible to the unaided eye and is the only planet in the Solar System found by mathematical prediction rather than by empirical observation. Unexpected changes in the orbit of Uranus led Alexis Bouvard to deduce that its orbit was subject to gravitational perturbation by an unknown planet. After Bouvard's death, the position of Neptune was predicted from his observations, independently, by John Couch Adams and Urbain Le Verrier. Neptune was subsequently observed with a telescope on 23 September 1846 by Johann Galle within a degree of the position predicted by Le Verrier. Its largest moon, Triton, was discovered shortly thereafter, though none of the planet's remaining 13 known moons were located telescopically until the 20th century. The planet's distance from Earth gives it a very small apparent size, making it challenging to study with Earth-based telescopes. Neptune was visited by Voyager 2, when it flew by the planet on 25 August 1989; Voyager 2 remains the only spacecraft to have visited Neptune. The advent of the Hubble Space Telescope and large ground-based telescopes with adaptive optics has recently allowed for additional detailed observations from afar. Like Jupiter and Saturn, Neptune's atmosphere is composed primarily of hydrogen and helium, along with traces of hydrocarbons and possibly nitrogen, though it contains a higher proportion of 'ices' such as water, ammonia and methane. However, similar to Uranus, its interior is primarily composed of ices and rock. Uranus and Neptune are normally considered 'ice giants' to emphasise this distinction. Traces of methane in the outermost regions in part account for the planet's blue appearance, though an unknown component is believed to color Neptune a deeper blue compared to Uranus. In contrast to the hazy, relatively featureless atmosphere of Uranus, Neptune's atmosphere has active and visible weather patterns. For example, at the time of the Voyager 2 flyby in 1989, the planet's southern hemisphere had a Great Dark Spot comparable to the Great Red Spot on Jupiter. More recently, in 2018, a newer main dark spot and smaller dark spot were identified and studied.In addition, these weather patterns are driven by the strongest sustained winds of any planet in the Solar System, with recorded wind speeds as high as 2,100 km/h (580 m/s; 1,300 mph).Because of its great distance from the Sun, Neptune's outer atmosphere is one of the coldest places in the Solar System, with temperatures at its cloud tops approaching 55 K (−218 °C; −361 °F). Temperatures at the planet's centre are approximately 5,400 K (5,100 °C; 9,300 °F).Neptune has a faint and fragmented ring system (labelled 'arcs'), which was discovered in 1984, then later confirmed by Voyager 2."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Saturn.glb?v=1649427376958",
        "assets/Saturn.jpg",
        "Explore Saturn",
        "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive.Saturn's interior is most likely composed of a core of iron–nickel and rock (silicon and oxygen compounds). Its core is surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally, a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere. An electrical current within the metallic hydrogen layer is thought to give rise to Saturn's planetary magnetic field, which is weaker than Earth's, but which has a magnetic moment 580 times that of Earth due to Saturn's larger size. Saturn's magnetic field strength is around one-twentieth of Jupiter's. The outer atmosphere is generally bland and lacking in contrast, although long-lived features can appear. Wind speeds on Saturn can reach 1,800 km/h (1,100 mph; 500 m/s), higher than on Jupiter but not as high as on Neptune.The planet's most notable feature is its prominent ring system, which is composed mainly of ice particles, with a smaller amount of rocky debris and dust. At least 83 moons are known to orbit Saturn, of which 53 are officially named; this does not include the hundreds of moonlets in its rings. Titan, Saturn's largest moon and the second largest in the Solar System, is larger than the planet Mercury, although less massive, and is the only moon in the Solar System to have a substantial atmosphere. Saturn is a gas giant composed predominantly of hydrogen and helium. It lacks a definite surface, though it may have a solid core.[33] Saturn's rotation causes it to have the shape of an oblate spheroid; that is, it is flattened at the poles and bulges at its equator. Its equatorial and polar radii differ by almost 10%: 60,268 km versus 54,364 km.[10] Jupiter, Uranus, and Neptune, the other giant planets in the Solar System, are also oblate but to a lesser extent. The combination of the bulge and rotation rate means that the effective surface gravity along the equator, 8.96 m/s2, is 74% of what it is at the poles and is lower than the surface gravity of Earth. However, the equatorial escape velocity of nearly 36 km/s is much higher than that of Earth. Saturn is the only planet of the Solar System that is less dense than water—about 30% less. Although Saturn's core is considerably denser than water, the average specific density of the planet is 0.69 g/cm3 due to the atmosphere. Jupiter has 318 times Earth's mass, and Saturn is 95 times Earth's mass. Together, Jupiter and Saturn hold 92% of the total planetary mass in the Solar System."),
    ModelData(
        "https://cdn.glitch.global/4bf9f3b5-e28d-48f3-aadd-6c11bbfc954f/Sun.glb?v=1649417816009",
        "assets/Sun.jpg",
        "Explore Sun",
        "The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light, ultraviolet light, and infrared radiation. It is by far the most important source of energy for life on Earth. Its diameter is about 1.39 million kilometers (864,000 miles), or 109 times that of Earth. Its mass is about 330,000 times that of Earth, and it accounts for about 99.86% of the total mass of the Solar System. Roughly three quarters of the Sun's mass consists of hydrogen (~73%); the rest is mostly helium (~25%), with much smaller quantities of heavier elements, including oxygen, carbon, neon and iron.According to its spectral class, the Sun is a G-type main-sequence star (G2V). As such, it is informally, and not completely accurately, referred to as a yellow dwarf (its light is closer to white than yellow). It formed approximately 4.6 billion years ago from the gravitational collapse of matter within a region of a large molecular cloud. Most of this matter gathered in the center, whereas the rest flattened into an orbiting disk that became the Solar System. The central mass became so hot and dense that it eventually initiated nuclear fusion in its core. It is thought that almost all stars form by this process. The Sun's core fuses about 600 million tons of hydrogen into helium every second, converting 4 million tons of matter into energy every second as a result. This energy, which can take between 10,000 and 170,000 years to escape the core, is the source of the Sun's light and heat. When hydrogen fusion in its core has diminished to the point at which the Sun is no longer in hydrostatic equilibrium, its core will undergo a marked increase in density and temperature while its outer layers expand, eventually transforming the Sun into a red giant. It is calculated that the Sun will become sufficiently large to engulf the current orbits of Mercury and Venus, and render Earth uninhabitable – but not for about five billion years. After this, it will shed its outer layers and become a dense type of cooling star known as a white dwarf, and no longer produce energy by fusion, but still glow and give off heat from its previous fusion. The enormous effect of the Sun on Earth has been recognized since prehistoric times. The Sun was thought of by some cultures as a deity. The synodic rotation of Earth and its orbit around the Sun are the basis of some solar calendars. The predominant calendar in use today is the Gregorian calendar which is based upon the standard 16th Century interpretation that the Sun's observed movement is primarily due to it actually moving.The Sun is a G-type main-sequence star that constitutes about 99.86% of the mass of the Solar System. The Sun has an absolute magnitude of +4.83, estimated to be brighter than about 85% of the stars in the Milky Way, most of which are red dwarfs.[30][31] The Sun is a Population I, or heavy-element-rich,[b] star. The formation of the Sun may have been triggered by shockwaves from one or more nearby supernovae. This is suggested by a high abundance of heavy elements in the Solar System, such as gold and uranium, relative to the abundances of these elements in so-called Population II, heavy-element-poor, stars. The heavy elements could most plausibly have been produced by endothermic nuclear reactions during a supernova, or by transmutation through neutron absorption within a massive second-generation star. The Sun is by far the brightest object in the Earth's sky, with an apparent magnitude of −26.74. This is about 13 billion times brighter than the next brightest star, Sirius, which has an apparent magnitude of −1.46. One astronomical unit (about 150,000,000 km 93,000,000 mi) is defined as the mean distance of the Sun's center to Earth's center, though the distance varies as Earth moves from perihelion in January to aphelion in July.The distances can vary between 147,098,074 km (perihelion) and 152,097,701 km (aphelion), and extreme values can range from 147,083,346 km to 152,112,126 km.At its average distance, light travels from the Sun's horizon to Earth's horizon in about 8 minutes and 20 seconds, while light from the closest points of the Sun and Earth takes about two seconds less. The energy of this sunlight supports almost all life on Earth by photosynthesis, and drives Earth's climate and weather.")
  ];

  DateTime today = DateTime.now();
  DateFormat formatter = DateFormat('MMMMEEEEd');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) =>const SearchPage()))),
      appBar: AppBar(
        leading:const Text(""),
        backgroundColor: Colors.white12,
        title: const Text("SkoolAR"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(formatter.format(today).toString().toUpperCase(),
                  style: const TextStyle(
                    fontFamily: "SFBold",
                    color: Colors.grey,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  // SizedBox(
                  //   width: 5.w,
                  // ),
                  Text(
                    "Today",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 23.sp,
                      fontFamily: "SFBold",
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.settings,
                  ),
                  // SizedBox(
                  //   width: 5.w,
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      controller: ScrollController(),
                      itemCount: models.length,
                      itemBuilder: (context, index) => ModelTile(
                            src: models[index].model,
                            img: models[index].img,
                            title: models[index].title,
                            content: models[index].content,
                          ))),
            )
          ],
        ),
      ),
    );
  }
}
