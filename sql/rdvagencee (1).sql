-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 fév. 2021 à 21:34
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rdvagencee`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `id` int(11) NOT NULL,
  `contenu` longtext DEFAULT NULL,
  `idEmploye` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`id`, `contenu`, `idEmploye`, `image`, `titre`) VALUES
(41, 'COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?', 31, 'DSC01554-1080x675.jpg', 'CVID D-Prived and Down?'),
(42, 'COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?COVID D-Prived and Down?', 31, 'DSC01554-1080x675.jpg', 'COVID D-Prived and Down?');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `cin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numTele` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mot_de_passe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `photoProfile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ancien_mot_de_passe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `cin`, `nom`, `prenom`, `numTele`, `adresse`, `email`, `mot_de_passe`, `date_debut`, `photoProfile`, `ancien_mot_de_passe`) VALUES
(3, 'J55555', 'attar', 'Mohamed', '0671944135', 'Bloc 8 Numero 76  ', 'badrm6069@gmail.com', 'fef3d83e32b4d981b0c0f75206e891268c6aa8bd8db5a315db7bf24168a4be27', NULL, 'photo.jpg', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f'),
(5, 'J543321', 'attar', 'Mohamed', '0671944135', 'Bloc 8 Numero 76 Bensergaou agadir, Saaht Essaoua', 'mohamadelattar99@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', NULL, 'DSC_1874.jpg', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `contenu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idClient` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `contenu`, `idClient`) VALUES
(1, 'Welcome to Medic Mentor’s new blog, where we will be tracking and posting new resources and stories about our Mentors ', 3),
(2, 'Bon service', 5);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` int(3) NOT NULL,
  `cin` varchar(120) NOT NULL,
  `nom` varchar(120) NOT NULL,
  `prenom` varchar(120) NOT NULL,
  `ville` varchar(120) NOT NULL,
  `email` varchar(220) NOT NULL,
  `mot_de_passe` varchar(500) NOT NULL,
  `num_telephone` varchar(500) NOT NULL,
  `date_debut` varchar(120) NOT NULL,
  `photo_profil` varchar(500) NOT NULL,
  `ancien_mot_de_passe` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(10) NOT NULL DEFAULT 0,
  `isConge` tinyint(10) NOT NULL DEFAULT 0,
  `nombre_de_mois` int(10) NOT NULL,
  `statut_payment` tinyint(10) NOT NULL DEFAULT 0,
  `showPaymentOption` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `cin`, `nom`, `prenom`, `ville`, `email`, `mot_de_passe`, `num_telephone`, `date_debut`, `photo_profil`, `ancien_mot_de_passe`, `isAdmin`, `isConge`, `nombre_de_mois`, `statut_payment`, `showPaymentOption`) VALUES
(4, 'D990099', 'Elattar', 'Mohamed', 'Agadir', 'amine98ben90@gmail.com', 'Amine123', '0787980990', '11-11-2020', 'elattar.jpg', 'Amine123', 0, 0, 2, 1, 0),
(14, 'I737329', 'Benaicha', 'Mohamed Amine', 'Beni Mellal', 'amine98ben90@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0635734578', '17-09-2020', 'benaicha.jpg', 'Amine1234', 1, 1, 4, 1, 0),
(31, 'J334445', 'attar', 'Mohamed', 'Agadir', 'amiri@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '0671944135', '04-02-2021', 'elattar.jpg', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(44);

-- --------------------------------------------------------

--
-- Structure de la table `portfolio`
--

CREATE TABLE `portfolio` (
  `idPortfolio` int(11) NOT NULL,
  `experience` longtext DEFAULT NULL,
  `formation` longtext DEFAULT NULL,
  `nom` longtext DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `presentation` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `portfolio`
--

INSERT INTO `portfolio` (`idPortfolio`, `experience`, `formation`, `nom`, `prenom`, `presentation`) VALUES
(1, 'Video conferencing is a technology that allows users in different locations to hold face-to-face meetings without having to move to a single location together. This technology is particularly convenient for business users in different cities or even different countries because it saves time, expenses, and hassles associated with business travel. Uses for video conferencing include holding routine meetings, negotiating business deals, and interviewing job candidates. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris exlbs commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess eyc fugiat nulla pariatur excepteur sint occaecat cupidatat. enim ad minim veniam, quis nostrud exercitation ullamco laboris exlbs commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit ess eyc fugiat nulla pariatur excepteur sint occaecat cupidatat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', ' experience general surgeon who is treating hernias, skin tumours and chronic migraines using modern and advanced techniques.  ', 'Austin  ', 'Distel', ' 	- Master of Clinical Medicine (MCM)\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `contenu` longtext DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `idEmploye` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `publication`
--

INSERT INTO `publication` (`id`, `titre`, `contenu`, `image`, `date`, `idEmploye`) VALUES
(2, 'Mlanoma: What You Need to Know', 'Melanoma is known as malignant melanoma or cutaneous melanoma, an aggressive form of skin cancer. It arises from the cells that give skin its color, the pigment-producing cells present in the epidermis called melanocytes.\r\n\r\nMelanomas can develop anywhere on the body. Because melanoma cells stem from pigment-producing cells, melanomas are most frequently brown or black in color. In rare instances, melanoma develops from pigmented cells that are not associated with the skin, such as the eye or other internal organs.', 'cccccc.jpg', '2021-02-04 23:00:00', 31),
(3, '  Need to Worry About Getting Cancer', 'Path to improved health\r\nThe choices you make about what you eat and drink matter. They should add up to a balanced, nutritious diet. We all have different calorie needs based on our gender, age, and activity level. Health conditions can play a role too, including if you need to lose weight.\r\n\r\nChoose food from all five groups and follow the tips below.\r\n\r\nGrains\r\nChoose products that list whole grains as the first ingredient. For example, whole grain breads or whole-wheat flour. Whole grains are low in fat and high in fiber. They also contain complex carbohydrates (carbs), which help you feel full longer and prevent overeating. Avoid products that say âenrichedâ or contained with other types of grains or flours. They do not have the same nutrients.\r\n\r\nHot and cold cereals usually are low in fat. However, instant cereals with cream may contain high-fat oils or butterfat. Granola cereals also may have high-fat oils and extra sugars. Look for low-sugar options instead.\r\n\r\nTry not to eat rich sweets, such as doughnuts, rolls, and muffins. These foods often contain calories made up of more than 50% fat. Lighter options, such as angel food cake, can satisfy your sweet tooth without adding fat to your diet.', 'Dentist.jpg', '2021-02-04 23:00:00', 31),
(5, 'COVID-19 Vaccine Distribution', 'We have entered a new phase of the COVID-19 pandemic. A phase that is not only critical but that also offers great hope. It encompasses the monumental task of vaccinating hundreds of millions of Americans with the newly available COVID-19 vaccines. And, to do it as rapidly and safely as possible in order to get this crisis under control.', 'shutterstock_525665200-705x441.jpg', '2021-02-04 23:00:00', 31),
(6, 'Meal Plans and How They Help', 'Path to well being\r\nBefore you go to the grocery store, it can be helpful to sit down and consider what you’ll need to make a healthy eating plan. Look for recipes that are easy to make in bulk, especially if you’d like to plan out and make your meals in advance. Many people find that cooking and packaging their meals on the weekend for the coming week helps keep them committed to healthy eating.\r\n\r\nDepending on your taste preferences, your menu should include:\r\n\r\nPlenty of vegetables and fruits. A general rule of thumb is that veggies and fruits should take up half of your plate.\r\nWhole grains. At least half of your grains should be whole grains, which provide more fiber and nutrients than refined grains. You can look at the labels for terms like “100% whole wheat” or “100% whole grain.”\r\nFat-free or low-fat dairy products that contain calcium and other essential nutrients but have fewer calories.\r\nLean meats and other sources of protein, such as beans, eggs, and nuts.\r\nLimited saturated and trans fats, sodium, or added sugars. If you are using ingredients such as mayonnaise, butter, or salad dressing while cooking, try those that are lower in calories and total, saturated, and trans fats.\r\nBe sure to factor in snacks and meals that you can eat on the go in your grocery trip as well. This might include fruits, washed and chopped vegetables, yogurt, low-fat cheeses, whole-grain crackers or breads, and protein choices like nuts or low-fat turkey slices.\r\n\r\nAlso, consider buying a week’s worth of food containers. This way, if you prep meals a week at a time, you’ll have an organized way to store them for grab-and-go.\r\n\r\nThings to consider\r\nMaking healthy food choices is important for your body no matter how much you weigh. It’s not just about the number on the scale. However, if you are working to slim your waistline, your diet will be very important.\r\n\r\nTo lose weight, you usually need to reduce the number of calories you consume and increase your physical activity, or the calories you burn. The National Institutes of Health says that if you want to lose 1-1.5 pounds per week, your total daily calorie intake should reduce by 500-750 calories. This does not mean you should cut out all food. You must eat to remain healthy.\r\n\r\nFor most women, eating 1,200-1,500 calories each day can help you to lose weight safely. For men or for women who weigh more or exercise regularly, an eating plan that contains 1,500-1,800 calories per day can help you to lose weight safely.\r\n\r\nDo not follow diets with an intake of fewer than 800 calories per day without first speaking to your doctor. They will want to monitor you if this does end up being a necessity for your health.\r\n\r\nQuestions to ask your doctor\r\nHow do I know if I’m eating too many calories a day for my body type?\r\nAm I at a healthy weight? If not, how much do I need to lose or gain?\r\nAre there any specific nutrients I’m lacking that I should focus on in my meal plans?\r\nHow often is it okay to splurge on unhealthy meals, like fast food?', 'freestocks-nss2eRzQwgw-unsplash.jpg', '2021-02-07 23:00:00', 14),
(7, 'Dietary Fats: WhatÃ¢ÂÂs Good and WhatÃ¢ÂÂs Bad', 'Path to improved health\r\nEveryone has different calorie needs. Your doctor can help you figure out how many daily calories you need. This will help tell you how many grams of fat you can consume. If you are overweight, the American Heart Association (AHA) recommends that you get less than 30% of your total daily calories from fat. This equates to 65 grams of fat for a 2,000-calorie diet.\r\n\r\nÃ¢ÂÂBadÃ¢ÂÂ fats\r\nSaturated and trans fats are bad for you. Less than 7% of your total daily calories should come from saturated fats. Less than 1% should come from trans fats. In a 2,000-calorie daily diet, thatÃ¢ÂÂs less than 15 grams of saturated fat and less than 2 grams of trans fat.\r\n\r\nSaturated fats occur naturally in some animal products. This includes meat, poultry, eggs, and dairy items, such as cheese, cream, and whole milk. Palm, coconut, and other tropical oils, as well as cocoa butter, contain saturated fat.\r\n\r\nTrans fats are made when liquid oils get turned into solid fats. This process is called hydrogenation. Trans fats are found in a lot of processed foods. All food companies have to list trans fats on nutrition fact labels. However, foods can have up to .5 grams of trans fat per serving and still show 0 grams. Check the ingredients list and look for the words Ã¢ÂÂhydrogenated oil.Ã¢ÂÂ\r\n\r\nYou should limit saturated fats and avoid trans fats. They often are found in fast food, fried foods, and snack foods. They also can be in desserts and commercial baked goods. These bad fats increase your LDL (bad) cholesterol levels. They decrease your HDL (good) cholesterol levels.\r\n\r\nÃ¢ÂÂGoodÃ¢ÂÂ fats\r\nReplace bad fats with good fats. Studies show that good fats may help lower your total cholesterol level. Omega-3 fatty acids have good health benefits. They can decrease your risk of heart attack and inflammation.\r\n\r\nMonounsaturated fats are found in canola, olive, and peanut oils. They are in a variety of nut oils and butters. Avocados, legumes (beans and peas), and seeds also contain these fats.\r\n\r\nPolyunsaturated fats are found in vegetable oils like corn, sunflower, and safflower oil. They are in soybeans, legumes, grains, and nuts. Several seeds, like sesame and sunflower, also contain these fats.\r\n\r\nOmega-3 fatty acids are usually found in seafood. This includes salmon, herring, sardines, and mackerel. Flaxseeds, flaxseed oil, and walnuts also contain omega-3s.\r\n\r\nThings to consider\r\nYou donÃ¢ÂÂt have to cut all fat out of your diet. However, you should limit the amount of fat you eat. There are 9 calories in each gram of fat. This is more than twice the calories in carbohydrates and proteins. They each have 4 calories per gram.\r\n\r\nTry to eat foods that contain unsaturated fats and omega-3 fatty acids. Avoid foods that are high in saturated and trans fats.\r\n\r\nOther tips include:\r\n\r\nAvoid fast food. It almost always contains trans fats.\r\nAvoid fried foods.\r\nLimit the amount of red meat you eat. Instead, eat fish, poultry, and vegetable proteins.\r\nUse canola oil when you are baking.\r\nUse olive oil when you are cooking. You also can use it in place of salad dressing and as a spread on bread.\r\nMake healthier snack choices. For example, eat a small handful of unsalted peanuts or edamame (soybeans) instead of potato chips.\r\nTry a serving of avocado on your sandwich or in your salad. Nuts and garbanzo beans also are good on salads.\r\nUse liquid or soft tub margarine instead of butter. Look for margarine that has low saturated fat and no trans fat.\r\nQuestions to ask your doctor\r\nWhat percentage of fats should I eat if IÃ¢ÂÂm trying to lose weight?\r\nShould I take an omega-3 supplement to get more good fats?', 'small-gatherings-720x400px.jpg', '2021-02-07 23:00:00', 31),
(8, 'Keeping Your Heart Healthy', 'You are in direct control over many things that can influence your heart health. Itâs up to you to choose how seriously you take this responsibility. Some people find it easy to adopt a healthy lifestyle. Others will do so only after being diagnosed with a symptom of heart disease, like high blood pressure, or high cholesterol.\r\n\r\nWhatever your inspiration, know that the benefits of a healthy heart are worth the effort. In fact, your entire body will be better for it. Good overall health can also protect you from type 2 diabetes, asthma, joint pain, and a number of other chronic diseases and conditions. It can even reduce your risk for cancer. Additionally, a healthy lifestyle that includes eating healthy foods and getting regular exercise has been proven to boost your mood. Youâll have more energy and less stress.\r\n\r\nIf you arenât sure where to begin, try to add just one healthy aspect to your life for now. As you feel that you are gaining control, try adding another, then another. Pretty soon, youâll feel empowered instead of overwhelmed.\r\n\r\nMake healthy food choices\r\nBalance is the key to eating healthy for the long haul. Your diet should consist mainly of fruits, vegetables, whole grains, nuts, and lean proteins. If you eat this way most of the time, youâll be able to indulge occasionally.\r\n\r\nAllowing yourself to eat something you crave from time to time is important. So do not feel guilty about treating yourself as a reward for eating healthy. Just make sure that you arenât treating yourself too often.\r\n\r\nAs you choose your vegetables, keep color in mind. A colorful plate with plenty of red, orange, yellow, and dark-green vegetables helps ensure you are getting the vitamins and minerals you need.\r\n\r\nTry to cut down on or even eliminate heavily processed foods. Heavily processed foods are the boxed and packaged foods, especially those that are ready to eat (think crackers, potato chips, and even drive-through foods). Also, look for foods low in sodium.\r\n\r\nSwap soda and energy drinks for water. There is an incredible amount of sugar in soda and energy drinks. Drinking water in place of these can significantly impact your health for the better. Aim for drinking at least 8, 8-ounce glasses of water each day.', 'imageee.jpg', '2021-02-07 23:00:00', 31),
(9, 'Understanding the Federal Retail Pharmacy ', 'The Federal Retail Pharmacy Program for COVID-19 Vaccination is a collaboration between the federal government, states and territories, and 21 national pharmacy partners and independent pharmacy networks to increase access to COVID-19 vaccination across the United States. This program is one component of the Federal governmentÃ¢ÂÂs strategy to expand access to vaccines for the American public. The program is being implemented incrementally based on the available vaccine supply, with select retail pharmacy locations providing COVID-19 vaccine to eligible individuals. As vaccine availability increases over time, the program will expand to ultimately include all 40,000+ pharmacies.', 'travel-and-covid-720x400px_2.jpg', '2021-02-07 23:00:00', 31),
(10, 'Small Gatherings', 'Steps Everyone Can Take to Make Small Gatherings Safer\r\nmasks\r\nWear a mask\r\n\r\nWear a mask with two or more layers to stop the spread of COVID-19 to protect yourself and others.\r\nWear your mask over your nose and mouth, secure it under your chin, and make sure it fits snugly against the sides of your face.\r\nMasks should be worn indoors and outdoors except when eating or drinking.\r\nIn cold weather, wear your mask under your scarf, ski mask, or balaclava.\r\nKeep a spare mask in case your mask becomes wet from moisture in your breath or from snow or rain.\r\nStay at least 6 feet away from others who do not live with you\r\n\r\nYou are more likely to get or spread COVID-19 when you are in close contact with others\r\nRemember that people without symptoms or with a recent negative test result can still spread COVID-19 to others.\r\nGuests should avoid direct contact, including handshakes and hugs, with others not from their household.', 'small-gatherings-720x400px.jpg', '2021-02-08 09:08:56', 31),
(11, 'Travel During COVID-19', 'Before You Consider Traveling\r\nTravel increases your chance of spreading and getting COVID-19. CDC recommends that you do not travel at this time. Delay travel and stay home to protect yourself and others from COVID-19.\r\n\r\nIf you must travel, here are some important questions to ask yourself and your loved ones beforehand.\r\n\r\nAre you, someone in your household, or someone you will be visiting at increased risk for getting very sick from COVID-19?\r\nIf you get infected you can spread the virus to loved ones during travel and when you return, even if you don’t have symptoms. If your household includes one or more individuals at increased risk for severe illness, all family members should act as if they, themselves are at increased risk. Learn how to protect yourself and others.\r\nAre hospitals in your community or your destination overwhelmed with patients who have COVID-19? To find out, check state, territorial, and local department websites.\r\nDoes your home or destination have requirements or restrictions for travelers? Check state, territorial, and local requirements before you travel.\r\nDuring the 14 days before your travel, have you or those you are visiting had close contact with people they don’t live with?\r\nThe following activities can put you at higher risk for COVID-19:\r\nGoing to a large social gathering like a wedding, funeral, or party.\r\nAttending a mass gathering like a sporting event, concert, or parade.\r\nBeing in crowds like in restaurants, bars, fitness centers, or movie theaters.\r\nTaking public transportation like planes, trains, or buses, or being in transportation hubs like airports.\r\nTraveling on a cruise ship or riverboat.\r\nDo your plans include traveling by bus, train, or air, which might make staying 6 feet apart difficult?\r\nAre you traveling with people who don’t live with you?\r\nIf the answer to any of these questions is “yes,” you should delay your travel.\r\n\r\n ', 'travel-and-covid-720x400px_2.jpg', '2021-02-08 09:10:33', 31),
(12, 'Computerized adaptive screener', 'Researchers have developed a computerized adaptive screener to identify youth at risk for attempting suicide. The screener, called the computerized adaptive screen for suicidal youth (CASSY), consists of 11 questions on average and correctly identified 82.4% of youth who went on to attempt suicide in the three months following screening. The results suggest this screener could serve as an easy-to-use way for providers to detect youth suicide risk in emergency department settings. The findings, funded by the National Institute of Mental Health (NIMH), part of the National Institutes of Health, appear in the journal JAMA Psychiatry.\r\n\r\nÃÂ¢ÃÂÃÂNo young person should die by suicide, which is why we have made bending the curve in suicide rates a priority area of research for our institute,ÃÂ¢ÃÂÃÂ said Joshua A. Gordon, M.D., Ph.D., director of NIMH. ÃÂ¢ÃÂÃÂThe CASSY screener represents an important advance in identifying those adolescents who are at risk for suicide, so they can be connected with the critical support services they need.ÃÂ¢ÃÂÃÂ', 'small-gatherings-720x400px.jpg', '2021-02-07 23:00:00', 31),
(13, 'Double-Masking Is the Latest Protective', 'There have been numerous suggestions throughout the course of the coronavirus pandemic for slowing the spread of COVID-19, from social distancing to wearing safety goggles. And the latest topic to take over the internet is double-masking, or wearing two face masks at once to maximize protection. \r\n\r\nAlthough the practice isn\'t recommended by the Centers for Disease Control and Prevention, it\'s become an increasingly common guideline among experts including Anthony Fauci, MD, White House advisor and director of the National Institute of Allergy and Infectious Diseases. \r\n\r\nRELATED: This Refresher Spray Makes My Face Mask Smell Like Peppermintâand Covers Up My Coffee Breath', 'image.jpg', '2021-02-08 09:21:08', 31),
(14, 'This Mom\'s Breastfeeding Experience', 'Kate Torgersen says she had a \"bumpy\" journey to parenthood. \"We had tried for a couple years, and it became clear that we were going to need some help,\" says the now mom of three. In 2010, she welcomed her son Jackson, and in 2013, her twins Finn and ZoÃÂ«Ã¢ÂÂall via IVF.\r\n\r\nThough the experience was a \"roller coaster,\" Torgersen felt incredibly lucky. And when the twins were just 4 months old, she felt content going back to work in communications for Clif Bar. There was just one glaring challenge: \"I was breastfeeding, and breastfeeding twins is no joke,\" she says. \"I was producing a gallon of milk every two days. It was just a tremendous effort to feed them.\"\r\n\r\nNearly a year after welcoming the twins, in late spring 2014, Torgersen was presented with a four-day business trip. She contemplated telling her employer she couldn\'t go. Torgersen says she felt grateful that Clif Bar would have no trouble accepting that, given their breastfeeding-friendly culture, but the mom of three was still torn. \"I didn\'t want to lose out on opportunities,\" she says.', 'imageee.jpg', '2021-02-07 23:00:00', 31);

-- --------------------------------------------------------

--
-- Structure de la table `reservation2`
--

CREATE TABLE `reservation2` (
  `idReservation` int(11) NOT NULL,
  `cin` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `heure` varchar(100) NOT NULL,
  `idClient` int(11) NOT NULL,
  `statut` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation2`
--

INSERT INTO `reservation2` (`idReservation`, `cin`, `date`, `heure`, `idClient`, `statut`) VALUES
(15, 'I897878', '2021-02-03', '12:20', 5, 'confirmée'),
(41, 'J55555', '2021-02-09', '09:00', 3, 'ignorée'),
(42, 'J55555', '2021-02-09', '09:00', 3, 'ignorée');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ClinetCommentaireContrainte` (`idClient`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`idPortfolio`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idEmploye` (`idEmploye`);

--
-- Index pour la table `reservation2`
--
ALTER TABLE `reservation2`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `ReservationClientContarinte` (`idClient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `idPortfolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `reservation2`
--
ALTER TABLE `reservation2`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `EmployeAnnonceContrainte` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `ClinetCommentaireContrainte` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `EmployePublicationContrainte` FOREIGN KEY (`idEmploye`) REFERENCES `employe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation2`
--
ALTER TABLE `reservation2`
  ADD CONSTRAINT `ReservationClientContarinte` FOREIGN KEY (`idClient`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
