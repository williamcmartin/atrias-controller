function bio=initial_setupbio
bio = [];
bio(1).blkName='Clock';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&initial_setup_B.Clock';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='Compare To Constant/Compare';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&initial_setup_B.Compare_j';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='DAQ/Supervisory/p1';
bio(3).sigName='backLAmp1';
bio(3).portIdx=0;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&initial_setup_B.backLAmp1';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='DAQ/Supervisory/p2';
bio(4).sigName='backLAmp2';
bio(4).portIdx=1;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&initial_setup_B.backLAmp2';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='DAQ/Supervisory/p3';
bio(5).sigName='frontLAmp1';
bio(5).portIdx=2;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&initial_setup_B.frontLAmp1';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='DAQ/Supervisory/p4';
bio(6).sigName='frontLAmp2';
bio(6).portIdx=3;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&initial_setup_B.frontLAmp2';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='DAQ/Supervisory/p5';
bio(7).sigName='backRAmp1';
bio(7).portIdx=4;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&initial_setup_B.backRAmp1';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='DAQ/Supervisory/p6';
bio(8).sigName='backRAmp2';
bio(8).portIdx=5;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&initial_setup_B.backRAmp2';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='DAQ/Supervisory/p7';
bio(9).sigName='frontRAmp1';
bio(9).portIdx=6;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&initial_setup_B.frontRAmp1';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='DAQ/Supervisory/p8';
bio(10).sigName='frontRAmp2';
bio(10).portIdx=7;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&initial_setup_B.frontRAmp2';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='DAQ/Supervisory/p9';
bio(11).sigName='backLError';
bio(11).portIdx=8;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&initial_setup_B.backLError';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='DAQ/Supervisory/p10';
bio(12).sigName='frontLError';
bio(12).portIdx=9;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&initial_setup_B.frontLError';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='DAQ/Supervisory/p11';
bio(13).sigName='backRError';
bio(13).portIdx=10;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&initial_setup_B.backRError';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='DAQ/Supervisory/p12';
bio(14).sigName='frontRError';
bio(14).portIdx=11;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&initial_setup_B.frontRError';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='DAQ/Supervisory/p13';
bio(15).sigName='backLMotorV';
bio(15).portIdx=12;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&initial_setup_B.backLMotorV';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='DAQ/Supervisory/p14';
bio(16).sigName='backLLogicV';
bio(16).portIdx=13;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&initial_setup_B.backLLogicV';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='DAQ/Supervisory/p15';
bio(17).sigName='frontLMotorV';
bio(17).portIdx=14;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&initial_setup_B.frontLMotorV';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='DAQ/Supervisory/p16';
bio(18).sigName='frontLLogicV';
bio(18).portIdx=15;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&initial_setup_B.frontLLogicV';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='DAQ/Supervisory/p17';
bio(19).sigName='backRMotorV';
bio(19).portIdx=16;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&initial_setup_B.backRMotorV';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='DAQ/Supervisory/p18';
bio(20).sigName='backRLogicV';
bio(20).portIdx=17;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&initial_setup_B.backRLogicV';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='DAQ/Supervisory/p19';
bio(21).sigName='frontRMotorV';
bio(21).portIdx=18;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&initial_setup_B.frontRMotorV';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='DAQ/Supervisory/p20';
bio(22).sigName='frontRLogicV';
bio(22).portIdx=19;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&initial_setup_B.frontRLogicV';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='DAQ/Supervisory/p21';
bio(23).sigName='frontLTemp0';
bio(23).portIdx=20;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&initial_setup_B.frontLTemp0';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='DAQ/Supervisory/p22';
bio(24).sigName='frontLTemp1';
bio(24).portIdx=21;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&initial_setup_B.frontLTemp1';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='DAQ/Supervisory/p23';
bio(25).sigName='frontLTemp2';
bio(25).portIdx=22;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&initial_setup_B.frontLTemp2';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='DAQ/Supervisory/p24';
bio(26).sigName='frontLTemp3';
bio(26).portIdx=23;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&initial_setup_B.frontLTemp3';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='DAQ/Supervisory/p25';
bio(27).sigName='frontLTemp4';
bio(27).portIdx=24;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&initial_setup_B.frontLTemp4';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='DAQ/Supervisory/p26';
bio(28).sigName='frontLTemp5';
bio(28).portIdx=25;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&initial_setup_B.frontLTemp5';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='DAQ/Supervisory/p27';
bio(29).sigName='backLTemp0';
bio(29).portIdx=26;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&initial_setup_B.backLTemp0';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='DAQ/Supervisory/p28';
bio(30).sigName='backLTemp1';
bio(30).portIdx=27;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&initial_setup_B.backLTemp1';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='DAQ/Supervisory/p29';
bio(31).sigName='backLTemp2';
bio(31).portIdx=28;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&initial_setup_B.backLTemp2';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='DAQ/Supervisory/p30';
bio(32).sigName='backLTemp3';
bio(32).portIdx=29;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&initial_setup_B.backLTemp3';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='DAQ/Supervisory/p31';
bio(33).sigName='backLTemp4';
bio(33).portIdx=30;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&initial_setup_B.backLTemp4';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='DAQ/Supervisory/p32';
bio(34).sigName='backLTemp5';
bio(34).portIdx=31;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&initial_setup_B.backLTemp5';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='DAQ/Data Type Conversion1';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&initial_setup_B.DataTypeConversion1';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='DAQ/Data Type Conversion10';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&initial_setup_B.DataTypeConversion10';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='DAQ/Data Type Conversion100';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&initial_setup_B.DataTypeConversion100';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='DAQ/Data Type Conversion101';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&initial_setup_B.DataTypeConversion101';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='DAQ/Data Type Conversion102';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&initial_setup_B.DataTypeConversion102';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='DAQ/Data Type Conversion103';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&initial_setup_B.DataTypeConversion103';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='DAQ/Data Type Conversion104';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&initial_setup_B.DataTypeConversion104';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='DAQ/Data Type Conversion105';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&initial_setup_B.DataTypeConversion105';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='DAQ/Data Type Conversion106';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&initial_setup_B.DataTypeConversion106';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='DAQ/Data Type Conversion107';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&initial_setup_B.DataTypeConversion107';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='DAQ/Data Type Conversion108';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&initial_setup_B.DataTypeConversion108';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='DAQ/Data Type Conversion109';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&initial_setup_B.DataTypeConversion109';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='DAQ/Data Type Conversion11';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&initial_setup_B.DataTypeConversion11';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='DAQ/Data Type Conversion110';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&initial_setup_B.DataTypeConversion110';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='DAQ/Data Type Conversion111';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&initial_setup_B.DataTypeConversion111';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='DAQ/Data Type Conversion12';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&initial_setup_B.DataTypeConversion12';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='DAQ/Data Type Conversion127';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&initial_setup_B.DataTypeConversion127';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='DAQ/Data Type Conversion128';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&initial_setup_B.DataTypeConversion128';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='DAQ/Data Type Conversion129';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&initial_setup_B.DataTypeConversion129';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='DAQ/Data Type Conversion13';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&initial_setup_B.DataTypeConversion13';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='DAQ/Data Type Conversion130';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&initial_setup_B.DataTypeConversion130';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='DAQ/Data Type Conversion131';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&initial_setup_B.DataTypeConversion131';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='DAQ/Data Type Conversion132';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&initial_setup_B.DataTypeConversion132';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='DAQ/Data Type Conversion133';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&initial_setup_B.DataTypeConversion133';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='DAQ/Data Type Conversion134';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&initial_setup_B.DataTypeConversion134';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='DAQ/Data Type Conversion135';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&initial_setup_B.DataTypeConversion135';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='DAQ/Data Type Conversion136';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&initial_setup_B.DataTypeConversion136';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='DAQ/Data Type Conversion137';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&initial_setup_B.DataTypeConversion137';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='DAQ/Data Type Conversion138';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&initial_setup_B.DataTypeConversion138';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='DAQ/Data Type Conversion139';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&initial_setup_B.DataTypeConversion139';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='DAQ/Data Type Conversion14';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&initial_setup_B.DataTypeConversion14';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='DAQ/Data Type Conversion140';
bio(66).sigName='';
bio(66).portIdx=0;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&initial_setup_B.DataTypeConversion140';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='DAQ/Data Type Conversion141';
bio(67).sigName='';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&initial_setup_B.DataTypeConversion141';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='DAQ/Data Type Conversion142';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&initial_setup_B.DataTypeConversion142';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='DAQ/Data Type Conversion143';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[1,1];
bio(69).sigWidth=1;
bio(69).sigAddress='&initial_setup_B.DataTypeConversion143';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='DAQ/Data Type Conversion144';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1,1];
bio(70).sigWidth=1;
bio(70).sigAddress='&initial_setup_B.DataTypeConversion144';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='DAQ/Data Type Conversion145';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[1,1];
bio(71).sigWidth=1;
bio(71).sigAddress='&initial_setup_B.DataTypeConversion145';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='DAQ/Data Type Conversion146';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&initial_setup_B.DataTypeConversion146';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='DAQ/Data Type Conversion147';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&initial_setup_B.DataTypeConversion147';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='DAQ/Data Type Conversion148';
bio(74).sigName='';
bio(74).portIdx=0;
bio(74).dim=[1,1];
bio(74).sigWidth=1;
bio(74).sigAddress='&initial_setup_B.DataTypeConversion148';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='DAQ/Data Type Conversion149';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[1,1];
bio(75).sigWidth=1;
bio(75).sigAddress='&initial_setup_B.DataTypeConversion149';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='DAQ/Data Type Conversion15';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[1,1];
bio(76).sigWidth=1;
bio(76).sigAddress='&initial_setup_B.DataTypeConversion15';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='DAQ/Data Type Conversion150';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,1];
bio(77).sigWidth=1;
bio(77).sigAddress='&initial_setup_B.DataTypeConversion150';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='DAQ/Data Type Conversion151';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,1];
bio(78).sigWidth=1;
bio(78).sigAddress='&initial_setup_B.DataTypeConversion151';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='DAQ/Data Type Conversion157';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[1,1];
bio(79).sigWidth=1;
bio(79).sigAddress='&initial_setup_B.DataTypeConversion157';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='DAQ/Data Type Conversion16';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[1,1];
bio(80).sigWidth=1;
bio(80).sigAddress='&initial_setup_B.DataTypeConversion16';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='DAQ/Data Type Conversion17';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,1];
bio(81).sigWidth=1;
bio(81).sigAddress='&initial_setup_B.DataTypeConversion17';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='DAQ/Data Type Conversion18';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&initial_setup_B.DataTypeConversion18';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='DAQ/Data Type Conversion19';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&initial_setup_B.DataTypeConversion19';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='DAQ/Data Type Conversion2';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&initial_setup_B.DataTypeConversion2';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='DAQ/Data Type Conversion20';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[1,1];
bio(85).sigWidth=1;
bio(85).sigAddress='&initial_setup_B.DataTypeConversion20';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='DAQ/Data Type Conversion21';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&initial_setup_B.DataTypeConversion21';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='DAQ/Data Type Conversion22';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&initial_setup_B.DataTypeConversion22';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='DAQ/Data Type Conversion23';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,1];
bio(88).sigWidth=1;
bio(88).sigAddress='&initial_setup_B.DataTypeConversion23';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='DAQ/Data Type Conversion24';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&initial_setup_B.DataTypeConversion24';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='DAQ/Data Type Conversion25';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[1,1];
bio(90).sigWidth=1;
bio(90).sigAddress='&initial_setup_B.DataTypeConversion25';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='DAQ/Data Type Conversion26';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&initial_setup_B.DataTypeConversion26';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='DAQ/Data Type Conversion27';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&initial_setup_B.DataTypeConversion27';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='DAQ/Data Type Conversion28';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,1];
bio(93).sigWidth=1;
bio(93).sigAddress='&initial_setup_B.DataTypeConversion28';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='DAQ/Data Type Conversion29';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,1];
bio(94).sigWidth=1;
bio(94).sigAddress='&initial_setup_B.DataTypeConversion29';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='DAQ/Data Type Conversion3';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&initial_setup_B.DataTypeConversion3';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='DAQ/Data Type Conversion30';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&initial_setup_B.DataTypeConversion30';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='DAQ/Data Type Conversion31';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,1];
bio(97).sigWidth=1;
bio(97).sigAddress='&initial_setup_B.DataTypeConversion31';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='DAQ/Data Type Conversion32';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&initial_setup_B.DataTypeConversion32';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='DAQ/Data Type Conversion33';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&initial_setup_B.DataTypeConversion33';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='DAQ/Data Type Conversion34';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&initial_setup_B.DataTypeConversion34';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='DAQ/Data Type Conversion35';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[1,1];
bio(101).sigWidth=1;
bio(101).sigAddress='&initial_setup_B.DataTypeConversion35';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='DAQ/Data Type Conversion36';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&initial_setup_B.DataTypeConversion36';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='DAQ/Data Type Conversion37';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&initial_setup_B.DataTypeConversion37';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='DAQ/Data Type Conversion38';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&initial_setup_B.DataTypeConversion38';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='DAQ/Data Type Conversion39';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&initial_setup_B.DataTypeConversion39';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='DAQ/Data Type Conversion4';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&initial_setup_B.DataTypeConversion4';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='DAQ/Data Type Conversion40';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&initial_setup_B.DataTypeConversion40';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='DAQ/Data Type Conversion41';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&initial_setup_B.DataTypeConversion41';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='DAQ/Data Type Conversion42';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[1,1];
bio(109).sigWidth=1;
bio(109).sigAddress='&initial_setup_B.DataTypeConversion42';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='DAQ/Data Type Conversion43';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[1,1];
bio(110).sigWidth=1;
bio(110).sigAddress='&initial_setup_B.DataTypeConversion43';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='DAQ/Data Type Conversion44';
bio(111).sigName='';
bio(111).portIdx=0;
bio(111).dim=[1,1];
bio(111).sigWidth=1;
bio(111).sigAddress='&initial_setup_B.DataTypeConversion44';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='DAQ/Data Type Conversion45';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[1,1];
bio(112).sigWidth=1;
bio(112).sigAddress='&initial_setup_B.DataTypeConversion45';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='DAQ/Data Type Conversion46';
bio(113).sigName='';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&initial_setup_B.DataTypeConversion46';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='DAQ/Data Type Conversion47';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&initial_setup_B.DataTypeConversion47';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='DAQ/Data Type Conversion48';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&initial_setup_B.DataTypeConversion48';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='DAQ/Data Type Conversion49';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&initial_setup_B.DataTypeConversion49';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='DAQ/Data Type Conversion5';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&initial_setup_B.DataTypeConversion5';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='DAQ/Data Type Conversion50';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&initial_setup_B.DataTypeConversion50';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='DAQ/Data Type Conversion51';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&initial_setup_B.DataTypeConversion51';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='DAQ/Data Type Conversion52';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&initial_setup_B.DataTypeConversion52';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='DAQ/Data Type Conversion53';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&initial_setup_B.DataTypeConversion53';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='DAQ/Data Type Conversion54';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[1,1];
bio(122).sigWidth=1;
bio(122).sigAddress='&initial_setup_B.DataTypeConversion54';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='DAQ/Data Type Conversion55';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&initial_setup_B.DataTypeConversion55';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='DAQ/Data Type Conversion56';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[1,1];
bio(124).sigWidth=1;
bio(124).sigAddress='&initial_setup_B.DataTypeConversion56';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='DAQ/Data Type Conversion57';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[1,1];
bio(125).sigWidth=1;
bio(125).sigAddress='&initial_setup_B.DataTypeConversion57';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='DAQ/Data Type Conversion58';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&initial_setup_B.DataTypeConversion58';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='DAQ/Data Type Conversion59';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,1];
bio(127).sigWidth=1;
bio(127).sigAddress='&initial_setup_B.DataTypeConversion59';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='DAQ/Data Type Conversion6';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&initial_setup_B.DataTypeConversion6';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='DAQ/Data Type Conversion60';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&initial_setup_B.DataTypeConversion60';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='DAQ/Data Type Conversion61';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&initial_setup_B.DataTypeConversion61';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='DAQ/Data Type Conversion62';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[1,1];
bio(131).sigWidth=1;
bio(131).sigAddress='&initial_setup_B.DataTypeConversion62';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='DAQ/Data Type Conversion63';
bio(132).sigName='';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&initial_setup_B.DataTypeConversion63';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='DAQ/Data Type Conversion64';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&initial_setup_B.DataTypeConversion64';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='DAQ/Data Type Conversion65';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[1,1];
bio(134).sigWidth=1;
bio(134).sigAddress='&initial_setup_B.DataTypeConversion65';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='DAQ/Data Type Conversion66';
bio(135).sigName='';
bio(135).portIdx=0;
bio(135).dim=[1,1];
bio(135).sigWidth=1;
bio(135).sigAddress='&initial_setup_B.DataTypeConversion66';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='DAQ/Data Type Conversion67';
bio(136).sigName='';
bio(136).portIdx=0;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&initial_setup_B.DataTypeConversion67';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='DAQ/Data Type Conversion68';
bio(137).sigName='';
bio(137).portIdx=0;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&initial_setup_B.DataTypeConversion68';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='DAQ/Data Type Conversion69';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&initial_setup_B.DataTypeConversion69';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='DAQ/Data Type Conversion7';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&initial_setup_B.DataTypeConversion7';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='DAQ/Data Type Conversion70';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[1,1];
bio(140).sigWidth=1;
bio(140).sigAddress='&initial_setup_B.DataTypeConversion70';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='DAQ/Data Type Conversion71';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[1,1];
bio(141).sigWidth=1;
bio(141).sigAddress='&initial_setup_B.DataTypeConversion71';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='DAQ/Data Type Conversion72';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[1,1];
bio(142).sigWidth=1;
bio(142).sigAddress='&initial_setup_B.DataTypeConversion72';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='DAQ/Data Type Conversion73';
bio(143).sigName='';
bio(143).portIdx=0;
bio(143).dim=[1,1];
bio(143).sigWidth=1;
bio(143).sigAddress='&initial_setup_B.DataTypeConversion73';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='DAQ/Data Type Conversion74';
bio(144).sigName='';
bio(144).portIdx=0;
bio(144).dim=[1,1];
bio(144).sigWidth=1;
bio(144).sigAddress='&initial_setup_B.DataTypeConversion74';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='DAQ/Data Type Conversion75';
bio(145).sigName='';
bio(145).portIdx=0;
bio(145).dim=[1,1];
bio(145).sigWidth=1;
bio(145).sigAddress='&initial_setup_B.DataTypeConversion75';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='DAQ/Data Type Conversion76';
bio(146).sigName='';
bio(146).portIdx=0;
bio(146).dim=[1,1];
bio(146).sigWidth=1;
bio(146).sigAddress='&initial_setup_B.DataTypeConversion76';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='DAQ/Data Type Conversion77';
bio(147).sigName='';
bio(147).portIdx=0;
bio(147).dim=[1,1];
bio(147).sigWidth=1;
bio(147).sigAddress='&initial_setup_B.DataTypeConversion77';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='DAQ/Data Type Conversion78';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[1,1];
bio(148).sigWidth=1;
bio(148).sigAddress='&initial_setup_B.DataTypeConversion78';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='DAQ/Data Type Conversion79';
bio(149).sigName='';
bio(149).portIdx=0;
bio(149).dim=[1,1];
bio(149).sigWidth=1;
bio(149).sigAddress='&initial_setup_B.DataTypeConversion79';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='DAQ/Data Type Conversion8';
bio(150).sigName='';
bio(150).portIdx=0;
bio(150).dim=[1,1];
bio(150).sigWidth=1;
bio(150).sigAddress='&initial_setup_B.DataTypeConversion8';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='DAQ/Data Type Conversion80';
bio(151).sigName='';
bio(151).portIdx=0;
bio(151).dim=[1,1];
bio(151).sigWidth=1;
bio(151).sigAddress='&initial_setup_B.DataTypeConversion80';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='DAQ/Data Type Conversion81';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[1,1];
bio(152).sigWidth=1;
bio(152).sigAddress='&initial_setup_B.DataTypeConversion81';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='DAQ/Data Type Conversion82';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[1,1];
bio(153).sigWidth=1;
bio(153).sigAddress='&initial_setup_B.DataTypeConversion82';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='DAQ/Data Type Conversion83';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[1,1];
bio(154).sigWidth=1;
bio(154).sigAddress='&initial_setup_B.DataTypeConversion83';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='DAQ/Data Type Conversion84';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[1,1];
bio(155).sigWidth=1;
bio(155).sigAddress='&initial_setup_B.DataTypeConversion84';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='DAQ/Data Type Conversion85';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[1,1];
bio(156).sigWidth=1;
bio(156).sigAddress='&initial_setup_B.DataTypeConversion85';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='DAQ/Data Type Conversion86';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&initial_setup_B.DataTypeConversion86';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='DAQ/Data Type Conversion87';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[1,1];
bio(158).sigWidth=1;
bio(158).sigAddress='&initial_setup_B.DataTypeConversion87';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='DAQ/Data Type Conversion88';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[1,1];
bio(159).sigWidth=1;
bio(159).sigAddress='&initial_setup_B.DataTypeConversion88';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='DAQ/Data Type Conversion89';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[1,1];
bio(160).sigWidth=1;
bio(160).sigAddress='&initial_setup_B.DataTypeConversion89';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='DAQ/Data Type Conversion9';
bio(161).sigName='';
bio(161).portIdx=0;
bio(161).dim=[1,1];
bio(161).sigWidth=1;
bio(161).sigAddress='&initial_setup_B.DataTypeConversion9';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='DAQ/Data Type Conversion90';
bio(162).sigName='';
bio(162).portIdx=0;
bio(162).dim=[1,1];
bio(162).sigWidth=1;
bio(162).sigAddress='&initial_setup_B.DataTypeConversion90';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='DAQ/Data Type Conversion91';
bio(163).sigName='';
bio(163).portIdx=0;
bio(163).dim=[1,1];
bio(163).sigWidth=1;
bio(163).sigAddress='&initial_setup_B.DataTypeConversion91';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='DAQ/Data Type Conversion92';
bio(164).sigName='';
bio(164).portIdx=0;
bio(164).dim=[1,1];
bio(164).sigWidth=1;
bio(164).sigAddress='&initial_setup_B.DataTypeConversion92';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='DAQ/Data Type Conversion93';
bio(165).sigName='';
bio(165).portIdx=0;
bio(165).dim=[1,1];
bio(165).sigWidth=1;
bio(165).sigAddress='&initial_setup_B.DataTypeConversion93';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='DAQ/Data Type Conversion94';
bio(166).sigName='';
bio(166).portIdx=0;
bio(166).dim=[1,1];
bio(166).sigWidth=1;
bio(166).sigAddress='&initial_setup_B.DataTypeConversion94';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='DAQ/Data Type Conversion95';
bio(167).sigName='';
bio(167).portIdx=0;
bio(167).dim=[1,1];
bio(167).sigWidth=1;
bio(167).sigAddress='&initial_setup_B.DataTypeConversion95';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='DAQ/Data Type Conversion96';
bio(168).sigName='';
bio(168).portIdx=0;
bio(168).dim=[1,1];
bio(168).sigWidth=1;
bio(168).sigAddress='&initial_setup_B.DataTypeConversion96';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='DAQ/Data Type Conversion97';
bio(169).sigName='';
bio(169).portIdx=0;
bio(169).dim=[1,1];
bio(169).sigWidth=1;
bio(169).sigAddress='&initial_setup_B.DataTypeConversion97';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='DAQ/Data Type Conversion98';
bio(170).sigName='';
bio(170).portIdx=0;
bio(170).dim=[1,1];
bio(170).sigWidth=1;
bio(170).sigAddress='&initial_setup_B.DataTypeConversion98';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='DAQ/Data Type Conversion99';
bio(171).sigName='';
bio(171).portIdx=0;
bio(171).dim=[1,1];
bio(171).sigWidth=1;
bio(171).sigAddress='&initial_setup_B.DataTypeConversion99';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='DAQ/raw_signals';
bio(172).sigName='';
bio(172).portIdx=0;
bio(172).dim=[15,1];
bio(172).sigWidth=15;
bio(172).sigAddress='&initial_setup_B.raw_signals[0]';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='DAQ/sw';
bio(173).sigName='';
bio(173).portIdx=0;
bio(173).dim=[10,1];
bio(173).sigWidth=10;
bio(173).sigAddress='&initial_setup_B.sw[0]';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='DAQ/Motor Saturation';
bio(174).sigName='';
bio(174).portIdx=0;
bio(174).dim=[6,1];
bio(174).sigWidth=6;
bio(174).sigAddress='&initial_setup_B.MotorSaturation[0]';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='DAQ/Counter/p1';
bio(175).sigName='';
bio(175).portIdx=0;
bio(175).dim=[1,1];
bio(175).sigWidth=1;
bio(175).sigAddress='&initial_setup_B.Counter_o1';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='DAQ/Counter/p2';
bio(176).sigName='';
bio(176).portIdx=1;
bio(176).dim=[1,1];
bio(176).sigWidth=1;
bio(176).sigAddress='&initial_setup_B.Counter_o2';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='DAQ/EtherCAT Init';
bio(177).sigName='';
bio(177).portIdx=0;
bio(177).dim=[4,1];
bio(177).sigWidth=4;
bio(177).sigAddress='&initial_setup_B.EtherCATInit[0]';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='DAQ/EtherCAT Rx Frames';
bio(178).sigName='';
bio(178).portIdx=0;
bio(178).dim=[1,1];
bio(178).sigWidth=1;
bio(178).sigAddress='&initial_setup_B.EtherCATRxFrames';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='Simple Sinusoidal Motion/Clock';
bio(179).sigName='';
bio(179).portIdx=0;
bio(179).dim=[1,1];
bio(179).sigWidth=1;
bio(179).sigAddress='&initial_setup_B.Clock_k';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='Simple Sinusoidal Motion/Motor Saturation';
bio(180).sigName='';
bio(180).portIdx=0;
bio(180).dim=[6,1];
bio(180).sigWidth=6;
bio(180).sigAddress='&initial_setup_B.MotorSaturation_l[0]';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='Simple Sinusoidal Motion/Sum';
bio(181).sigName='';
bio(181).portIdx=0;
bio(181).dim=[1,1];
bio(181).sigWidth=1;
bio(181).sigAddress='&initial_setup_B.Sum_f';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='Simple Sinusoidal Motion/Manual Switch';
bio(182).sigName='';
bio(182).portIdx=0;
bio(182).dim=[1,1];
bio(182).sigWidth=1;
bio(182).sigAddress='&initial_setup_B.ManualSwitch';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='Simple Sinusoidal Motion/Manual Switch1';
bio(183).sigName='';
bio(183).portIdx=0;
bio(183).dim=[1,1];
bio(183).sigWidth=1;
bio(183).sigAddress='&initial_setup_B.ManualSwitch1';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='DAQ/BoomMedulla/Data Type Conversion3';
bio(184).sigName='';
bio(184).portIdx=0;
bio(184).dim=[1,1];
bio(184).sigWidth=1;
bio(184).sigAddress='&initial_setup_B.DataTypeConversion3_o';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='DAQ/BoomMedulla/Data Type Conversion4';
bio(185).sigName='';
bio(185).portIdx=0;
bio(185).dim=[1,1];
bio(185).sigWidth=1;
bio(185).sigAddress='&initial_setup_B.DataTypeConversion4_e';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='DAQ/BoomMedulla/EtherCAT Rx Var ';
bio(186).sigName='';
bio(186).portIdx=0;
bio(186).dim=[1,1];
bio(186).sigWidth=1;
bio(186).sigAddress='&initial_setup_B.EtherCATRxVar_d';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 1';
bio(187).sigName='';
bio(187).portIdx=0;
bio(187).dim=[1,1];
bio(187).sigWidth=1;
bio(187).sigAddress='&initial_setup_B.EtherCATRxVar1';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 12';
bio(188).sigName='';
bio(188).portIdx=0;
bio(188).dim=[1,1];
bio(188).sigWidth=1;
bio(188).sigAddress='&initial_setup_B.EtherCATRxVar12_c';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 13';
bio(189).sigName='';
bio(189).portIdx=0;
bio(189).dim=[1,1];
bio(189).sigWidth=1;
bio(189).sigAddress='&initial_setup_B.EtherCATRxVar13_j';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 14';
bio(190).sigName='';
bio(190).portIdx=0;
bio(190).dim=[1,1];
bio(190).sigWidth=1;
bio(190).sigAddress='&initial_setup_B.EtherCATRxVar14_h';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 15';
bio(191).sigName='';
bio(191).portIdx=0;
bio(191).dim=[1,1];
bio(191).sigWidth=1;
bio(191).sigAddress='&initial_setup_B.EtherCATRxVar15_p';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 2';
bio(192).sigName='';
bio(192).portIdx=0;
bio(192).dim=[1,1];
bio(192).sigWidth=1;
bio(192).sigAddress='&initial_setup_B.EtherCATRxVar2';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 3';
bio(193).sigName='';
bio(193).portIdx=0;
bio(193).dim=[1,1];
bio(193).sigWidth=1;
bio(193).sigAddress='&initial_setup_B.EtherCATRxVar3';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 4';
bio(194).sigName='';
bio(194).portIdx=0;
bio(194).dim=[1,1];
bio(194).sigWidth=1;
bio(194).sigAddress='&initial_setup_B.EtherCATRxVar4';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 5';
bio(195).sigName='';
bio(195).portIdx=0;
bio(195).dim=[1,1];
bio(195).sigWidth=1;
bio(195).sigAddress='&initial_setup_B.EtherCATRxVar5';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 6';
bio(196).sigName='';
bio(196).portIdx=0;
bio(196).dim=[1,1];
bio(196).sigWidth=1;
bio(196).sigAddress='&initial_setup_B.EtherCATRxVar6_ff';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion3';
bio(197).sigName='';
bio(197).portIdx=0;
bio(197).dim=[1,1];
bio(197).sigWidth=1;
bio(197).sigAddress='&initial_setup_B.DataTypeConversion3_oi';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion4';
bio(198).sigName='';
bio(198).portIdx=0;
bio(198).dim=[1,1];
bio(198).sigWidth=1;
bio(198).sigAddress='&initial_setup_B.DataTypeConversion4_b';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion5';
bio(199).sigName='';
bio(199).portIdx=0;
bio(199).dim=[1,1];
bio(199).sigWidth=1;
bio(199).sigAddress='&initial_setup_B.DataTypeConversion5_o';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
bio(200).sigName='';
bio(200).portIdx=0;
bio(200).dim=[1,1];
bio(200).sigWidth=1;
bio(200).sigAddress='&initial_setup_B.EtherCATRxVar_c';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
bio(201).sigName='';
bio(201).portIdx=0;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&initial_setup_B.EtherCATRxVar1_b';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
bio(202).sigName='';
bio(202).portIdx=0;
bio(202).dim=[1,1];
bio(202).sigWidth=1;
bio(202).sigAddress='&initial_setup_B.EtherCATRxVar12_i';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
bio(203).sigName='';
bio(203).portIdx=0;
bio(203).dim=[1,1];
bio(203).sigWidth=1;
bio(203).sigAddress='&initial_setup_B.EtherCATRxVar13_l';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
bio(204).sigName='';
bio(204).portIdx=0;
bio(204).dim=[1,1];
bio(204).sigWidth=1;
bio(204).sigAddress='&initial_setup_B.EtherCATRxVar14';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
bio(205).sigName='';
bio(205).portIdx=0;
bio(205).dim=[1,1];
bio(205).sigWidth=1;
bio(205).sigAddress='&initial_setup_B.EtherCATRxVar15_i';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
bio(206).sigName='';
bio(206).portIdx=0;
bio(206).dim=[1,1];
bio(206).sigWidth=1;
bio(206).sigAddress='&initial_setup_B.EtherCATRxVar16_j';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
bio(207).sigName='';
bio(207).portIdx=0;
bio(207).dim=[1,1];
bio(207).sigWidth=1;
bio(207).sigAddress='&initial_setup_B.EtherCATRxVar17_e';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
bio(208).sigName='';
bio(208).portIdx=0;
bio(208).dim=[1,1];
bio(208).sigWidth=1;
bio(208).sigAddress='&initial_setup_B.EtherCATRxVar18';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
bio(209).sigName='';
bio(209).portIdx=0;
bio(209).dim=[1,1];
bio(209).sigWidth=1;
bio(209).sigAddress='&initial_setup_B.EtherCATRxVar19_i';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
bio(210).sigName='';
bio(210).portIdx=0;
bio(210).dim=[1,1];
bio(210).sigWidth=1;
bio(210).sigAddress='&initial_setup_B.EtherCATRxVar2_e';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
bio(211).sigName='';
bio(211).portIdx=0;
bio(211).dim=[1,1];
bio(211).sigWidth=1;
bio(211).sigAddress='&initial_setup_B.EtherCATRxVar3_o';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
bio(212).sigName='';
bio(212).portIdx=0;
bio(212).dim=[1,1];
bio(212).sigWidth=1;
bio(212).sigAddress='&initial_setup_B.EtherCATRxVar4_m';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
bio(213).sigName='';
bio(213).portIdx=0;
bio(213).dim=[1,1];
bio(213).sigWidth=1;
bio(213).sigAddress='&initial_setup_B.EtherCATRxVar5_j';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
bio(214).sigName='';
bio(214).portIdx=0;
bio(214).dim=[1,1];
bio(214).sigWidth=1;
bio(214).sigAddress='&initial_setup_B.EtherCATRxVar6_k';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion3';
bio(215).sigName='';
bio(215).portIdx=0;
bio(215).dim=[1,1];
bio(215).sigWidth=1;
bio(215).sigAddress='&initial_setup_B.DataTypeConversion3_f';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion4';
bio(216).sigName='';
bio(216).portIdx=0;
bio(216).dim=[1,1];
bio(216).sigWidth=1;
bio(216).sigAddress='&initial_setup_B.DataTypeConversion4_l';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion5';
bio(217).sigName='';
bio(217).portIdx=0;
bio(217).dim=[1,1];
bio(217).sigWidth=1;
bio(217).sigAddress='&initial_setup_B.DataTypeConversion5_b';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
bio(218).sigName='';
bio(218).portIdx=0;
bio(218).dim=[1,1];
bio(218).sigWidth=1;
bio(218).sigAddress='&initial_setup_B.EtherCATRxVar';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
bio(219).sigName='';
bio(219).portIdx=0;
bio(219).dim=[1,1];
bio(219).sigWidth=1;
bio(219).sigAddress='&initial_setup_B.EtherCATRxVar1_j';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
bio(220).sigName='';
bio(220).portIdx=0;
bio(220).dim=[1,1];
bio(220).sigWidth=1;
bio(220).sigAddress='&initial_setup_B.EtherCATRxVar12';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
bio(221).sigName='';
bio(221).portIdx=0;
bio(221).dim=[1,1];
bio(221).sigWidth=1;
bio(221).sigAddress='&initial_setup_B.EtherCATRxVar13';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
bio(222).sigName='';
bio(222).portIdx=0;
bio(222).dim=[1,1];
bio(222).sigWidth=1;
bio(222).sigAddress='&initial_setup_B.EtherCATRxVar14_ak';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
bio(223).sigName='';
bio(223).portIdx=0;
bio(223).dim=[1,1];
bio(223).sigWidth=1;
bio(223).sigAddress='&initial_setup_B.EtherCATRxVar15_g';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
bio(224).sigName='';
bio(224).portIdx=0;
bio(224).dim=[1,1];
bio(224).sigWidth=1;
bio(224).sigAddress='&initial_setup_B.EtherCATRxVar16_b';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
bio(225).sigName='';
bio(225).portIdx=0;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&initial_setup_B.EtherCATRxVar17_p';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
bio(226).sigName='';
bio(226).portIdx=0;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&initial_setup_B.EtherCATRxVar18_p';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&initial_setup_B.EtherCATRxVar19';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&initial_setup_B.EtherCATRxVar2_b';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
bio(229).sigName='';
bio(229).portIdx=0;
bio(229).dim=[1,1];
bio(229).sigWidth=1;
bio(229).sigAddress='&initial_setup_B.EtherCATRxVar3_e';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
bio(230).sigName='';
bio(230).portIdx=0;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&initial_setup_B.EtherCATRxVar4_e';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
bio(231).sigName='';
bio(231).portIdx=0;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&initial_setup_B.EtherCATRxVar5_p';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
bio(232).sigName='';
bio(232).portIdx=0;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&initial_setup_B.EtherCATRxVar6_h';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion3';
bio(233).sigName='';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&initial_setup_B.DataTypeConversion3_o0';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion4';
bio(234).sigName='';
bio(234).portIdx=0;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&initial_setup_B.DataTypeConversion4_n';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion5';
bio(235).sigName='';
bio(235).portIdx=0;
bio(235).dim=[1,1];
bio(235).sigWidth=1;
bio(235).sigAddress='&initial_setup_B.DataTypeConversion5_c';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
bio(236).sigName='';
bio(236).portIdx=0;
bio(236).dim=[1,1];
bio(236).sigWidth=1;
bio(236).sigAddress='&initial_setup_B.EtherCATRxVar_cc';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
bio(237).sigName='';
bio(237).portIdx=0;
bio(237).dim=[1,1];
bio(237).sigWidth=1;
bio(237).sigAddress='&initial_setup_B.EtherCATRxVar1_a';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
bio(238).sigName='';
bio(238).portIdx=0;
bio(238).dim=[1,1];
bio(238).sigWidth=1;
bio(238).sigAddress='&initial_setup_B.EtherCATRxVar10';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
bio(239).sigName='';
bio(239).portIdx=0;
bio(239).dim=[1,1];
bio(239).sigWidth=1;
bio(239).sigAddress='&initial_setup_B.EtherCATRxVar11';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
bio(240).sigName='';
bio(240).portIdx=0;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&initial_setup_B.EtherCATRxVar12_o';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
bio(241).sigName='';
bio(241).portIdx=0;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&initial_setup_B.EtherCATRxVar13_n';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&initial_setup_B.EtherCATRxVar14_e';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&initial_setup_B.EtherCATRxVar15';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&initial_setup_B.EtherCATRxVar16';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,1];
bio(245).sigWidth=1;
bio(245).sigAddress='&initial_setup_B.EtherCATRxVar17';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&initial_setup_B.EtherCATRxVar18_d';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&initial_setup_B.EtherCATRxVar19_dt';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[1,1];
bio(248).sigWidth=1;
bio(248).sigAddress='&initial_setup_B.EtherCATRxVar2_c';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
bio(249).sigName='';
bio(249).portIdx=0;
bio(249).dim=[1,1];
bio(249).sigWidth=1;
bio(249).sigAddress='&initial_setup_B.EtherCATRxVar20_p';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,1];
bio(250).sigWidth=1;
bio(250).sigAddress='&initial_setup_B.EtherCATRxVar21_i';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[1,1];
bio(251).sigWidth=1;
bio(251).sigAddress='&initial_setup_B.EtherCATRxVar22_a';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[1,1];
bio(252).sigWidth=1;
bio(252).sigAddress='&initial_setup_B.EtherCATRxVar23';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
bio(253).sigName='';
bio(253).portIdx=0;
bio(253).dim=[1,1];
bio(253).sigWidth=1;
bio(253).sigAddress='&initial_setup_B.EtherCATRxVar3_f';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
bio(254).sigName='';
bio(254).portIdx=0;
bio(254).dim=[1,1];
bio(254).sigWidth=1;
bio(254).sigAddress='&initial_setup_B.EtherCATRxVar4_mb';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
bio(255).sigName='';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&initial_setup_B.EtherCATRxVar5_h';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[1,1];
bio(256).sigWidth=1;
bio(256).sigAddress='&initial_setup_B.EtherCATRxVar6';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[1,1];
bio(257).sigWidth=1;
bio(257).sigAddress='&initial_setup_B.EtherCATRxVar7';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[1,1];
bio(258).sigWidth=1;
bio(258).sigAddress='&initial_setup_B.EtherCATRxVar8';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[1,1];
bio(259).sigWidth=1;
bio(259).sigAddress='&initial_setup_B.EtherCATRxVar9';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion3';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[1,1];
bio(260).sigWidth=1;
bio(260).sigAddress='&initial_setup_B.DataTypeConversion3_n';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion4';
bio(261).sigName='';
bio(261).portIdx=0;
bio(261).dim=[1,1];
bio(261).sigWidth=1;
bio(261).sigAddress='&initial_setup_B.DataTypeConversion4_g';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion5';
bio(262).sigName='';
bio(262).portIdx=0;
bio(262).dim=[1,1];
bio(262).sigWidth=1;
bio(262).sigAddress='&initial_setup_B.DataTypeConversion5_bh';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
bio(263).sigName='';
bio(263).portIdx=0;
bio(263).dim=[1,1];
bio(263).sigWidth=1;
bio(263).sigAddress='&initial_setup_B.EtherCATRxVar_f';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
bio(264).sigName='';
bio(264).portIdx=0;
bio(264).dim=[1,1];
bio(264).sigWidth=1;
bio(264).sigAddress='&initial_setup_B.EtherCATRxVar1_d';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
bio(265).sigName='';
bio(265).portIdx=0;
bio(265).dim=[1,1];
bio(265).sigWidth=1;
bio(265).sigAddress='&initial_setup_B.EtherCATRxVar10_k';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
bio(266).sigName='';
bio(266).portIdx=0;
bio(266).dim=[1,1];
bio(266).sigWidth=1;
bio(266).sigAddress='&initial_setup_B.EtherCATRxVar11_b';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
bio(267).sigName='';
bio(267).portIdx=0;
bio(267).dim=[1,1];
bio(267).sigWidth=1;
bio(267).sigAddress='&initial_setup_B.EtherCATRxVar12_a';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
bio(268).sigName='';
bio(268).portIdx=0;
bio(268).dim=[1,1];
bio(268).sigWidth=1;
bio(268).sigAddress='&initial_setup_B.EtherCATRxVar13_a';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
bio(269).sigName='';
bio(269).portIdx=0;
bio(269).dim=[1,1];
bio(269).sigWidth=1;
bio(269).sigAddress='&initial_setup_B.EtherCATRxVar14_j';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
bio(270).sigName='';
bio(270).portIdx=0;
bio(270).dim=[1,1];
bio(270).sigWidth=1;
bio(270).sigAddress='&initial_setup_B.EtherCATRxVar15_b';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
bio(271).sigName='';
bio(271).portIdx=0;
bio(271).dim=[1,1];
bio(271).sigWidth=1;
bio(271).sigAddress='&initial_setup_B.EtherCATRxVar16_h3';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
bio(272).sigName='';
bio(272).portIdx=0;
bio(272).dim=[1,1];
bio(272).sigWidth=1;
bio(272).sigAddress='&initial_setup_B.EtherCATRxVar17_b';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
bio(273).sigName='';
bio(273).portIdx=0;
bio(273).dim=[1,1];
bio(273).sigWidth=1;
bio(273).sigAddress='&initial_setup_B.EtherCATRxVar18_j';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
bio(274).sigName='';
bio(274).portIdx=0;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&initial_setup_B.EtherCATRxVar19_c';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
bio(275).sigName='';
bio(275).portIdx=0;
bio(275).dim=[1,1];
bio(275).sigWidth=1;
bio(275).sigAddress='&initial_setup_B.EtherCATRxVar2_m';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
bio(276).sigName='';
bio(276).portIdx=0;
bio(276).dim=[1,1];
bio(276).sigWidth=1;
bio(276).sigAddress='&initial_setup_B.EtherCATRxVar20_d';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
bio(277).sigName='';
bio(277).portIdx=0;
bio(277).dim=[1,1];
bio(277).sigWidth=1;
bio(277).sigAddress='&initial_setup_B.EtherCATRxVar21_g';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
bio(278).sigName='';
bio(278).portIdx=0;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&initial_setup_B.EtherCATRxVar22_d';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
bio(279).sigName='';
bio(279).portIdx=0;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&initial_setup_B.EtherCATRxVar23_i';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
bio(280).sigName='';
bio(280).portIdx=0;
bio(280).dim=[1,1];
bio(280).sigWidth=1;
bio(280).sigAddress='&initial_setup_B.EtherCATRxVar3_is';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
bio(281).sigName='';
bio(281).portIdx=0;
bio(281).dim=[1,1];
bio(281).sigWidth=1;
bio(281).sigAddress='&initial_setup_B.EtherCATRxVar4_d';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[1,1];
bio(282).sigWidth=1;
bio(282).sigAddress='&initial_setup_B.EtherCATRxVar5_ap';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
bio(283).sigName='';
bio(283).portIdx=0;
bio(283).dim=[1,1];
bio(283).sigWidth=1;
bio(283).sigAddress='&initial_setup_B.EtherCATRxVar6_g';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
bio(284).sigName='';
bio(284).portIdx=0;
bio(284).dim=[1,1];
bio(284).sigWidth=1;
bio(284).sigAddress='&initial_setup_B.EtherCATRxVar7_l';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
bio(285).sigName='';
bio(285).portIdx=0;
bio(285).dim=[1,1];
bio(285).sigWidth=1;
bio(285).sigAddress='&initial_setup_B.EtherCATRxVar8_k';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
bio(286).sigName='';
bio(286).portIdx=0;
bio(286).dim=[1,1];
bio(286).sigWidth=1;
bio(286).sigAddress='&initial_setup_B.EtherCATRxVar9_i';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion3';
bio(287).sigName='';
bio(287).portIdx=0;
bio(287).dim=[1,1];
bio(287).sigWidth=1;
bio(287).sigAddress='&initial_setup_B.DataTypeConversion3_b';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion4';
bio(288).sigName='';
bio(288).portIdx=0;
bio(288).dim=[1,1];
bio(288).sigWidth=1;
bio(288).sigAddress='&initial_setup_B.DataTypeConversion4_f';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion5';
bio(289).sigName='';
bio(289).portIdx=0;
bio(289).dim=[1,1];
bio(289).sigWidth=1;
bio(289).sigAddress='&initial_setup_B.DataTypeConversion5_k';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[1,1];
bio(290).sigWidth=1;
bio(290).sigAddress='&initial_setup_B.EtherCATRxVar_k';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[1,1];
bio(291).sigWidth=1;
bio(291).sigAddress='&initial_setup_B.EtherCATRxVar1_bt';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[1,1];
bio(292).sigWidth=1;
bio(292).sigAddress='&initial_setup_B.EtherCATRxVar10_n';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[1,1];
bio(293).sigWidth=1;
bio(293).sigAddress='&initial_setup_B.EtherCATRxVar11_g';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
bio(294).sigName='';
bio(294).portIdx=0;
bio(294).dim=[1,1];
bio(294).sigWidth=1;
bio(294).sigAddress='&initial_setup_B.EtherCATRxVar12_oh';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[1,1];
bio(295).sigWidth=1;
bio(295).sigAddress='&initial_setup_B.EtherCATRxVar13_nu';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
bio(296).sigName='';
bio(296).portIdx=0;
bio(296).dim=[1,1];
bio(296).sigWidth=1;
bio(296).sigAddress='&initial_setup_B.EtherCATRxVar14_a';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
bio(297).sigName='';
bio(297).portIdx=0;
bio(297).dim=[1,1];
bio(297).sigWidth=1;
bio(297).sigAddress='&initial_setup_B.EtherCATRxVar15_h';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
bio(298).sigName='';
bio(298).portIdx=0;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&initial_setup_B.EtherCATRxVar16_h';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[1,1];
bio(299).sigWidth=1;
bio(299).sigAddress='&initial_setup_B.EtherCATRxVar17_i';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
bio(300).sigName='';
bio(300).portIdx=0;
bio(300).dim=[1,1];
bio(300).sigWidth=1;
bio(300).sigAddress='&initial_setup_B.EtherCATRxVar18_g';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
bio(301).sigName='';
bio(301).portIdx=0;
bio(301).dim=[1,1];
bio(301).sigWidth=1;
bio(301).sigAddress='&initial_setup_B.EtherCATRxVar19_d';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
bio(302).sigName='';
bio(302).portIdx=0;
bio(302).dim=[1,1];
bio(302).sigWidth=1;
bio(302).sigAddress='&initial_setup_B.EtherCATRxVar2_l';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
bio(303).sigName='';
bio(303).portIdx=0;
bio(303).dim=[1,1];
bio(303).sigWidth=1;
bio(303).sigAddress='&initial_setup_B.EtherCATRxVar20';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
bio(304).sigName='';
bio(304).portIdx=0;
bio(304).dim=[1,1];
bio(304).sigWidth=1;
bio(304).sigAddress='&initial_setup_B.EtherCATRxVar21';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
bio(305).sigName='';
bio(305).portIdx=0;
bio(305).dim=[1,1];
bio(305).sigWidth=1;
bio(305).sigAddress='&initial_setup_B.EtherCATRxVar22';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
bio(306).sigName='';
bio(306).portIdx=0;
bio(306).dim=[1,1];
bio(306).sigWidth=1;
bio(306).sigAddress='&initial_setup_B.EtherCATRxVar23_f';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
bio(307).sigName='';
bio(307).portIdx=0;
bio(307).dim=[1,1];
bio(307).sigWidth=1;
bio(307).sigAddress='&initial_setup_B.EtherCATRxVar3_i';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
bio(308).sigName='';
bio(308).portIdx=0;
bio(308).dim=[1,1];
bio(308).sigWidth=1;
bio(308).sigAddress='&initial_setup_B.EtherCATRxVar4_mw';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
bio(309).sigName='';
bio(309).portIdx=0;
bio(309).dim=[1,1];
bio(309).sigWidth=1;
bio(309).sigAddress='&initial_setup_B.EtherCATRxVar5_a';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
bio(310).sigName='';
bio(310).portIdx=0;
bio(310).dim=[1,1];
bio(310).sigWidth=1;
bio(310).sigAddress='&initial_setup_B.EtherCATRxVar6_b';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
bio(311).sigName='';
bio(311).portIdx=0;
bio(311).dim=[1,1];
bio(311).sigWidth=1;
bio(311).sigAddress='&initial_setup_B.EtherCATRxVar7_o';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
bio(312).sigName='';
bio(312).portIdx=0;
bio(312).dim=[1,1];
bio(312).sigWidth=1;
bio(312).sigAddress='&initial_setup_B.EtherCATRxVar8_d';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
bio(313).sigName='';
bio(313).portIdx=0;
bio(313).dim=[1,1];
bio(313).sigWidth=1;
bio(313).sigAddress='&initial_setup_B.EtherCATRxVar9_d';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion3';
bio(314).sigName='';
bio(314).portIdx=0;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&initial_setup_B.DataTypeConversion3_b1';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion4';
bio(315).sigName='';
bio(315).portIdx=0;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&initial_setup_B.DataTypeConversion4_p';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion5';
bio(316).sigName='';
bio(316).portIdx=0;
bio(316).dim=[1,1];
bio(316).sigWidth=1;
bio(316).sigAddress='&initial_setup_B.DataTypeConversion5_n';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
bio(317).sigName='';
bio(317).portIdx=0;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&initial_setup_B.EtherCATRxVar_ff';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
bio(318).sigName='';
bio(318).portIdx=0;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&initial_setup_B.EtherCATRxVar1_c';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
bio(319).sigName='';
bio(319).portIdx=0;
bio(319).dim=[1,1];
bio(319).sigWidth=1;
bio(319).sigAddress='&initial_setup_B.EtherCATRxVar10_l';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
bio(320).sigName='';
bio(320).portIdx=0;
bio(320).dim=[1,1];
bio(320).sigWidth=1;
bio(320).sigAddress='&initial_setup_B.EtherCATRxVar11_n';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
bio(321).sigName='';
bio(321).portIdx=0;
bio(321).dim=[1,1];
bio(321).sigWidth=1;
bio(321).sigAddress='&initial_setup_B.EtherCATRxVar12_g';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
bio(322).sigName='';
bio(322).portIdx=0;
bio(322).dim=[1,1];
bio(322).sigWidth=1;
bio(322).sigAddress='&initial_setup_B.EtherCATRxVar13_l0';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
bio(323).sigName='';
bio(323).portIdx=0;
bio(323).dim=[1,1];
bio(323).sigWidth=1;
bio(323).sigAddress='&initial_setup_B.EtherCATRxVar14_n';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
bio(324).sigName='';
bio(324).portIdx=0;
bio(324).dim=[1,1];
bio(324).sigWidth=1;
bio(324).sigAddress='&initial_setup_B.EtherCATRxVar15_n';
bio(324).ndims=2;
bio(324).size=[];


bio(325).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
bio(325).sigName='';
bio(325).portIdx=0;
bio(325).dim=[1,1];
bio(325).sigWidth=1;
bio(325).sigAddress='&initial_setup_B.EtherCATRxVar16_g';
bio(325).ndims=2;
bio(325).size=[];


bio(326).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
bio(326).sigName='';
bio(326).portIdx=0;
bio(326).dim=[1,1];
bio(326).sigWidth=1;
bio(326).sigAddress='&initial_setup_B.EtherCATRxVar17_bi';
bio(326).ndims=2;
bio(326).size=[];


bio(327).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
bio(327).sigName='';
bio(327).portIdx=0;
bio(327).dim=[1,1];
bio(327).sigWidth=1;
bio(327).sigAddress='&initial_setup_B.EtherCATRxVar18_o';
bio(327).ndims=2;
bio(327).size=[];


bio(328).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
bio(328).sigName='';
bio(328).portIdx=0;
bio(328).dim=[1,1];
bio(328).sigWidth=1;
bio(328).sigAddress='&initial_setup_B.EtherCATRxVar19_g';
bio(328).ndims=2;
bio(328).size=[];


bio(329).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
bio(329).sigName='';
bio(329).portIdx=0;
bio(329).dim=[1,1];
bio(329).sigWidth=1;
bio(329).sigAddress='&initial_setup_B.EtherCATRxVar2_p';
bio(329).ndims=2;
bio(329).size=[];


bio(330).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
bio(330).sigName='';
bio(330).portIdx=0;
bio(330).dim=[1,1];
bio(330).sigWidth=1;
bio(330).sigAddress='&initial_setup_B.EtherCATRxVar20_e';
bio(330).ndims=2;
bio(330).size=[];


bio(331).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
bio(331).sigName='';
bio(331).portIdx=0;
bio(331).dim=[1,1];
bio(331).sigWidth=1;
bio(331).sigAddress='&initial_setup_B.EtherCATRxVar21_m';
bio(331).ndims=2;
bio(331).size=[];


bio(332).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
bio(332).sigName='';
bio(332).portIdx=0;
bio(332).dim=[1,1];
bio(332).sigWidth=1;
bio(332).sigAddress='&initial_setup_B.EtherCATRxVar22_dh';
bio(332).ndims=2;
bio(332).size=[];


bio(333).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
bio(333).sigName='';
bio(333).portIdx=0;
bio(333).dim=[1,1];
bio(333).sigWidth=1;
bio(333).sigAddress='&initial_setup_B.EtherCATRxVar23_ih';
bio(333).ndims=2;
bio(333).size=[];


bio(334).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
bio(334).sigName='';
bio(334).portIdx=0;
bio(334).dim=[1,1];
bio(334).sigWidth=1;
bio(334).sigAddress='&initial_setup_B.EtherCATRxVar3_g';
bio(334).ndims=2;
bio(334).size=[];


bio(335).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
bio(335).sigName='';
bio(335).portIdx=0;
bio(335).dim=[1,1];
bio(335).sigWidth=1;
bio(335).sigAddress='&initial_setup_B.EtherCATRxVar4_a';
bio(335).ndims=2;
bio(335).size=[];


bio(336).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
bio(336).sigName='';
bio(336).portIdx=0;
bio(336).dim=[1,1];
bio(336).sigWidth=1;
bio(336).sigAddress='&initial_setup_B.EtherCATRxVar5_i';
bio(336).ndims=2;
bio(336).size=[];


bio(337).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
bio(337).sigName='';
bio(337).portIdx=0;
bio(337).dim=[1,1];
bio(337).sigWidth=1;
bio(337).sigAddress='&initial_setup_B.EtherCATRxVar6_f';
bio(337).ndims=2;
bio(337).size=[];


bio(338).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
bio(338).sigName='';
bio(338).portIdx=0;
bio(338).dim=[1,1];
bio(338).sigWidth=1;
bio(338).sigAddress='&initial_setup_B.EtherCATRxVar7_g';
bio(338).ndims=2;
bio(338).size=[];


bio(339).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
bio(339).sigName='';
bio(339).portIdx=0;
bio(339).dim=[1,1];
bio(339).sigWidth=1;
bio(339).sigAddress='&initial_setup_B.EtherCATRxVar8_h';
bio(339).ndims=2;
bio(339).size=[];


bio(340).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
bio(340).sigName='';
bio(340).portIdx=0;
bio(340).dim=[1,1];
bio(340).sigWidth=1;
bio(340).sigAddress='&initial_setup_B.EtherCATRxVar9_o';
bio(340).ndims=2;
bio(340).size=[];


bio(341).blkName='DAQ/OSU_to_CMU/signal';
bio(341).sigName='';
bio(341).portIdx=0;
bio(341).dim=[13,1];
bio(341).sigWidth=13;
bio(341).sigAddress='&initial_setup_B.signal[0]';
bio(341).ndims=2;
bio(341).size=[];


bio(342).blkName='DAQ/OSU_to_CMU/Sum';
bio(342).sigName='qLatL_abs_Initial';
bio(342).portIdx=0;
bio(342).dim=[1,1];
bio(342).sigWidth=1;
bio(342).sigAddress='&initial_setup_B.qLatL_abs_Initial';
bio(342).ndims=2;
bio(342).size=[];


bio(343).blkName='DAQ/OSU_to_CMU/Sum1';
bio(343).sigName='qLatR_abs_Initial';
bio(343).portIdx=0;
bio(343).dim=[1,1];
bio(343).sigWidth=1;
bio(343).sigAddress='&initial_setup_B.qLatR_abs_Initial';
bio(343).ndims=2;
bio(343).size=[];


bio(344).blkName='DAQ/OSU_to_CMU/Sum2';
bio(344).sigName='';
bio(344).portIdx=0;
bio(344).dim=[8,1];
bio(344).sigWidth=8;
bio(344).sigAddress='&initial_setup_B.Sum2[0]';
bio(344).ndims=2;
bio(344).size=[];


bio(345).blkName='DAQ/OSU_to_CMU/Sum3';
bio(345).sigName='qLatL';
bio(345).portIdx=0;
bio(345).dim=[1,1];
bio(345).sigWidth=1;
bio(345).sigAddress='&initial_setup_B.qLatL';
bio(345).ndims=2;
bio(345).size=[];


bio(346).blkName='DAQ/OSU_to_CMU/Sum4';
bio(346).sigName='qLatR';
bio(346).portIdx=0;
bio(346).dim=[1,1];
bio(346).sigWidth=1;
bio(346).sigAddress='&initial_setup_B.qLatR';
bio(346).ndims=2;
bio(346).size=[];


bio(347).blkName='DAQ/calibrate_and_convert_to_rad/Product';
bio(347).sigName='';
bio(347).portIdx=0;
bio(347).dim=[3,1];
bio(347).sigWidth=3;
bio(347).sigAddress='&initial_setup_B.Product_e[0]';
bio(347).ndims=2;
bio(347).size=[];


bio(348).blkName='DAQ/hold_initial_lateral_angles/Clock';
bio(348).sigName='';
bio(348).portIdx=0;
bio(348).dim=[1,1];
bio(348).sigWidth=1;
bio(348).sigAddress='&initial_setup_B.Clock_n';
bio(348).ndims=2;
bio(348).size=[];


bio(349).blkName='DAQ/low_pass_derivative/Gain1';
bio(349).sigName='';
bio(349).portIdx=0;
bio(349).dim=[13,1];
bio(349).sigWidth=13;
bio(349).sigAddress='&initial_setup_B.Gain1[0]';
bio(349).ndims=2;
bio(349).size=[];


bio(350).blkName='DAQ/low_pass_derivative/single_pole_filter';
bio(350).sigName='';
bio(350).portIdx=0;
bio(350).dim=[13,1];
bio(350).sigWidth=13;
bio(350).sigAddress='&initial_setup_B.single_pole_filter[0]';
bio(350).ndims=2;
bio(350).size=[];


bio(351).blkName='DAQ/mtr_current_cmd_to_pwm/Divide';
bio(351).sigName='';
bio(351).portIdx=0;
bio(351).dim=[1,1];
bio(351).sigWidth=1;
bio(351).sigAddress='&initial_setup_B.Divide';
bio(351).ndims=2;
bio(351).size=[];


bio(352).blkName='DAQ/mtr_current_cmd_to_pwm/Divide1';
bio(352).sigName='';
bio(352).portIdx=0;
bio(352).dim=[1,1];
bio(352).sigWidth=1;
bio(352).sigAddress='&initial_setup_B.Divide1';
bio(352).ndims=2;
bio(352).size=[];


bio(353).blkName='DAQ/mtr_current_cmd_to_pwm/Product';
bio(353).sigName='';
bio(353).portIdx=0;
bio(353).dim=[6,1];
bio(353).sigWidth=6;
bio(353).sigAddress='&initial_setup_B.Product_f[0]';
bio(353).ndims=2;
bio(353).size=[];


bio(354).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/qLatSignal';
bio(354).sigName='';
bio(354).portIdx=0;
bio(354).dim=[1,1];
bio(354).sigWidth=1;
bio(354).sigAddress='&initial_setup_B.qLatSignal';
bio(354).ndims=2;
bio(354).size=[];


bio(355).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Left Theta Desired';
bio(355).sigName='';
bio(355).portIdx=0;
bio(355).dim=[1,1];
bio(355).sigWidth=1;
bio(355).sigAddress='&initial_setup_B.LeftThetaDesired';
bio(355).ndims=2;
bio(355).size=[];


bio(356).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/dTheta Desired';
bio(356).sigName='';
bio(356).portIdx=0;
bio(356).dim=[1,1];
bio(356).sigWidth=1;
bio(356).sigAddress='&initial_setup_B.dThetaDesired';
bio(356).ndims=2;
bio(356).size=[];


bio(357).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Manual Switch';
bio(357).sigName='';
bio(357).portIdx=0;
bio(357).dim=[2,1];
bio(357).sigWidth=2;
bio(357).sigAddress='&initial_setup_B.ManualSwitch_o[0]';
bio(357).ndims=2;
bio(357).size=[];


bio(358).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Gain';
bio(358).sigName='';
bio(358).portIdx=0;
bio(358).dim=[1,1];
bio(358).sigWidth=1;
bio(358).sigAddress='&initial_setup_B.Gain';
bio(358).ndims=2;
bio(358).size=[];


bio(359).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Gain1';
bio(359).sigName='';
bio(359).portIdx=0;
bio(359).dim=[1,1];
bio(359).sigWidth=1;
bio(359).sigAddress='&initial_setup_B.Gain1_f';
bio(359).ndims=2;
bio(359).size=[];


bio(360).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/HipL';
bio(360).sigName='';
bio(360).portIdx=0;
bio(360).dim=[2,1];
bio(360).sigWidth=2;
bio(360).sigAddress='&initial_setup_B.HipL[0]';
bio(360).ndims=2;
bio(360).size=[];


bio(361).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired';
bio(361).sigName='';
bio(361).portIdx=0;
bio(361).dim=[1,1];
bio(361).sigWidth=1;
bio(361).sigAddress='&initial_setup_B.LHipThetaDesired';
bio(361).ndims=2;
bio(361).size=[];


bio(362).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Dot Desired';
bio(362).sigName='';
bio(362).portIdx=0;
bio(362).dim=[1,1];
bio(362).sigWidth=1;
bio(362).sigAddress='&initial_setup_B.LHipThetaDotDesired';
bio(362).ndims=2;
bio(362).size=[];


bio(363).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired';
bio(363).sigName='';
bio(363).portIdx=0;
bio(363).dim=[1,1];
bio(363).sigWidth=1;
bio(363).sigAddress='&initial_setup_B.LKneeThetaDesired';
bio(363).ndims=2;
bio(363).size=[];


bio(364).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Dot Desired';
bio(364).sigName='';
bio(364).portIdx=0;
bio(364).dim=[1,1];
bio(364).sigWidth=1;
bio(364).sigAddress='&initial_setup_B.LKneeThetaDotDesired';
bio(364).ndims=2;
bio(364).size=[];


bio(365).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum';
bio(365).sigName='';
bio(365).portIdx=0;
bio(365).dim=[1,1];
bio(365).sigWidth=1;
bio(365).sigAddress='&initial_setup_B.Sum_m';
bio(365).ndims=2;
bio(365).size=[];


bio(366).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum1';
bio(366).sigName='';
bio(366).portIdx=0;
bio(366).dim=[1,1];
bio(366).sigWidth=1;
bio(366).sigAddress='&initial_setup_B.Sum1_g';
bio(366).ndims=2;
bio(366).size=[];


bio(367).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum2';
bio(367).sigName='';
bio(367).portIdx=0;
bio(367).dim=[2,1];
bio(367).sigWidth=2;
bio(367).sigAddress='&initial_setup_B.Sum2_l[0]';
bio(367).ndims=2;
bio(367).size=[];


bio(368).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum3';
bio(368).sigName='';
bio(368).portIdx=0;
bio(368).dim=[2,1];
bio(368).sigWidth=2;
bio(368).sigAddress='&initial_setup_B.Sum3[0]';
bio(368).ndims=2;
bio(368).size=[];


bio(369).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Sum4';
bio(369).sigName='';
bio(369).portIdx=0;
bio(369).dim=[2,1];
bio(369).sigWidth=2;
bio(369).sigAddress='&initial_setup_B.Sum4[0]';
bio(369).ndims=2;
bio(369).size=[];


bio(370).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/qLatSignal';
bio(370).sigName='';
bio(370).portIdx=0;
bio(370).dim=[1,1];
bio(370).sigWidth=1;
bio(370).sigAddress='&initial_setup_B.qLatSignal_e';
bio(370).ndims=2;
bio(370).size=[];


bio(371).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Right Theta Desired';
bio(371).sigName='';
bio(371).portIdx=0;
bio(371).dim=[1,1];
bio(371).sigWidth=1;
bio(371).sigAddress='&initial_setup_B.RightThetaDesired';
bio(371).ndims=2;
bio(371).size=[];


bio(372).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/dTheta Desired';
bio(372).sigName='';
bio(372).portIdx=0;
bio(372).dim=[1,1];
bio(372).sigWidth=1;
bio(372).sigAddress='&initial_setup_B.dThetaDesired_g';
bio(372).ndims=2;
bio(372).size=[];


bio(373).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Gain';
bio(373).sigName='';
bio(373).portIdx=0;
bio(373).dim=[1,1];
bio(373).sigWidth=1;
bio(373).sigAddress='&initial_setup_B.Gain_p';
bio(373).ndims=2;
bio(373).size=[];


bio(374).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Gain1';
bio(374).sigName='';
bio(374).portIdx=0;
bio(374).dim=[1,1];
bio(374).sigWidth=1;
bio(374).sigAddress='&initial_setup_B.Gain1_j';
bio(374).ndims=2;
bio(374).size=[];


bio(375).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/HipR';
bio(375).sigName='';
bio(375).portIdx=0;
bio(375).dim=[2,1];
bio(375).sigWidth=2;
bio(375).sigAddress='&initial_setup_B.HipR[0]';
bio(375).ndims=2;
bio(375).size=[];


bio(376).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired';
bio(376).sigName='';
bio(376).portIdx=0;
bio(376).dim=[1,1];
bio(376).sigWidth=1;
bio(376).sigAddress='&initial_setup_B.RHipThetaDesired';
bio(376).ndims=2;
bio(376).size=[];


bio(377).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Dot Desired';
bio(377).sigName='';
bio(377).portIdx=0;
bio(377).dim=[1,1];
bio(377).sigWidth=1;
bio(377).sigAddress='&initial_setup_B.RHipThetaDotDesired';
bio(377).ndims=2;
bio(377).size=[];


bio(378).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired';
bio(378).sigName='';
bio(378).portIdx=0;
bio(378).dim=[1,1];
bio(378).sigWidth=1;
bio(378).sigAddress='&initial_setup_B.RKneeThetaDesired';
bio(378).ndims=2;
bio(378).size=[];


bio(379).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Dot Desired';
bio(379).sigName='';
bio(379).portIdx=0;
bio(379).dim=[1,1];
bio(379).sigWidth=1;
bio(379).sigAddress='&initial_setup_B.RKneeThetaDotDesired';
bio(379).ndims=2;
bio(379).size=[];


bio(380).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum';
bio(380).sigName='';
bio(380).portIdx=0;
bio(380).dim=[1,1];
bio(380).sigWidth=1;
bio(380).sigAddress='&initial_setup_B.Sum_n';
bio(380).ndims=2;
bio(380).size=[];


bio(381).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum1';
bio(381).sigName='';
bio(381).portIdx=0;
bio(381).dim=[1,1];
bio(381).sigWidth=1;
bio(381).sigAddress='&initial_setup_B.Sum1_fy';
bio(381).ndims=2;
bio(381).size=[];


bio(382).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum2';
bio(382).sigName='';
bio(382).portIdx=0;
bio(382).dim=[2,1];
bio(382).sigWidth=2;
bio(382).sigAddress='&initial_setup_B.Sum2_f[0]';
bio(382).ndims=2;
bio(382).size=[];


bio(383).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum3';
bio(383).sigName='';
bio(383).portIdx=0;
bio(383).dim=[2,1];
bio(383).sigWidth=2;
bio(383).sigAddress='&initial_setup_B.Sum3_n[0]';
bio(383).ndims=2;
bio(383).size=[];


bio(384).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Sum4';
bio(384).sigName='';
bio(384).portIdx=0;
bio(384).dim=[2,1];
bio(384).sigWidth=2;
bio(384).sigAddress='&initial_setup_B.Sum4_m[0]';
bio(384).ndims=2;
bio(384).size=[];


bio(385).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Product';
bio(385).sigName='rad_diff';
bio(385).portIdx=0;
bio(385).dim=[12,1];
bio(385).sigWidth=12;
bio(385).sigAddress='&initial_setup_B.rad_diff[0]';
bio(385).ndims=2;
bio(385).size=[];


bio(386).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Sum';
bio(386).sigName='tick_diff';
bio(386).portIdx=0;
bio(386).dim=[12,1];
bio(386).sigWidth=12;
bio(386).sigAddress='&initial_setup_B.tick_diff[0]';
bio(386).ndims=2;
bio(386).size=[];


bio(387).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Sum1';
bio(387).sigName='calibrated_angle';
bio(387).portIdx=0;
bio(387).dim=[12,1];
bio(387).sigWidth=12;
bio(387).sigAddress='&initial_setup_B.calibrated_angle[0]';
bio(387).ndims=2;
bio(387).size=[];


bio(388).blkName='DAQ/hold_initial_lateral_angles/Compare to const/Compare';
bio(388).sigName='';
bio(388).portIdx=0;
bio(388).dim=[1,1];
bio(388).sigWidth=1;
bio(388).sigAddress='&initial_setup_B.Compare_l';
bio(388).ndims=2;
bio(388).size=[];


bio(389).blkName='DAQ/hold_initial_lateral_angles/Initial Lateral Hip Angles  [rad]/In';
bio(389).sigName='';
bio(389).portIdx=0;
bio(389).dim=[4,1];
bio(389).sigWidth=4;
bio(389).sigAddress='&initial_setup_B.In[0]';
bio(389).ndims=2;
bio(389).size=[];


bio(390).blkName='DAQ/low_pass_derivative/difference/Diff';
bio(390).sigName='';
bio(390).portIdx=0;
bio(390).dim=[13,1];
bio(390).sigWidth=13;
bio(390).sigAddress='&initial_setup_B.Diff[0]';
bio(390).ndims=2;
bio(390).size=[];


bio(391).blkName='DAQ/low_pass_derivative/difference/UD';
bio(391).sigName='U(k-1)';
bio(391).portIdx=0;
bio(391).dim=[13,1];
bio(391).sigWidth=13;
bio(391).sigAddress='&initial_setup_B.Uk1[0]';
bio(391).ndims=2;
bio(391).size=[];


bio(392).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Abs';
bio(392).sigName='';
bio(392).portIdx=0;
bio(392).dim=[1,1];
bio(392).sigWidth=1;
bio(392).sigAddress='&initial_setup_B.Abs_p';
bio(392).ndims=2;
bio(392).size=[];


bio(393).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/1//BOOM_MAX_ENCODER_TICKS';
bio(393).sigName='';
bio(393).portIdx=0;
bio(393).dim=[1,1];
bio(393).sigWidth=1;
bio(393).sigAddress='&initial_setup_B.BOOM_MAX_ENCODER_TICKS';
bio(393).ndims=2;
bio(393).size=[];


bio(394).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/BOOM_MAX_ENCODER_TICKS';
bio(394).sigName='';
bio(394).portIdx=0;
bio(394).dim=[1,1];
bio(394).sigWidth=1;
bio(394).sigAddress='&initial_setup_B.BOOM_MAX_ENCODER_TICKS_n';
bio(394).ndims=2;
bio(394).size=[];


bio(395).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Gain2';
bio(395).sigName='';
bio(395).portIdx=0;
bio(395).dim=[1,1];
bio(395).sigWidth=1;
bio(395).sigAddress='&initial_setup_B.Gain2_i';
bio(395).ndims=2;
bio(395).size=[];


bio(396).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Product';
bio(396).sigName='';
bio(396).portIdx=0;
bio(396).dim=[1,1];
bio(396).sigWidth=1;
bio(396).sigAddress='&initial_setup_B.Product_j';
bio(396).ndims=2;
bio(396).size=[];


bio(397).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Rounding Function';
bio(397).sigName='';
bio(397).portIdx=0;
bio(397).dim=[1,1];
bio(397).sigWidth=1;
bio(397).sigAddress='&initial_setup_B.RoundingFunction_b';
bio(397).ndims=2;
bio(397).size=[];


bio(398).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum';
bio(398).sigName='';
bio(398).portIdx=0;
bio(398).dim=[1,1];
bio(398).sigWidth=1;
bio(398).sigAddress='&initial_setup_B.Sum_i';
bio(398).ndims=2;
bio(398).size=[];


bio(399).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum1';
bio(399).sigName='';
bio(399).portIdx=0;
bio(399).dim=[1,1];
bio(399).sigWidth=1;
bio(399).sigAddress='&initial_setup_B.Sum1_f';
bio(399).ndims=2;
bio(399).size=[];


bio(400).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum2';
bio(400).sigName='';
bio(400).portIdx=0;
bio(400).dim=[1,1];
bio(400).sigWidth=1;
bio(400).sigAddress='&initial_setup_B.Sum2_b';
bio(400).ndims=2;
bio(400).size=[];


bio(401).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum3';
bio(401).sigName='phi''-phi';
bio(401).portIdx=0;
bio(401).dim=[1,1];
bio(401).sigWidth=1;
bio(401).sigAddress='&initial_setup_B.phiphi_g';
bio(401).ndims=2;
bio(401).size=[];


bio(402).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Switch';
bio(402).sigName='';
bio(402).portIdx=0;
bio(402).dim=[1,1];
bio(402).sigWidth=1;
bio(402).sigAddress='&initial_setup_B.Switch_h';
bio(402).ndims=2;
bio(402).size=[];


bio(403).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Discrete Single Pole Lowpass Filter';
bio(403).sigName='';
bio(403).portIdx=0;
bio(403).dim=[1,1];
bio(403).sigWidth=1;
bio(403).sigAddress='&initial_setup_B.DiscreteSinglePoleLowpassFilter';
bio(403).ndims=2;
bio(403).size=[];


bio(404).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-1)';
bio(404).sigName='';
bio(404).portIdx=0;
bio(404).dim=[1,1];
bio(404).sigWidth=1;
bio(404).sigAddress='&initial_setup_B.UnitDelayphi_n1_p';
bio(404).ndims=2;
bio(404).size=[];


bio(405).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-2)';
bio(405).sigName='';
bio(405).portIdx=0;
bio(405).dim=[1,1];
bio(405).sigWidth=1;
bio(405).sigAddress='&initial_setup_B.UnitDelayphi_n2_k';
bio(405).ndims=2;
bio(405).size=[];


bio(406).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Abs';
bio(406).sigName='';
bio(406).portIdx=0;
bio(406).dim=[1,1];
bio(406).sigWidth=1;
bio(406).sigAddress='&initial_setup_B.Abs';
bio(406).ndims=2;
bio(406).size=[];


bio(407).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/1//HIP_INC_MAX_ENCODER_TICKS';
bio(407).sigName='';
bio(407).portIdx=0;
bio(407).dim=[1,1];
bio(407).sigWidth=1;
bio(407).sigAddress='&initial_setup_B.HIP_INC_MAX_ENCODER_TICKS';
bio(407).ndims=2;
bio(407).size=[];


bio(408).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Gain2';
bio(408).sigName='';
bio(408).portIdx=0;
bio(408).dim=[1,1];
bio(408).sigWidth=1;
bio(408).sigAddress='&initial_setup_B.Gain2';
bio(408).ndims=2;
bio(408).size=[];


bio(409).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/HIP_INC_MAX_ENCODER_TICKS';
bio(409).sigName='';
bio(409).portIdx=0;
bio(409).dim=[1,1];
bio(409).sigWidth=1;
bio(409).sigAddress='&initial_setup_B.HIP_INC_MAX_ENCODER_TICKS_o';
bio(409).ndims=2;
bio(409).size=[];


bio(410).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Product';
bio(410).sigName='';
bio(410).portIdx=0;
bio(410).dim=[1,1];
bio(410).sigWidth=1;
bio(410).sigAddress='&initial_setup_B.Product';
bio(410).ndims=2;
bio(410).size=[];


bio(411).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Rounding Function';
bio(411).sigName='';
bio(411).portIdx=0;
bio(411).dim=[1,1];
bio(411).sigWidth=1;
bio(411).sigAddress='&initial_setup_B.RoundingFunction';
bio(411).ndims=2;
bio(411).size=[];


bio(412).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum';
bio(412).sigName='';
bio(412).portIdx=0;
bio(412).dim=[1,1];
bio(412).sigWidth=1;
bio(412).sigAddress='&initial_setup_B.Sum';
bio(412).ndims=2;
bio(412).size=[];


bio(413).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum1';
bio(413).sigName='';
bio(413).portIdx=0;
bio(413).dim=[1,1];
bio(413).sigWidth=1;
bio(413).sigAddress='&initial_setup_B.Sum1';
bio(413).ndims=2;
bio(413).size=[];


bio(414).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum2';
bio(414).sigName='';
bio(414).portIdx=0;
bio(414).dim=[1,1];
bio(414).sigWidth=1;
bio(414).sigAddress='&initial_setup_B.Sum2_n';
bio(414).ndims=2;
bio(414).size=[];


bio(415).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum3';
bio(415).sigName='phi''-phi';
bio(415).portIdx=0;
bio(415).dim=[1,1];
bio(415).sigWidth=1;
bio(415).sigAddress='&initial_setup_B.phiphi';
bio(415).ndims=2;
bio(415).size=[];


bio(416).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Switch';
bio(416).sigName='';
bio(416).portIdx=0;
bio(416).dim=[1,1];
bio(416).sigWidth=1;
bio(416).sigAddress='&initial_setup_B.Switch';
bio(416).ndims=2;
bio(416).size=[];


bio(417).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Discrete Single Pole Lowpass Filter';
bio(417).sigName='';
bio(417).portIdx=0;
bio(417).dim=[1,1];
bio(417).sigWidth=1;
bio(417).sigAddress='&initial_setup_B.DiscreteSinglePoleLowpassFilt_c';
bio(417).ndims=2;
bio(417).size=[];


bio(418).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-1)';
bio(418).sigName='';
bio(418).portIdx=0;
bio(418).dim=[1,1];
bio(418).sigWidth=1;
bio(418).sigAddress='&initial_setup_B.UnitDelayphi_n1';
bio(418).ndims=2;
bio(418).size=[];


bio(419).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-2)';
bio(419).sigName='';
bio(419).portIdx=0;
bio(419).dim=[1,1];
bio(419).sigWidth=1;
bio(419).sigAddress='&initial_setup_B.UnitDelayphi_n2';
bio(419).ndims=2;
bio(419).size=[];


bio(420).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Abs';
bio(420).sigName='';
bio(420).portIdx=0;
bio(420).dim=[1,1];
bio(420).sigWidth=1;
bio(420).sigAddress='&initial_setup_B.Abs_o';
bio(420).ndims=2;
bio(420).size=[];


bio(421).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/1//HIP_INC_MAX_ENCODER_TICKS';
bio(421).sigName='';
bio(421).portIdx=0;
bio(421).dim=[1,1];
bio(421).sigWidth=1;
bio(421).sigAddress='&initial_setup_B.HIP_INC_MAX_ENCODER_TICKS_o3';
bio(421).ndims=2;
bio(421).size=[];


bio(422).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Gain2';
bio(422).sigName='';
bio(422).portIdx=0;
bio(422).dim=[1,1];
bio(422).sigWidth=1;
bio(422).sigAddress='&initial_setup_B.Gain2_h';
bio(422).ndims=2;
bio(422).size=[];


bio(423).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/HIP_INC_MAX_ENCODER_TICKS';
bio(423).sigName='';
bio(423).portIdx=0;
bio(423).dim=[1,1];
bio(423).sigWidth=1;
bio(423).sigAddress='&initial_setup_B.HIP_INC_MAX_ENCODER_TICKS_d';
bio(423).ndims=2;
bio(423).size=[];


bio(424).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Product';
bio(424).sigName='';
bio(424).portIdx=0;
bio(424).dim=[1,1];
bio(424).sigWidth=1;
bio(424).sigAddress='&initial_setup_B.Product_l';
bio(424).ndims=2;
bio(424).size=[];


bio(425).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Rounding Function';
bio(425).sigName='';
bio(425).portIdx=0;
bio(425).dim=[1,1];
bio(425).sigWidth=1;
bio(425).sigAddress='&initial_setup_B.RoundingFunction_g';
bio(425).ndims=2;
bio(425).size=[];


bio(426).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum';
bio(426).sigName='';
bio(426).portIdx=0;
bio(426).dim=[1,1];
bio(426).sigWidth=1;
bio(426).sigAddress='&initial_setup_B.Sum_l';
bio(426).ndims=2;
bio(426).size=[];


bio(427).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum1';
bio(427).sigName='';
bio(427).portIdx=0;
bio(427).dim=[1,1];
bio(427).sigWidth=1;
bio(427).sigAddress='&initial_setup_B.Sum1_k';
bio(427).ndims=2;
bio(427).size=[];


bio(428).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum2';
bio(428).sigName='';
bio(428).portIdx=0;
bio(428).dim=[1,1];
bio(428).sigWidth=1;
bio(428).sigAddress='&initial_setup_B.Sum2_nx';
bio(428).ndims=2;
bio(428).size=[];


bio(429).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum3';
bio(429).sigName='phi''-phi';
bio(429).portIdx=0;
bio(429).dim=[1,1];
bio(429).sigWidth=1;
bio(429).sigAddress='&initial_setup_B.phiphi_n';
bio(429).ndims=2;
bio(429).size=[];


bio(430).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Switch';
bio(430).sigName='';
bio(430).portIdx=0;
bio(430).dim=[1,1];
bio(430).sigWidth=1;
bio(430).sigAddress='&initial_setup_B.Switch_p';
bio(430).ndims=2;
bio(430).size=[];


bio(431).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Discrete Single Pole Lowpass Filter';
bio(431).sigName='';
bio(431).portIdx=0;
bio(431).dim=[1,1];
bio(431).sigWidth=1;
bio(431).sigAddress='&initial_setup_B.DiscreteSinglePoleLowpassFilt_f';
bio(431).ndims=2;
bio(431).size=[];


bio(432).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-1)';
bio(432).sigName='';
bio(432).portIdx=0;
bio(432).dim=[1,1];
bio(432).sigWidth=1;
bio(432).sigAddress='&initial_setup_B.UnitDelayphi_n1_o';
bio(432).ndims=2;
bio(432).size=[];


bio(433).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-2)';
bio(433).sigName='';
bio(433).portIdx=0;
bio(433).dim=[1,1];
bio(433).sigWidth=1;
bio(433).sigAddress='&initial_setup_B.UnitDelayphi_n2_l';
bio(433).ndims=2;
bio(433).size=[];


bio(434).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Clock';
bio(434).sigName='';
bio(434).portIdx=0;
bio(434).dim=[1,1];
bio(434).sigWidth=1;
bio(434).sigAddress='&initial_setup_B.Clock_h';
bio(434).ndims=2;
bio(434).size=[];


bio(435).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Divide';
bio(435).sigName='';
bio(435).portIdx=0;
bio(435).dim=[2,1];
bio(435).sigWidth=2;
bio(435).sigAddress='&initial_setup_B.Divide_c[0]';
bio(435).ndims=2;
bio(435).size=[];


bio(436).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Position Saturation';
bio(436).sigName='';
bio(436).portIdx=0;
bio(436).dim=[1,1];
bio(436).sigWidth=1;
bio(436).sigAddress='&initial_setup_B.PositionSaturation_l';
bio(436).ndims=2;
bio(436).size=[];


bio(437).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Sum';
bio(437).sigName='';
bio(437).portIdx=0;
bio(437).dim=[2,1];
bio(437).sigWidth=2;
bio(437).sigAddress='&initial_setup_B.Sum_ir[0]';
bio(437).ndims=2;
bio(437).size=[];


bio(438).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Switch';
bio(438).sigName='';
bio(438).portIdx=0;
bio(438).dim=[2,1];
bio(438).sigWidth=2;
bio(438).sigAddress='&initial_setup_B.Switch_f[0]';
bio(438).ndims=2;
bio(438).size=[];


bio(439).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Gain4';
bio(439).sigName='';
bio(439).portIdx=0;
bio(439).dim=[1,1];
bio(439).sigWidth=1;
bio(439).sigAddress='&initial_setup_B.Gain4_i';
bio(439).ndims=2;
bio(439).size=[];


bio(440).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Gain5';
bio(440).sigName='';
bio(440).portIdx=0;
bio(440).dim=[1,1];
bio(440).sigWidth=1;
bio(440).sigAddress='&initial_setup_B.Gain5_o';
bio(440).ndims=2;
bio(440).size=[];


bio(441).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Sum4';
bio(441).sigName='';
bio(441).portIdx=0;
bio(441).dim=[1,1];
bio(441).sigWidth=1;
bio(441).sigAddress='&initial_setup_B.Sum4_a';
bio(441).ndims=2;
bio(441).size=[];


bio(442).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Sum5';
bio(442).sigName='';
bio(442).portIdx=0;
bio(442).dim=[1,1];
bio(442).sigWidth=1;
bio(442).sigAddress='&initial_setup_B.Sum5_k';
bio(442).ndims=2;
bio(442).size=[];


bio(443).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Sum6';
bio(443).sigName='';
bio(443).portIdx=0;
bio(443).dim=[1,1];
bio(443).sigWidth=1;
bio(443).sigAddress='&initial_setup_B.Sum6_h';
bio(443).ndims=2;
bio(443).size=[];


bio(444).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Gain4';
bio(444).sigName='';
bio(444).portIdx=0;
bio(444).dim=[1,1];
bio(444).sigWidth=1;
bio(444).sigAddress='&initial_setup_B.Gain4';
bio(444).ndims=2;
bio(444).size=[];


bio(445).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Gain5';
bio(445).sigName='';
bio(445).portIdx=0;
bio(445).dim=[1,1];
bio(445).sigWidth=1;
bio(445).sigAddress='&initial_setup_B.Gain5';
bio(445).ndims=2;
bio(445).size=[];


bio(446).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Sum4';
bio(446).sigName='';
bio(446).portIdx=0;
bio(446).dim=[1,1];
bio(446).sigWidth=1;
bio(446).sigAddress='&initial_setup_B.Sum4_i';
bio(446).ndims=2;
bio(446).size=[];


bio(447).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Sum5';
bio(447).sigName='';
bio(447).portIdx=0;
bio(447).dim=[1,1];
bio(447).sigWidth=1;
bio(447).sigAddress='&initial_setup_B.Sum5';
bio(447).ndims=2;
bio(447).size=[];


bio(448).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Sum6';
bio(448).sigName='';
bio(448).portIdx=0;
bio(448).dim=[1,1];
bio(448).sigWidth=1;
bio(448).sigAddress='&initial_setup_B.Sum6';
bio(448).ndims=2;
bio(448).size=[];


bio(449).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Gain6';
bio(449).sigName='';
bio(449).portIdx=0;
bio(449).dim=[1,1];
bio(449).sigWidth=1;
bio(449).sigAddress='&initial_setup_B.Gain6';
bio(449).ndims=2;
bio(449).size=[];


bio(450).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Gain7';
bio(450).sigName='';
bio(450).portIdx=0;
bio(450).dim=[1,1];
bio(450).sigWidth=1;
bio(450).sigAddress='&initial_setup_B.Gain7';
bio(450).ndims=2;
bio(450).size=[];


bio(451).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Sum7';
bio(451).sigName='';
bio(451).portIdx=0;
bio(451).dim=[1,1];
bio(451).sigWidth=1;
bio(451).sigAddress='&initial_setup_B.Sum7';
bio(451).ndims=2;
bio(451).size=[];


bio(452).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Sum8';
bio(452).sigName='';
bio(452).portIdx=0;
bio(452).dim=[1,1];
bio(452).sigWidth=1;
bio(452).sigAddress='&initial_setup_B.Sum8';
bio(452).ndims=2;
bio(452).size=[];


bio(453).blkName='Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Sum9';
bio(453).sigName='';
bio(453).portIdx=0;
bio(453).dim=[1,1];
bio(453).sigWidth=1;
bio(453).sigAddress='&initial_setup_B.Sum9';
bio(453).ndims=2;
bio(453).size=[];


bio(454).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Clock';
bio(454).sigName='';
bio(454).portIdx=0;
bio(454).dim=[1,1];
bio(454).sigWidth=1;
bio(454).sigAddress='&initial_setup_B.Clock_m';
bio(454).ndims=2;
bio(454).size=[];


bio(455).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Divide';
bio(455).sigName='';
bio(455).portIdx=0;
bio(455).dim=[2,1];
bio(455).sigWidth=2;
bio(455).sigAddress='&initial_setup_B.Divide_p[0]';
bio(455).ndims=2;
bio(455).size=[];


bio(456).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Position Saturation';
bio(456).sigName='';
bio(456).portIdx=0;
bio(456).dim=[1,1];
bio(456).sigWidth=1;
bio(456).sigAddress='&initial_setup_B.PositionSaturation';
bio(456).ndims=2;
bio(456).size=[];


bio(457).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Sum';
bio(457).sigName='';
bio(457).portIdx=0;
bio(457).dim=[2,1];
bio(457).sigWidth=2;
bio(457).sigAddress='&initial_setup_B.Sum_b[0]';
bio(457).ndims=2;
bio(457).size=[];


bio(458).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Switch';
bio(458).sigName='';
bio(458).portIdx=0;
bio(458).dim=[2,1];
bio(458).sigWidth=2;
bio(458).sigAddress='&initial_setup_B.Switch_j[0]';
bio(458).ndims=2;
bio(458).size=[];


bio(459).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Gain4';
bio(459).sigName='';
bio(459).portIdx=0;
bio(459).dim=[1,1];
bio(459).sigWidth=1;
bio(459).sigAddress='&initial_setup_B.Gain4_a';
bio(459).ndims=2;
bio(459).size=[];


bio(460).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Gain5';
bio(460).sigName='';
bio(460).portIdx=0;
bio(460).dim=[1,1];
bio(460).sigWidth=1;
bio(460).sigAddress='&initial_setup_B.Gain5_j';
bio(460).ndims=2;
bio(460).size=[];


bio(461).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Sum4';
bio(461).sigName='';
bio(461).portIdx=0;
bio(461).dim=[1,1];
bio(461).sigWidth=1;
bio(461).sigAddress='&initial_setup_B.Sum4_id';
bio(461).ndims=2;
bio(461).size=[];


bio(462).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Sum5';
bio(462).sigName='';
bio(462).portIdx=0;
bio(462).dim=[1,1];
bio(462).sigWidth=1;
bio(462).sigAddress='&initial_setup_B.Sum5_kp';
bio(462).ndims=2;
bio(462).size=[];


bio(463).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Sum6';
bio(463).sigName='';
bio(463).portIdx=0;
bio(463).dim=[1,1];
bio(463).sigWidth=1;
bio(463).sigAddress='&initial_setup_B.Sum6_i';
bio(463).ndims=2;
bio(463).size=[];


bio(464).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Gain4';
bio(464).sigName='';
bio(464).portIdx=0;
bio(464).dim=[1,1];
bio(464).sigWidth=1;
bio(464).sigAddress='&initial_setup_B.Gain4_g';
bio(464).ndims=2;
bio(464).size=[];


bio(465).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Gain5';
bio(465).sigName='';
bio(465).portIdx=0;
bio(465).dim=[1,1];
bio(465).sigWidth=1;
bio(465).sigAddress='&initial_setup_B.Gain5_l';
bio(465).ndims=2;
bio(465).size=[];


bio(466).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Sum4';
bio(466).sigName='';
bio(466).portIdx=0;
bio(466).dim=[1,1];
bio(466).sigWidth=1;
bio(466).sigAddress='&initial_setup_B.Sum4_e';
bio(466).ndims=2;
bio(466).size=[];


bio(467).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Sum5';
bio(467).sigName='';
bio(467).portIdx=0;
bio(467).dim=[1,1];
bio(467).sigWidth=1;
bio(467).sigAddress='&initial_setup_B.Sum5_n';
bio(467).ndims=2;
bio(467).size=[];


bio(468).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Sum6';
bio(468).sigName='';
bio(468).portIdx=0;
bio(468).dim=[1,1];
bio(468).sigWidth=1;
bio(468).sigAddress='&initial_setup_B.Sum6_c';
bio(468).ndims=2;
bio(468).size=[];


bio(469).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Gain6';
bio(469).sigName='';
bio(469).portIdx=0;
bio(469).dim=[1,1];
bio(469).sigWidth=1;
bio(469).sigAddress='&initial_setup_B.Gain6_f';
bio(469).ndims=2;
bio(469).size=[];


bio(470).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Gain7';
bio(470).sigName='';
bio(470).portIdx=0;
bio(470).dim=[1,1];
bio(470).sigWidth=1;
bio(470).sigAddress='&initial_setup_B.Gain7_a';
bio(470).ndims=2;
bio(470).size=[];


bio(471).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Sum7';
bio(471).sigName='';
bio(471).portIdx=0;
bio(471).dim=[1,1];
bio(471).sigWidth=1;
bio(471).sigAddress='&initial_setup_B.Sum7_n';
bio(471).ndims=2;
bio(471).size=[];


bio(472).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Sum8';
bio(472).sigName='';
bio(472).portIdx=0;
bio(472).dim=[1,1];
bio(472).sigWidth=1;
bio(472).sigAddress='&initial_setup_B.Sum8_i';
bio(472).ndims=2;
bio(472).size=[];


bio(473).blkName='Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Sum9';
bio(473).sigName='';
bio(473).portIdx=0;
bio(473).dim=[1,1];
bio(473).sigWidth=1;
bio(473).sigAddress='&initial_setup_B.Sum9_n';
bio(473).ndims=2;
bio(473).size=[];


bio(474).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Gain2';
bio(474).sigName='';
bio(474).portIdx=0;
bio(474).dim=[1,1];
bio(474).sigWidth=1;
bio(474).sigAddress='&initial_setup_B.Gain2_g';
bio(474).ndims=2;
bio(474).size=[];


bio(475).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Spring Stiffness';
bio(475).sigName='tau_L';
bio(475).portIdx=0;
bio(475).dim=[1,1];
bio(475).sigWidth=1;
bio(475).sigAddress='&initial_setup_B.tau_L_n';
bio(475).ndims=2;
bio(475).size=[];


bio(476).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
bio(476).sigName='';
bio(476).portIdx=0;
bio(476).dim=[1,1];
bio(476).sigWidth=1;
bio(476).sigAddress='&initial_setup_B.TorqueLimiteroutside_d';
bio(476).ndims=2;
bio(476).size=[];


bio(477).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Sum1';
bio(477).sigName='';
bio(477).portIdx=0;
bio(477).dim=[1,1];
bio(477).sigWidth=1;
bio(477).sigAddress='&initial_setup_B.Sum1_m3';
bio(477).ndims=2;
bio(477).size=[];


bio(478).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Sum2';
bio(478).sigName='tau_Err';
bio(478).portIdx=0;
bio(478).dim=[1,1];
bio(478).sigWidth=1;
bio(478).sigAddress='&initial_setup_B.tau_Err_l';
bio(478).ndims=2;
bio(478).size=[];


bio(479).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Sum3';
bio(479).sigName='';
bio(479).portIdx=0;
bio(479).dim=[1,1];
bio(479).sigWidth=1;
bio(479).sigAddress='&initial_setup_B.Sum3_hp';
bio(479).ndims=2;
bio(479).size=[];


bio(480).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Sum4';
bio(480).sigName='';
bio(480).portIdx=0;
bio(480).dim=[1,1];
bio(480).sigWidth=1;
bio(480).sigAddress='&initial_setup_B.Sum4_g';
bio(480).ndims=2;
bio(480).size=[];


bio(481).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Sum5';
bio(481).sigName='';
bio(481).portIdx=0;
bio(481).dim=[1,1];
bio(481).sigWidth=1;
bio(481).sigAddress='&initial_setup_B.Sum5_p';
bio(481).ndims=2;
bio(481).size=[];


bio(482).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Gain2';
bio(482).sigName='';
bio(482).portIdx=0;
bio(482).dim=[1,1];
bio(482).sigWidth=1;
bio(482).sigAddress='&initial_setup_B.Gain2_eb';
bio(482).ndims=2;
bio(482).size=[];


bio(483).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Spring Stiffness';
bio(483).sigName='tau_L';
bio(483).portIdx=0;
bio(483).dim=[1,1];
bio(483).sigWidth=1;
bio(483).sigAddress='&initial_setup_B.tau_L_b';
bio(483).ndims=2;
bio(483).size=[];


bio(484).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
bio(484).sigName='';
bio(484).portIdx=0;
bio(484).dim=[1,1];
bio(484).sigWidth=1;
bio(484).sigAddress='&initial_setup_B.TorqueLimiteroutside_h';
bio(484).ndims=2;
bio(484).size=[];


bio(485).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Sum1';
bio(485).sigName='';
bio(485).portIdx=0;
bio(485).dim=[1,1];
bio(485).sigWidth=1;
bio(485).sigAddress='&initial_setup_B.Sum1_c';
bio(485).ndims=2;
bio(485).size=[];


bio(486).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Sum2';
bio(486).sigName='tau_Err';
bio(486).portIdx=0;
bio(486).dim=[1,1];
bio(486).sigWidth=1;
bio(486).sigAddress='&initial_setup_B.tau_Err_o';
bio(486).ndims=2;
bio(486).size=[];


bio(487).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Sum3';
bio(487).sigName='';
bio(487).portIdx=0;
bio(487).dim=[1,1];
bio(487).sigWidth=1;
bio(487).sigAddress='&initial_setup_B.Sum3_dj';
bio(487).ndims=2;
bio(487).size=[];


bio(488).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Sum4';
bio(488).sigName='';
bio(488).portIdx=0;
bio(488).dim=[1,1];
bio(488).sigWidth=1;
bio(488).sigAddress='&initial_setup_B.Sum4_d';
bio(488).ndims=2;
bio(488).size=[];


bio(489).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Sum5';
bio(489).sigName='';
bio(489).portIdx=0;
bio(489).dim=[1,1];
bio(489).sigWidth=1;
bio(489).sigAddress='&initial_setup_B.Sum5_o';
bio(489).ndims=2;
bio(489).size=[];


bio(490).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Gain2';
bio(490).sigName='';
bio(490).portIdx=0;
bio(490).dim=[1,1];
bio(490).sigWidth=1;
bio(490).sigAddress='&initial_setup_B.Gain2_e';
bio(490).ndims=2;
bio(490).size=[];


bio(491).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Spring Stiffness';
bio(491).sigName='tau_L';
bio(491).portIdx=0;
bio(491).dim=[1,1];
bio(491).sigWidth=1;
bio(491).sigAddress='&initial_setup_B.tau_L';
bio(491).ndims=2;
bio(491).size=[];


bio(492).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
bio(492).sigName='';
bio(492).portIdx=0;
bio(492).dim=[1,1];
bio(492).sigWidth=1;
bio(492).sigAddress='&initial_setup_B.TorqueLimiteroutside';
bio(492).ndims=2;
bio(492).size=[];


bio(493).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Sum1';
bio(493).sigName='';
bio(493).portIdx=0;
bio(493).dim=[1,1];
bio(493).sigWidth=1;
bio(493).sigAddress='&initial_setup_B.Sum1_m';
bio(493).ndims=2;
bio(493).size=[];


bio(494).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Sum2';
bio(494).sigName='tau_Err';
bio(494).portIdx=0;
bio(494).dim=[1,1];
bio(494).sigWidth=1;
bio(494).sigAddress='&initial_setup_B.tau_Err';
bio(494).ndims=2;
bio(494).size=[];


bio(495).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Sum3';
bio(495).sigName='';
bio(495).portIdx=0;
bio(495).dim=[1,1];
bio(495).sigWidth=1;
bio(495).sigAddress='&initial_setup_B.Sum3_h';
bio(495).ndims=2;
bio(495).size=[];


bio(496).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Sum4';
bio(496).sigName='';
bio(496).portIdx=0;
bio(496).dim=[1,1];
bio(496).sigWidth=1;
bio(496).sigAddress='&initial_setup_B.Sum4_j';
bio(496).ndims=2;
bio(496).size=[];


bio(497).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Sum5';
bio(497).sigName='';
bio(497).portIdx=0;
bio(497).dim=[1,1];
bio(497).sigWidth=1;
bio(497).sigAddress='&initial_setup_B.Sum5_g';
bio(497).ndims=2;
bio(497).size=[];


bio(498).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Gain2';
bio(498).sigName='';
bio(498).portIdx=0;
bio(498).dim=[1,1];
bio(498).sigWidth=1;
bio(498).sigAddress='&initial_setup_B.Gain2_k';
bio(498).ndims=2;
bio(498).size=[];


bio(499).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Spring Stiffness';
bio(499).sigName='tau_L';
bio(499).portIdx=0;
bio(499).dim=[1,1];
bio(499).sigWidth=1;
bio(499).sigAddress='&initial_setup_B.tau_L_l';
bio(499).ndims=2;
bio(499).size=[];


bio(500).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
bio(500).sigName='';
bio(500).portIdx=0;
bio(500).dim=[1,1];
bio(500).sigWidth=1;
bio(500).sigAddress='&initial_setup_B.TorqueLimiteroutside_n';
bio(500).ndims=2;
bio(500).size=[];


bio(501).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Sum1';
bio(501).sigName='';
bio(501).portIdx=0;
bio(501).dim=[1,1];
bio(501).sigWidth=1;
bio(501).sigAddress='&initial_setup_B.Sum1_h';
bio(501).ndims=2;
bio(501).size=[];


bio(502).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Sum2';
bio(502).sigName='tau_Err';
bio(502).portIdx=0;
bio(502).dim=[1,1];
bio(502).sigWidth=1;
bio(502).sigAddress='&initial_setup_B.tau_Err_e';
bio(502).ndims=2;
bio(502).size=[];


bio(503).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Sum3';
bio(503).sigName='';
bio(503).portIdx=0;
bio(503).dim=[1,1];
bio(503).sigWidth=1;
bio(503).sigAddress='&initial_setup_B.Sum3_d';
bio(503).ndims=2;
bio(503).size=[];


bio(504).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Sum4';
bio(504).sigName='';
bio(504).portIdx=0;
bio(504).dim=[1,1];
bio(504).sigWidth=1;
bio(504).sigAddress='&initial_setup_B.Sum4_o';
bio(504).ndims=2;
bio(504).size=[];


bio(505).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Sum5';
bio(505).sigName='';
bio(505).portIdx=0;
bio(505).dim=[1,1];
bio(505).sigWidth=1;
bio(505).sigAddress='&initial_setup_B.Sum5_h';
bio(505).ndims=2;
bio(505).size=[];


bio(506).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Compare To Zero/Compare';
bio(506).sigName='';
bio(506).portIdx=0;
bio(506).dim=[1,1];
bio(506).sigWidth=1;
bio(506).sigAddress='&initial_setup_B.Compare_i';
bio(506).ndims=2;
bio(506).size=[];


bio(507).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Compare To Zero/Compare';
bio(507).sigName='';
bio(507).portIdx=0;
bio(507).dim=[1,1];
bio(507).sigWidth=1;
bio(507).sigAddress='&initial_setup_B.Compare';
bio(507).ndims=2;
bio(507).size=[];


bio(508).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Compare To Zero/Compare';
bio(508).sigName='';
bio(508).portIdx=0;
bio(508).dim=[1,1];
bio(508).sigWidth=1;
bio(508).sigAddress='&initial_setup_B.Compare_a';
bio(508).ndims=2;
bio(508).size=[];


bio(509).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Clock';
bio(509).sigName='';
bio(509).portIdx=0;
bio(509).dim=[1,1];
bio(509).sigWidth=1;
bio(509).sigAddress='&initial_setup_B.Clock_g';
bio(509).ndims=2;
bio(509).size=[];


bio(510).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Product';
bio(510).sigName='';
bio(510).portIdx=0;
bio(510).dim=[1,1];
bio(510).sigWidth=1;
bio(510).sigAddress='&initial_setup_B.Product_pu';
bio(510).ndims=2;
bio(510).size=[];


bio(511).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Step';
bio(511).sigName='';
bio(511).portIdx=0;
bio(511).dim=[1,1];
bio(511).sigWidth=1;
bio(511).sigAddress='&initial_setup_B.Step';
bio(511).ndims=2;
bio(511).size=[];


bio(512).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Output';
bio(512).sigName='';
bio(512).portIdx=0;
bio(512).dim=[1,1];
bio(512).sigWidth=1;
bio(512).sigAddress='&initial_setup_B.Output_o';
bio(512).ndims=2;
bio(512).size=[];


bio(513).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Sum';
bio(513).sigName='';
bio(513).portIdx=0;
bio(513).dim=[1,1];
bio(513).sigWidth=1;
bio(513).sigAddress='&initial_setup_B.Sum_e';
bio(513).ndims=2;
bio(513).size=[];


bio(514).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Clock';
bio(514).sigName='';
bio(514).portIdx=0;
bio(514).dim=[1,1];
bio(514).sigWidth=1;
bio(514).sigAddress='&initial_setup_B.Clock_ka';
bio(514).ndims=2;
bio(514).size=[];


bio(515).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Product';
bio(515).sigName='';
bio(515).portIdx=0;
bio(515).dim=[1,1];
bio(515).sigWidth=1;
bio(515).sigAddress='&initial_setup_B.Product_ft';
bio(515).ndims=2;
bio(515).size=[];


bio(516).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Step';
bio(516).sigName='';
bio(516).portIdx=0;
bio(516).dim=[1,1];
bio(516).sigWidth=1;
bio(516).sigAddress='&initial_setup_B.Step_g';
bio(516).ndims=2;
bio(516).size=[];


bio(517).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Output';
bio(517).sigName='';
bio(517).portIdx=0;
bio(517).dim=[1,1];
bio(517).sigWidth=1;
bio(517).sigAddress='&initial_setup_B.Output_h';
bio(517).ndims=2;
bio(517).size=[];


bio(518).blkName='Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Sum';
bio(518).sigName='';
bio(518).portIdx=0;
bio(518).dim=[1,1];
bio(518).sigWidth=1;
bio(518).sigAddress='&initial_setup_B.Sum_a';
bio(518).ndims=2;
bio(518).size=[];


bio(519).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Clock';
bio(519).sigName='';
bio(519).portIdx=0;
bio(519).dim=[1,1];
bio(519).sigWidth=1;
bio(519).sigAddress='&initial_setup_B.Clock_j';
bio(519).ndims=2;
bio(519).size=[];


bio(520).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Product';
bio(520).sigName='';
bio(520).portIdx=0;
bio(520).dim=[1,1];
bio(520).sigWidth=1;
bio(520).sigAddress='&initial_setup_B.Product_fv';
bio(520).ndims=2;
bio(520).size=[];


bio(521).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Step';
bio(521).sigName='';
bio(521).portIdx=0;
bio(521).dim=[1,1];
bio(521).sigWidth=1;
bio(521).sigAddress='&initial_setup_B.Step_h';
bio(521).ndims=2;
bio(521).size=[];


bio(522).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Output';
bio(522).sigName='';
bio(522).portIdx=0;
bio(522).dim=[1,1];
bio(522).sigWidth=1;
bio(522).sigAddress='&initial_setup_B.Output';
bio(522).ndims=2;
bio(522).size=[];


bio(523).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Sum';
bio(523).sigName='';
bio(523).portIdx=0;
bio(523).dim=[1,1];
bio(523).sigWidth=1;
bio(523).sigAddress='&initial_setup_B.Sum_p';
bio(523).ndims=2;
bio(523).size=[];


bio(524).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Clock';
bio(524).sigName='';
bio(524).portIdx=0;
bio(524).dim=[1,1];
bio(524).sigWidth=1;
bio(524).sigAddress='&initial_setup_B.Clock_d';
bio(524).ndims=2;
bio(524).size=[];


bio(525).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Product';
bio(525).sigName='';
bio(525).portIdx=0;
bio(525).dim=[1,1];
bio(525).sigWidth=1;
bio(525).sigAddress='&initial_setup_B.Product_p';
bio(525).ndims=2;
bio(525).size=[];


bio(526).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Step';
bio(526).sigName='';
bio(526).portIdx=0;
bio(526).dim=[1,1];
bio(526).sigWidth=1;
bio(526).sigAddress='&initial_setup_B.Step_p';
bio(526).ndims=2;
bio(526).size=[];


bio(527).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Output';
bio(527).sigName='';
bio(527).portIdx=0;
bio(527).dim=[1,1];
bio(527).sigWidth=1;
bio(527).sigAddress='&initial_setup_B.Output_i';
bio(527).ndims=2;
bio(527).size=[];


bio(528).blkName='Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Sum';
bio(528).sigName='';
bio(528).portIdx=0;
bio(528).dim=[1,1];
bio(528).sigWidth=1;
bio(528).sigAddress='&initial_setup_B.Sum_ie';
bio(528).ndims=2;
bio(528).size=[];


bio(529).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/Proportional Gain';
bio(529).sigName='';
bio(529).portIdx=0;
bio(529).dim=[1,1];
bio(529).sigWidth=1;
bio(529).sigAddress='&initial_setup_B.ProportionalGain_d';
bio(529).ndims=2;
bio(529).size=[];


bio(530).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/Proportional Gain1';
bio(530).sigName='';
bio(530).portIdx=0;
bio(530).dim=[1,1];
bio(530).sigWidth=1;
bio(530).sigAddress='&initial_setup_B.ProportionalGain1_e';
bio(530).ndims=2;
bio(530).size=[];


bio(531).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/Sum';
bio(531).sigName='';
bio(531).portIdx=0;
bio(531).dim=[1,1];
bio(531).sigWidth=1;
bio(531).sigAddress='&initial_setup_B.Sum_h';
bio(531).ndims=2;
bio(531).size=[];


bio(532).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Torque PD/Proportional Gain';
bio(532).sigName='';
bio(532).portIdx=0;
bio(532).dim=[1,1];
bio(532).sigWidth=1;
bio(532).sigAddress='&initial_setup_B.ProportionalGain_m';
bio(532).ndims=2;
bio(532).size=[];


bio(533).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/Proportional Gain';
bio(533).sigName='';
bio(533).portIdx=0;
bio(533).dim=[1,1];
bio(533).sigWidth=1;
bio(533).sigAddress='&initial_setup_B.ProportionalGain_n';
bio(533).ndims=2;
bio(533).size=[];


bio(534).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/Proportional Gain1';
bio(534).sigName='';
bio(534).portIdx=0;
bio(534).dim=[1,1];
bio(534).sigWidth=1;
bio(534).sigAddress='&initial_setup_B.ProportionalGain1_p';
bio(534).ndims=2;
bio(534).size=[];


bio(535).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/Sum';
bio(535).sigName='';
bio(535).portIdx=0;
bio(535).dim=[1,1];
bio(535).sigWidth=1;
bio(535).sigAddress='&initial_setup_B.Sum_op';
bio(535).ndims=2;
bio(535).size=[];


bio(536).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Torque PD/Proportional Gain';
bio(536).sigName='';
bio(536).portIdx=0;
bio(536).dim=[1,1];
bio(536).sigWidth=1;
bio(536).sigAddress='&initial_setup_B.ProportionalGain_l';
bio(536).ndims=2;
bio(536).size=[];


bio(537).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/Proportional Gain';
bio(537).sigName='';
bio(537).portIdx=0;
bio(537).dim=[1,1];
bio(537).sigWidth=1;
bio(537).sigAddress='&initial_setup_B.ProportionalGain_p';
bio(537).ndims=2;
bio(537).size=[];


bio(538).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/Proportional Gain1';
bio(538).sigName='';
bio(538).portIdx=0;
bio(538).dim=[1,1];
bio(538).sigWidth=1;
bio(538).sigAddress='&initial_setup_B.ProportionalGain1';
bio(538).ndims=2;
bio(538).size=[];


bio(539).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/Sum';
bio(539).sigName='';
bio(539).portIdx=0;
bio(539).dim=[1,1];
bio(539).sigWidth=1;
bio(539).sigAddress='&initial_setup_B.Sum_o';
bio(539).ndims=2;
bio(539).size=[];


bio(540).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Torque PD/Proportional Gain';
bio(540).sigName='';
bio(540).portIdx=0;
bio(540).dim=[1,1];
bio(540).sigWidth=1;
bio(540).sigAddress='&initial_setup_B.ProportionalGain';
bio(540).ndims=2;
bio(540).size=[];


bio(541).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/Proportional Gain';
bio(541).sigName='';
bio(541).portIdx=0;
bio(541).dim=[1,1];
bio(541).sigWidth=1;
bio(541).sigAddress='&initial_setup_B.ProportionalGain_f';
bio(541).ndims=2;
bio(541).size=[];


bio(542).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/Proportional Gain1';
bio(542).sigName='';
bio(542).portIdx=0;
bio(542).dim=[1,1];
bio(542).sigWidth=1;
bio(542).sigAddress='&initial_setup_B.ProportionalGain1_g';
bio(542).ndims=2;
bio(542).size=[];


bio(543).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/Sum';
bio(543).sigName='';
bio(543).portIdx=0;
bio(543).dim=[1,1];
bio(543).sigWidth=1;
bio(543).sigAddress='&initial_setup_B.Sum_c';
bio(543).ndims=2;
bio(543).size=[];


bio(544).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Torque PD/Proportional Gain';
bio(544).sigName='';
bio(544).portIdx=0;
bio(544).dim=[1,1];
bio(544).sigWidth=1;
bio(544).sigAddress='&initial_setup_B.ProportionalGain_k';
bio(544).ndims=2;
bio(544).size=[];


bio(545).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/Gain1';
bio(545).sigName='';
bio(545).portIdx=0;
bio(545).dim=[1,1];
bio(545).sigWidth=1;
bio(545).sigAddress='&initial_setup_B.Gain1_n';
bio(545).ndims=2;
bio(545).size=[];


bio(546).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
bio(546).sigName='';
bio(546).portIdx=0;
bio(546).dim=[1,1];
bio(546).sigWidth=1;
bio(546).sigAddress='&initial_setup_B.single_pole_filter_m';
bio(546).ndims=2;
bio(546).size=[];


bio(547).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/Gain1';
bio(547).sigName='';
bio(547).portIdx=0;
bio(547).dim=[1,1];
bio(547).sigWidth=1;
bio(547).sigAddress='&initial_setup_B.Gain1_o';
bio(547).ndims=2;
bio(547).size=[];


bio(548).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
bio(548).sigName='';
bio(548).portIdx=0;
bio(548).dim=[1,1];
bio(548).sigWidth=1;
bio(548).sigAddress='&initial_setup_B.single_pole_filter_f';
bio(548).ndims=2;
bio(548).size=[];


bio(549).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/Gain1';
bio(549).sigName='';
bio(549).portIdx=0;
bio(549).dim=[1,1];
bio(549).sigWidth=1;
bio(549).sigAddress='&initial_setup_B.Gain1_f0';
bio(549).ndims=2;
bio(549).size=[];


bio(550).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
bio(550).sigName='';
bio(550).portIdx=0;
bio(550).dim=[1,1];
bio(550).sigWidth=1;
bio(550).sigAddress='&initial_setup_B.single_pole_filter_g';
bio(550).ndims=2;
bio(550).size=[];


bio(551).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/Gain1';
bio(551).sigName='';
bio(551).portIdx=0;
bio(551).dim=[1,1];
bio(551).sigWidth=1;
bio(551).sigAddress='&initial_setup_B.Gain1_g';
bio(551).ndims=2;
bio(551).size=[];


bio(552).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
bio(552).sigName='';
bio(552).portIdx=0;
bio(552).dim=[1,1];
bio(552).sigWidth=1;
bio(552).sigAddress='&initial_setup_B.single_pole_filter_i';
bio(552).ndims=2;
bio(552).size=[];


bio(553).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/Diff';
bio(553).sigName='';
bio(553).portIdx=0;
bio(553).dim=[1,1];
bio(553).sigWidth=1;
bio(553).sigAddress='&initial_setup_B.Diff_p';
bio(553).ndims=2;
bio(553).size=[];


bio(554).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/UD';
bio(554).sigName='U(k-1)';
bio(554).portIdx=0;
bio(554).dim=[1,1];
bio(554).sigWidth=1;
bio(554).sigAddress='&initial_setup_B.Uk1_l';
bio(554).ndims=2;
bio(554).size=[];


bio(555).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/Diff';
bio(555).sigName='';
bio(555).portIdx=0;
bio(555).dim=[1,1];
bio(555).sigWidth=1;
bio(555).sigAddress='&initial_setup_B.Diff_ch';
bio(555).ndims=2;
bio(555).size=[];


bio(556).blkName='Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/UD';
bio(556).sigName='U(k-1)';
bio(556).portIdx=0;
bio(556).dim=[1,1];
bio(556).sigWidth=1;
bio(556).sigAddress='&initial_setup_B.Uk1_n';
bio(556).ndims=2;
bio(556).size=[];


bio(557).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/Diff';
bio(557).sigName='';
bio(557).portIdx=0;
bio(557).dim=[1,1];
bio(557).sigWidth=1;
bio(557).sigAddress='&initial_setup_B.Diff_c';
bio(557).ndims=2;
bio(557).size=[];


bio(558).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/UD';
bio(558).sigName='U(k-1)';
bio(558).portIdx=0;
bio(558).dim=[1,1];
bio(558).sigWidth=1;
bio(558).sigAddress='&initial_setup_B.Uk1_b';
bio(558).ndims=2;
bio(558).size=[];


bio(559).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/Diff';
bio(559).sigName='';
bio(559).portIdx=0;
bio(559).dim=[1,1];
bio(559).sigWidth=1;
bio(559).sigAddress='&initial_setup_B.Diff_i';
bio(559).ndims=2;
bio(559).size=[];


bio(560).blkName='Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/UD';
bio(560).sigName='U(k-1)';
bio(560).portIdx=0;
bio(560).dim=[1,1];
bio(560).sigWidth=1;
bio(560).sigAddress='&initial_setup_B.Uk1_p';
bio(560).ndims=2;
bio(560).size=[];


function len = getlenBIO
len = 560;

