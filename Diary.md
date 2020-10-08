# Training Diary

 **R N Abhigna**  (14PH20029) summer project experience.

## Place of work

I worked at the x-ray group of the  **Remeis Observatory**  in Bamberg, which is affiliated with the Erlangen Centre for Astroparticle Physics (ECAP) at the Friedrich-Alexander-Universität, Erlangen-Nürnberg in Germany. I was supervised by Prof. Dr.  **Jörn Wilms**  for 9 weeks from mid-May to mid-July.

I mainly worked from the observatory offices in Bamberg and visited Erlangen for talks and seminars. People mentioned here include:  **Joern**  (my supervisor & head of the x-ray group),  **Mirjam**  Oertel (PhD candidate working on the eXTRaS project for XMM-Newton),  **Philipp**  Weber (Masters student - network admin and software go-to person),  **Ralf**  Ballhausen (PhD candidate - multiwavelength spectra),  **Ingo**  Kreykenbohm (postdoc - satellite telemetry & eROSITA science) and several others at ECAP & Remeis.

## [](https://github.com/abhignarevuru/remeis-2018/blob/master/Training%20Diary.md#brief-outline)Brief outline

_For a better context to my work, please see github.com/abhignarevuru/remeis-2018_.

_tl;dr_ - I worked on a near-**real time automated classification**  system to  **identify astrophysical source classes**  based on satellite data. My method uses machine learning techniques to achieve an unprecedented 98% accuracy rate. My work was specifically tailored for the  **eROSITA**, the primary instrument on board the Spektr-RG satellite (launched from Baikonur, March 2019). The satellite is an international cooperative mission with  _Roscosmos_  (Russia), the  _European Space Agency_,  _Space Research Institute_  (Moscow),  _Max-Planck-Institute for Extraterrestrial Physics_  (Germany), and  _NASA/Marshall Space Flight Centre_  (USA).

## Chronological diary of my work

My work contract with Joern required 40 hours of work per week. Place of work and timings are flexible as long I am reachable in person/via telecon and can collaborate with the group effectively.

_Joern believes that intercultural spirit is part & parcel of daily life at the observatory, given the group's diversity and Bamberg's historical significance. He wanted cultural experiences to be a mandatory part of my visit, hence they are included, italicised._

Pre-visit

-   Basic overview on eROSITA from Joern
-   Read Melanie Lang's thesis for an intuitive understanding of the eROSITA pipeline
-   Practiced my R programming skills with a couple of DataCamp projects
-   Reviewed machine learning theory
-   Learnt how random forest works and built some classifiers with it

15 May '18

-   _Landed in Frankfurt, Miri & Philipp welcomed me at Bamberg and helped me settle in_
-   Miri explained the basics for her work in the eXTRaS project; gave some overview literature
-   Set up account & workspace with help from Ingo & Max

16 May '18

-   Read up on x-ray astronomy
-   Linux & bash shell refresher
-   MAC config with Philipp

17 May '18

-   Read up on detection of x-rays
-   Discussion with Miri: XMM-Newton data, her & Annika's work on eXTRas project
-   Read up on performance metrics for ML

18 May '18

-   Read up on x-ray sources and production mechanisms
-   Read eXTRaS project documentation
-   First look at Miri's data sets

21 May '18

-   (official holiday)
-   Chinese lunar mission _Chang'e 4_ launch party

22 May '18

-   Official welcome to the group
-   Group meeting - SIXTE workshop update; Joern: Gaia uncertainty on distance measurements underestimated; Matthias: possible to estimate mass, radius distribution of neutron stars from supernova simulations; Jörn: new code to simulate winds caused by x-ray absorption onto accretion disk; Katya: solved python+ISIS compatibility issues
-   Joern's welcome, we formulated an initial plan of action

23 May '18

-   Familiarised myself with the XMM-Netwon catalogue
-   Finished reading Annika's thesis draft about her classification methods
-   _Joern explaining Bavarian history, nearby cities and culture with Pablo, Bosco & Javier_

24 May '18

-   internal server registration; read the Remeis wikis
-   Discussion with Miri: clarified doubts on her code
-   SMOTE documentation
-   Discussion with Ralf: how are spectral models made?
-   _Kontakt Bamberg 2018 festival with Manasa_

25 May '18

-   Learnt markdown
-   Started writing documentation
-   _Excursion to Forccheim and Bayreuth hiking trail with Pablo & Bosco led by Joern_

28 May '18

-   Discussion with Philipp, Ralf: how to harness ISIS scripts
-   XMM-Newton data archive & understanding the pipeline

29 May '18

-   Group meeting - Matthias: Analysis of Her X-1 XMM-Newton data; Ralf: Modelling Her X-1 data; Joern: Chinese lunar mission discussion on the Nature paper; Joern: new ISIS routine to simplify polygons; Ingo: eROSITA telemetry conversions done; Joern: policy regulations in light of EU's data protection laws, contracts update
-   IdM registration
-   Simplified the SMOTE function to solve issue with processing time
-   Success with reproducing Miri & Annika's balancing algorithm

30 May '18

-   Student journal club in Erlangen - talk on dosimetry
-   ECAP seminar in Erlangen - Oliver Hupe (PTB/Braunschweig) on radiation dosimetry
-   Solved issue with extra factors in the balanced dataset with droplevels()
-   SMOTE efficiency testing

31 May '18

-   Read up on linear support vector machine
-   Rudimentary implementation of Miri's training set

01 June '18

-   Making the Linear SVM model

04 June '18

-   Debugging SVM model
-   SVM model parametric testing
-   _Cake - Jacky Catalano's birthday celebration_

05 June '18

-   Group meeting - Joern & Christian: XIFUsim simulation software update,;Philipp: BW-model v2 fit_pars problem solved; Maria: wind accretion model difficulty, faq on nocuta
-   Litclub - Katharina reviewed 'From the Transits of Venus to the Birth of Experimental Psychology, Physics in Perspective, 2013, 15, 130-159
-   Linear SVM model efficiency testing

06 June '18

-   Student journal club in Erlangen - Stephan Dietz on the Local Bubble and Loop I  + pizza discussion
-   ECAP seminar in Erlangen - Michael Schulreich on reconstructing the origin of the Local Bubble and Loop I via Earth's radioisotopic signatures
-   Messier cluster reboot
-   Simon Kreuzer's introduction seminar to the 40cm and the H alpha telescope at the observatory
-   Screening of Soyuz launch with ISS cosmonauts!
-   _Barbecue celebration at observatory_

07 June '18

-   Debugging RF code
-   LaTeX refresher
-   Discussion with Miri & Philipp: feature selection for training?

08 June '18

-   Debugging RF code
-   can I manipulate FITS directly instead of having to convert to CSV?
-   _Cake: Uli's rhubarb birthday celebration_

11 June '18

-   RF feature selection tests
-   Philipp's idea - use FITSio!
-   Discussion with Roberto on using TOPCAT instead
-   _Introduced Pablo to Indian food at Swarg, and he introduced me to flamenco styles of music_

12 June '18

-   Group meeting - Thomas: Thursday software meetings are back; Christian, Pablo, Max: XIFUsim new implementation overview, Ingo: eSASS problems
-   RF feature selection tests

13 June '18

-   ECAP seminar in Erlangen - Adrian Zink on MacMini update & new OS overview (read documentation; did not attend)
-   Surprising discrepancy - getting good results without spectral data!
-   Discussion with Joern - still in shock

14 June '18

-   Software meeting - Pablo, Max, Philipp: Autotools and CUDA for GPU programming; Christian: Polymorphism in C++
-   Trying to understand how spectra are prepared
-   _Cake: Thomas Dauser's birthday celebration_

15 June '18

-   Confusion with errors getting carried over to eROSITA training set - solved!
-   Can we use unsupervised methods here?
-   how was Farrell training set made?
-   _Farewell to Pablo_

18 June '18

-   Major problem with my SVM model - binary model extended to multiclass is less efficient
-   Clustering vs classification - which is better?
-   _Cake: Ingo's birthday cake celebration_

19 June '18

-   Group meeting - Joern: news from the Madrid XMM meeting, see online for talks; Melanie: simulated brightest ULX with eROSITA; Ralf: fitting XSTAR reflection tables to source with strong iron complex; Christian: XIFUsim deadline review
-   Discussion with Philipp: feature list v2, how he gets parameters from eROSITA simulations; spectral data extraction problem with ISIS
-   caret package

20 June '18

-   Student journal club - Chistopher Schönwälder & Philipp Thalhammer on the Small Magellanic Cloud  _+ free pizza_
-   ECAP seminar in Erlangen: Frank Haberl (MPE Garching) on XMM-Newton surveys of Magellanic Clouds
-   Read old WP7 group reports to understand previous results of feature selection
-   _Barbeque with Ralf, Lia, Victoria, Bosco, Christian, Joern, Javier_

21 June '18

-   Remeis wiki update
-   Discussion with Lia Corrales (visitor from MIT) and Javier - US vs German vs Indian undergrad systems, contract types, opportunities at Kavli
-   caret package - reading documentation, can I use it here?
-   Discussion

22 June '18

-   Implementing caret
-   Discussion with Victoria Grindberg (visitor from Tubingen) - popular science outreach, how can we thrive regardless of bad teaching?
-   _Farewell to Shu Niu_

25 June '18

-   Explained clustering to Miri
-   Discussion with Joern & Miri: approved my RF model, what next?, using FITS directly, coordinate bias, any skew caused due to SMOTE?
-   Present findings in next group meeting - Joern
-   Fire drill

26 June '18

-   Group meeting - Philipp: chi square hacking for v2, Philipp: Bayesian blocks; Bosco: NuSTAR HMB data fit featuring Compton scattering
-   Litclub: Ralf reviewed 'Spectroscopic observations of the Moon at the lunar surface' by Y. Wu  
    and B. Hapke, 2018, EPSL
-   Figured out how to use the FITS format directly without involving CSV change

27 June '18

-   ECAP seminar in Erlangen - Bosco Oruru (Makerere University) UNESCO mandated talk on Astronomy in Uganda
-   Markus PhD defence in Erlangen
-   Mail thread discussion - emacs folding mode
-   Python packages being frozen; convert scripts immediately

28 June '18

-   Software meeting
-   Figuring out if coordinates are causing a bias
-   _Barbeque treat from Uli to celebrate Markus' successful defence_

29 June '18

-   Discussion with Miri - how is balancing affecting the distribution of sources?
-   Figuring out how detID differs from srcID - does multiple detections per source affect balancing?
-   Should only unique detections per source be trained? - NO! not needed

02 July '18

-   Discussion with Miri - figured out how to solve bias issues
-   Miri will make a data set with more observations from 3XMM catalogue since not all parameters are needed

03 July '18

-   Group meeting: FRANCI prep, XIFUsim update, network upgrades
-   **Presented my work at group meeting; speculation on why spectral data doesn't contribute to ML**
-   Discussion with Felix Fuerst (ESAC Integral scientist; visitor) on using a histogram analysis for hardness ratios to test data integrity
-   Philipp's successful bachelor thesis defence - AGN Arakelian 120 Markov chain Monte Carlo analysis of accretion disk density

04 July '18

-   Student journal club - introduction to IceCube & eROSITA projects
-   ECAP seminar in Erlangen - Gisela Anton & Joern Wilms on reports on IceCube-Gen2 and eROSITA

05 July '18

-   writing documentation & reports
-   Discussion with Miri -
-   _Cooked Indian meal for observatory, barbeque for visitors_

06 July '18

-   Preparing for litclub presentation & writing reports

09 July '18

-   Learnt how to use latex Beamer
-   Made presentation for talk
-   _Poker night_

10 July '18

-   Group meeting- Tobi Beuchert (Amsterdam, visiting): GR-MHD simulations of accretion in feedback, using adaptive grid-sizes on GPU clusters, Thommy: Software meeting again on Thursday, Joern: FRANCI & ECAP summer party logistics; Radio Telescopes: Delivery due November, with installation; Javier: Cyg X-1; Ingo: eROSITA Telemetry new setup, got CCD noise maps recorded for spacecraft detectors
-   Talk by Cosimo Bambi, Fudan University on testing GR via reflection spectra
-   **Presented my talk on 'Automated Source Classification with Random Forests'**

11 July '18

-   ECAP summer festival in Erlangen - poster talk, barbeque, talks, networking

12 July '18

-   Wrapped up everything with Joern, discussed further work
-   My farewell
-   Flight from Frankfurt
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTgxNzk5NDQxOF19
-->