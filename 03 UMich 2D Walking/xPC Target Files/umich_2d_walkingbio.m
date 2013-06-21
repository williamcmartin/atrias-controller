function bio=umich_2d_walkingbio
bio = [];
bio(1).blkName='Clock';
bio(1).sigName='';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&umich_2d_walking_B.Clock_a';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='Actuator Control/tau_cmd_signal';
bio(2).sigName='';
bio(2).portIdx=0;
bio(2).dim=[6,1];
bio(2).sigWidth=6;
bio(2).sigAddress='&umich_2d_walking_B.tau_cmd_signal[0]';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='Actuator Control/Manual Switch';
bio(3).sigName='';
bio(3).portIdx=0;
bio(3).dim=[6,1];
bio(3).sigWidth=6;
bio(3).sigAddress='&umich_2d_walking_B.ManualSwitch[0]';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='Compare To Constant/Compare';
bio(4).sigName='';
bio(4).portIdx=0;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&umich_2d_walking_B.Compare_m';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='DAQ/Supervisory/p1';
bio(5).sigName='backLAmp1';
bio(5).portIdx=0;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&umich_2d_walking_B.backLAmp1';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='DAQ/Supervisory/p2';
bio(6).sigName='backLAmp2';
bio(6).portIdx=1;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&umich_2d_walking_B.backLAmp2';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='DAQ/Supervisory/p3';
bio(7).sigName='frontLAmp1';
bio(7).portIdx=2;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&umich_2d_walking_B.frontLAmp1';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='DAQ/Supervisory/p4';
bio(8).sigName='frontLAmp2';
bio(8).portIdx=3;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&umich_2d_walking_B.frontLAmp2';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='DAQ/Supervisory/p5';
bio(9).sigName='backRAmp1';
bio(9).portIdx=4;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&umich_2d_walking_B.backRAmp1';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='DAQ/Supervisory/p6';
bio(10).sigName='backRAmp2';
bio(10).portIdx=5;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&umich_2d_walking_B.backRAmp2';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='DAQ/Supervisory/p7';
bio(11).sigName='frontRAmp1';
bio(11).portIdx=6;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&umich_2d_walking_B.frontRAmp1';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='DAQ/Supervisory/p8';
bio(12).sigName='frontRAmp2';
bio(12).portIdx=7;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&umich_2d_walking_B.frontRAmp2';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='DAQ/Supervisory/p9';
bio(13).sigName='backLError';
bio(13).portIdx=8;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&umich_2d_walking_B.backLError';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='DAQ/Supervisory/p10';
bio(14).sigName='frontLError';
bio(14).portIdx=9;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&umich_2d_walking_B.frontLError';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='DAQ/Supervisory/p11';
bio(15).sigName='backRError';
bio(15).portIdx=10;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&umich_2d_walking_B.backRError';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='DAQ/Supervisory/p12';
bio(16).sigName='frontRError';
bio(16).portIdx=11;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&umich_2d_walking_B.frontRError';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='DAQ/Supervisory/p13';
bio(17).sigName='backLMotorV';
bio(17).portIdx=12;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&umich_2d_walking_B.backLMotorV';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='DAQ/Supervisory/p14';
bio(18).sigName='backLLogicV';
bio(18).portIdx=13;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&umich_2d_walking_B.backLLogicV';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='DAQ/Supervisory/p15';
bio(19).sigName='frontLMotorV';
bio(19).portIdx=14;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&umich_2d_walking_B.frontLMotorV';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='DAQ/Supervisory/p16';
bio(20).sigName='frontLLogicV';
bio(20).portIdx=15;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&umich_2d_walking_B.frontLLogicV';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='DAQ/Supervisory/p17';
bio(21).sigName='backRMotorV';
bio(21).portIdx=16;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&umich_2d_walking_B.backRMotorV';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='DAQ/Supervisory/p18';
bio(22).sigName='backRLogicV';
bio(22).portIdx=17;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&umich_2d_walking_B.backRLogicV';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='DAQ/Supervisory/p19';
bio(23).sigName='frontRMotorV';
bio(23).portIdx=18;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&umich_2d_walking_B.frontRMotorV';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='DAQ/Supervisory/p20';
bio(24).sigName='frontRLogicV';
bio(24).portIdx=19;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&umich_2d_walking_B.frontRLogicV';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='DAQ/Supervisory/p21';
bio(25).sigName='frontLTemp0';
bio(25).portIdx=20;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&umich_2d_walking_B.frontLTemp0';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='DAQ/Supervisory/p22';
bio(26).sigName='frontLTemp1';
bio(26).portIdx=21;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&umich_2d_walking_B.frontLTemp1';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='DAQ/Supervisory/p23';
bio(27).sigName='frontLTemp2';
bio(27).portIdx=22;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&umich_2d_walking_B.frontLTemp2';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='DAQ/Supervisory/p24';
bio(28).sigName='frontLTemp3';
bio(28).portIdx=23;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&umich_2d_walking_B.frontLTemp3';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='DAQ/Supervisory/p25';
bio(29).sigName='frontLTemp4';
bio(29).portIdx=24;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&umich_2d_walking_B.frontLTemp4';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='DAQ/Supervisory/p26';
bio(30).sigName='frontLTemp5';
bio(30).portIdx=25;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&umich_2d_walking_B.frontLTemp5';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='DAQ/Supervisory/p27';
bio(31).sigName='backLTemp0';
bio(31).portIdx=26;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&umich_2d_walking_B.backLTemp0';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='DAQ/Supervisory/p28';
bio(32).sigName='backLTemp1';
bio(32).portIdx=27;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&umich_2d_walking_B.backLTemp1';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='DAQ/Supervisory/p29';
bio(33).sigName='backLTemp2';
bio(33).portIdx=28;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&umich_2d_walking_B.backLTemp2';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='DAQ/Supervisory/p30';
bio(34).sigName='backLTemp3';
bio(34).portIdx=29;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&umich_2d_walking_B.backLTemp3';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='DAQ/Supervisory/p31';
bio(35).sigName='backLTemp4';
bio(35).portIdx=30;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&umich_2d_walking_B.backLTemp4';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='DAQ/Supervisory/p32';
bio(36).sigName='backLTemp5';
bio(36).portIdx=31;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&umich_2d_walking_B.backLTemp5';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='DAQ/Data Type Conversion1';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&umich_2d_walking_B.DataTypeConversion1';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='DAQ/Data Type Conversion10';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&umich_2d_walking_B.DataTypeConversion10';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='DAQ/Data Type Conversion100';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&umich_2d_walking_B.DataTypeConversion100';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='DAQ/Data Type Conversion101';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&umich_2d_walking_B.DataTypeConversion101';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='DAQ/Data Type Conversion102';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&umich_2d_walking_B.DataTypeConversion102';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='DAQ/Data Type Conversion103';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&umich_2d_walking_B.DataTypeConversion103';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='DAQ/Data Type Conversion104';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&umich_2d_walking_B.DataTypeConversion104';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='DAQ/Data Type Conversion105';
bio(44).sigName='';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&umich_2d_walking_B.DataTypeConversion105';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='DAQ/Data Type Conversion106';
bio(45).sigName='';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&umich_2d_walking_B.DataTypeConversion106';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='DAQ/Data Type Conversion107';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&umich_2d_walking_B.DataTypeConversion107';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='DAQ/Data Type Conversion108';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&umich_2d_walking_B.DataTypeConversion108';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='DAQ/Data Type Conversion109';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&umich_2d_walking_B.DataTypeConversion109';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='DAQ/Data Type Conversion11';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&umich_2d_walking_B.DataTypeConversion11';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='DAQ/Data Type Conversion110';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&umich_2d_walking_B.DataTypeConversion110';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='DAQ/Data Type Conversion111';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1,1];
bio(51).sigWidth=1;
bio(51).sigAddress='&umich_2d_walking_B.DataTypeConversion111';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='DAQ/Data Type Conversion12';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&umich_2d_walking_B.DataTypeConversion12';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='DAQ/Data Type Conversion127';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&umich_2d_walking_B.DataTypeConversion127';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='DAQ/Data Type Conversion128';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&umich_2d_walking_B.DataTypeConversion128';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='DAQ/Data Type Conversion129';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&umich_2d_walking_B.DataTypeConversion129';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='DAQ/Data Type Conversion13';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&umich_2d_walking_B.DataTypeConversion13';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='DAQ/Data Type Conversion130';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&umich_2d_walking_B.DataTypeConversion130';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='DAQ/Data Type Conversion131';
bio(58).sigName='';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&umich_2d_walking_B.DataTypeConversion131';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='DAQ/Data Type Conversion132';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1,1];
bio(59).sigWidth=1;
bio(59).sigAddress='&umich_2d_walking_B.DataTypeConversion132';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='DAQ/Data Type Conversion133';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&umich_2d_walking_B.DataTypeConversion133';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='DAQ/Data Type Conversion134';
bio(61).sigName='';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&umich_2d_walking_B.DataTypeConversion134';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='DAQ/Data Type Conversion135';
bio(62).sigName='';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&umich_2d_walking_B.DataTypeConversion135';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='DAQ/Data Type Conversion136';
bio(63).sigName='';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&umich_2d_walking_B.DataTypeConversion136';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='DAQ/Data Type Conversion137';
bio(64).sigName='';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&umich_2d_walking_B.DataTypeConversion137';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='DAQ/Data Type Conversion138';
bio(65).sigName='';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&umich_2d_walking_B.DataTypeConversion138';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='DAQ/Data Type Conversion139';
bio(66).sigName='';
bio(66).portIdx=0;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&umich_2d_walking_B.DataTypeConversion139';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='DAQ/Data Type Conversion14';
bio(67).sigName='';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&umich_2d_walking_B.DataTypeConversion14';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='DAQ/Data Type Conversion140';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1,1];
bio(68).sigWidth=1;
bio(68).sigAddress='&umich_2d_walking_B.DataTypeConversion140';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='DAQ/Data Type Conversion141';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[1,1];
bio(69).sigWidth=1;
bio(69).sigAddress='&umich_2d_walking_B.DataTypeConversion141';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='DAQ/Data Type Conversion142';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1,1];
bio(70).sigWidth=1;
bio(70).sigAddress='&umich_2d_walking_B.DataTypeConversion142';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='DAQ/Data Type Conversion143';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[1,1];
bio(71).sigWidth=1;
bio(71).sigAddress='&umich_2d_walking_B.DataTypeConversion143';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='DAQ/Data Type Conversion144';
bio(72).sigName='';
bio(72).portIdx=0;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&umich_2d_walking_B.DataTypeConversion144';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='DAQ/Data Type Conversion145';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&umich_2d_walking_B.DataTypeConversion145';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='DAQ/Data Type Conversion146';
bio(74).sigName='';
bio(74).portIdx=0;
bio(74).dim=[1,1];
bio(74).sigWidth=1;
bio(74).sigAddress='&umich_2d_walking_B.DataTypeConversion146';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='DAQ/Data Type Conversion147';
bio(75).sigName='';
bio(75).portIdx=0;
bio(75).dim=[1,1];
bio(75).sigWidth=1;
bio(75).sigAddress='&umich_2d_walking_B.DataTypeConversion147';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='DAQ/Data Type Conversion148';
bio(76).sigName='';
bio(76).portIdx=0;
bio(76).dim=[1,1];
bio(76).sigWidth=1;
bio(76).sigAddress='&umich_2d_walking_B.DataTypeConversion148';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='DAQ/Data Type Conversion149';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,1];
bio(77).sigWidth=1;
bio(77).sigAddress='&umich_2d_walking_B.DataTypeConversion149';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='DAQ/Data Type Conversion15';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,1];
bio(78).sigWidth=1;
bio(78).sigAddress='&umich_2d_walking_B.DataTypeConversion15';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='DAQ/Data Type Conversion150';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[1,1];
bio(79).sigWidth=1;
bio(79).sigAddress='&umich_2d_walking_B.DataTypeConversion150';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='DAQ/Data Type Conversion151';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[1,1];
bio(80).sigWidth=1;
bio(80).sigAddress='&umich_2d_walking_B.DataTypeConversion151';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='DAQ/Data Type Conversion157';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,1];
bio(81).sigWidth=1;
bio(81).sigAddress='&umich_2d_walking_B.DataTypeConversion157';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='DAQ/Data Type Conversion16';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[1,1];
bio(82).sigWidth=1;
bio(82).sigAddress='&umich_2d_walking_B.DataTypeConversion16';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='DAQ/Data Type Conversion17';
bio(83).sigName='';
bio(83).portIdx=0;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&umich_2d_walking_B.DataTypeConversion17';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='DAQ/Data Type Conversion18';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&umich_2d_walking_B.DataTypeConversion18';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='DAQ/Data Type Conversion19';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[1,1];
bio(85).sigWidth=1;
bio(85).sigAddress='&umich_2d_walking_B.DataTypeConversion19';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='DAQ/Data Type Conversion2';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&umich_2d_walking_B.DataTypeConversion2';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='DAQ/Data Type Conversion20';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&umich_2d_walking_B.DataTypeConversion20';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='DAQ/Data Type Conversion21';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,1];
bio(88).sigWidth=1;
bio(88).sigAddress='&umich_2d_walking_B.DataTypeConversion21';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='DAQ/Data Type Conversion22';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&umich_2d_walking_B.DataTypeConversion22';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='DAQ/Data Type Conversion23';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[1,1];
bio(90).sigWidth=1;
bio(90).sigAddress='&umich_2d_walking_B.DataTypeConversion23';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='DAQ/Data Type Conversion24';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&umich_2d_walking_B.DataTypeConversion24';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='DAQ/Data Type Conversion25';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&umich_2d_walking_B.DataTypeConversion25';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='DAQ/Data Type Conversion26';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,1];
bio(93).sigWidth=1;
bio(93).sigAddress='&umich_2d_walking_B.DataTypeConversion26';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='DAQ/Data Type Conversion27';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,1];
bio(94).sigWidth=1;
bio(94).sigAddress='&umich_2d_walking_B.DataTypeConversion27';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='DAQ/Data Type Conversion28';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&umich_2d_walking_B.DataTypeConversion28';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='DAQ/Data Type Conversion29';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&umich_2d_walking_B.DataTypeConversion29';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='DAQ/Data Type Conversion3';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,1];
bio(97).sigWidth=1;
bio(97).sigAddress='&umich_2d_walking_B.DataTypeConversion3';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='DAQ/Data Type Conversion30';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&umich_2d_walking_B.DataTypeConversion30';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='DAQ/Data Type Conversion31';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&umich_2d_walking_B.DataTypeConversion31';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='DAQ/Data Type Conversion32';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&umich_2d_walking_B.DataTypeConversion32';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='DAQ/Data Type Conversion33';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[1,1];
bio(101).sigWidth=1;
bio(101).sigAddress='&umich_2d_walking_B.DataTypeConversion33';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='DAQ/Data Type Conversion34';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&umich_2d_walking_B.DataTypeConversion34';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='DAQ/Data Type Conversion35';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&umich_2d_walking_B.DataTypeConversion35';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='DAQ/Data Type Conversion36';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&umich_2d_walking_B.DataTypeConversion36';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='DAQ/Data Type Conversion37';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&umich_2d_walking_B.DataTypeConversion37';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='DAQ/Data Type Conversion38';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&umich_2d_walking_B.DataTypeConversion38';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='DAQ/Data Type Conversion39';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&umich_2d_walking_B.DataTypeConversion39';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='DAQ/Data Type Conversion4';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&umich_2d_walking_B.DataTypeConversion4';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='DAQ/Data Type Conversion40';
bio(109).sigName='';
bio(109).portIdx=0;
bio(109).dim=[1,1];
bio(109).sigWidth=1;
bio(109).sigAddress='&umich_2d_walking_B.DataTypeConversion40';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='DAQ/Data Type Conversion41';
bio(110).sigName='';
bio(110).portIdx=0;
bio(110).dim=[1,1];
bio(110).sigWidth=1;
bio(110).sigAddress='&umich_2d_walking_B.DataTypeConversion41';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='DAQ/Data Type Conversion42';
bio(111).sigName='';
bio(111).portIdx=0;
bio(111).dim=[1,1];
bio(111).sigWidth=1;
bio(111).sigAddress='&umich_2d_walking_B.DataTypeConversion42';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='DAQ/Data Type Conversion43';
bio(112).sigName='';
bio(112).portIdx=0;
bio(112).dim=[1,1];
bio(112).sigWidth=1;
bio(112).sigAddress='&umich_2d_walking_B.DataTypeConversion43';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='DAQ/Data Type Conversion44';
bio(113).sigName='';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&umich_2d_walking_B.DataTypeConversion44';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='DAQ/Data Type Conversion45';
bio(114).sigName='';
bio(114).portIdx=0;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&umich_2d_walking_B.DataTypeConversion45';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='DAQ/Data Type Conversion46';
bio(115).sigName='';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&umich_2d_walking_B.DataTypeConversion46';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='DAQ/Data Type Conversion47';
bio(116).sigName='';
bio(116).portIdx=0;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&umich_2d_walking_B.DataTypeConversion47';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='DAQ/Data Type Conversion48';
bio(117).sigName='';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&umich_2d_walking_B.DataTypeConversion48';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='DAQ/Data Type Conversion49';
bio(118).sigName='';
bio(118).portIdx=0;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&umich_2d_walking_B.DataTypeConversion49';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='DAQ/Data Type Conversion5';
bio(119).sigName='';
bio(119).portIdx=0;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&umich_2d_walking_B.DataTypeConversion5';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='DAQ/Data Type Conversion50';
bio(120).sigName='';
bio(120).portIdx=0;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&umich_2d_walking_B.DataTypeConversion50';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='DAQ/Data Type Conversion51';
bio(121).sigName='';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&umich_2d_walking_B.DataTypeConversion51';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='DAQ/Data Type Conversion52';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[1,1];
bio(122).sigWidth=1;
bio(122).sigAddress='&umich_2d_walking_B.DataTypeConversion52';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='DAQ/Data Type Conversion53';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&umich_2d_walking_B.DataTypeConversion53';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='DAQ/Data Type Conversion54';
bio(124).sigName='';
bio(124).portIdx=0;
bio(124).dim=[1,1];
bio(124).sigWidth=1;
bio(124).sigAddress='&umich_2d_walking_B.DataTypeConversion54';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='DAQ/Data Type Conversion55';
bio(125).sigName='';
bio(125).portIdx=0;
bio(125).dim=[1,1];
bio(125).sigWidth=1;
bio(125).sigAddress='&umich_2d_walking_B.DataTypeConversion55';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='DAQ/Data Type Conversion56';
bio(126).sigName='';
bio(126).portIdx=0;
bio(126).dim=[1,1];
bio(126).sigWidth=1;
bio(126).sigAddress='&umich_2d_walking_B.DataTypeConversion56';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='DAQ/Data Type Conversion57';
bio(127).sigName='';
bio(127).portIdx=0;
bio(127).dim=[1,1];
bio(127).sigWidth=1;
bio(127).sigAddress='&umich_2d_walking_B.DataTypeConversion57';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='DAQ/Data Type Conversion58';
bio(128).sigName='';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&umich_2d_walking_B.DataTypeConversion58';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='DAQ/Data Type Conversion59';
bio(129).sigName='';
bio(129).portIdx=0;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&umich_2d_walking_B.DataTypeConversion59';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='DAQ/Data Type Conversion6';
bio(130).sigName='';
bio(130).portIdx=0;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&umich_2d_walking_B.DataTypeConversion6';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='DAQ/Data Type Conversion60';
bio(131).sigName='';
bio(131).portIdx=0;
bio(131).dim=[1,1];
bio(131).sigWidth=1;
bio(131).sigAddress='&umich_2d_walking_B.DataTypeConversion60';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='DAQ/Data Type Conversion61';
bio(132).sigName='';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&umich_2d_walking_B.DataTypeConversion61';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='DAQ/Data Type Conversion62';
bio(133).sigName='';
bio(133).portIdx=0;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&umich_2d_walking_B.DataTypeConversion62';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='DAQ/Data Type Conversion63';
bio(134).sigName='';
bio(134).portIdx=0;
bio(134).dim=[1,1];
bio(134).sigWidth=1;
bio(134).sigAddress='&umich_2d_walking_B.DataTypeConversion63';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='DAQ/Data Type Conversion64';
bio(135).sigName='';
bio(135).portIdx=0;
bio(135).dim=[1,1];
bio(135).sigWidth=1;
bio(135).sigAddress='&umich_2d_walking_B.DataTypeConversion64';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='DAQ/Data Type Conversion65';
bio(136).sigName='';
bio(136).portIdx=0;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&umich_2d_walking_B.DataTypeConversion65';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='DAQ/Data Type Conversion66';
bio(137).sigName='';
bio(137).portIdx=0;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&umich_2d_walking_B.DataTypeConversion66';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='DAQ/Data Type Conversion67';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&umich_2d_walking_B.DataTypeConversion67';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='DAQ/Data Type Conversion68';
bio(139).sigName='';
bio(139).portIdx=0;
bio(139).dim=[1,1];
bio(139).sigWidth=1;
bio(139).sigAddress='&umich_2d_walking_B.DataTypeConversion68';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='DAQ/Data Type Conversion69';
bio(140).sigName='';
bio(140).portIdx=0;
bio(140).dim=[1,1];
bio(140).sigWidth=1;
bio(140).sigAddress='&umich_2d_walking_B.DataTypeConversion69';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='DAQ/Data Type Conversion7';
bio(141).sigName='';
bio(141).portIdx=0;
bio(141).dim=[1,1];
bio(141).sigWidth=1;
bio(141).sigAddress='&umich_2d_walking_B.DataTypeConversion7';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='DAQ/Data Type Conversion70';
bio(142).sigName='';
bio(142).portIdx=0;
bio(142).dim=[1,1];
bio(142).sigWidth=1;
bio(142).sigAddress='&umich_2d_walking_B.DataTypeConversion70';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='DAQ/Data Type Conversion71';
bio(143).sigName='';
bio(143).portIdx=0;
bio(143).dim=[1,1];
bio(143).sigWidth=1;
bio(143).sigAddress='&umich_2d_walking_B.DataTypeConversion71';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='DAQ/Data Type Conversion72';
bio(144).sigName='';
bio(144).portIdx=0;
bio(144).dim=[1,1];
bio(144).sigWidth=1;
bio(144).sigAddress='&umich_2d_walking_B.DataTypeConversion72';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='DAQ/Data Type Conversion73';
bio(145).sigName='';
bio(145).portIdx=0;
bio(145).dim=[1,1];
bio(145).sigWidth=1;
bio(145).sigAddress='&umich_2d_walking_B.DataTypeConversion73';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='DAQ/Data Type Conversion74';
bio(146).sigName='';
bio(146).portIdx=0;
bio(146).dim=[1,1];
bio(146).sigWidth=1;
bio(146).sigAddress='&umich_2d_walking_B.DataTypeConversion74';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='DAQ/Data Type Conversion75';
bio(147).sigName='';
bio(147).portIdx=0;
bio(147).dim=[1,1];
bio(147).sigWidth=1;
bio(147).sigAddress='&umich_2d_walking_B.DataTypeConversion75';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='DAQ/Data Type Conversion76';
bio(148).sigName='';
bio(148).portIdx=0;
bio(148).dim=[1,1];
bio(148).sigWidth=1;
bio(148).sigAddress='&umich_2d_walking_B.DataTypeConversion76';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='DAQ/Data Type Conversion77';
bio(149).sigName='';
bio(149).portIdx=0;
bio(149).dim=[1,1];
bio(149).sigWidth=1;
bio(149).sigAddress='&umich_2d_walking_B.DataTypeConversion77';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='DAQ/Data Type Conversion78';
bio(150).sigName='';
bio(150).portIdx=0;
bio(150).dim=[1,1];
bio(150).sigWidth=1;
bio(150).sigAddress='&umich_2d_walking_B.DataTypeConversion78';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='DAQ/Data Type Conversion79';
bio(151).sigName='';
bio(151).portIdx=0;
bio(151).dim=[1,1];
bio(151).sigWidth=1;
bio(151).sigAddress='&umich_2d_walking_B.DataTypeConversion79';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='DAQ/Data Type Conversion8';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[1,1];
bio(152).sigWidth=1;
bio(152).sigAddress='&umich_2d_walking_B.DataTypeConversion8';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='DAQ/Data Type Conversion80';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[1,1];
bio(153).sigWidth=1;
bio(153).sigAddress='&umich_2d_walking_B.DataTypeConversion80';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='DAQ/Data Type Conversion81';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[1,1];
bio(154).sigWidth=1;
bio(154).sigAddress='&umich_2d_walking_B.DataTypeConversion81';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='DAQ/Data Type Conversion82';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[1,1];
bio(155).sigWidth=1;
bio(155).sigAddress='&umich_2d_walking_B.DataTypeConversion82';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='DAQ/Data Type Conversion83';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[1,1];
bio(156).sigWidth=1;
bio(156).sigAddress='&umich_2d_walking_B.DataTypeConversion83';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='DAQ/Data Type Conversion84';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&umich_2d_walking_B.DataTypeConversion84';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='DAQ/Data Type Conversion85';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[1,1];
bio(158).sigWidth=1;
bio(158).sigAddress='&umich_2d_walking_B.DataTypeConversion85';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='DAQ/Data Type Conversion86';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[1,1];
bio(159).sigWidth=1;
bio(159).sigAddress='&umich_2d_walking_B.DataTypeConversion86';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='DAQ/Data Type Conversion87';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[1,1];
bio(160).sigWidth=1;
bio(160).sigAddress='&umich_2d_walking_B.DataTypeConversion87';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='DAQ/Data Type Conversion88';
bio(161).sigName='';
bio(161).portIdx=0;
bio(161).dim=[1,1];
bio(161).sigWidth=1;
bio(161).sigAddress='&umich_2d_walking_B.DataTypeConversion88';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='DAQ/Data Type Conversion89';
bio(162).sigName='';
bio(162).portIdx=0;
bio(162).dim=[1,1];
bio(162).sigWidth=1;
bio(162).sigAddress='&umich_2d_walking_B.DataTypeConversion89';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='DAQ/Data Type Conversion9';
bio(163).sigName='';
bio(163).portIdx=0;
bio(163).dim=[1,1];
bio(163).sigWidth=1;
bio(163).sigAddress='&umich_2d_walking_B.DataTypeConversion9';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='DAQ/Data Type Conversion90';
bio(164).sigName='';
bio(164).portIdx=0;
bio(164).dim=[1,1];
bio(164).sigWidth=1;
bio(164).sigAddress='&umich_2d_walking_B.DataTypeConversion90';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='DAQ/Data Type Conversion91';
bio(165).sigName='';
bio(165).portIdx=0;
bio(165).dim=[1,1];
bio(165).sigWidth=1;
bio(165).sigAddress='&umich_2d_walking_B.DataTypeConversion91';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='DAQ/Data Type Conversion92';
bio(166).sigName='';
bio(166).portIdx=0;
bio(166).dim=[1,1];
bio(166).sigWidth=1;
bio(166).sigAddress='&umich_2d_walking_B.DataTypeConversion92';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='DAQ/Data Type Conversion93';
bio(167).sigName='';
bio(167).portIdx=0;
bio(167).dim=[1,1];
bio(167).sigWidth=1;
bio(167).sigAddress='&umich_2d_walking_B.DataTypeConversion93';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='DAQ/Data Type Conversion94';
bio(168).sigName='';
bio(168).portIdx=0;
bio(168).dim=[1,1];
bio(168).sigWidth=1;
bio(168).sigAddress='&umich_2d_walking_B.DataTypeConversion94';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='DAQ/Data Type Conversion95';
bio(169).sigName='';
bio(169).portIdx=0;
bio(169).dim=[1,1];
bio(169).sigWidth=1;
bio(169).sigAddress='&umich_2d_walking_B.DataTypeConversion95';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='DAQ/Data Type Conversion96';
bio(170).sigName='';
bio(170).portIdx=0;
bio(170).dim=[1,1];
bio(170).sigWidth=1;
bio(170).sigAddress='&umich_2d_walking_B.DataTypeConversion96';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='DAQ/Data Type Conversion97';
bio(171).sigName='';
bio(171).portIdx=0;
bio(171).dim=[1,1];
bio(171).sigWidth=1;
bio(171).sigAddress='&umich_2d_walking_B.DataTypeConversion97';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='DAQ/Data Type Conversion98';
bio(172).sigName='';
bio(172).portIdx=0;
bio(172).dim=[1,1];
bio(172).sigWidth=1;
bio(172).sigAddress='&umich_2d_walking_B.DataTypeConversion98';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='DAQ/Data Type Conversion99';
bio(173).sigName='';
bio(173).portIdx=0;
bio(173).dim=[1,1];
bio(173).sigWidth=1;
bio(173).sigAddress='&umich_2d_walking_B.DataTypeConversion99';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='DAQ/raw_signals';
bio(174).sigName='';
bio(174).portIdx=0;
bio(174).dim=[15,1];
bio(174).sigWidth=15;
bio(174).sigAddress='&umich_2d_walking_B.raw_signals[0]';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='DAQ/sw';
bio(175).sigName='';
bio(175).portIdx=0;
bio(175).dim=[10,1];
bio(175).sigWidth=10;
bio(175).sigAddress='&umich_2d_walking_B.sw[0]';
bio(175).ndims=2;
bio(175).size=[];


bio(176).blkName='DAQ/Counter/p1';
bio(176).sigName='';
bio(176).portIdx=0;
bio(176).dim=[1,1];
bio(176).sigWidth=1;
bio(176).sigAddress='&umich_2d_walking_B.Counter_o1';
bio(176).ndims=2;
bio(176).size=[];


bio(177).blkName='DAQ/Counter/p2';
bio(177).sigName='';
bio(177).portIdx=1;
bio(177).dim=[1,1];
bio(177).sigWidth=1;
bio(177).sigAddress='&umich_2d_walking_B.Counter_o2';
bio(177).ndims=2;
bio(177).size=[];


bio(178).blkName='DAQ/EtherCAT Init';
bio(178).sigName='';
bio(178).portIdx=0;
bio(178).dim=[4,1];
bio(178).sigWidth=4;
bio(178).sigAddress='&umich_2d_walking_B.EtherCATInit[0]';
bio(178).ndims=2;
bio(178).size=[];


bio(179).blkName='DAQ/EtherCAT Rx Frames';
bio(179).sigName='';
bio(179).portIdx=0;
bio(179).dim=[1,1];
bio(179).sigWidth=1;
bio(179).sigAddress='&umich_2d_walking_B.EtherCATRxFrames';
bio(179).ndims=2;
bio(179).size=[];


bio(180).blkName='Measurements/spring_torques';
bio(180).sigName='';
bio(180).portIdx=0;
bio(180).dim=[4,1];
bio(180).sigWidth=4;
bio(180).sigAddress='&umich_2d_walking_B.spring_torques[0]';
bio(180).ndims=2;
bio(180).size=[];


bio(181).blkName='Measurements/Sum';
bio(181).sigName='';
bio(181).portIdx=0;
bio(181).dim=[4,1];
bio(181).sigWidth=4;
bio(181).sigAddress='&umich_2d_walking_B.Sum_p[0]';
bio(181).ndims=2;
bio(181).size=[];


bio(182).blkName='UMich Controller/controller/p1';
bio(182).sigName='u';
bio(182).portIdx=0;
bio(182).dim=[6,1];
bio(182).sigWidth=6;
bio(182).sigAddress='&umich_2d_walking_B.u[0]';
bio(182).ndims=2;
bio(182).size=[];


bio(183).blkName='UMich Controller/controller/p2';
bio(183).sigName='y';
bio(183).portIdx=1;
bio(183).dim=[6,1];
bio(183).sigWidth=6;
bio(183).sigAddress='&umich_2d_walking_B.y[0]';
bio(183).ndims=2;
bio(183).size=[];


bio(184).blkName='UMich Controller/controller/p3';
bio(184).sigName='dy';
bio(184).portIdx=2;
bio(184).dim=[6,1];
bio(184).sigWidth=6;
bio(184).sigAddress='&umich_2d_walking_B.dy[0]';
bio(184).ndims=2;
bio(184).size=[];


bio(185).blkName='UMich Controller/controller/p4';
bio(185).sigName='s';
bio(185).portIdx=3;
bio(185).dim=[1,1];
bio(185).sigWidth=1;
bio(185).sigAddress='&umich_2d_walking_B.s';
bio(185).ndims=2;
bio(185).size=[];


bio(186).blkName='UMich Controller/controller/p5';
bio(186).sigName='ds';
bio(186).portIdx=4;
bio(186).dim=[1,1];
bio(186).sigWidth=1;
bio(186).sigAddress='&umich_2d_walking_B.ds';
bio(186).ndims=2;
bio(186).size=[];


bio(187).blkName='UMich Controller/controller/p6';
bio(187).sigName='pd';
bio(187).portIdx=5;
bio(187).dim=[4,1];
bio(187).sigWidth=4;
bio(187).sigAddress='&umich_2d_walking_B.pd[0]';
bio(187).ndims=2;
bio(187).size=[];


bio(188).blkName='UMich Controller/controller/p7';
bio(188).sigName='stance_leg_next';
bio(188).portIdx=6;
bio(188).dim=[1,1];
bio(188).sigWidth=1;
bio(188).sigAddress='&umich_2d_walking_B.stance_leg_next';
bio(188).ndims=2;
bio(188).size=[];


bio(189).blkName='UMich Controller/Clock';
bio(189).sigName='';
bio(189).portIdx=0;
bio(189).dim=[1,1];
bio(189).sigWidth=1;
bio(189).sigAddress='&umich_2d_walking_B.Clock';
bio(189).ndims=2;
bio(189).size=[];


bio(190).blkName='UMich Controller/Clock1';
bio(190).sigName='';
bio(190).portIdx=0;
bio(190).dim=[1,1];
bio(190).sigWidth=1;
bio(190).sigAddress='&umich_2d_walking_B.Clock1';
bio(190).ndims=2;
bio(190).size=[];


bio(191).blkName='UMich Controller/Vector Concatenate';
bio(191).sigName='';
bio(191).portIdx=0;
bio(191).dim=[26,1];
bio(191).sigWidth=26;
bio(191).sigAddress='&umich_2d_walking_B.VectorConcatenate[0]';
bio(191).ndims=2;
bio(191).size=[];


bio(192).blkName='UMich Controller/Spring Stiffness1';
bio(192).sigName='';
bio(192).portIdx=0;
bio(192).dim=[6,1];
bio(192).sigWidth=6;
bio(192).sigAddress='&umich_2d_walking_B.SpringStiffness1[0]';
bio(192).ndims=2;
bio(192).size=[];


bio(193).blkName='UMich Controller/current_cmds';
bio(193).sigName='';
bio(193).portIdx=0;
bio(193).dim=[6,1];
bio(193).sigWidth=6;
bio(193).sigAddress='&umich_2d_walking_B.current_cmds[0]';
bio(193).ndims=2;
bio(193).size=[];


bio(194).blkName='UMich Controller/pd_signals';
bio(194).sigName='';
bio(194).portIdx=0;
bio(194).dim=[4,1];
bio(194).sigWidth=4;
bio(194).sigAddress='&umich_2d_walking_B.pd_signals[0]';
bio(194).ndims=2;
bio(194).size=[];


bio(195).blkName='UMich Controller/rad2deg1';
bio(195).sigName='';
bio(195).portIdx=0;
bio(195).dim=[2,1];
bio(195).sigWidth=2;
bio(195).sigAddress='&umich_2d_walking_B.rad2deg1[0]';
bio(195).ndims=2;
bio(195).size=[];


bio(196).blkName='UMich Controller/rad2deg2';
bio(196).sigName='';
bio(196).portIdx=0;
bio(196).dim=[6,1];
bio(196).sigWidth=6;
bio(196).sigAddress='&umich_2d_walking_B.rad2deg2[0]';
bio(196).ndims=2;
bio(196).size=[];


bio(197).blkName='UMich Controller/s_signals';
bio(197).sigName='';
bio(197).portIdx=0;
bio(197).dim=[1,1];
bio(197).sigWidth=1;
bio(197).sigAddress='&umich_2d_walking_B.s_signals';
bio(197).ndims=2;
bio(197).size=[];


bio(198).blkName='UMich Controller/y_signals';
bio(198).sigName='';
bio(198).portIdx=0;
bio(198).dim=[6,1];
bio(198).sigWidth=6;
bio(198).sigAddress='&umich_2d_walking_B.y_signals[0]';
bio(198).ndims=2;
bio(198).size=[];


bio(199).blkName='UMich Controller/Sum';
bio(199).sigName='';
bio(199).portIdx=0;
bio(199).dim=[1,1];
bio(199).sigWidth=1;
bio(199).sigAddress='&umich_2d_walking_B.Sum_hp';
bio(199).ndims=2;
bio(199).size=[];


bio(200).blkName='UMich Controller/Switch';
bio(200).sigName='';
bio(200).portIdx=0;
bio(200).dim=[6,1];
bio(200).sigWidth=6;
bio(200).sigAddress='&umich_2d_walking_B.Switch_c[0]';
bio(200).ndims=2;
bio(200).size=[];


bio(201).blkName='UMich Controller/counter';
bio(201).sigName='';
bio(201).portIdx=0;
bio(201).dim=[1,1];
bio(201).sigWidth=1;
bio(201).sigAddress='&umich_2d_walking_B.counter';
bio(201).ndims=2;
bio(201).size=[];


bio(202).blkName='UMich Controller/stance_leg_state';
bio(202).sigName='';
bio(202).portIdx=0;
bio(202).dim=[1,1];
bio(202).sigWidth=1;
bio(202).sigAddress='&umich_2d_walking_B.stance_leg_state';
bio(202).ndims=2;
bio(202).size=[];


bio(203).blkName='Actuator Control/SEA Controller (Position)/Spring Stiffness';
bio(203).sigName='';
bio(203).portIdx=0;
bio(203).dim=[4,1];
bio(203).sigWidth=4;
bio(203).sigAddress='&umich_2d_walking_B.SpringStiffness[0]';
bio(203).ndims=2;
bio(203).size=[];


bio(204).blkName='Actuator Control/SEA Controller (Position)/Spring Stiffness1';
bio(204).sigName='';
bio(204).portIdx=0;
bio(204).dim=[4,1];
bio(204).sigWidth=4;
bio(204).sigAddress='&umich_2d_walking_B.SpringStiffness1_a[0]';
bio(204).ndims=2;
bio(204).size=[];


bio(205).blkName='Actuator Control/SEA Controller (Position)/kd_gain';
bio(205).sigName='';
bio(205).portIdx=0;
bio(205).dim=[4,1];
bio(205).sigWidth=4;
bio(205).sigAddress='&umich_2d_walking_B.kd_gain[0]';
bio(205).ndims=2;
bio(205).size=[];


bio(206).blkName='Actuator Control/SEA Controller (Position)/kd_gain1';
bio(206).sigName='';
bio(206).portIdx=0;
bio(206).dim=[4,1];
bio(206).sigWidth=4;
bio(206).sigAddress='&umich_2d_walking_B.kd_gain1[0]';
bio(206).ndims=2;
bio(206).size=[];


bio(207).blkName='Actuator Control/SEA Controller (Position)/kp_signal';
bio(207).sigName='';
bio(207).portIdx=0;
bio(207).dim=[1,1];
bio(207).sigWidth=1;
bio(207).sigAddress='&umich_2d_walking_B.kp_signal';
bio(207).ndims=2;
bio(207).size=[];


bio(208).blkName='Actuator Control/SEA Controller (Position)/Product';
bio(208).sigName='';
bio(208).portIdx=0;
bio(208).dim=[4,1];
bio(208).sigWidth=4;
bio(208).sigAddress='&umich_2d_walking_B.Product_d[0]';
bio(208).ndims=2;
bio(208).size=[];


bio(209).blkName='Actuator Control/SEA Controller (Position)/Product1';
bio(209).sigName='';
bio(209).portIdx=0;
bio(209).dim=[4,1];
bio(209).sigWidth=4;
bio(209).sigAddress='&umich_2d_walking_B.Product1_n[0]';
bio(209).ndims=2;
bio(209).size=[];


bio(210).blkName='Actuator Control/SEA Controller (Position)/Torque  Limiter (outside) ';
bio(210).sigName='';
bio(210).portIdx=0;
bio(210).dim=[4,1];
bio(210).sigWidth=4;
bio(210).sigAddress='&umich_2d_walking_B.TorqueLimiteroutside[0]';
bio(210).ndims=2;
bio(210).size=[];


bio(211).blkName='Actuator Control/SEA Controller (Position)/Torque  Limiter (outside) 1';
bio(211).sigName='';
bio(211).portIdx=0;
bio(211).dim=[4,1];
bio(211).sigWidth=4;
bio(211).sigAddress='&umich_2d_walking_B.TorqueLimiteroutside1[0]';
bio(211).ndims=2;
bio(211).size=[];


bio(212).blkName='Actuator Control/SEA Controller (Position)/Sum';
bio(212).sigName='';
bio(212).portIdx=0;
bio(212).dim=[1,1];
bio(212).sigWidth=1;
bio(212).sigAddress='&umich_2d_walking_B.Sum_n';
bio(212).ndims=2;
bio(212).size=[];


bio(213).blkName='Actuator Control/SEA Controller (Position)/Sum1';
bio(213).sigName='';
bio(213).portIdx=0;
bio(213).dim=[4,1];
bio(213).sigWidth=4;
bio(213).sigAddress='&umich_2d_walking_B.Sum1_o4[0]';
bio(213).ndims=2;
bio(213).size=[];


bio(214).blkName='Actuator Control/SEA Controller (Position)/Sum2';
bio(214).sigName='';
bio(214).portIdx=0;
bio(214).dim=[4,1];
bio(214).sigWidth=4;
bio(214).sigAddress='&umich_2d_walking_B.Sum2_ez[0]';
bio(214).ndims=2;
bio(214).size=[];


bio(215).blkName='Actuator Control/SEA Controller (Position)/Sum3';
bio(215).sigName='';
bio(215).portIdx=0;
bio(215).dim=[4,1];
bio(215).sigWidth=4;
bio(215).sigAddress='&umich_2d_walking_B.Sum3_j[0]';
bio(215).ndims=2;
bio(215).size=[];


bio(216).blkName='Actuator Control/SEA Controller (Position)/Sum5';
bio(216).sigName='';
bio(216).portIdx=0;
bio(216).dim=[4,1];
bio(216).sigWidth=4;
bio(216).sigAddress='&umich_2d_walking_B.Sum5[0]';
bio(216).ndims=2;
bio(216).size=[];


bio(217).blkName='Actuator Control/SEA Controller (Position)/Sum6';
bio(217).sigName='';
bio(217).portIdx=0;
bio(217).dim=[4,1];
bio(217).sigWidth=4;
bio(217).sigAddress='&umich_2d_walking_B.Sum6[0]';
bio(217).ndims=2;
bio(217).size=[];


bio(218).blkName='Actuator Control/SEA Controller (Position)/Sum7';
bio(218).sigName='';
bio(218).portIdx=0;
bio(218).dim=[4,1];
bio(218).sigWidth=4;
bio(218).sigAddress='&umich_2d_walking_B.Sum7[0]';
bio(218).ndims=2;
bio(218).size=[];


bio(219).blkName='Actuator Control/ramped_signal/Product';
bio(219).sigName='';
bio(219).portIdx=0;
bio(219).dim=[4,1];
bio(219).sigWidth=4;
bio(219).sigAddress='&umich_2d_walking_B.Product_id[0]';
bio(219).ndims=2;
bio(219).size=[];


bio(220).blkName='Actuator Control/ramped_signal/Product1';
bio(220).sigName='';
bio(220).portIdx=0;
bio(220).dim=[2,1];
bio(220).sigWidth=2;
bio(220).sigAddress='&umich_2d_walking_B.Product1[0]';
bio(220).ndims=2;
bio(220).size=[];


bio(221).blkName='Actuator Control/ramped_signal/Saturation';
bio(221).sigName='';
bio(221).portIdx=0;
bio(221).dim=[1,1];
bio(221).sigWidth=1;
bio(221).sigAddress='&umich_2d_walking_B.Saturation_n';
bio(221).ndims=2;
bio(221).size=[];


bio(222).blkName='Actuator Control/ramped_signal/Saturation1';
bio(222).sigName='';
bio(222).portIdx=0;
bio(222).dim=[1,1];
bio(222).sigWidth=1;
bio(222).sigAddress='&umich_2d_walking_B.Saturation1';
bio(222).ndims=2;
bio(222).size=[];


bio(223).blkName='DAQ/BoomMedulla/Data Type Conversion3';
bio(223).sigName='';
bio(223).portIdx=0;
bio(223).dim=[1,1];
bio(223).sigWidth=1;
bio(223).sigAddress='&umich_2d_walking_B.DataTypeConversion3_p';
bio(223).ndims=2;
bio(223).size=[];


bio(224).blkName='DAQ/BoomMedulla/Data Type Conversion4';
bio(224).sigName='';
bio(224).portIdx=0;
bio(224).dim=[1,1];
bio(224).sigWidth=1;
bio(224).sigAddress='&umich_2d_walking_B.DataTypeConversion4_n';
bio(224).ndims=2;
bio(224).size=[];


bio(225).blkName='DAQ/BoomMedulla/EtherCAT Rx Var ';
bio(225).sigName='';
bio(225).portIdx=0;
bio(225).dim=[1,1];
bio(225).sigWidth=1;
bio(225).sigAddress='&umich_2d_walking_B.EtherCATRxVar_g';
bio(225).ndims=2;
bio(225).size=[];


bio(226).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 1';
bio(226).sigName='';
bio(226).portIdx=0;
bio(226).dim=[1,1];
bio(226).sigWidth=1;
bio(226).sigAddress='&umich_2d_walking_B.EtherCATRxVar1';
bio(226).ndims=2;
bio(226).size=[];


bio(227).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 12';
bio(227).sigName='';
bio(227).portIdx=0;
bio(227).dim=[1,1];
bio(227).sigWidth=1;
bio(227).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_b';
bio(227).ndims=2;
bio(227).size=[];


bio(228).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 13';
bio(228).sigName='';
bio(228).portIdx=0;
bio(228).dim=[1,1];
bio(228).sigWidth=1;
bio(228).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_a';
bio(228).ndims=2;
bio(228).size=[];


bio(229).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 14';
bio(229).sigName='';
bio(229).portIdx=0;
bio(229).dim=[1,1];
bio(229).sigWidth=1;
bio(229).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_n';
bio(229).ndims=2;
bio(229).size=[];


bio(230).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 15';
bio(230).sigName='';
bio(230).portIdx=0;
bio(230).dim=[1,1];
bio(230).sigWidth=1;
bio(230).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_gp';
bio(230).ndims=2;
bio(230).size=[];


bio(231).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 2';
bio(231).sigName='';
bio(231).portIdx=0;
bio(231).dim=[1,1];
bio(231).sigWidth=1;
bio(231).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_i';
bio(231).ndims=2;
bio(231).size=[];


bio(232).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 3';
bio(232).sigName='';
bio(232).portIdx=0;
bio(232).dim=[1,1];
bio(232).sigWidth=1;
bio(232).sigAddress='&umich_2d_walking_B.EtherCATRxVar3';
bio(232).ndims=2;
bio(232).size=[];


bio(233).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 4';
bio(233).sigName='';
bio(233).portIdx=0;
bio(233).dim=[1,1];
bio(233).sigWidth=1;
bio(233).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_ic';
bio(233).ndims=2;
bio(233).size=[];


bio(234).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 5';
bio(234).sigName='';
bio(234).portIdx=0;
bio(234).dim=[1,1];
bio(234).sigWidth=1;
bio(234).sigAddress='&umich_2d_walking_B.EtherCATRxVar5';
bio(234).ndims=2;
bio(234).size=[];


bio(235).blkName='DAQ/BoomMedulla/EtherCAT Rx Var 6';
bio(235).sigName='';
bio(235).portIdx=0;
bio(235).dim=[1,1];
bio(235).sigWidth=1;
bio(235).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_j';
bio(235).ndims=2;
bio(235).size=[];


bio(236).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion3';
bio(236).sigName='';
bio(236).portIdx=0;
bio(236).dim=[1,1];
bio(236).sigWidth=1;
bio(236).sigAddress='&umich_2d_walking_B.DataTypeConversion3_e';
bio(236).ndims=2;
bio(236).size=[];


bio(237).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion4';
bio(237).sigName='';
bio(237).portIdx=0;
bio(237).dim=[1,1];
bio(237).sigWidth=1;
bio(237).sigAddress='&umich_2d_walking_B.DataTypeConversion4_g';
bio(237).ndims=2;
bio(237).size=[];


bio(238).blkName='DAQ/HipMedulla_Lat_L/Data Type Conversion5';
bio(238).sigName='';
bio(238).portIdx=0;
bio(238).dim=[1,1];
bio(238).sigWidth=1;
bio(238).sigAddress='&umich_2d_walking_B.DataTypeConversion5_p';
bio(238).ndims=2;
bio(238).size=[];


bio(239).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
bio(239).sigName='';
bio(239).portIdx=0;
bio(239).dim=[1,1];
bio(239).sigWidth=1;
bio(239).sigAddress='&umich_2d_walking_B.EtherCATRxVar_a';
bio(239).ndims=2;
bio(239).size=[];


bio(240).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
bio(240).sigName='';
bio(240).portIdx=0;
bio(240).dim=[1,1];
bio(240).sigWidth=1;
bio(240).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_l';
bio(240).ndims=2;
bio(240).size=[];


bio(241).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
bio(241).sigName='';
bio(241).portIdx=0;
bio(241).dim=[1,1];
bio(241).sigWidth=1;
bio(241).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_e';
bio(241).ndims=2;
bio(241).size=[];


bio(242).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
bio(242).sigName='';
bio(242).portIdx=0;
bio(242).dim=[1,1];
bio(242).sigWidth=1;
bio(242).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_f';
bio(242).ndims=2;
bio(242).size=[];


bio(243).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
bio(243).sigName='';
bio(243).portIdx=0;
bio(243).dim=[1,1];
bio(243).sigWidth=1;
bio(243).sigAddress='&umich_2d_walking_B.EtherCATRxVar14';
bio(243).ndims=2;
bio(243).size=[];


bio(244).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
bio(244).sigName='';
bio(244).portIdx=0;
bio(244).dim=[1,1];
bio(244).sigWidth=1;
bio(244).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_a';
bio(244).ndims=2;
bio(244).size=[];


bio(245).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
bio(245).sigName='';
bio(245).portIdx=0;
bio(245).dim=[1,1];
bio(245).sigWidth=1;
bio(245).sigAddress='&umich_2d_walking_B.EtherCATRxVar16_d';
bio(245).ndims=2;
bio(245).size=[];


bio(246).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
bio(246).sigName='';
bio(246).portIdx=0;
bio(246).dim=[1,1];
bio(246).sigWidth=1;
bio(246).sigAddress='&umich_2d_walking_B.EtherCATRxVar17_k';
bio(246).ndims=2;
bio(246).size=[];


bio(247).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
bio(247).sigName='';
bio(247).portIdx=0;
bio(247).dim=[1,1];
bio(247).sigWidth=1;
bio(247).sigAddress='&umich_2d_walking_B.EtherCATRxVar18';
bio(247).ndims=2;
bio(247).size=[];


bio(248).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
bio(248).sigName='';
bio(248).portIdx=0;
bio(248).dim=[1,1];
bio(248).sigWidth=1;
bio(248).sigAddress='&umich_2d_walking_B.EtherCATRxVar19_i';
bio(248).ndims=2;
bio(248).size=[];


bio(249).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
bio(249).sigName='';
bio(249).portIdx=0;
bio(249).dim=[1,1];
bio(249).sigWidth=1;
bio(249).sigAddress='&umich_2d_walking_B.EtherCATRxVar2';
bio(249).ndims=2;
bio(249).size=[];


bio(250).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
bio(250).sigName='';
bio(250).portIdx=0;
bio(250).dim=[1,1];
bio(250).sigWidth=1;
bio(250).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_i';
bio(250).ndims=2;
bio(250).size=[];


bio(251).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
bio(251).sigName='';
bio(251).portIdx=0;
bio(251).dim=[1,1];
bio(251).sigWidth=1;
bio(251).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_b';
bio(251).ndims=2;
bio(251).size=[];


bio(252).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
bio(252).sigName='';
bio(252).portIdx=0;
bio(252).dim=[1,1];
bio(252).sigWidth=1;
bio(252).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_e';
bio(252).ndims=2;
bio(252).size=[];


bio(253).blkName='DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
bio(253).sigName='';
bio(253).portIdx=0;
bio(253).dim=[1,1];
bio(253).sigWidth=1;
bio(253).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_n';
bio(253).ndims=2;
bio(253).size=[];


bio(254).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion3';
bio(254).sigName='';
bio(254).portIdx=0;
bio(254).dim=[1,1];
bio(254).sigWidth=1;
bio(254).sigAddress='&umich_2d_walking_B.DataTypeConversion3_f';
bio(254).ndims=2;
bio(254).size=[];


bio(255).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion4';
bio(255).sigName='';
bio(255).portIdx=0;
bio(255).dim=[1,1];
bio(255).sigWidth=1;
bio(255).sigAddress='&umich_2d_walking_B.DataTypeConversion4_c';
bio(255).ndims=2;
bio(255).size=[];


bio(256).blkName='DAQ/HipMedulla_Lat_R/Data Type Conversion5';
bio(256).sigName='';
bio(256).portIdx=0;
bio(256).dim=[1,1];
bio(256).sigWidth=1;
bio(256).sigAddress='&umich_2d_walking_B.DataTypeConversion5_k';
bio(256).ndims=2;
bio(256).size=[];


bio(257).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
bio(257).sigName='';
bio(257).portIdx=0;
bio(257).dim=[1,1];
bio(257).sigWidth=1;
bio(257).sigAddress='&umich_2d_walking_B.EtherCATRxVar';
bio(257).ndims=2;
bio(257).size=[];


bio(258).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
bio(258).sigName='';
bio(258).portIdx=0;
bio(258).dim=[1,1];
bio(258).sigWidth=1;
bio(258).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_g';
bio(258).ndims=2;
bio(258).size=[];


bio(259).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
bio(259).sigName='';
bio(259).portIdx=0;
bio(259).dim=[1,1];
bio(259).sigWidth=1;
bio(259).sigAddress='&umich_2d_walking_B.EtherCATRxVar12';
bio(259).ndims=2;
bio(259).size=[];


bio(260).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
bio(260).sigName='';
bio(260).portIdx=0;
bio(260).dim=[1,1];
bio(260).sigWidth=1;
bio(260).sigAddress='&umich_2d_walking_B.EtherCATRxVar13';
bio(260).ndims=2;
bio(260).size=[];


bio(261).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
bio(261).sigName='';
bio(261).portIdx=0;
bio(261).dim=[1,1];
bio(261).sigWidth=1;
bio(261).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_o';
bio(261).ndims=2;
bio(261).size=[];


bio(262).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
bio(262).sigName='';
bio(262).portIdx=0;
bio(262).dim=[1,1];
bio(262).sigWidth=1;
bio(262).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_e';
bio(262).ndims=2;
bio(262).size=[];


bio(263).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
bio(263).sigName='';
bio(263).portIdx=0;
bio(263).dim=[1,1];
bio(263).sigWidth=1;
bio(263).sigAddress='&umich_2d_walking_B.EtherCATRxVar16_g';
bio(263).ndims=2;
bio(263).size=[];


bio(264).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
bio(264).sigName='';
bio(264).portIdx=0;
bio(264).dim=[1,1];
bio(264).sigWidth=1;
bio(264).sigAddress='&umich_2d_walking_B.EtherCATRxVar17_g';
bio(264).ndims=2;
bio(264).size=[];


bio(265).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
bio(265).sigName='';
bio(265).portIdx=0;
bio(265).dim=[1,1];
bio(265).sigWidth=1;
bio(265).sigAddress='&umich_2d_walking_B.EtherCATRxVar18_o';
bio(265).ndims=2;
bio(265).size=[];


bio(266).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
bio(266).sigName='';
bio(266).portIdx=0;
bio(266).dim=[1,1];
bio(266).sigWidth=1;
bio(266).sigAddress='&umich_2d_walking_B.EtherCATRxVar19';
bio(266).ndims=2;
bio(266).size=[];


bio(267).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
bio(267).sigName='';
bio(267).portIdx=0;
bio(267).dim=[1,1];
bio(267).sigWidth=1;
bio(267).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_a';
bio(267).ndims=2;
bio(267).size=[];


bio(268).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
bio(268).sigName='';
bio(268).portIdx=0;
bio(268).dim=[1,1];
bio(268).sigWidth=1;
bio(268).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_d';
bio(268).ndims=2;
bio(268).size=[];


bio(269).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
bio(269).sigName='';
bio(269).portIdx=0;
bio(269).dim=[1,1];
bio(269).sigWidth=1;
bio(269).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_l';
bio(269).ndims=2;
bio(269).size=[];


bio(270).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
bio(270).sigName='';
bio(270).portIdx=0;
bio(270).dim=[1,1];
bio(270).sigWidth=1;
bio(270).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_i';
bio(270).ndims=2;
bio(270).size=[];


bio(271).blkName='DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
bio(271).sigName='';
bio(271).portIdx=0;
bio(271).dim=[1,1];
bio(271).sigWidth=1;
bio(271).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_c';
bio(271).ndims=2;
bio(271).size=[];


bio(272).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion3';
bio(272).sigName='';
bio(272).portIdx=0;
bio(272).dim=[1,1];
bio(272).sigWidth=1;
bio(272).sigAddress='&umich_2d_walking_B.DataTypeConversion3_c';
bio(272).ndims=2;
bio(272).size=[];


bio(273).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion4';
bio(273).sigName='';
bio(273).portIdx=0;
bio(273).dim=[1,1];
bio(273).sigWidth=1;
bio(273).sigAddress='&umich_2d_walking_B.DataTypeConversion4_k';
bio(273).ndims=2;
bio(273).size=[];


bio(274).blkName='DAQ/LegMedulla_Back_L/Data Type Conversion5';
bio(274).sigName='';
bio(274).portIdx=0;
bio(274).dim=[1,1];
bio(274).sigWidth=1;
bio(274).sigAddress='&umich_2d_walking_B.DataTypeConversion5_i';
bio(274).ndims=2;
bio(274).size=[];


bio(275).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
bio(275).sigName='';
bio(275).portIdx=0;
bio(275).dim=[1,1];
bio(275).sigWidth=1;
bio(275).sigAddress='&umich_2d_walking_B.EtherCATRxVar_gt';
bio(275).ndims=2;
bio(275).size=[];


bio(276).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
bio(276).sigName='';
bio(276).portIdx=0;
bio(276).dim=[1,1];
bio(276).sigWidth=1;
bio(276).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_b';
bio(276).ndims=2;
bio(276).size=[];


bio(277).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
bio(277).sigName='';
bio(277).portIdx=0;
bio(277).dim=[1,1];
bio(277).sigWidth=1;
bio(277).sigAddress='&umich_2d_walking_B.EtherCATRxVar10';
bio(277).ndims=2;
bio(277).size=[];


bio(278).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
bio(278).sigName='';
bio(278).portIdx=0;
bio(278).dim=[1,1];
bio(278).sigWidth=1;
bio(278).sigAddress='&umich_2d_walking_B.EtherCATRxVar11';
bio(278).ndims=2;
bio(278).size=[];


bio(279).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
bio(279).sigName='';
bio(279).portIdx=0;
bio(279).dim=[1,1];
bio(279).sigWidth=1;
bio(279).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_g';
bio(279).ndims=2;
bio(279).size=[];


bio(280).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
bio(280).sigName='';
bio(280).portIdx=0;
bio(280).dim=[1,1];
bio(280).sigWidth=1;
bio(280).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_ff';
bio(280).ndims=2;
bio(280).size=[];


bio(281).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
bio(281).sigName='';
bio(281).portIdx=0;
bio(281).dim=[1,1];
bio(281).sigWidth=1;
bio(281).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_k';
bio(281).ndims=2;
bio(281).size=[];


bio(282).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
bio(282).sigName='';
bio(282).portIdx=0;
bio(282).dim=[1,1];
bio(282).sigWidth=1;
bio(282).sigAddress='&umich_2d_walking_B.EtherCATRxVar15';
bio(282).ndims=2;
bio(282).size=[];


bio(283).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
bio(283).sigName='';
bio(283).portIdx=0;
bio(283).dim=[1,1];
bio(283).sigWidth=1;
bio(283).sigAddress='&umich_2d_walking_B.EtherCATRxVar16';
bio(283).ndims=2;
bio(283).size=[];


bio(284).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
bio(284).sigName='';
bio(284).portIdx=0;
bio(284).dim=[1,1];
bio(284).sigWidth=1;
bio(284).sigAddress='&umich_2d_walking_B.EtherCATRxVar17';
bio(284).ndims=2;
bio(284).size=[];


bio(285).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
bio(285).sigName='';
bio(285).portIdx=0;
bio(285).dim=[1,1];
bio(285).sigWidth=1;
bio(285).sigAddress='&umich_2d_walking_B.EtherCATRxVar18_b';
bio(285).ndims=2;
bio(285).size=[];


bio(286).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
bio(286).sigName='';
bio(286).portIdx=0;
bio(286).dim=[1,1];
bio(286).sigWidth=1;
bio(286).sigAddress='&umich_2d_walking_B.EtherCATRxVar19_a';
bio(286).ndims=2;
bio(286).size=[];


bio(287).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
bio(287).sigName='';
bio(287).portIdx=0;
bio(287).dim=[1,1];
bio(287).sigWidth=1;
bio(287).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_m';
bio(287).ndims=2;
bio(287).size=[];


bio(288).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
bio(288).sigName='';
bio(288).portIdx=0;
bio(288).dim=[1,1];
bio(288).sigWidth=1;
bio(288).sigAddress='&umich_2d_walking_B.EtherCATRxVar20_b';
bio(288).ndims=2;
bio(288).size=[];


bio(289).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
bio(289).sigName='';
bio(289).portIdx=0;
bio(289).dim=[1,1];
bio(289).sigWidth=1;
bio(289).sigAddress='&umich_2d_walking_B.EtherCATRxVar21_h';
bio(289).ndims=2;
bio(289).size=[];


bio(290).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
bio(290).sigName='';
bio(290).portIdx=0;
bio(290).dim=[1,1];
bio(290).sigWidth=1;
bio(290).sigAddress='&umich_2d_walking_B.EtherCATRxVar22_g';
bio(290).ndims=2;
bio(290).size=[];


bio(291).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
bio(291).sigName='';
bio(291).portIdx=0;
bio(291).dim=[1,1];
bio(291).sigWidth=1;
bio(291).sigAddress='&umich_2d_walking_B.EtherCATRxVar23';
bio(291).ndims=2;
bio(291).size=[];


bio(292).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
bio(292).sigName='';
bio(292).portIdx=0;
bio(292).dim=[1,1];
bio(292).sigWidth=1;
bio(292).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_id';
bio(292).ndims=2;
bio(292).size=[];


bio(293).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
bio(293).sigName='';
bio(293).portIdx=0;
bio(293).dim=[1,1];
bio(293).sigWidth=1;
bio(293).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_j';
bio(293).ndims=2;
bio(293).size=[];


bio(294).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
bio(294).sigName='';
bio(294).portIdx=0;
bio(294).dim=[1,1];
bio(294).sigWidth=1;
bio(294).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_h';
bio(294).ndims=2;
bio(294).size=[];


bio(295).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
bio(295).sigName='';
bio(295).portIdx=0;
bio(295).dim=[1,1];
bio(295).sigWidth=1;
bio(295).sigAddress='&umich_2d_walking_B.EtherCATRxVar6';
bio(295).ndims=2;
bio(295).size=[];


bio(296).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
bio(296).sigName='';
bio(296).portIdx=0;
bio(296).dim=[1,1];
bio(296).sigWidth=1;
bio(296).sigAddress='&umich_2d_walking_B.EtherCATRxVar7';
bio(296).ndims=2;
bio(296).size=[];


bio(297).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
bio(297).sigName='';
bio(297).portIdx=0;
bio(297).dim=[1,1];
bio(297).sigWidth=1;
bio(297).sigAddress='&umich_2d_walking_B.EtherCATRxVar8_p';
bio(297).ndims=2;
bio(297).size=[];


bio(298).blkName='DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
bio(298).sigName='';
bio(298).portIdx=0;
bio(298).dim=[1,1];
bio(298).sigWidth=1;
bio(298).sigAddress='&umich_2d_walking_B.EtherCATRxVar9';
bio(298).ndims=2;
bio(298).size=[];


bio(299).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion3';
bio(299).sigName='';
bio(299).portIdx=0;
bio(299).dim=[1,1];
bio(299).sigWidth=1;
bio(299).sigAddress='&umich_2d_walking_B.DataTypeConversion3_n';
bio(299).ndims=2;
bio(299).size=[];


bio(300).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion4';
bio(300).sigName='';
bio(300).portIdx=0;
bio(300).dim=[1,1];
bio(300).sigWidth=1;
bio(300).sigAddress='&umich_2d_walking_B.DataTypeConversion4_b';
bio(300).ndims=2;
bio(300).size=[];


bio(301).blkName='DAQ/LegMedulla_Back_R/Data Type Conversion5';
bio(301).sigName='';
bio(301).portIdx=0;
bio(301).dim=[1,1];
bio(301).sigWidth=1;
bio(301).sigAddress='&umich_2d_walking_B.DataTypeConversion5_i4';
bio(301).ndims=2;
bio(301).size=[];


bio(302).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
bio(302).sigName='';
bio(302).portIdx=0;
bio(302).dim=[1,1];
bio(302).sigWidth=1;
bio(302).sigAddress='&umich_2d_walking_B.EtherCATRxVar_h';
bio(302).ndims=2;
bio(302).size=[];


bio(303).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
bio(303).sigName='';
bio(303).portIdx=0;
bio(303).dim=[1,1];
bio(303).sigWidth=1;
bio(303).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_d';
bio(303).ndims=2;
bio(303).size=[];


bio(304).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
bio(304).sigName='';
bio(304).portIdx=0;
bio(304).dim=[1,1];
bio(304).sigWidth=1;
bio(304).sigAddress='&umich_2d_walking_B.EtherCATRxVar10_a';
bio(304).ndims=2;
bio(304).size=[];


bio(305).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
bio(305).sigName='';
bio(305).portIdx=0;
bio(305).dim=[1,1];
bio(305).sigWidth=1;
bio(305).sigAddress='&umich_2d_walking_B.EtherCATRxVar11_g';
bio(305).ndims=2;
bio(305).size=[];


bio(306).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
bio(306).sigName='';
bio(306).portIdx=0;
bio(306).dim=[1,1];
bio(306).sigWidth=1;
bio(306).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_m3';
bio(306).ndims=2;
bio(306).size=[];


bio(307).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
bio(307).sigName='';
bio(307).portIdx=0;
bio(307).dim=[1,1];
bio(307).sigWidth=1;
bio(307).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_p';
bio(307).ndims=2;
bio(307).size=[];


bio(308).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
bio(308).sigName='';
bio(308).portIdx=0;
bio(308).dim=[1,1];
bio(308).sigWidth=1;
bio(308).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_j';
bio(308).ndims=2;
bio(308).size=[];


bio(309).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
bio(309).sigName='';
bio(309).portIdx=0;
bio(309).dim=[1,1];
bio(309).sigWidth=1;
bio(309).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_gy';
bio(309).ndims=2;
bio(309).size=[];


bio(310).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
bio(310).sigName='';
bio(310).portIdx=0;
bio(310).dim=[1,1];
bio(310).sigWidth=1;
bio(310).sigAddress='&umich_2d_walking_B.EtherCATRxVar16_p';
bio(310).ndims=2;
bio(310).size=[];


bio(311).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
bio(311).sigName='';
bio(311).portIdx=0;
bio(311).dim=[1,1];
bio(311).sigWidth=1;
bio(311).sigAddress='&umich_2d_walking_B.EtherCATRxVar17_m';
bio(311).ndims=2;
bio(311).size=[];


bio(312).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
bio(312).sigName='';
bio(312).portIdx=0;
bio(312).dim=[1,1];
bio(312).sigWidth=1;
bio(312).sigAddress='&umich_2d_walking_B.EtherCATRxVar18_i';
bio(312).ndims=2;
bio(312).size=[];


bio(313).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
bio(313).sigName='';
bio(313).portIdx=0;
bio(313).dim=[1,1];
bio(313).sigWidth=1;
bio(313).sigAddress='&umich_2d_walking_B.EtherCATRxVar19_b';
bio(313).ndims=2;
bio(313).size=[];


bio(314).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
bio(314).sigName='';
bio(314).portIdx=0;
bio(314).dim=[1,1];
bio(314).sigWidth=1;
bio(314).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_mv';
bio(314).ndims=2;
bio(314).size=[];


bio(315).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
bio(315).sigName='';
bio(315).portIdx=0;
bio(315).dim=[1,1];
bio(315).sigWidth=1;
bio(315).sigAddress='&umich_2d_walking_B.EtherCATRxVar20_j';
bio(315).ndims=2;
bio(315).size=[];


bio(316).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
bio(316).sigName='';
bio(316).portIdx=0;
bio(316).dim=[1,1];
bio(316).sigWidth=1;
bio(316).sigAddress='&umich_2d_walking_B.EtherCATRxVar21_g';
bio(316).ndims=2;
bio(316).size=[];


bio(317).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
bio(317).sigName='';
bio(317).portIdx=0;
bio(317).dim=[1,1];
bio(317).sigWidth=1;
bio(317).sigAddress='&umich_2d_walking_B.EtherCATRxVar22_d';
bio(317).ndims=2;
bio(317).size=[];


bio(318).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
bio(318).sigName='';
bio(318).portIdx=0;
bio(318).dim=[1,1];
bio(318).sigWidth=1;
bio(318).sigAddress='&umich_2d_walking_B.EtherCATRxVar23_h';
bio(318).ndims=2;
bio(318).size=[];


bio(319).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
bio(319).sigName='';
bio(319).portIdx=0;
bio(319).dim=[1,1];
bio(319).sigWidth=1;
bio(319).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_k';
bio(319).ndims=2;
bio(319).size=[];


bio(320).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
bio(320).sigName='';
bio(320).portIdx=0;
bio(320).dim=[1,1];
bio(320).sigWidth=1;
bio(320).sigAddress='&umich_2d_walking_B.EtherCATRxVar4';
bio(320).ndims=2;
bio(320).size=[];


bio(321).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
bio(321).sigName='';
bio(321).portIdx=0;
bio(321).dim=[1,1];
bio(321).sigWidth=1;
bio(321).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_d';
bio(321).ndims=2;
bio(321).size=[];


bio(322).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
bio(322).sigName='';
bio(322).portIdx=0;
bio(322).dim=[1,1];
bio(322).sigWidth=1;
bio(322).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_i';
bio(322).ndims=2;
bio(322).size=[];


bio(323).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
bio(323).sigName='';
bio(323).portIdx=0;
bio(323).dim=[1,1];
bio(323).sigWidth=1;
bio(323).sigAddress='&umich_2d_walking_B.EtherCATRxVar7_o';
bio(323).ndims=2;
bio(323).size=[];


bio(324).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
bio(324).sigName='';
bio(324).portIdx=0;
bio(324).dim=[1,1];
bio(324).sigWidth=1;
bio(324).sigAddress='&umich_2d_walking_B.EtherCATRxVar8';
bio(324).ndims=2;
bio(324).size=[];


bio(325).blkName='DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
bio(325).sigName='';
bio(325).portIdx=0;
bio(325).dim=[1,1];
bio(325).sigWidth=1;
bio(325).sigAddress='&umich_2d_walking_B.EtherCATRxVar9_ak';
bio(325).ndims=2;
bio(325).size=[];


bio(326).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion3';
bio(326).sigName='';
bio(326).portIdx=0;
bio(326).dim=[1,1];
bio(326).sigWidth=1;
bio(326).sigAddress='&umich_2d_walking_B.DataTypeConversion3_cr';
bio(326).ndims=2;
bio(326).size=[];


bio(327).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion4';
bio(327).sigName='';
bio(327).portIdx=0;
bio(327).dim=[1,1];
bio(327).sigWidth=1;
bio(327).sigAddress='&umich_2d_walking_B.DataTypeConversion4_a';
bio(327).ndims=2;
bio(327).size=[];


bio(328).blkName='DAQ/LegMedulla_Front_L/Data Type Conversion5';
bio(328).sigName='';
bio(328).portIdx=0;
bio(328).dim=[1,1];
bio(328).sigWidth=1;
bio(328).sigAddress='&umich_2d_walking_B.DataTypeConversion5_h';
bio(328).ndims=2;
bio(328).size=[];


bio(329).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
bio(329).sigName='';
bio(329).portIdx=0;
bio(329).dim=[1,1];
bio(329).sigWidth=1;
bio(329).sigAddress='&umich_2d_walking_B.EtherCATRxVar_b';
bio(329).ndims=2;
bio(329).size=[];


bio(330).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
bio(330).sigName='';
bio(330).portIdx=0;
bio(330).dim=[1,1];
bio(330).sigWidth=1;
bio(330).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_m';
bio(330).ndims=2;
bio(330).size=[];


bio(331).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
bio(331).sigName='';
bio(331).portIdx=0;
bio(331).dim=[1,1];
bio(331).sigWidth=1;
bio(331).sigAddress='&umich_2d_walking_B.EtherCATRxVar10_g';
bio(331).ndims=2;
bio(331).size=[];


bio(332).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
bio(332).sigName='';
bio(332).portIdx=0;
bio(332).dim=[1,1];
bio(332).sigWidth=1;
bio(332).sigAddress='&umich_2d_walking_B.EtherCATRxVar11_j';
bio(332).ndims=2;
bio(332).size=[];


bio(333).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
bio(333).sigName='';
bio(333).portIdx=0;
bio(333).dim=[1,1];
bio(333).sigWidth=1;
bio(333).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_m';
bio(333).ndims=2;
bio(333).size=[];


bio(334).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
bio(334).sigName='';
bio(334).portIdx=0;
bio(334).dim=[1,1];
bio(334).sigWidth=1;
bio(334).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_j';
bio(334).ndims=2;
bio(334).size=[];


bio(335).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
bio(335).sigName='';
bio(335).portIdx=0;
bio(335).dim=[1,1];
bio(335).sigWidth=1;
bio(335).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_p';
bio(335).ndims=2;
bio(335).size=[];


bio(336).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
bio(336).sigName='';
bio(336).portIdx=0;
bio(336).dim=[1,1];
bio(336).sigWidth=1;
bio(336).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_g';
bio(336).ndims=2;
bio(336).size=[];


bio(337).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
bio(337).sigName='';
bio(337).portIdx=0;
bio(337).dim=[1,1];
bio(337).sigWidth=1;
bio(337).sigAddress='&umich_2d_walking_B.EtherCATRxVar16_a';
bio(337).ndims=2;
bio(337).size=[];


bio(338).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
bio(338).sigName='';
bio(338).portIdx=0;
bio(338).dim=[1,1];
bio(338).sigWidth=1;
bio(338).sigAddress='&umich_2d_walking_B.EtherCATRxVar17_p';
bio(338).ndims=2;
bio(338).size=[];


bio(339).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
bio(339).sigName='';
bio(339).portIdx=0;
bio(339).dim=[1,1];
bio(339).sigWidth=1;
bio(339).sigAddress='&umich_2d_walking_B.EtherCATRxVar18_p';
bio(339).ndims=2;
bio(339).size=[];


bio(340).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
bio(340).sigName='';
bio(340).portIdx=0;
bio(340).dim=[1,1];
bio(340).sigWidth=1;
bio(340).sigAddress='&umich_2d_walking_B.EtherCATRxVar19_p';
bio(340).ndims=2;
bio(340).size=[];


bio(341).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
bio(341).sigName='';
bio(341).portIdx=0;
bio(341).dim=[1,1];
bio(341).sigWidth=1;
bio(341).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_ac';
bio(341).ndims=2;
bio(341).size=[];


bio(342).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
bio(342).sigName='';
bio(342).portIdx=0;
bio(342).dim=[1,1];
bio(342).sigWidth=1;
bio(342).sigAddress='&umich_2d_walking_B.EtherCATRxVar20';
bio(342).ndims=2;
bio(342).size=[];


bio(343).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
bio(343).sigName='';
bio(343).portIdx=0;
bio(343).dim=[1,1];
bio(343).sigWidth=1;
bio(343).sigAddress='&umich_2d_walking_B.EtherCATRxVar21';
bio(343).ndims=2;
bio(343).size=[];


bio(344).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
bio(344).sigName='';
bio(344).portIdx=0;
bio(344).dim=[1,1];
bio(344).sigWidth=1;
bio(344).sigAddress='&umich_2d_walking_B.EtherCATRxVar22';
bio(344).ndims=2;
bio(344).size=[];


bio(345).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
bio(345).sigName='';
bio(345).portIdx=0;
bio(345).dim=[1,1];
bio(345).sigWidth=1;
bio(345).sigAddress='&umich_2d_walking_B.EtherCATRxVar23_i';
bio(345).ndims=2;
bio(345).size=[];


bio(346).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
bio(346).sigName='';
bio(346).portIdx=0;
bio(346).dim=[1,1];
bio(346).sigWidth=1;
bio(346).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_l';
bio(346).ndims=2;
bio(346).size=[];


bio(347).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
bio(347).sigName='';
bio(347).portIdx=0;
bio(347).dim=[1,1];
bio(347).sigWidth=1;
bio(347).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_i';
bio(347).ndims=2;
bio(347).size=[];


bio(348).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
bio(348).sigName='';
bio(348).portIdx=0;
bio(348).dim=[1,1];
bio(348).sigWidth=1;
bio(348).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_a';
bio(348).ndims=2;
bio(348).size=[];


bio(349).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
bio(349).sigName='';
bio(349).portIdx=0;
bio(349).dim=[1,1];
bio(349).sigWidth=1;
bio(349).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_m';
bio(349).ndims=2;
bio(349).size=[];


bio(350).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
bio(350).sigName='';
bio(350).portIdx=0;
bio(350).dim=[1,1];
bio(350).sigWidth=1;
bio(350).sigAddress='&umich_2d_walking_B.EtherCATRxVar7_h';
bio(350).ndims=2;
bio(350).size=[];


bio(351).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
bio(351).sigName='';
bio(351).portIdx=0;
bio(351).dim=[1,1];
bio(351).sigWidth=1;
bio(351).sigAddress='&umich_2d_walking_B.EtherCATRxVar8_n';
bio(351).ndims=2;
bio(351).size=[];


bio(352).blkName='DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
bio(352).sigName='';
bio(352).portIdx=0;
bio(352).dim=[1,1];
bio(352).sigWidth=1;
bio(352).sigAddress='&umich_2d_walking_B.EtherCATRxVar9_a';
bio(352).ndims=2;
bio(352).size=[];


bio(353).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion3';
bio(353).sigName='';
bio(353).portIdx=0;
bio(353).dim=[1,1];
bio(353).sigWidth=1;
bio(353).sigAddress='&umich_2d_walking_B.DataTypeConversion3_m';
bio(353).ndims=2;
bio(353).size=[];


bio(354).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion4';
bio(354).sigName='';
bio(354).portIdx=0;
bio(354).dim=[1,1];
bio(354).sigWidth=1;
bio(354).sigAddress='&umich_2d_walking_B.DataTypeConversion4_e';
bio(354).ndims=2;
bio(354).size=[];


bio(355).blkName='DAQ/LegMedulla_Front_R/Data Type Conversion5';
bio(355).sigName='';
bio(355).portIdx=0;
bio(355).dim=[1,1];
bio(355).sigWidth=1;
bio(355).sigAddress='&umich_2d_walking_B.DataTypeConversion5_a';
bio(355).ndims=2;
bio(355).size=[];


bio(356).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
bio(356).sigName='';
bio(356).portIdx=0;
bio(356).dim=[1,1];
bio(356).sigWidth=1;
bio(356).sigAddress='&umich_2d_walking_B.EtherCATRxVar_c';
bio(356).ndims=2;
bio(356).size=[];


bio(357).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
bio(357).sigName='';
bio(357).portIdx=0;
bio(357).dim=[1,1];
bio(357).sigWidth=1;
bio(357).sigAddress='&umich_2d_walking_B.EtherCATRxVar1_a';
bio(357).ndims=2;
bio(357).size=[];


bio(358).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
bio(358).sigName='';
bio(358).portIdx=0;
bio(358).dim=[1,1];
bio(358).sigWidth=1;
bio(358).sigAddress='&umich_2d_walking_B.EtherCATRxVar10_l';
bio(358).ndims=2;
bio(358).size=[];


bio(359).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
bio(359).sigName='';
bio(359).portIdx=0;
bio(359).dim=[1,1];
bio(359).sigWidth=1;
bio(359).sigAddress='&umich_2d_walking_B.EtherCATRxVar11_jc';
bio(359).ndims=2;
bio(359).size=[];


bio(360).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
bio(360).sigName='';
bio(360).portIdx=0;
bio(360).dim=[1,1];
bio(360).sigWidth=1;
bio(360).sigAddress='&umich_2d_walking_B.EtherCATRxVar12_j';
bio(360).ndims=2;
bio(360).size=[];


bio(361).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
bio(361).sigName='';
bio(361).portIdx=0;
bio(361).dim=[1,1];
bio(361).sigWidth=1;
bio(361).sigAddress='&umich_2d_walking_B.EtherCATRxVar13_e';
bio(361).ndims=2;
bio(361).size=[];


bio(362).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
bio(362).sigName='';
bio(362).portIdx=0;
bio(362).dim=[1,1];
bio(362).sigWidth=1;
bio(362).sigAddress='&umich_2d_walking_B.EtherCATRxVar14_c';
bio(362).ndims=2;
bio(362).size=[];


bio(363).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
bio(363).sigName='';
bio(363).portIdx=0;
bio(363).dim=[1,1];
bio(363).sigWidth=1;
bio(363).sigAddress='&umich_2d_walking_B.EtherCATRxVar15_l';
bio(363).ndims=2;
bio(363).size=[];


bio(364).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
bio(364).sigName='';
bio(364).portIdx=0;
bio(364).dim=[1,1];
bio(364).sigWidth=1;
bio(364).sigAddress='&umich_2d_walking_B.EtherCATRxVar16_m';
bio(364).ndims=2;
bio(364).size=[];


bio(365).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
bio(365).sigName='';
bio(365).portIdx=0;
bio(365).dim=[1,1];
bio(365).sigWidth=1;
bio(365).sigAddress='&umich_2d_walking_B.EtherCATRxVar17_mi';
bio(365).ndims=2;
bio(365).size=[];


bio(366).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
bio(366).sigName='';
bio(366).portIdx=0;
bio(366).dim=[1,1];
bio(366).sigWidth=1;
bio(366).sigAddress='&umich_2d_walking_B.EtherCATRxVar18_g';
bio(366).ndims=2;
bio(366).size=[];


bio(367).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
bio(367).sigName='';
bio(367).portIdx=0;
bio(367).dim=[1,1];
bio(367).sigWidth=1;
bio(367).sigAddress='&umich_2d_walking_B.EtherCATRxVar19_k';
bio(367).ndims=2;
bio(367).size=[];


bio(368).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
bio(368).sigName='';
bio(368).portIdx=0;
bio(368).dim=[1,1];
bio(368).sigWidth=1;
bio(368).sigAddress='&umich_2d_walking_B.EtherCATRxVar2_d';
bio(368).ndims=2;
bio(368).size=[];


bio(369).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
bio(369).sigName='';
bio(369).portIdx=0;
bio(369).dim=[1,1];
bio(369).sigWidth=1;
bio(369).sigAddress='&umich_2d_walking_B.EtherCATRxVar20_a';
bio(369).ndims=2;
bio(369).size=[];


bio(370).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
bio(370).sigName='';
bio(370).portIdx=0;
bio(370).dim=[1,1];
bio(370).sigWidth=1;
bio(370).sigAddress='&umich_2d_walking_B.EtherCATRxVar21_i';
bio(370).ndims=2;
bio(370).size=[];


bio(371).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
bio(371).sigName='';
bio(371).portIdx=0;
bio(371).dim=[1,1];
bio(371).sigWidth=1;
bio(371).sigAddress='&umich_2d_walking_B.EtherCATRxVar22_k';
bio(371).ndims=2;
bio(371).size=[];


bio(372).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
bio(372).sigName='';
bio(372).portIdx=0;
bio(372).dim=[1,1];
bio(372).sigWidth=1;
bio(372).sigAddress='&umich_2d_walking_B.EtherCATRxVar23_p';
bio(372).ndims=2;
bio(372).size=[];


bio(373).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
bio(373).sigName='';
bio(373).portIdx=0;
bio(373).dim=[1,1];
bio(373).sigWidth=1;
bio(373).sigAddress='&umich_2d_walking_B.EtherCATRxVar3_g';
bio(373).ndims=2;
bio(373).size=[];


bio(374).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
bio(374).sigName='';
bio(374).portIdx=0;
bio(374).dim=[1,1];
bio(374).sigWidth=1;
bio(374).sigAddress='&umich_2d_walking_B.EtherCATRxVar4_n';
bio(374).ndims=2;
bio(374).size=[];


bio(375).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
bio(375).sigName='';
bio(375).portIdx=0;
bio(375).dim=[1,1];
bio(375).sigWidth=1;
bio(375).sigAddress='&umich_2d_walking_B.EtherCATRxVar5_l';
bio(375).ndims=2;
bio(375).size=[];


bio(376).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
bio(376).sigName='';
bio(376).portIdx=0;
bio(376).dim=[1,1];
bio(376).sigWidth=1;
bio(376).sigAddress='&umich_2d_walking_B.EtherCATRxVar6_a';
bio(376).ndims=2;
bio(376).size=[];


bio(377).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
bio(377).sigName='';
bio(377).portIdx=0;
bio(377).dim=[1,1];
bio(377).sigWidth=1;
bio(377).sigAddress='&umich_2d_walking_B.EtherCATRxVar7_p';
bio(377).ndims=2;
bio(377).size=[];


bio(378).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
bio(378).sigName='';
bio(378).portIdx=0;
bio(378).dim=[1,1];
bio(378).sigWidth=1;
bio(378).sigAddress='&umich_2d_walking_B.EtherCATRxVar8_b';
bio(378).ndims=2;
bio(378).size=[];


bio(379).blkName='DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
bio(379).sigName='';
bio(379).portIdx=0;
bio(379).dim=[1,1];
bio(379).sigWidth=1;
bio(379).sigAddress='&umich_2d_walking_B.EtherCATRxVar9_g';
bio(379).ndims=2;
bio(379).size=[];


bio(380).blkName='DAQ/OSU_to_CMU/reverse';
bio(380).sigName='';
bio(380).portIdx=0;
bio(380).dim=[1,1];
bio(380).sigWidth=1;
bio(380).sigAddress='&umich_2d_walking_B.reverse';
bio(380).ndims=2;
bio(380).size=[];


bio(381).blkName='DAQ/OSU_to_CMU/signal';
bio(381).sigName='';
bio(381).portIdx=0;
bio(381).dim=[13,1];
bio(381).sigWidth=13;
bio(381).sigAddress='&umich_2d_walking_B.signal[0]';
bio(381).ndims=2;
bio(381).size=[];


bio(382).blkName='DAQ/OSU_to_CMU/Sum';
bio(382).sigName='qLatL_abs_Initial';
bio(382).portIdx=0;
bio(382).dim=[1,1];
bio(382).sigWidth=1;
bio(382).sigAddress='&umich_2d_walking_B.qLatL_abs_Initial';
bio(382).ndims=2;
bio(382).size=[];


bio(383).blkName='DAQ/OSU_to_CMU/Sum1';
bio(383).sigName='qLatR_abs_Initial';
bio(383).portIdx=0;
bio(383).dim=[1,1];
bio(383).sigWidth=1;
bio(383).sigAddress='&umich_2d_walking_B.qLatR_abs_Initial';
bio(383).ndims=2;
bio(383).size=[];


bio(384).blkName='DAQ/OSU_to_CMU/Sum2';
bio(384).sigName='';
bio(384).portIdx=0;
bio(384).dim=[8,1];
bio(384).sigWidth=8;
bio(384).sigAddress='&umich_2d_walking_B.Sum2_a[0]';
bio(384).ndims=2;
bio(384).size=[];


bio(385).blkName='DAQ/OSU_to_CMU/Sum3';
bio(385).sigName='qLatL';
bio(385).portIdx=0;
bio(385).dim=[1,1];
bio(385).sigWidth=1;
bio(385).sigAddress='&umich_2d_walking_B.qLatL';
bio(385).ndims=2;
bio(385).size=[];


bio(386).blkName='DAQ/OSU_to_CMU/Sum4';
bio(386).sigName='qLatR';
bio(386).portIdx=0;
bio(386).dim=[1,1];
bio(386).sigWidth=1;
bio(386).sigAddress='&umich_2d_walking_B.qLatR';
bio(386).ndims=2;
bio(386).size=[];


bio(387).blkName='DAQ/calibrate_and_convert_to_rad/Product';
bio(387).sigName='';
bio(387).portIdx=0;
bio(387).dim=[3,1];
bio(387).sigWidth=3;
bio(387).sigAddress='&umich_2d_walking_B.Product_m[0]';
bio(387).ndims=2;
bio(387).size=[];


bio(388).blkName='DAQ/hold_initial_lateral_angles/Clock';
bio(388).sigName='';
bio(388).portIdx=0;
bio(388).dim=[1,1];
bio(388).sigWidth=1;
bio(388).sigAddress='&umich_2d_walking_B.Clock_i';
bio(388).ndims=2;
bio(388).size=[];


bio(389).blkName='DAQ/low_pass_derivative/Gain1';
bio(389).sigName='';
bio(389).portIdx=0;
bio(389).dim=[13,1];
bio(389).sigWidth=13;
bio(389).sigAddress='&umich_2d_walking_B.Gain1_c[0]';
bio(389).ndims=2;
bio(389).size=[];


bio(390).blkName='DAQ/low_pass_derivative/single_pole_filter';
bio(390).sigName='';
bio(390).portIdx=0;
bio(390).dim=[13,1];
bio(390).sigWidth=13;
bio(390).sigAddress='&umich_2d_walking_B.single_pole_filter[0]';
bio(390).ndims=2;
bio(390).size=[];


bio(391).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Divide';
bio(391).sigName='';
bio(391).portIdx=0;
bio(391).dim=[1,1];
bio(391).sigWidth=1;
bio(391).sigAddress='&umich_2d_walking_B.Divide';
bio(391).ndims=2;
bio(391).size=[];


bio(392).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Divide1';
bio(392).sigName='';
bio(392).portIdx=0;
bio(392).dim=[1,1];
bio(392).sigWidth=1;
bio(392).sigAddress='&umich_2d_walking_B.Divide1';
bio(392).ndims=2;
bio(392).size=[];


bio(393).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Divide2';
bio(393).sigName='';
bio(393).portIdx=0;
bio(393).dim=[4,1];
bio(393).sigWidth=4;
bio(393).sigAddress='&umich_2d_walking_B.Divide2[0]';
bio(393).ndims=2;
bio(393).size=[];


bio(394).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Divide3';
bio(394).sigName='';
bio(394).portIdx=0;
bio(394).dim=[2,1];
bio(394).sigWidth=2;
bio(394).sigAddress='&umich_2d_walking_B.Divide3[0]';
bio(394).ndims=2;
bio(394).size=[];


bio(395).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Product';
bio(395).sigName='';
bio(395).portIdx=0;
bio(395).dim=[6,1];
bio(395).sigWidth=6;
bio(395).sigAddress='&umich_2d_walking_B.Product_g[0]';
bio(395).ndims=2;
bio(395).size=[];


bio(396).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/ Lateral Motor Saturation';
bio(396).sigName='';
bio(396).portIdx=0;
bio(396).dim=[2,1];
bio(396).sigWidth=2;
bio(396).sigAddress='&umich_2d_walking_B.LateralMotorSaturation[0]';
bio(396).ndims=2;
bio(396).size=[];


bio(397).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/ Sagittal Motor Saturation';
bio(397).sigName='';
bio(397).portIdx=0;
bio(397).dim=[4,1];
bio(397).sigWidth=4;
bio(397).sigAddress='&umich_2d_walking_B.SagittalMotorSaturation[0]';
bio(397).ndims=2;
bio(397).size=[];


bio(398).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Hip Motor Saturation';
bio(398).sigName='';
bio(398).portIdx=0;
bio(398).dim=[2,1];
bio(398).sigWidth=2;
bio(398).sigAddress='&umich_2d_walking_B.HipMotorSaturation[0]';
bio(398).ndims=2;
bio(398).size=[];


bio(399).blkName='DAQ/mtr_torque_cmd_to_medulla_signal/Leg Motor Saturation';
bio(399).sigName='';
bio(399).portIdx=0;
bio(399).dim=[4,1];
bio(399).sigWidth=4;
bio(399).sigAddress='&umich_2d_walking_B.LegMotorSaturation[0]';
bio(399).ndims=2;
bio(399).size=[];


bio(400).blkName='UMich Controller/Opposing Pulses/neg_tau';
bio(400).sigName='';
bio(400).portIdx=0;
bio(400).dim=[1,1];
bio(400).sigWidth=1;
bio(400).sigAddress='&umich_2d_walking_B.neg_tau';
bio(400).ndims=2;
bio(400).size=[];


bio(401).blkName='UMich Controller/Opposing Pulses/pos_tau';
bio(401).sigName='';
bio(401).portIdx=0;
bio(401).dim=[1,1];
bio(401).sigWidth=1;
bio(401).sigAddress='&umich_2d_walking_B.pos_tau';
bio(401).ndims=2;
bio(401).size=[];


bio(402).blkName='UMich Controller/Opposing Pulses/Gain';
bio(402).sigName='';
bio(402).portIdx=0;
bio(402).dim=[1,1];
bio(402).sigWidth=1;
bio(402).sigAddress='&umich_2d_walking_B.Gain_p';
bio(402).ndims=2;
bio(402).size=[];


bio(403).blkName='UMich Controller/Opposing Pulses/Gain1';
bio(403).sigName='';
bio(403).portIdx=0;
bio(403).dim=[1,1];
bio(403).sigWidth=1;
bio(403).sigAddress='&umich_2d_walking_B.Gain1_d';
bio(403).ndims=2;
bio(403).size=[];


bio(404).blkName='UMich Controller/Opposing Pulses/Sum1';
bio(404).sigName='';
bio(404).portIdx=0;
bio(404).dim=[1,1];
bio(404).sigWidth=1;
bio(404).sigAddress='&umich_2d_walking_B.Sum1_ow';
bio(404).ndims=2;
bio(404).size=[];


bio(405).blkName='UMich Controller/Torso Pitch Control/Proportional Gain1';
bio(405).sigName='';
bio(405).portIdx=0;
bio(405).dim=[1,1];
bio(405).sigWidth=1;
bio(405).sigAddress='&umich_2d_walking_B.ProportionalGain1_c';
bio(405).ndims=2;
bio(405).size=[];


bio(406).blkName='UMich Controller/Torso Pitch Control/Proportional Gain2';
bio(406).sigName='';
bio(406).portIdx=0;
bio(406).dim=[1,1];
bio(406).sigWidth=1;
bio(406).sigAddress='&umich_2d_walking_B.ProportionalGain2_i';
bio(406).ndims=2;
bio(406).size=[];


bio(407).blkName='UMich Controller/Torso Pitch Control/Saturation';
bio(407).sigName='';
bio(407).portIdx=0;
bio(407).dim=[1,1];
bio(407).sigWidth=1;
bio(407).sigAddress='&umich_2d_walking_B.Saturation';
bio(407).ndims=2;
bio(407).size=[];


bio(408).blkName='UMich Controller/Torso Pitch Control/Sum1';
bio(408).sigName='';
bio(408).portIdx=0;
bio(408).dim=[1,1];
bio(408).sigWidth=1;
bio(408).sigAddress='&umich_2d_walking_B.Sum1_e';
bio(408).ndims=2;
bio(408).size=[];


bio(409).blkName='UMich Controller/Torso Pitch Control/Sum2';
bio(409).sigName='';
bio(409).portIdx=0;
bio(409).dim=[1,1];
bio(409).sigWidth=1;
bio(409).sigAddress='&umich_2d_walking_B.Sum2_ed';
bio(409).ndims=2;
bio(409).size=[];


bio(410).blkName='UMich Controller/Torso Pitch Control/Sum3';
bio(410).sigName='';
bio(410).portIdx=0;
bio(410).dim=[1,1];
bio(410).sigWidth=1;
bio(410).sigAddress='&umich_2d_walking_B.Sum3';
bio(410).ndims=2;
bio(410).size=[];


bio(411).blkName='UMich Controller/Torso Pitch Control/Sum4';
bio(411).sigName='';
bio(411).portIdx=0;
bio(411).dim=[1,1];
bio(411).sigWidth=1;
bio(411).sigAddress='&umich_2d_walking_B.Sum4_a';
bio(411).ndims=2;
bio(411).size=[];


bio(412).blkName='UMich Controller/cmu_to_um/Gain';
bio(412).sigName='';
bio(412).portIdx=0;
bio(412).dim=[8,1];
bio(412).sigWidth=8;
bio(412).sigAddress='&umich_2d_walking_B.Gain[0]';
bio(412).ndims=2;
bio(412).size=[];


bio(413).blkName='UMich Controller/cmu_to_um/Gain1';
bio(413).sigName='';
bio(413).portIdx=0;
bio(413).dim=[1,1];
bio(413).sigWidth=1;
bio(413).sigAddress='&umich_2d_walking_B.Gain1';
bio(413).ndims=2;
bio(413).size=[];


bio(414).blkName='UMich Controller/cmu_to_um/Gain2';
bio(414).sigName='';
bio(414).portIdx=0;
bio(414).dim=[1,1];
bio(414).sigWidth=1;
bio(414).sigAddress='&umich_2d_walking_B.Gain2_a';
bio(414).ndims=2;
bio(414).size=[];


bio(415).blkName='UMich Controller/cmu_to_um/Sum2';
bio(415).sigName='';
bio(415).portIdx=0;
bio(415).dim=[8,1];
bio(415).sigWidth=8;
bio(415).sigAddress='&umich_2d_walking_B.Sum2_e[0]';
bio(415).ndims=2;
bio(415).size=[];


bio(416).blkName='UMich Controller/lateral_PID_control/Gain';
bio(416).sigName='';
bio(416).portIdx=0;
bio(416).dim=[1,1];
bio(416).sigWidth=1;
bio(416).sigAddress='&umich_2d_walking_B.Gain_h';
bio(416).ndims=2;
bio(416).size=[];


bio(417).blkName='UMich Controller/lateral_PID_control/Gain1';
bio(417).sigName='';
bio(417).portIdx=0;
bio(417).dim=[1,1];
bio(417).sigWidth=1;
bio(417).sigAddress='&umich_2d_walking_B.Gain1_n';
bio(417).ndims=2;
bio(417).size=[];


bio(418).blkName='UMich Controller/lateral_PID_control/Motor Saturation';
bio(418).sigName='';
bio(418).portIdx=0;
bio(418).dim=[2,1];
bio(418).sigWidth=2;
bio(418).sigAddress='&umich_2d_walking_B.MotorSaturation[0]';
bio(418).ndims=2;
bio(418).size=[];


bio(419).blkName='UMich Controller/lateral_PID_control/Sum1';
bio(419).sigName='';
bio(419).portIdx=0;
bio(419).dim=[2,1];
bio(419).sigWidth=2;
bio(419).sigAddress='&umich_2d_walking_B.Sum1_h[0]';
bio(419).ndims=2;
bio(419).size=[];


bio(420).blkName='UMich Controller/lateral_PID_control/Sum2';
bio(420).sigName='';
bio(420).portIdx=0;
bio(420).dim=[2,1];
bio(420).sigWidth=2;
bio(420).sigAddress='&umich_2d_walking_B.Sum2_j[0]';
bio(420).ndims=2;
bio(420).size=[];


bio(421).blkName='UMich Controller/lateral_PID_control/Sum4';
bio(421).sigName='';
bio(421).portIdx=0;
bio(421).dim=[2,1];
bio(421).sigWidth=2;
bio(421).sigAddress='&umich_2d_walking_B.Sum4[0]';
bio(421).ndims=2;
bio(421).size=[];


bio(422).blkName='UMich Controller/tau_um_to_cmu/Gain';
bio(422).sigName='';
bio(422).portIdx=0;
bio(422).dim=[5,1];
bio(422).sigWidth=5;
bio(422).sigAddress='&umich_2d_walking_B.Gain_d[0]';
bio(422).ndims=2;
bio(422).size=[];


bio(423).blkName='Actuator Control/SEA Controller (Position)/filtered_derivative/Gain1';
bio(423).sigName='';
bio(423).portIdx=0;
bio(423).dim=[4,1];
bio(423).sigWidth=4;
bio(423).sigAddress='&umich_2d_walking_B.Gain1_m[0]';
bio(423).ndims=2;
bio(423).size=[];


bio(424).blkName='Actuator Control/SEA Controller (Position)/filtered_derivative/single_pole_filter';
bio(424).sigName='';
bio(424).portIdx=0;
bio(424).dim=[4,1];
bio(424).sigWidth=4;
bio(424).sigAddress='&umich_2d_walking_B.single_pole_filter_n[0]';
bio(424).ndims=2;
bio(424).size=[];


bio(425).blkName='Actuator Control/ramped_signal/Ramp/Clock';
bio(425).sigName='';
bio(425).portIdx=0;
bio(425).dim=[1,1];
bio(425).sigWidth=1;
bio(425).sigAddress='&umich_2d_walking_B.Clock_n';
bio(425).ndims=2;
bio(425).size=[];


bio(426).blkName='Actuator Control/ramped_signal/Ramp/Product';
bio(426).sigName='';
bio(426).portIdx=0;
bio(426).dim=[1,1];
bio(426).sigWidth=1;
bio(426).sigAddress='&umich_2d_walking_B.Product_o';
bio(426).ndims=2;
bio(426).size=[];


bio(427).blkName='Actuator Control/ramped_signal/Ramp/Step';
bio(427).sigName='';
bio(427).portIdx=0;
bio(427).dim=[1,1];
bio(427).sigWidth=1;
bio(427).sigAddress='&umich_2d_walking_B.Step';
bio(427).ndims=2;
bio(427).size=[];


bio(428).blkName='Actuator Control/ramped_signal/Ramp/Output';
bio(428).sigName='';
bio(428).portIdx=0;
bio(428).dim=[1,1];
bio(428).sigWidth=1;
bio(428).sigAddress='&umich_2d_walking_B.Output';
bio(428).ndims=2;
bio(428).size=[];


bio(429).blkName='Actuator Control/ramped_signal/Ramp/Sum';
bio(429).sigName='';
bio(429).portIdx=0;
bio(429).dim=[1,1];
bio(429).sigWidth=1;
bio(429).sigAddress='&umich_2d_walking_B.Sum_i';
bio(429).ndims=2;
bio(429).size=[];


bio(430).blkName='Actuator Control/ramped_signal/Ramp1/Clock';
bio(430).sigName='';
bio(430).portIdx=0;
bio(430).dim=[1,1];
bio(430).sigWidth=1;
bio(430).sigAddress='&umich_2d_walking_B.Clock_d';
bio(430).ndims=2;
bio(430).size=[];


bio(431).blkName='Actuator Control/ramped_signal/Ramp1/Product';
bio(431).sigName='';
bio(431).portIdx=0;
bio(431).dim=[1,1];
bio(431).sigWidth=1;
bio(431).sigAddress='&umich_2d_walking_B.Product_p';
bio(431).ndims=2;
bio(431).size=[];


bio(432).blkName='Actuator Control/ramped_signal/Ramp1/Step';
bio(432).sigName='';
bio(432).portIdx=0;
bio(432).dim=[1,1];
bio(432).sigWidth=1;
bio(432).sigAddress='&umich_2d_walking_B.Step_p';
bio(432).ndims=2;
bio(432).size=[];


bio(433).blkName='Actuator Control/ramped_signal/Ramp1/Output';
bio(433).sigName='';
bio(433).portIdx=0;
bio(433).dim=[1,1];
bio(433).sigWidth=1;
bio(433).sigAddress='&umich_2d_walking_B.Output_j';
bio(433).ndims=2;
bio(433).size=[];


bio(434).blkName='Actuator Control/ramped_signal/Ramp1/Sum';
bio(434).sigName='';
bio(434).portIdx=0;
bio(434).dim=[1,1];
bio(434).sigWidth=1;
bio(434).sigAddress='&umich_2d_walking_B.Sum_ip';
bio(434).ndims=2;
bio(434).size=[];


bio(435).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Product';
bio(435).sigName='rad_diff';
bio(435).portIdx=0;
bio(435).dim=[12,1];
bio(435).sigWidth=12;
bio(435).sigAddress='&umich_2d_walking_B.rad_diff[0]';
bio(435).ndims=2;
bio(435).size=[];


bio(436).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Sum';
bio(436).sigName='tick_diff';
bio(436).portIdx=0;
bio(436).dim=[12,1];
bio(436).sigWidth=12;
bio(436).sigAddress='&umich_2d_walking_B.tick_diff[0]';
bio(436).ndims=2;
bio(436).size=[];


bio(437).blkName='DAQ/calibrate_and_convert_to_rad/calibrate_abs_encoder/Sum1';
bio(437).sigName='calibrated_angle';
bio(437).portIdx=0;
bio(437).dim=[12,1];
bio(437).sigWidth=12;
bio(437).sigAddress='&umich_2d_walking_B.calibrated_angle[0]';
bio(437).ndims=2;
bio(437).size=[];


bio(438).blkName='DAQ/hold_initial_lateral_angles/Compare to const/Compare';
bio(438).sigName='';
bio(438).portIdx=0;
bio(438).dim=[1,1];
bio(438).sigWidth=1;
bio(438).sigAddress='&umich_2d_walking_B.Compare_b';
bio(438).ndims=2;
bio(438).size=[];


bio(439).blkName='DAQ/hold_initial_lateral_angles/Initial Lateral Hip Angles  [rad]/In';
bio(439).sigName='';
bio(439).portIdx=0;
bio(439).dim=[4,1];
bio(439).sigWidth=4;
bio(439).sigAddress='&umich_2d_walking_B.In[0]';
bio(439).ndims=2;
bio(439).size=[];


bio(440).blkName='DAQ/low_pass_derivative/difference/Diff';
bio(440).sigName='';
bio(440).portIdx=0;
bio(440).dim=[13,1];
bio(440).sigWidth=13;
bio(440).sigAddress='&umich_2d_walking_B.Diff[0]';
bio(440).ndims=2;
bio(440).size=[];


bio(441).blkName='DAQ/low_pass_derivative/difference/UD';
bio(441).sigName='U(k-1)';
bio(441).portIdx=0;
bio(441).dim=[13,1];
bio(441).sigWidth=13;
bio(441).sigAddress='&umich_2d_walking_B.Uk1[0]';
bio(441).ndims=2;
bio(441).size=[];


bio(442).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Abs';
bio(442).sigName='';
bio(442).portIdx=0;
bio(442).dim=[1,1];
bio(442).sigWidth=1;
bio(442).sigAddress='&umich_2d_walking_B.Abs_p';
bio(442).ndims=2;
bio(442).size=[];


bio(443).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/1//BOOM_MAX_ENCODER_TICKS';
bio(443).sigName='';
bio(443).portIdx=0;
bio(443).dim=[1,1];
bio(443).sigWidth=1;
bio(443).sigAddress='&umich_2d_walking_B.BOOM_MAX_ENCODER_TICKS';
bio(443).ndims=2;
bio(443).size=[];


bio(444).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/BOOM_MAX_ENCODER_TICKS';
bio(444).sigName='';
bio(444).portIdx=0;
bio(444).dim=[1,1];
bio(444).sigWidth=1;
bio(444).sigAddress='&umich_2d_walking_B.BOOM_MAX_ENCODER_TICKS_o';
bio(444).ndims=2;
bio(444).size=[];


bio(445).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Gain2';
bio(445).sigName='';
bio(445).portIdx=0;
bio(445).dim=[1,1];
bio(445).sigWidth=1;
bio(445).sigAddress='&umich_2d_walking_B.Gain2_e';
bio(445).ndims=2;
bio(445).size=[];


bio(446).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Product';
bio(446).sigName='';
bio(446).portIdx=0;
bio(446).dim=[1,1];
bio(446).sigWidth=1;
bio(446).sigAddress='&umich_2d_walking_B.Product_i';
bio(446).ndims=2;
bio(446).size=[];


bio(447).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Rounding Function';
bio(447).sigName='';
bio(447).portIdx=0;
bio(447).dim=[1,1];
bio(447).sigWidth=1;
bio(447).sigAddress='&umich_2d_walking_B.RoundingFunction_f';
bio(447).ndims=2;
bio(447).size=[];


bio(448).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum';
bio(448).sigName='';
bio(448).portIdx=0;
bio(448).dim=[1,1];
bio(448).sigWidth=1;
bio(448).sigAddress='&umich_2d_walking_B.Sum_h';
bio(448).ndims=2;
bio(448).size=[];


bio(449).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum1';
bio(449).sigName='';
bio(449).portIdx=0;
bio(449).dim=[1,1];
bio(449).sigWidth=1;
bio(449).sigAddress='&umich_2d_walking_B.Sum1_n';
bio(449).ndims=2;
bio(449).size=[];


bio(450).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum2';
bio(450).sigName='';
bio(450).portIdx=0;
bio(450).dim=[1,1];
bio(450).sigWidth=1;
bio(450).sigAddress='&umich_2d_walking_B.Sum2_l';
bio(450).ndims=2;
bio(450).size=[];


bio(451).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Sum3';
bio(451).sigName='phi''-phi';
bio(451).portIdx=0;
bio(451).dim=[1,1];
bio(451).sigWidth=1;
bio(451).sigAddress='&umich_2d_walking_B.phiphi_j';
bio(451).ndims=2;
bio(451).size=[];


bio(452).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Switch';
bio(452).sigName='';
bio(452).portIdx=0;
bio(452).dim=[1,1];
bio(452).sigWidth=1;
bio(452).sigAddress='&umich_2d_walking_B.Switch_f';
bio(452).ndims=2;
bio(452).size=[];


bio(453).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Discrete Single Pole Lowpass Filter';
bio(453).sigName='';
bio(453).portIdx=0;
bio(453).dim=[1,1];
bio(453).sigWidth=1;
bio(453).sigAddress='&umich_2d_walking_B.DiscreteSinglePoleLowpassFilter';
bio(453).ndims=2;
bio(453).size=[];


bio(454).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-1)';
bio(454).sigName='';
bio(454).portIdx=0;
bio(454).dim=[1,1];
bio(454).sigWidth=1;
bio(454).sigAddress='&umich_2d_walking_B.UnitDelayphi_n1_i';
bio(454).ndims=2;
bio(454).size=[];


bio(455).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-2)';
bio(455).sigName='';
bio(455).portIdx=0;
bio(455).dim=[1,1];
bio(455).sigWidth=1;
bio(455).sigAddress='&umich_2d_walking_B.UnitDelayphi_n2_j';
bio(455).ndims=2;
bio(455).size=[];


bio(456).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Abs';
bio(456).sigName='';
bio(456).portIdx=0;
bio(456).dim=[1,1];
bio(456).sigWidth=1;
bio(456).sigAddress='&umich_2d_walking_B.Abs';
bio(456).ndims=2;
bio(456).size=[];


bio(457).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/1//HIP_INC_MAX_ENCODER_TICKS';
bio(457).sigName='';
bio(457).portIdx=0;
bio(457).dim=[1,1];
bio(457).sigWidth=1;
bio(457).sigAddress='&umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS';
bio(457).ndims=2;
bio(457).size=[];


bio(458).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Gain2';
bio(458).sigName='';
bio(458).portIdx=0;
bio(458).dim=[1,1];
bio(458).sigWidth=1;
bio(458).sigAddress='&umich_2d_walking_B.Gain2';
bio(458).ndims=2;
bio(458).size=[];


bio(459).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/HIP_INC_MAX_ENCODER_TICKS';
bio(459).sigName='';
bio(459).portIdx=0;
bio(459).dim=[1,1];
bio(459).sigWidth=1;
bio(459).sigAddress='&umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_f';
bio(459).ndims=2;
bio(459).size=[];


bio(460).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Product';
bio(460).sigName='';
bio(460).portIdx=0;
bio(460).dim=[1,1];
bio(460).sigWidth=1;
bio(460).sigAddress='&umich_2d_walking_B.Product';
bio(460).ndims=2;
bio(460).size=[];


bio(461).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Rounding Function';
bio(461).sigName='';
bio(461).portIdx=0;
bio(461).dim=[1,1];
bio(461).sigWidth=1;
bio(461).sigAddress='&umich_2d_walking_B.RoundingFunction';
bio(461).ndims=2;
bio(461).size=[];


bio(462).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum';
bio(462).sigName='';
bio(462).portIdx=0;
bio(462).dim=[1,1];
bio(462).sigWidth=1;
bio(462).sigAddress='&umich_2d_walking_B.Sum';
bio(462).ndims=2;
bio(462).size=[];


bio(463).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum1';
bio(463).sigName='';
bio(463).portIdx=0;
bio(463).dim=[1,1];
bio(463).sigWidth=1;
bio(463).sigAddress='&umich_2d_walking_B.Sum1';
bio(463).ndims=2;
bio(463).size=[];


bio(464).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum2';
bio(464).sigName='';
bio(464).portIdx=0;
bio(464).dim=[1,1];
bio(464).sigWidth=1;
bio(464).sigAddress='&umich_2d_walking_B.Sum2';
bio(464).ndims=2;
bio(464).size=[];


bio(465).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Sum3';
bio(465).sigName='phi''-phi';
bio(465).portIdx=0;
bio(465).dim=[1,1];
bio(465).sigWidth=1;
bio(465).sigAddress='&umich_2d_walking_B.phiphi';
bio(465).ndims=2;
bio(465).size=[];


bio(466).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Switch';
bio(466).sigName='';
bio(466).portIdx=0;
bio(466).dim=[1,1];
bio(466).sigWidth=1;
bio(466).sigAddress='&umich_2d_walking_B.Switch';
bio(466).ndims=2;
bio(466).size=[];


bio(467).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Discrete Single Pole Lowpass Filter';
bio(467).sigName='';
bio(467).portIdx=0;
bio(467).dim=[1,1];
bio(467).sigWidth=1;
bio(467).sigAddress='&umich_2d_walking_B.DiscreteSinglePoleLowpassFilt_e';
bio(467).ndims=2;
bio(467).size=[];


bio(468).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-1)';
bio(468).sigName='';
bio(468).portIdx=0;
bio(468).dim=[1,1];
bio(468).sigWidth=1;
bio(468).sigAddress='&umich_2d_walking_B.UnitDelayphi_n1';
bio(468).ndims=2;
bio(468).size=[];


bio(469).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-2)';
bio(469).sigName='';
bio(469).portIdx=0;
bio(469).dim=[1,1];
bio(469).sigWidth=1;
bio(469).sigAddress='&umich_2d_walking_B.UnitDelayphi_n2';
bio(469).ndims=2;
bio(469).size=[];


bio(470).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Abs';
bio(470).sigName='';
bio(470).portIdx=0;
bio(470).dim=[1,1];
bio(470).sigWidth=1;
bio(470).sigAddress='&umich_2d_walking_B.Abs_k';
bio(470).ndims=2;
bio(470).size=[];


bio(471).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/1//HIP_INC_MAX_ENCODER_TICKS';
bio(471).sigName='';
bio(471).portIdx=0;
bio(471).dim=[1,1];
bio(471).sigWidth=1;
bio(471).sigAddress='&umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_fu';
bio(471).ndims=2;
bio(471).size=[];


bio(472).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Gain2';
bio(472).sigName='';
bio(472).portIdx=0;
bio(472).dim=[1,1];
bio(472).sigWidth=1;
bio(472).sigAddress='&umich_2d_walking_B.Gain2_l';
bio(472).ndims=2;
bio(472).size=[];


bio(473).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/HIP_INC_MAX_ENCODER_TICKS';
bio(473).sigName='';
bio(473).portIdx=0;
bio(473).dim=[1,1];
bio(473).sigWidth=1;
bio(473).sigAddress='&umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_m';
bio(473).ndims=2;
bio(473).size=[];


bio(474).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Product';
bio(474).sigName='';
bio(474).portIdx=0;
bio(474).dim=[1,1];
bio(474).sigWidth=1;
bio(474).sigAddress='&umich_2d_walking_B.Product_k';
bio(474).ndims=2;
bio(474).size=[];


bio(475).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Rounding Function';
bio(475).sigName='';
bio(475).portIdx=0;
bio(475).dim=[1,1];
bio(475).sigWidth=1;
bio(475).sigAddress='&umich_2d_walking_B.RoundingFunction_o';
bio(475).ndims=2;
bio(475).size=[];


bio(476).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum';
bio(476).sigName='';
bio(476).portIdx=0;
bio(476).dim=[1,1];
bio(476).sigWidth=1;
bio(476).sigAddress='&umich_2d_walking_B.Sum_o';
bio(476).ndims=2;
bio(476).size=[];


bio(477).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum1';
bio(477).sigName='';
bio(477).portIdx=0;
bio(477).dim=[1,1];
bio(477).sigWidth=1;
bio(477).sigAddress='&umich_2d_walking_B.Sum1_g';
bio(477).ndims=2;
bio(477).size=[];


bio(478).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum2';
bio(478).sigName='';
bio(478).portIdx=0;
bio(478).dim=[1,1];
bio(478).sigWidth=1;
bio(478).sigAddress='&umich_2d_walking_B.Sum2_h';
bio(478).ndims=2;
bio(478).size=[];


bio(479).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Sum3';
bio(479).sigName='phi''-phi';
bio(479).portIdx=0;
bio(479).dim=[1,1];
bio(479).sigWidth=1;
bio(479).sigAddress='&umich_2d_walking_B.phiphi_g';
bio(479).ndims=2;
bio(479).size=[];


bio(480).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Switch';
bio(480).sigName='';
bio(480).portIdx=0;
bio(480).dim=[1,1];
bio(480).sigWidth=1;
bio(480).sigAddress='&umich_2d_walking_B.Switch_g';
bio(480).ndims=2;
bio(480).size=[];


bio(481).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Discrete Single Pole Lowpass Filter';
bio(481).sigName='';
bio(481).portIdx=0;
bio(481).dim=[1,1];
bio(481).sigWidth=1;
bio(481).sigAddress='&umich_2d_walking_B.DiscreteSinglePoleLowpassFilt_j';
bio(481).ndims=2;
bio(481).size=[];


bio(482).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-1)';
bio(482).sigName='';
bio(482).portIdx=0;
bio(482).dim=[1,1];
bio(482).sigWidth=1;
bio(482).sigAddress='&umich_2d_walking_B.UnitDelayphi_n1_p';
bio(482).ndims=2;
bio(482).size=[];


bio(483).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-2)';
bio(483).sigName='';
bio(483).portIdx=0;
bio(483).dim=[1,1];
bio(483).sigWidth=1;
bio(483).sigAddress='&umich_2d_walking_B.UnitDelayphi_n2_l';
bio(483).ndims=2;
bio(483).size=[];


bio(484).blkName='UMich Controller/lateral_PID_control/Lateral Hip PID/Discrete-Time Integrator';
bio(484).sigName='';
bio(484).portIdx=0;
bio(484).dim=[2,1];
bio(484).sigWidth=2;
bio(484).sigAddress='&umich_2d_walking_B.DiscreteTimeIntegrator[0]';
bio(484).ndims=2;
bio(484).size=[];


bio(485).blkName='UMich Controller/lateral_PID_control/Lateral Hip PID/Proportional Gain';
bio(485).sigName='';
bio(485).portIdx=0;
bio(485).dim=[2,1];
bio(485).sigWidth=2;
bio(485).sigAddress='&umich_2d_walking_B.ProportionalGain[0]';
bio(485).ndims=2;
bio(485).size=[];


bio(486).blkName='UMich Controller/lateral_PID_control/Lateral Hip PID/Proportional Gain1';
bio(486).sigName='';
bio(486).portIdx=0;
bio(486).dim=[2,1];
bio(486).sigWidth=2;
bio(486).sigAddress='&umich_2d_walking_B.ProportionalGain1[0]';
bio(486).ndims=2;
bio(486).size=[];


bio(487).blkName='UMich Controller/lateral_PID_control/Lateral Hip PID/Proportional Gain2';
bio(487).sigName='';
bio(487).portIdx=0;
bio(487).dim=[2,1];
bio(487).sigWidth=2;
bio(487).sigAddress='&umich_2d_walking_B.ProportionalGain2[0]';
bio(487).ndims=2;
bio(487).size=[];


bio(488).blkName='UMich Controller/lateral_PID_control/Lateral Hip PID/Sum';
bio(488).sigName='';
bio(488).portIdx=0;
bio(488).dim=[2,1];
bio(488).sigWidth=2;
bio(488).sigAddress='&umich_2d_walking_B.Sum_l[0]';
bio(488).ndims=2;
bio(488).size=[];


bio(489).blkName='UMich Controller/lateral_PID_control/spherical_correction_angle/lateral_correction';
bio(489).sigName='';
bio(489).portIdx=0;
bio(489).dim=[1,1];
bio(489).sigWidth=1;
bio(489).sigAddress='&umich_2d_walking_B.lateral_correction';
bio(489).ndims=2;
bio(489).size=[];


bio(490).blkName='UMich Controller/lateral_PID_control/spherical_correction_angle/Sum1';
bio(490).sigName='';
bio(490).portIdx=0;
bio(490).dim=[1,1];
bio(490).sigWidth=1;
bio(490).sigAddress='&umich_2d_walking_B.Sum1_o';
bio(490).ndims=2;
bio(490).size=[];


bio(491).blkName='Actuator Control/SEA Controller (Position)/filtered_derivative/difference/Diff';
bio(491).sigName='';
bio(491).portIdx=0;
bio(491).dim=[4,1];
bio(491).sigWidth=4;
bio(491).sigAddress='&umich_2d_walking_B.Diff_c[0]';
bio(491).ndims=2;
bio(491).size=[];


bio(492).blkName='Actuator Control/SEA Controller (Position)/filtered_derivative/difference/UD';
bio(492).sigName='U(k-1)';
bio(492).portIdx=0;
bio(492).dim=[4,1];
bio(492).sigWidth=4;
bio(492).sigAddress='&umich_2d_walking_B.Uk1_j[0]';
bio(492).ndims=2;
bio(492).size=[];


bio(493).blkName='DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Compare To Zero/Compare';
bio(493).sigName='';
bio(493).portIdx=0;
bio(493).dim=[1,1];
bio(493).sigWidth=1;
bio(493).sigAddress='&umich_2d_walking_B.Compare_o';
bio(493).ndims=2;
bio(493).size=[];


bio(494).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Compare To Zero/Compare';
bio(494).sigName='';
bio(494).portIdx=0;
bio(494).dim=[1,1];
bio(494).sigWidth=1;
bio(494).sigAddress='&umich_2d_walking_B.Compare';
bio(494).ndims=2;
bio(494).size=[];


bio(495).blkName='DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Compare To Zero/Compare';
bio(495).sigName='';
bio(495).portIdx=0;
bio(495).dim=[1,1];
bio(495).sigWidth=1;
bio(495).sigAddress='&umich_2d_walking_B.Compare_k';
bio(495).ndims=2;
bio(495).size=[];


function len = getlenBIO
len = 495;

