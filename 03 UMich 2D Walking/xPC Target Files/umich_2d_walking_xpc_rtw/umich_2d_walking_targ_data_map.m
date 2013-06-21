  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 4;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (umich_2d_walking_P)
    ;%
      section.nData     = 2429;
      section.data(2429)  = dumData; %prealloc
      
	  ;% umich_2d_walking_P.TorqueLimiteroutside_UpperSat
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_P.TorqueLimiteroutside_LowerSat
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_P.TorqueLimiteroutside1_UpperSat
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_P.TorqueLimiteroutside1_LowerSat
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_P.tau_cmdNmx6_Y0
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_P.kp_gain_Value
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 10;
	
	  ;% umich_2d_walking_P.Constant3_Value
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 11;
	
	  ;% umich_2d_walking_P.Constant_Value
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 12;
	
	  ;% umich_2d_walking_P.SpringStiffness_Gain
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 13;
	
	  ;% umich_2d_walking_P.Constant1_Value
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 14;
	
	  ;% umich_2d_walking_P.SpringStiffness1_Gain
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 15;
	
	  ;% umich_2d_walking_P.kd_gain_Gain
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 16;
	
	  ;% umich_2d_walking_P.Gain1_Gain
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 17;
	
	  ;% umich_2d_walking_P.UD_InitialCondition
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 18;
	
	  ;% umich_2d_walking_P.single_pole_filter_NumCoef
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 19;
	
	  ;% umich_2d_walking_P.single_pole_filter_DenCoef
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 21;
	
	  ;% umich_2d_walking_P.single_pole_filter_InitialState
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 23;
	
	  ;% umich_2d_walking_P.kd_gain1_Gain
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 24;
	
	  ;% umich_2d_walking_P.kp_signal_Gain
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 25;
	
	  ;% umich_2d_walking_P.Step_Time
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 26;
	
	  ;% umich_2d_walking_P.Step_Y0
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 27;
	
	  ;% umich_2d_walking_P.Step_YFinal
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 28;
	
	  ;% umich_2d_walking_P.Constant_Value_h
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 29;
	
	  ;% umich_2d_walking_P.Constant1_Value_n
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 30;
	
	  ;% umich_2d_walking_P.Saturation_UpperSat
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 31;
	
	  ;% umich_2d_walking_P.Saturation_LowerSat
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 32;
	
	  ;% umich_2d_walking_P.Step_Time_b
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 33;
	
	  ;% umich_2d_walking_P.Step_Y0_l
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 34;
	
	  ;% umich_2d_walking_P.Step_YFinal_b
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 35;
	
	  ;% umich_2d_walking_P.Constant_Value_j
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 36;
	
	  ;% umich_2d_walking_P.Constant1_Value_o
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 37;
	
	  ;% umich_2d_walking_P.Saturation1_UpperSat
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 38;
	
	  ;% umich_2d_walking_P.Saturation1_LowerSat
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 39;
	
	  ;% umich_2d_walking_P.tau_cmd_signal_Gain
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 40;
	
	  ;% umich_2d_walking_P.no_Value
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 41;
	
	  ;% umich_2d_walking_P.yes_Value
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 42;
	
	  ;% umich_2d_walking_P.no_Value_n
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 43;
	
	  ;% umich_2d_walking_P.yes_Value_h
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 44;
	
	  ;% umich_2d_walking_P.no_Value_d
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 45;
	
	  ;% umich_2d_walking_P.yes_Value_g
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 46;
	
	  ;% umich_2d_walking_P.SpringStiffness1_Gain_m
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 47;
	
	  ;% umich_2d_walking_P.SFunction_p1
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 48;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 49;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 51;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 127;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 129;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 130;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 132;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 133;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 135;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 136;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 138;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 139;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 141;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 142;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 144;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n1_InitialConditio
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 145;
	
	  ;% umich_2d_walking_P.Gain2_Gain
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 146;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n2_InitialConditio
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 147;
	
	  ;% umich_2d_walking_P.HIP_INC_MAX_ENCODER_TICKS_Gain
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 148;
	
	  ;% umich_2d_walking_P.const_Value
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 149;
	
	  ;% umich_2d_walking_P.HIP_INC_MAX_ENCODER_TICKS_Gai_h
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 150;
	
	  ;% umich_2d_walking_P.Constant_Value_a
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 151;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_l
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 152;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_m
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 154;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_h
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 230;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_c
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 232;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_p
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 233;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_j
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 235;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_a
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 236;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_b
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 238;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_f
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 239;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_i
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 241;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_i
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 242;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_j
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 244;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_h
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 245;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_c
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 247;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n1_InitialCondit_d
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 248;
	
	  ;% umich_2d_walking_P.Gain2_Gain_m
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 249;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n2_InitialCondit_p
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 250;
	
	  ;% umich_2d_walking_P.HIP_INC_MAX_ENCODER_TICKS_Gai_o
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 251;
	
	  ;% umich_2d_walking_P.const_Value_j
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 252;
	
	  ;% umich_2d_walking_P.HIP_INC_MAX_ENCODER_TICKS_Gai_i
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 253;
	
	  ;% umich_2d_walking_P.Constant_Value_e
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 254;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 255;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 257;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 312;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 314;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 315;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 317;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 318;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 320;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 321;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 323;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 324;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 326;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 327;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 329;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n1_InitialCondit_b
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 330;
	
	  ;% umich_2d_walking_P.Gain2_Gain_a
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 331;
	
	  ;% umich_2d_walking_P.UnitDelayphi_n2_InitialCondit_l
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 332;
	
	  ;% umich_2d_walking_P.BOOM_MAX_ENCODER_TICKS_Gain
	  section.data(102).logicalSrcIdx = 101;
	  section.data(102).dtTransOffset = 333;
	
	  ;% umich_2d_walking_P.const_Value_l
	  section.data(103).logicalSrcIdx = 102;
	  section.data(103).dtTransOffset = 334;
	
	  ;% umich_2d_walking_P.BOOM_MAX_ENCODER_TICKS_Gain_p
	  section.data(104).logicalSrcIdx = 103;
	  section.data(104).dtTransOffset = 335;
	
	  ;% umich_2d_walking_P.Constant_Value_j1
	  section.data(105).logicalSrcIdx = 104;
	  section.data(105).dtTransOffset = 336;
	
	  ;% umich_2d_walking_P.Constant_Value_c
	  section.data(106).logicalSrcIdx = 105;
	  section.data(106).dtTransOffset = 337;
	
	  ;% umich_2d_walking_P.Constant1_Value_a
	  section.data(107).logicalSrcIdx = 106;
	  section.data(107).dtTransOffset = 338;
	
	  ;% umich_2d_walking_P.Constant2_Value
	  section.data(108).logicalSrcIdx = 107;
	  section.data(108).dtTransOffset = 339;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size
	  section.data(109).logicalSrcIdx = 108;
	  section.data(109).dtTransOffset = 340;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1
	  section.data(110).logicalSrcIdx = 109;
	  section.data(110).dtTransOffset = 342;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size
	  section.data(111).logicalSrcIdx = 110;
	  section.data(111).dtTransOffset = 402;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2
	  section.data(112).logicalSrcIdx = 111;
	  section.data(112).dtTransOffset = 404;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size
	  section.data(113).logicalSrcIdx = 112;
	  section.data(113).dtTransOffset = 405;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3
	  section.data(114).logicalSrcIdx = 113;
	  section.data(114).dtTransOffset = 407;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size
	  section.data(115).logicalSrcIdx = 114;
	  section.data(115).dtTransOffset = 408;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4
	  section.data(116).logicalSrcIdx = 115;
	  section.data(116).dtTransOffset = 410;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size
	  section.data(117).logicalSrcIdx = 116;
	  section.data(117).dtTransOffset = 411;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5
	  section.data(118).logicalSrcIdx = 117;
	  section.data(118).dtTransOffset = 413;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size
	  section.data(119).logicalSrcIdx = 118;
	  section.data(119).dtTransOffset = 414;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6
	  section.data(120).logicalSrcIdx = 119;
	  section.data(120).dtTransOffset = 416;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size
	  section.data(121).logicalSrcIdx = 120;
	  section.data(121).dtTransOffset = 417;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7
	  section.data(122).logicalSrcIdx = 121;
	  section.data(122).dtTransOffset = 419;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_Size
	  section.data(123).logicalSrcIdx = 122;
	  section.data(123).dtTransOffset = 420;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1
	  section.data(124).logicalSrcIdx = 123;
	  section.data(124).dtTransOffset = 422;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_Size
	  section.data(125).logicalSrcIdx = 124;
	  section.data(125).dtTransOffset = 486;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2
	  section.data(126).logicalSrcIdx = 125;
	  section.data(126).dtTransOffset = 488;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_Size
	  section.data(127).logicalSrcIdx = 126;
	  section.data(127).dtTransOffset = 489;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3
	  section.data(128).logicalSrcIdx = 127;
	  section.data(128).dtTransOffset = 491;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_Size
	  section.data(129).logicalSrcIdx = 128;
	  section.data(129).dtTransOffset = 492;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4
	  section.data(130).logicalSrcIdx = 129;
	  section.data(130).dtTransOffset = 494;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_Size
	  section.data(131).logicalSrcIdx = 130;
	  section.data(131).dtTransOffset = 495;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5
	  section.data(132).logicalSrcIdx = 131;
	  section.data(132).dtTransOffset = 497;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_Size
	  section.data(133).logicalSrcIdx = 132;
	  section.data(133).dtTransOffset = 498;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6
	  section.data(134).logicalSrcIdx = 133;
	  section.data(134).dtTransOffset = 500;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_Size
	  section.data(135).logicalSrcIdx = 134;
	  section.data(135).dtTransOffset = 501;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7
	  section.data(136).logicalSrcIdx = 135;
	  section.data(136).dtTransOffset = 503;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_d
	  section.data(137).logicalSrcIdx = 136;
	  section.data(137).dtTransOffset = 504;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_e
	  section.data(138).logicalSrcIdx = 137;
	  section.data(138).dtTransOffset = 506;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_a
	  section.data(139).logicalSrcIdx = 138;
	  section.data(139).dtTransOffset = 566;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_a
	  section.data(140).logicalSrcIdx = 139;
	  section.data(140).dtTransOffset = 568;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_c
	  section.data(141).logicalSrcIdx = 140;
	  section.data(141).dtTransOffset = 569;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_j
	  section.data(142).logicalSrcIdx = 141;
	  section.data(142).dtTransOffset = 571;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_l
	  section.data(143).logicalSrcIdx = 142;
	  section.data(143).dtTransOffset = 572;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_i
	  section.data(144).logicalSrcIdx = 143;
	  section.data(144).dtTransOffset = 574;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_o
	  section.data(145).logicalSrcIdx = 144;
	  section.data(145).dtTransOffset = 575;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_o
	  section.data(146).logicalSrcIdx = 145;
	  section.data(146).dtTransOffset = 577;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_b
	  section.data(147).logicalSrcIdx = 146;
	  section.data(147).dtTransOffset = 578;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_p
	  section.data(148).logicalSrcIdx = 147;
	  section.data(148).dtTransOffset = 580;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_n
	  section.data(149).logicalSrcIdx = 148;
	  section.data(149).dtTransOffset = 581;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_g
	  section.data(150).logicalSrcIdx = 149;
	  section.data(150).dtTransOffset = 583;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_Size_o
	  section.data(151).logicalSrcIdx = 150;
	  section.data(151).dtTransOffset = 584;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_l
	  section.data(152).logicalSrcIdx = 151;
	  section.data(152).dtTransOffset = 586;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_Size_j
	  section.data(153).logicalSrcIdx = 152;
	  section.data(153).dtTransOffset = 650;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_f
	  section.data(154).logicalSrcIdx = 153;
	  section.data(154).dtTransOffset = 652;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_Size_m
	  section.data(155).logicalSrcIdx = 154;
	  section.data(155).dtTransOffset = 653;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_a
	  section.data(156).logicalSrcIdx = 155;
	  section.data(156).dtTransOffset = 655;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_Size_i
	  section.data(157).logicalSrcIdx = 156;
	  section.data(157).dtTransOffset = 656;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_f
	  section.data(158).logicalSrcIdx = 157;
	  section.data(158).dtTransOffset = 658;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_Size_p
	  section.data(159).logicalSrcIdx = 158;
	  section.data(159).dtTransOffset = 659;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_b
	  section.data(160).logicalSrcIdx = 159;
	  section.data(160).dtTransOffset = 661;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_Size_a
	  section.data(161).logicalSrcIdx = 160;
	  section.data(161).dtTransOffset = 662;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_k
	  section.data(162).logicalSrcIdx = 161;
	  section.data(162).dtTransOffset = 664;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_Size_m
	  section.data(163).logicalSrcIdx = 162;
	  section.data(163).dtTransOffset = 665;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_d
	  section.data(164).logicalSrcIdx = 163;
	  section.data(164).dtTransOffset = 667;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_b
	  section.data(165).logicalSrcIdx = 164;
	  section.data(165).dtTransOffset = 668;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_g
	  section.data(166).logicalSrcIdx = 165;
	  section.data(166).dtTransOffset = 670;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_p
	  section.data(167).logicalSrcIdx = 166;
	  section.data(167).dtTransOffset = 730;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_d
	  section.data(168).logicalSrcIdx = 167;
	  section.data(168).dtTransOffset = 732;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_e
	  section.data(169).logicalSrcIdx = 168;
	  section.data(169).dtTransOffset = 733;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_d
	  section.data(170).logicalSrcIdx = 169;
	  section.data(170).dtTransOffset = 735;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_h
	  section.data(171).logicalSrcIdx = 170;
	  section.data(171).dtTransOffset = 736;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_k
	  section.data(172).logicalSrcIdx = 171;
	  section.data(172).dtTransOffset = 738;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_g
	  section.data(173).logicalSrcIdx = 172;
	  section.data(173).dtTransOffset = 739;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_n
	  section.data(174).logicalSrcIdx = 173;
	  section.data(174).dtTransOffset = 741;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_p
	  section.data(175).logicalSrcIdx = 174;
	  section.data(175).dtTransOffset = 742;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_e
	  section.data(176).logicalSrcIdx = 175;
	  section.data(176).dtTransOffset = 744;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_nv
	  section.data(177).logicalSrcIdx = 176;
	  section.data(177).dtTransOffset = 745;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_h
	  section.data(178).logicalSrcIdx = 177;
	  section.data(178).dtTransOffset = 747;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_Size_j
	  section.data(179).logicalSrcIdx = 178;
	  section.data(179).dtTransOffset = 748;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_g
	  section.data(180).logicalSrcIdx = 179;
	  section.data(180).dtTransOffset = 750;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_Size_n
	  section.data(181).logicalSrcIdx = 180;
	  section.data(181).dtTransOffset = 814;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_p
	  section.data(182).logicalSrcIdx = 181;
	  section.data(182).dtTransOffset = 816;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_Size_l
	  section.data(183).logicalSrcIdx = 182;
	  section.data(183).dtTransOffset = 817;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_j
	  section.data(184).logicalSrcIdx = 183;
	  section.data(184).dtTransOffset = 819;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_Size_d
	  section.data(185).logicalSrcIdx = 184;
	  section.data(185).dtTransOffset = 820;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_e
	  section.data(186).logicalSrcIdx = 185;
	  section.data(186).dtTransOffset = 822;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_Size_a
	  section.data(187).logicalSrcIdx = 186;
	  section.data(187).dtTransOffset = 823;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_n
	  section.data(188).logicalSrcIdx = 187;
	  section.data(188).dtTransOffset = 825;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_Size_g
	  section.data(189).logicalSrcIdx = 188;
	  section.data(189).dtTransOffset = 826;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_l
	  section.data(190).logicalSrcIdx = 189;
	  section.data(190).dtTransOffset = 828;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_Size_l
	  section.data(191).logicalSrcIdx = 190;
	  section.data(191).dtTransOffset = 829;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_g
	  section.data(192).logicalSrcIdx = 191;
	  section.data(192).dtTransOffset = 831;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_l
	  section.data(193).logicalSrcIdx = 192;
	  section.data(193).dtTransOffset = 832;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_i
	  section.data(194).logicalSrcIdx = 193;
	  section.data(194).dtTransOffset = 834;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_h
	  section.data(195).logicalSrcIdx = 194;
	  section.data(195).dtTransOffset = 894;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_l
	  section.data(196).logicalSrcIdx = 195;
	  section.data(196).dtTransOffset = 896;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_a
	  section.data(197).logicalSrcIdx = 196;
	  section.data(197).dtTransOffset = 897;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_jg
	  section.data(198).logicalSrcIdx = 197;
	  section.data(198).dtTransOffset = 899;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_j
	  section.data(199).logicalSrcIdx = 198;
	  section.data(199).dtTransOffset = 900;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_g
	  section.data(200).logicalSrcIdx = 199;
	  section.data(200).dtTransOffset = 902;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_l
	  section.data(201).logicalSrcIdx = 200;
	  section.data(201).dtTransOffset = 903;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_j
	  section.data(202).logicalSrcIdx = 201;
	  section.data(202).dtTransOffset = 905;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_j
	  section.data(203).logicalSrcIdx = 202;
	  section.data(203).dtTransOffset = 906;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_d
	  section.data(204).logicalSrcIdx = 203;
	  section.data(204).dtTransOffset = 908;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_e
	  section.data(205).logicalSrcIdx = 204;
	  section.data(205).dtTransOffset = 909;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_e
	  section.data(206).logicalSrcIdx = 205;
	  section.data(206).dtTransOffset = 911;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_Size_n
	  section.data(207).logicalSrcIdx = 206;
	  section.data(207).dtTransOffset = 912;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P1_f
	  section.data(208).logicalSrcIdx = 207;
	  section.data(208).dtTransOffset = 914;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_Size_g
	  section.data(209).logicalSrcIdx = 208;
	  section.data(209).dtTransOffset = 978;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P2_n
	  section.data(210).logicalSrcIdx = 209;
	  section.data(210).dtTransOffset = 980;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_Size_k
	  section.data(211).logicalSrcIdx = 210;
	  section.data(211).dtTransOffset = 981;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P3_js
	  section.data(212).logicalSrcIdx = 211;
	  section.data(212).dtTransOffset = 983;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_Size_j
	  section.data(213).logicalSrcIdx = 212;
	  section.data(213).dtTransOffset = 984;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P4_eu
	  section.data(214).logicalSrcIdx = 213;
	  section.data(214).dtTransOffset = 986;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_Size_j
	  section.data(215).logicalSrcIdx = 214;
	  section.data(215).dtTransOffset = 987;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P5_a
	  section.data(216).logicalSrcIdx = 215;
	  section.data(216).dtTransOffset = 989;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_Size_l
	  section.data(217).logicalSrcIdx = 216;
	  section.data(217).dtTransOffset = 990;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P6_g
	  section.data(218).logicalSrcIdx = 217;
	  section.data(218).dtTransOffset = 992;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_Size_g
	  section.data(219).logicalSrcIdx = 218;
	  section.data(219).dtTransOffset = 993;
	
	  ;% umich_2d_walking_P.EtherCATRxVar8_P7_j
	  section.data(220).logicalSrcIdx = 219;
	  section.data(220).dtTransOffset = 995;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_n
	  section.data(221).logicalSrcIdx = 220;
	  section.data(221).dtTransOffset = 996;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_b
	  section.data(222).logicalSrcIdx = 221;
	  section.data(222).dtTransOffset = 998;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_i
	  section.data(223).logicalSrcIdx = 222;
	  section.data(223).dtTransOffset = 1054;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_f
	  section.data(224).logicalSrcIdx = 223;
	  section.data(224).dtTransOffset = 1056;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_f
	  section.data(225).logicalSrcIdx = 224;
	  section.data(225).dtTransOffset = 1057;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_n
	  section.data(226).logicalSrcIdx = 225;
	  section.data(226).dtTransOffset = 1059;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_c
	  section.data(227).logicalSrcIdx = 226;
	  section.data(227).dtTransOffset = 1060;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_b
	  section.data(228).logicalSrcIdx = 227;
	  section.data(228).dtTransOffset = 1062;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_p
	  section.data(229).logicalSrcIdx = 228;
	  section.data(229).dtTransOffset = 1063;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_l
	  section.data(230).logicalSrcIdx = 229;
	  section.data(230).dtTransOffset = 1065;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_b2
	  section.data(231).logicalSrcIdx = 230;
	  section.data(231).dtTransOffset = 1066;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_f
	  section.data(232).logicalSrcIdx = 231;
	  section.data(232).dtTransOffset = 1068;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_eg
	  section.data(233).logicalSrcIdx = 232;
	  section.data(233).dtTransOffset = 1069;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_j
	  section.data(234).logicalSrcIdx = 233;
	  section.data(234).dtTransOffset = 1071;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_lm
	  section.data(235).logicalSrcIdx = 234;
	  section.data(235).dtTransOffset = 1072;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_p
	  section.data(236).logicalSrcIdx = 235;
	  section.data(236).dtTransOffset = 1074;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_m
	  section.data(237).logicalSrcIdx = 236;
	  section.data(237).dtTransOffset = 1130;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_g
	  section.data(238).logicalSrcIdx = 237;
	  section.data(238).dtTransOffset = 1132;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_g
	  section.data(239).logicalSrcIdx = 238;
	  section.data(239).dtTransOffset = 1133;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_m
	  section.data(240).logicalSrcIdx = 239;
	  section.data(240).dtTransOffset = 1135;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_co
	  section.data(241).logicalSrcIdx = 240;
	  section.data(241).dtTransOffset = 1136;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_c
	  section.data(242).logicalSrcIdx = 241;
	  section.data(242).dtTransOffset = 1138;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_m
	  section.data(243).logicalSrcIdx = 242;
	  section.data(243).dtTransOffset = 1139;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_ok
	  section.data(244).logicalSrcIdx = 243;
	  section.data(244).dtTransOffset = 1141;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_e
	  section.data(245).logicalSrcIdx = 244;
	  section.data(245).dtTransOffset = 1142;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_i
	  section.data(246).logicalSrcIdx = 245;
	  section.data(246).dtTransOffset = 1144;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_b
	  section.data(247).logicalSrcIdx = 246;
	  section.data(247).dtTransOffset = 1145;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_ja
	  section.data(248).logicalSrcIdx = 247;
	  section.data(248).dtTransOffset = 1147;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size
	  section.data(249).logicalSrcIdx = 248;
	  section.data(249).dtTransOffset = 1148;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1
	  section.data(250).logicalSrcIdx = 249;
	  section.data(250).dtTransOffset = 1150;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size
	  section.data(251).logicalSrcIdx = 250;
	  section.data(251).dtTransOffset = 1205;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2
	  section.data(252).logicalSrcIdx = 251;
	  section.data(252).dtTransOffset = 1207;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size
	  section.data(253).logicalSrcIdx = 252;
	  section.data(253).dtTransOffset = 1208;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3
	  section.data(254).logicalSrcIdx = 253;
	  section.data(254).dtTransOffset = 1210;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size
	  section.data(255).logicalSrcIdx = 254;
	  section.data(255).dtTransOffset = 1211;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4
	  section.data(256).logicalSrcIdx = 255;
	  section.data(256).dtTransOffset = 1213;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size
	  section.data(257).logicalSrcIdx = 256;
	  section.data(257).dtTransOffset = 1214;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5
	  section.data(258).logicalSrcIdx = 257;
	  section.data(258).dtTransOffset = 1216;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size
	  section.data(259).logicalSrcIdx = 258;
	  section.data(259).dtTransOffset = 1217;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6
	  section.data(260).logicalSrcIdx = 259;
	  section.data(260).dtTransOffset = 1219;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size
	  section.data(261).logicalSrcIdx = 260;
	  section.data(261).dtTransOffset = 1220;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7
	  section.data(262).logicalSrcIdx = 261;
	  section.data(262).dtTransOffset = 1222;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_Size_p
	  section.data(263).logicalSrcIdx = 262;
	  section.data(263).dtTransOffset = 1223;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P1_o
	  section.data(264).logicalSrcIdx = 263;
	  section.data(264).dtTransOffset = 1225;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_Size_f
	  section.data(265).logicalSrcIdx = 264;
	  section.data(265).dtTransOffset = 1284;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P2_h
	  section.data(266).logicalSrcIdx = 265;
	  section.data(266).dtTransOffset = 1286;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_Size_d
	  section.data(267).logicalSrcIdx = 266;
	  section.data(267).dtTransOffset = 1287;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P3_ny
	  section.data(268).logicalSrcIdx = 267;
	  section.data(268).dtTransOffset = 1289;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_Size_cv
	  section.data(269).logicalSrcIdx = 268;
	  section.data(269).dtTransOffset = 1290;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P4_o
	  section.data(270).logicalSrcIdx = 269;
	  section.data(270).dtTransOffset = 1292;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_Size_h
	  section.data(271).logicalSrcIdx = 270;
	  section.data(271).dtTransOffset = 1293;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P5_g
	  section.data(272).logicalSrcIdx = 271;
	  section.data(272).dtTransOffset = 1295;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_Size_o
	  section.data(273).logicalSrcIdx = 272;
	  section.data(273).dtTransOffset = 1296;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P6_pf
	  section.data(274).logicalSrcIdx = 273;
	  section.data(274).dtTransOffset = 1298;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_Size_nu
	  section.data(275).logicalSrcIdx = 274;
	  section.data(275).dtTransOffset = 1299;
	
	  ;% umich_2d_walking_P.EtherCATRxVar4_P7_i
	  section.data(276).logicalSrcIdx = 275;
	  section.data(276).dtTransOffset = 1301;
	
	  ;% umich_2d_walking_P.Constant7_Value
	  section.data(277).logicalSrcIdx = 276;
	  section.data(277).dtTransOffset = 1302;
	
	  ;% umich_2d_walking_P.Constant5_Value
	  section.data(278).logicalSrcIdx = 277;
	  section.data(278).dtTransOffset = 1303;
	
	  ;% umich_2d_walking_P.Constant6_Value
	  section.data(279).logicalSrcIdx = 278;
	  section.data(279).dtTransOffset = 1304;
	
	  ;% umich_2d_walking_P.Constant8_Value
	  section.data(280).logicalSrcIdx = 279;
	  section.data(280).dtTransOffset = 1305;
	
	  ;% umich_2d_walking_P.Constant3_Value_c
	  section.data(281).logicalSrcIdx = 280;
	  section.data(281).dtTransOffset = 1306;
	
	  ;% umich_2d_walking_P.Constant1_Value_j
	  section.data(282).logicalSrcIdx = 281;
	  section.data(282).dtTransOffset = 1307;
	
	  ;% umich_2d_walking_P.Constant2_Value_f
	  section.data(283).logicalSrcIdx = 282;
	  section.data(283).dtTransOffset = 1308;
	
	  ;% umich_2d_walking_P.Constant4_Value
	  section.data(284).logicalSrcIdx = 283;
	  section.data(284).dtTransOffset = 1309;
	
	  ;% umich_2d_walking_P.Constant10_Value
	  section.data(285).logicalSrcIdx = 284;
	  section.data(285).dtTransOffset = 1310;
	
	  ;% umich_2d_walking_P.Constant9_Value
	  section.data(286).logicalSrcIdx = 285;
	  section.data(286).dtTransOffset = 1311;
	
	  ;% umich_2d_walking_P.Constant11_Value
	  section.data(287).logicalSrcIdx = 286;
	  section.data(287).dtTransOffset = 1312;
	
	  ;% umich_2d_walking_P.Constant12_Value
	  section.data(288).logicalSrcIdx = 287;
	  section.data(288).dtTransOffset = 1313;
	
	  ;% umich_2d_walking_P.Constant7_Value_p
	  section.data(289).logicalSrcIdx = 288;
	  section.data(289).dtTransOffset = 1314;
	
	  ;% umich_2d_walking_P.Constant5_Value_o
	  section.data(290).logicalSrcIdx = 289;
	  section.data(290).dtTransOffset = 1315;
	
	  ;% umich_2d_walking_P.Constant6_Value_f
	  section.data(291).logicalSrcIdx = 290;
	  section.data(291).dtTransOffset = 1316;
	
	  ;% umich_2d_walking_P.Constant8_Value_a
	  section.data(292).logicalSrcIdx = 291;
	  section.data(292).dtTransOffset = 1317;
	
	  ;% umich_2d_walking_P.Constant3_Value_h
	  section.data(293).logicalSrcIdx = 292;
	  section.data(293).dtTransOffset = 1318;
	
	  ;% umich_2d_walking_P.Constant1_Value_k
	  section.data(294).logicalSrcIdx = 293;
	  section.data(294).dtTransOffset = 1319;
	
	  ;% umich_2d_walking_P.Constant2_Value_h
	  section.data(295).logicalSrcIdx = 294;
	  section.data(295).dtTransOffset = 1320;
	
	  ;% umich_2d_walking_P.Constant4_Value_n
	  section.data(296).logicalSrcIdx = 295;
	  section.data(296).dtTransOffset = 1321;
	
	  ;% umich_2d_walking_P.Constant9_Value_g
	  section.data(297).logicalSrcIdx = 296;
	  section.data(297).dtTransOffset = 1322;
	
	  ;% umich_2d_walking_P.Constant10_Value_k
	  section.data(298).logicalSrcIdx = 297;
	  section.data(298).dtTransOffset = 1323;
	
	  ;% umich_2d_walking_P.Constant11_Value_b
	  section.data(299).logicalSrcIdx = 298;
	  section.data(299).dtTransOffset = 1324;
	
	  ;% umich_2d_walking_P.Constant12_Value_j
	  section.data(300).logicalSrcIdx = 299;
	  section.data(300).dtTransOffset = 1325;
	
	  ;% umich_2d_walking_P.Constant3_Value_o
	  section.data(301).logicalSrcIdx = 300;
	  section.data(301).dtTransOffset = 1326;
	
	  ;% umich_2d_walking_P.Constant1_Value_e
	  section.data(302).logicalSrcIdx = 301;
	  section.data(302).dtTransOffset = 1327;
	
	  ;% umich_2d_walking_P.Constant2_Value_e
	  section.data(303).logicalSrcIdx = 302;
	  section.data(303).dtTransOffset = 1328;
	
	  ;% umich_2d_walking_P.Constant4_Value_ns
	  section.data(304).logicalSrcIdx = 303;
	  section.data(304).dtTransOffset = 1329;
	
	  ;% umich_2d_walking_P.Constant7_Value_d
	  section.data(305).logicalSrcIdx = 304;
	  section.data(305).dtTransOffset = 1330;
	
	  ;% umich_2d_walking_P.Constant5_Value_b
	  section.data(306).logicalSrcIdx = 305;
	  section.data(306).dtTransOffset = 1331;
	
	  ;% umich_2d_walking_P.Constant6_Value_k
	  section.data(307).logicalSrcIdx = 306;
	  section.data(307).dtTransOffset = 1332;
	
	  ;% umich_2d_walking_P.Constant8_Value_i
	  section.data(308).logicalSrcIdx = 307;
	  section.data(308).dtTransOffset = 1333;
	
	  ;% umich_2d_walking_P.Constant10_Value_o
	  section.data(309).logicalSrcIdx = 308;
	  section.data(309).dtTransOffset = 1334;
	
	  ;% umich_2d_walking_P.Constant9_Value_p
	  section.data(310).logicalSrcIdx = 309;
	  section.data(310).dtTransOffset = 1335;
	
	  ;% umich_2d_walking_P.Constant11_Value_g
	  section.data(311).logicalSrcIdx = 310;
	  section.data(311).dtTransOffset = 1336;
	
	  ;% umich_2d_walking_P.Constant12_Value_o
	  section.data(312).logicalSrcIdx = 311;
	  section.data(312).dtTransOffset = 1337;
	
	  ;% umich_2d_walking_P.reverse_Gain
	  section.data(313).logicalSrcIdx = 312;
	  section.data(313).dtTransOffset = 1338;
	
	  ;% umich_2d_walking_P.Gain1_Gain_k
	  section.data(314).logicalSrcIdx = 313;
	  section.data(314).dtTransOffset = 1339;
	
	  ;% umich_2d_walking_P.Constant2_Value_ey
	  section.data(315).logicalSrcIdx = 314;
	  section.data(315).dtTransOffset = 1340;
	
	  ;% umich_2d_walking_P.Constant2_Value_n
	  section.data(316).logicalSrcIdx = 315;
	  section.data(316).dtTransOffset = 1341;
	
	  ;% umich_2d_walking_P.Constant1_Value_e4
	  section.data(317).logicalSrcIdx = 316;
	  section.data(317).dtTransOffset = 1342;
	
	  ;% umich_2d_walking_P.Constant_Value_hb
	  section.data(318).logicalSrcIdx = 317;
	  section.data(318).dtTransOffset = 1343;
	
	  ;% umich_2d_walking_P.Constant_Value_ek
	  section.data(319).logicalSrcIdx = 318;
	  section.data(319).dtTransOffset = 1344;
	
	  ;% umich_2d_walking_P.Gain1_Gain_n
	  section.data(320).logicalSrcIdx = 319;
	  section.data(320).dtTransOffset = 1345;
	
	  ;% umich_2d_walking_P.UD_InitialCondition_d
	  section.data(321).logicalSrcIdx = 320;
	  section.data(321).dtTransOffset = 1346;
	
	  ;% umich_2d_walking_P.single_pole_filter_NumCoef_c
	  section.data(322).logicalSrcIdx = 321;
	  section.data(322).dtTransOffset = 1347;
	
	  ;% umich_2d_walking_P.single_pole_filter_DenCoef_a
	  section.data(323).logicalSrcIdx = 322;
	  section.data(323).dtTransOffset = 1349;
	
	  ;% umich_2d_walking_P.single_pole_filter_InitialSta_d
	  section.data(324).logicalSrcIdx = 323;
	  section.data(324).dtTransOffset = 1351;
	
	  ;% umich_2d_walking_P.Gain2_Gain_c
	  section.data(325).logicalSrcIdx = 324;
	  section.data(325).dtTransOffset = 1352;
	
	  ;% umich_2d_walking_P.Gain_Gain
	  section.data(326).logicalSrcIdx = 325;
	  section.data(326).dtTransOffset = 1353;
	
	  ;% umich_2d_walking_P.theta_limits_Value
	  section.data(327).logicalSrcIdx = 326;
	  section.data(327).dtTransOffset = 1354;
	
	  ;% umich_2d_walking_P.h_alpha_Value
	  section.data(328).logicalSrcIdx = 327;
	  section.data(328).dtTransOffset = 1356;
	
	  ;% umich_2d_walking_P.poly_cor_Value
	  section.data(329).logicalSrcIdx = 328;
	  section.data(329).dtTransOffset = 1380;
	
	  ;% umich_2d_walking_P.kp1_Value
	  section.data(330).logicalSrcIdx = 329;
	  section.data(330).dtTransOffset = 1400;
	
	  ;% umich_2d_walking_P.kp2_Value
	  section.data(331).logicalSrcIdx = 330;
	  section.data(331).dtTransOffset = 1401;
	
	  ;% umich_2d_walking_P.kp3_Value
	  section.data(332).logicalSrcIdx = 331;
	  section.data(332).dtTransOffset = 1402;
	
	  ;% umich_2d_walking_P.kd1_Value
	  section.data(333).logicalSrcIdx = 332;
	  section.data(333).dtTransOffset = 1403;
	
	  ;% umich_2d_walking_P.kd2_Value
	  section.data(334).logicalSrcIdx = 333;
	  section.data(334).dtTransOffset = 1404;
	
	  ;% umich_2d_walking_P.kd3_Value
	  section.data(335).logicalSrcIdx = 334;
	  section.data(335).dtTransOffset = 1405;
	
	  ;% umich_2d_walking_P.epsilon_Value
	  section.data(336).logicalSrcIdx = 335;
	  section.data(336).dtTransOffset = 1406;
	
	  ;% umich_2d_walking_P.desired_pitch_Value
	  section.data(337).logicalSrcIdx = 336;
	  section.data(337).dtTransOffset = 1407;
	
	  ;% umich_2d_walking_P.pdCtrl_Value
	  section.data(338).logicalSrcIdx = 337;
	  section.data(338).dtTransOffset = 1408;
	
	  ;% umich_2d_walking_P.pdPlusFwdCtrl_Value
	  section.data(339).logicalSrcIdx = 338;
	  section.data(339).dtTransOffset = 1409;
	
	  ;% umich_2d_walking_P.L2fhCtrl_Value
	  section.data(340).logicalSrcIdx = 339;
	  section.data(340).dtTransOffset = 1410;
	
	  ;% umich_2d_walking_P.auto_swap_Value
	  section.data(341).logicalSrcIdx = 340;
	  section.data(341).dtTransOffset = 1411;
	
	  ;% umich_2d_walking_P.swap_cmd_Value
	  section.data(342).logicalSrcIdx = 341;
	  section.data(342).dtTransOffset = 1412;
	
	  ;% umich_2d_walking_P.sat_val1_Value
	  section.data(343).logicalSrcIdx = 342;
	  section.data(343).dtTransOffset = 1413;
	
	  ;% umich_2d_walking_P.sat_val2_Value
	  section.data(344).logicalSrcIdx = 343;
	  section.data(344).dtTransOffset = 1414;
	
	  ;% umich_2d_walking_P.manual_stance_leg_Value
	  section.data(345).logicalSrcIdx = 344;
	  section.data(345).dtTransOffset = 1415;
	
	  ;% umich_2d_walking_P.scuff1_Value
	  section.data(346).logicalSrcIdx = 345;
	  section.data(346).dtTransOffset = 1416;
	
	  ;% umich_2d_walking_P.scuff2_Value
	  section.data(347).logicalSrcIdx = 346;
	  section.data(347).dtTransOffset = 1417;
	
	  ;% umich_2d_walking_P.rad2deg1_Gain
	  section.data(348).logicalSrcIdx = 347;
	  section.data(348).dtTransOffset = 1418;
	
	  ;% umich_2d_walking_P.s_mode_Value
	  section.data(349).logicalSrcIdx = 348;
	  section.data(349).dtTransOffset = 1419;
	
	  ;% umich_2d_walking_P.s_freq_Value
	  section.data(350).logicalSrcIdx = 349;
	  section.data(350).dtTransOffset = 1420;
	
	  ;% umich_2d_walking_P.q3_des_Value
	  section.data(351).logicalSrcIdx = 350;
	  section.data(351).dtTransOffset = 1421;
	
	  ;% umich_2d_walking_P.swap_Value
	  section.data(352).logicalSrcIdx = 351;
	  section.data(352).dtTransOffset = 1423;
	
	  ;% umich_2d_walking_P.swap_threshold_Value
	  section.data(353).logicalSrcIdx = 352;
	  section.data(353).dtTransOffset = 1424;
	
	  ;% umich_2d_walking_P.stance_leg_state_InitialConditi
	  section.data(354).logicalSrcIdx = 353;
	  section.data(354).dtTransOffset = 1427;
	
	  ;% umich_2d_walking_P.y_signals_Gain
	  section.data(355).logicalSrcIdx = 354;
	  section.data(355).dtTransOffset = 1428;
	
	  ;% umich_2d_walking_P.rad2deg2_Gain
	  section.data(356).logicalSrcIdx = 355;
	  section.data(356).dtTransOffset = 1429;
	
	  ;% umich_2d_walking_P.s_signals_Gain
	  section.data(357).logicalSrcIdx = 356;
	  section.data(357).dtTransOffset = 1430;
	
	  ;% umich_2d_walking_P.pd_signals_Gain
	  section.data(358).logicalSrcIdx = 357;
	  section.data(358).dtTransOffset = 1431;
	
	  ;% umich_2d_walking_P.zero_Value
	  section.data(359).logicalSrcIdx = 358;
	  section.data(359).dtTransOffset = 1432;
	
	  ;% umich_2d_walking_P.Switch_Threshold
	  section.data(360).logicalSrcIdx = 359;
	  section.data(360).dtTransOffset = 1433;
	
	  ;% umich_2d_walking_P.feedforward_torquegravitycompen
	  section.data(361).logicalSrcIdx = 360;
	  section.data(361).dtTransOffset = 1434;
	
	  ;% umich_2d_walking_P.desired_velocity_Value
	  section.data(362).logicalSrcIdx = 361;
	  section.data(362).dtTransOffset = 1435;
	
	  ;% umich_2d_walking_P.ProportionalGain1_Gain
	  section.data(363).logicalSrcIdx = 362;
	  section.data(363).dtTransOffset = 1436;
	
	  ;% umich_2d_walking_P.boom_mount_angle_Value
	  section.data(364).logicalSrcIdx = 363;
	  section.data(364).dtTransOffset = 1437;
	
	  ;% umich_2d_walking_P.Gain_Gain_g
	  section.data(365).logicalSrcIdx = 364;
	  section.data(365).dtTransOffset = 1438;
	
	  ;% umich_2d_walking_P.ProportionalGain_Gain
	  section.data(366).logicalSrcIdx = 365;
	  section.data(366).dtTransOffset = 1439;
	
	  ;% umich_2d_walking_P.ProportionalGain2_Gain
	  section.data(367).logicalSrcIdx = 366;
	  section.data(367).dtTransOffset = 1440;
	
	  ;% umich_2d_walking_P.DiscreteTimeIntegrator_gainval
	  section.data(368).logicalSrcIdx = 367;
	  section.data(368).dtTransOffset = 1441;
	
	  ;% umich_2d_walking_P.DiscreteTimeIntegrator_IC
	  section.data(369).logicalSrcIdx = 368;
	  section.data(369).dtTransOffset = 1442;
	
	  ;% umich_2d_walking_P.DiscreteTimeIntegrator_UpperSat
	  section.data(370).logicalSrcIdx = 369;
	  section.data(370).dtTransOffset = 1443;
	
	  ;% umich_2d_walking_P.DiscreteTimeIntegrator_LowerSat
	  section.data(371).logicalSrcIdx = 370;
	  section.data(371).dtTransOffset = 1444;
	
	  ;% umich_2d_walking_P.Gain1_Gain_b
	  section.data(372).logicalSrcIdx = 371;
	  section.data(372).dtTransOffset = 1445;
	
	  ;% umich_2d_walking_P.MotorSaturation_UpperSat
	  section.data(373).logicalSrcIdx = 372;
	  section.data(373).dtTransOffset = 1446;
	
	  ;% umich_2d_walking_P.MotorSaturation_LowerSat
	  section.data(374).logicalSrcIdx = 373;
	  section.data(374).dtTransOffset = 1447;
	
	  ;% umich_2d_walking_P.Gain_Gain_m
	  section.data(375).logicalSrcIdx = 374;
	  section.data(375).dtTransOffset = 1448;
	
	  ;% umich_2d_walking_P.current_cmds_Gain
	  section.data(376).logicalSrcIdx = 375;
	  section.data(376).dtTransOffset = 1449;
	
	  ;% umich_2d_walking_P.Constant_Value_p
	  section.data(377).logicalSrcIdx = 376;
	  section.data(377).dtTransOffset = 1450;
	
	  ;% umich_2d_walking_P.EtherCATRxFrames_P1_Size
	  section.data(378).logicalSrcIdx = 377;
	  section.data(378).dtTransOffset = 1451;
	
	  ;% umich_2d_walking_P.EtherCATRxFrames_P1
	  section.data(379).logicalSrcIdx = 378;
	  section.data(379).dtTransOffset = 1453;
	
	  ;% umich_2d_walking_P.EtherCAT_P1_Size
	  section.data(380).logicalSrcIdx = 379;
	  section.data(380).dtTransOffset = 1454;
	
	  ;% umich_2d_walking_P.EtherCAT_P1
	  section.data(381).logicalSrcIdx = 380;
	  section.data(381).dtTransOffset = 1456;
	
	  ;% umich_2d_walking_P.EtherCAT_P2_Size
	  section.data(382).logicalSrcIdx = 381;
	  section.data(382).dtTransOffset = 1457;
	
	  ;% umich_2d_walking_P.EtherCAT_P2
	  section.data(383).logicalSrcIdx = 382;
	  section.data(383).dtTransOffset = 1459;
	
	  ;% umich_2d_walking_P.EtherCAT_P3_Size
	  section.data(384).logicalSrcIdx = 383;
	  section.data(384).dtTransOffset = 1460;
	
	  ;% umich_2d_walking_P.EtherCAT_P3
	  section.data(385).logicalSrcIdx = 384;
	  section.data(385).dtTransOffset = 1462;
	
	  ;% umich_2d_walking_P.EtherCAT_P4_Size
	  section.data(386).logicalSrcIdx = 385;
	  section.data(386).dtTransOffset = 1463;
	
	  ;% umich_2d_walking_P.EtherCAT_P4
	  section.data(387).logicalSrcIdx = 386;
	  section.data(387).dtTransOffset = 1465;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size
	  section.data(388).logicalSrcIdx = 387;
	  section.data(388).dtTransOffset = 1466;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1
	  section.data(389).logicalSrcIdx = 388;
	  section.data(389).dtTransOffset = 1468;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size
	  section.data(390).logicalSrcIdx = 389;
	  section.data(390).dtTransOffset = 1527;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2
	  section.data(391).logicalSrcIdx = 390;
	  section.data(391).dtTransOffset = 1529;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size
	  section.data(392).logicalSrcIdx = 391;
	  section.data(392).dtTransOffset = 1530;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3
	  section.data(393).logicalSrcIdx = 392;
	  section.data(393).dtTransOffset = 1532;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size
	  section.data(394).logicalSrcIdx = 393;
	  section.data(394).dtTransOffset = 1533;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4
	  section.data(395).logicalSrcIdx = 394;
	  section.data(395).dtTransOffset = 1535;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size
	  section.data(396).logicalSrcIdx = 395;
	  section.data(396).dtTransOffset = 1536;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5
	  section.data(397).logicalSrcIdx = 396;
	  section.data(397).dtTransOffset = 1538;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size
	  section.data(398).logicalSrcIdx = 397;
	  section.data(398).dtTransOffset = 1539;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6
	  section.data(399).logicalSrcIdx = 398;
	  section.data(399).dtTransOffset = 1541;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size
	  section.data(400).logicalSrcIdx = 399;
	  section.data(400).dtTransOffset = 1542;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7
	  section.data(401).logicalSrcIdx = 400;
	  section.data(401).dtTransOffset = 1544;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size
	  section.data(402).logicalSrcIdx = 401;
	  section.data(402).dtTransOffset = 1545;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1
	  section.data(403).logicalSrcIdx = 402;
	  section.data(403).dtTransOffset = 1547;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size
	  section.data(404).logicalSrcIdx = 403;
	  section.data(404).dtTransOffset = 1609;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2
	  section.data(405).logicalSrcIdx = 404;
	  section.data(405).dtTransOffset = 1611;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size
	  section.data(406).logicalSrcIdx = 405;
	  section.data(406).dtTransOffset = 1612;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3
	  section.data(407).logicalSrcIdx = 406;
	  section.data(407).dtTransOffset = 1614;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size
	  section.data(408).logicalSrcIdx = 407;
	  section.data(408).dtTransOffset = 1615;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4
	  section.data(409).logicalSrcIdx = 408;
	  section.data(409).dtTransOffset = 1617;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size
	  section.data(410).logicalSrcIdx = 409;
	  section.data(410).dtTransOffset = 1618;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5
	  section.data(411).logicalSrcIdx = 410;
	  section.data(411).dtTransOffset = 1620;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size
	  section.data(412).logicalSrcIdx = 411;
	  section.data(412).dtTransOffset = 1621;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6
	  section.data(413).logicalSrcIdx = 412;
	  section.data(413).dtTransOffset = 1623;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size
	  section.data(414).logicalSrcIdx = 413;
	  section.data(414).dtTransOffset = 1624;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7
	  section.data(415).logicalSrcIdx = 414;
	  section.data(415).dtTransOffset = 1626;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size
	  section.data(416).logicalSrcIdx = 415;
	  section.data(416).dtTransOffset = 1627;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1
	  section.data(417).logicalSrcIdx = 416;
	  section.data(417).dtTransOffset = 1629;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size
	  section.data(418).logicalSrcIdx = 417;
	  section.data(418).dtTransOffset = 1693;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2
	  section.data(419).logicalSrcIdx = 418;
	  section.data(419).dtTransOffset = 1695;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size
	  section.data(420).logicalSrcIdx = 419;
	  section.data(420).dtTransOffset = 1696;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3
	  section.data(421).logicalSrcIdx = 420;
	  section.data(421).dtTransOffset = 1698;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size
	  section.data(422).logicalSrcIdx = 421;
	  section.data(422).dtTransOffset = 1699;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4
	  section.data(423).logicalSrcIdx = 422;
	  section.data(423).dtTransOffset = 1701;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size
	  section.data(424).logicalSrcIdx = 423;
	  section.data(424).dtTransOffset = 1702;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5
	  section.data(425).logicalSrcIdx = 424;
	  section.data(425).dtTransOffset = 1704;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size
	  section.data(426).logicalSrcIdx = 425;
	  section.data(426).dtTransOffset = 1705;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6
	  section.data(427).logicalSrcIdx = 426;
	  section.data(427).dtTransOffset = 1707;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size
	  section.data(428).logicalSrcIdx = 427;
	  section.data(428).dtTransOffset = 1708;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7
	  section.data(429).logicalSrcIdx = 428;
	  section.data(429).dtTransOffset = 1710;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size
	  section.data(430).logicalSrcIdx = 429;
	  section.data(430).dtTransOffset = 1711;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1
	  section.data(431).logicalSrcIdx = 430;
	  section.data(431).dtTransOffset = 1713;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size
	  section.data(432).logicalSrcIdx = 431;
	  section.data(432).dtTransOffset = 1781;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2
	  section.data(433).logicalSrcIdx = 432;
	  section.data(433).dtTransOffset = 1783;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size
	  section.data(434).logicalSrcIdx = 433;
	  section.data(434).dtTransOffset = 1784;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3
	  section.data(435).logicalSrcIdx = 434;
	  section.data(435).dtTransOffset = 1786;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size
	  section.data(436).logicalSrcIdx = 435;
	  section.data(436).dtTransOffset = 1787;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4
	  section.data(437).logicalSrcIdx = 436;
	  section.data(437).dtTransOffset = 1789;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size
	  section.data(438).logicalSrcIdx = 437;
	  section.data(438).dtTransOffset = 1790;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5
	  section.data(439).logicalSrcIdx = 438;
	  section.data(439).dtTransOffset = 1792;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size
	  section.data(440).logicalSrcIdx = 439;
	  section.data(440).dtTransOffset = 1793;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6
	  section.data(441).logicalSrcIdx = 440;
	  section.data(441).dtTransOffset = 1795;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size
	  section.data(442).logicalSrcIdx = 441;
	  section.data(442).dtTransOffset = 1796;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7
	  section.data(443).logicalSrcIdx = 442;
	  section.data(443).dtTransOffset = 1798;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size
	  section.data(444).logicalSrcIdx = 443;
	  section.data(444).dtTransOffset = 1799;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1
	  section.data(445).logicalSrcIdx = 444;
	  section.data(445).dtTransOffset = 1801;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size
	  section.data(446).logicalSrcIdx = 445;
	  section.data(446).dtTransOffset = 1858;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2
	  section.data(447).logicalSrcIdx = 446;
	  section.data(447).dtTransOffset = 1860;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size
	  section.data(448).logicalSrcIdx = 447;
	  section.data(448).dtTransOffset = 1861;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3
	  section.data(449).logicalSrcIdx = 448;
	  section.data(449).dtTransOffset = 1863;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size
	  section.data(450).logicalSrcIdx = 449;
	  section.data(450).dtTransOffset = 1864;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4
	  section.data(451).logicalSrcIdx = 450;
	  section.data(451).dtTransOffset = 1866;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size
	  section.data(452).logicalSrcIdx = 451;
	  section.data(452).dtTransOffset = 1867;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5
	  section.data(453).logicalSrcIdx = 452;
	  section.data(453).dtTransOffset = 1869;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size
	  section.data(454).logicalSrcIdx = 453;
	  section.data(454).dtTransOffset = 1870;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6
	  section.data(455).logicalSrcIdx = 454;
	  section.data(455).dtTransOffset = 1872;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size
	  section.data(456).logicalSrcIdx = 455;
	  section.data(456).dtTransOffset = 1873;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7
	  section.data(457).logicalSrcIdx = 456;
	  section.data(457).dtTransOffset = 1875;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size
	  section.data(458).logicalSrcIdx = 457;
	  section.data(458).dtTransOffset = 1876;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1
	  section.data(459).logicalSrcIdx = 458;
	  section.data(459).dtTransOffset = 1878;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size
	  section.data(460).logicalSrcIdx = 459;
	  section.data(460).dtTransOffset = 1935;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2
	  section.data(461).logicalSrcIdx = 460;
	  section.data(461).dtTransOffset = 1937;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size
	  section.data(462).logicalSrcIdx = 461;
	  section.data(462).dtTransOffset = 1938;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3
	  section.data(463).logicalSrcIdx = 462;
	  section.data(463).dtTransOffset = 1940;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size
	  section.data(464).logicalSrcIdx = 463;
	  section.data(464).dtTransOffset = 1941;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4
	  section.data(465).logicalSrcIdx = 464;
	  section.data(465).dtTransOffset = 1943;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size
	  section.data(466).logicalSrcIdx = 465;
	  section.data(466).dtTransOffset = 1944;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5
	  section.data(467).logicalSrcIdx = 466;
	  section.data(467).dtTransOffset = 1946;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size
	  section.data(468).logicalSrcIdx = 467;
	  section.data(468).dtTransOffset = 1947;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6
	  section.data(469).logicalSrcIdx = 468;
	  section.data(469).dtTransOffset = 1949;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size
	  section.data(470).logicalSrcIdx = 469;
	  section.data(470).dtTransOffset = 1950;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7
	  section.data(471).logicalSrcIdx = 470;
	  section.data(471).dtTransOffset = 1952;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size
	  section.data(472).logicalSrcIdx = 471;
	  section.data(472).dtTransOffset = 1953;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1
	  section.data(473).logicalSrcIdx = 472;
	  section.data(473).dtTransOffset = 1955;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size
	  section.data(474).logicalSrcIdx = 473;
	  section.data(474).dtTransOffset = 2016;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2
	  section.data(475).logicalSrcIdx = 474;
	  section.data(475).dtTransOffset = 2018;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size
	  section.data(476).logicalSrcIdx = 475;
	  section.data(476).dtTransOffset = 2019;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3
	  section.data(477).logicalSrcIdx = 476;
	  section.data(477).dtTransOffset = 2021;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size
	  section.data(478).logicalSrcIdx = 477;
	  section.data(478).dtTransOffset = 2022;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4
	  section.data(479).logicalSrcIdx = 478;
	  section.data(479).dtTransOffset = 2024;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size
	  section.data(480).logicalSrcIdx = 479;
	  section.data(480).dtTransOffset = 2025;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5
	  section.data(481).logicalSrcIdx = 480;
	  section.data(481).dtTransOffset = 2027;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size
	  section.data(482).logicalSrcIdx = 481;
	  section.data(482).dtTransOffset = 2028;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6
	  section.data(483).logicalSrcIdx = 482;
	  section.data(483).dtTransOffset = 2030;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size
	  section.data(484).logicalSrcIdx = 483;
	  section.data(484).dtTransOffset = 2031;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7
	  section.data(485).logicalSrcIdx = 484;
	  section.data(485).dtTransOffset = 2033;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_i
	  section.data(486).logicalSrcIdx = 485;
	  section.data(486).dtTransOffset = 2034;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_a
	  section.data(487).logicalSrcIdx = 486;
	  section.data(487).dtTransOffset = 2036;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_l
	  section.data(488).logicalSrcIdx = 487;
	  section.data(488).dtTransOffset = 2093;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_a
	  section.data(489).logicalSrcIdx = 488;
	  section.data(489).dtTransOffset = 2095;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_h
	  section.data(490).logicalSrcIdx = 489;
	  section.data(490).dtTransOffset = 2096;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_k
	  section.data(491).logicalSrcIdx = 490;
	  section.data(491).dtTransOffset = 2098;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_i
	  section.data(492).logicalSrcIdx = 491;
	  section.data(492).dtTransOffset = 2099;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_k
	  section.data(493).logicalSrcIdx = 492;
	  section.data(493).dtTransOffset = 2101;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_j
	  section.data(494).logicalSrcIdx = 493;
	  section.data(494).dtTransOffset = 2102;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_c
	  section.data(495).logicalSrcIdx = 494;
	  section.data(495).dtTransOffset = 2104;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_iu
	  section.data(496).logicalSrcIdx = 495;
	  section.data(496).dtTransOffset = 2105;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_e
	  section.data(497).logicalSrcIdx = 496;
	  section.data(497).dtTransOffset = 2107;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_m
	  section.data(498).logicalSrcIdx = 497;
	  section.data(498).dtTransOffset = 2108;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_k
	  section.data(499).logicalSrcIdx = 498;
	  section.data(499).dtTransOffset = 2110;
	
	  ;% umich_2d_walking_P.medulla_cmd_Value
	  section.data(500).logicalSrcIdx = 499;
	  section.data(500).dtTransOffset = 2111;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size
	  section.data(501).logicalSrcIdx = 500;
	  section.data(501).dtTransOffset = 2112;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1
	  section.data(502).logicalSrcIdx = 501;
	  section.data(502).dtTransOffset = 2114;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size
	  section.data(503).logicalSrcIdx = 502;
	  section.data(503).dtTransOffset = 2176;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2
	  section.data(504).logicalSrcIdx = 503;
	  section.data(504).dtTransOffset = 2178;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size
	  section.data(505).logicalSrcIdx = 504;
	  section.data(505).dtTransOffset = 2179;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3
	  section.data(506).logicalSrcIdx = 505;
	  section.data(506).dtTransOffset = 2181;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size
	  section.data(507).logicalSrcIdx = 506;
	  section.data(507).dtTransOffset = 2182;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4
	  section.data(508).logicalSrcIdx = 507;
	  section.data(508).dtTransOffset = 2184;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size
	  section.data(509).logicalSrcIdx = 508;
	  section.data(509).dtTransOffset = 2185;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5
	  section.data(510).logicalSrcIdx = 509;
	  section.data(510).dtTransOffset = 2187;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size
	  section.data(511).logicalSrcIdx = 510;
	  section.data(511).dtTransOffset = 2188;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6
	  section.data(512).logicalSrcIdx = 511;
	  section.data(512).dtTransOffset = 2190;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size
	  section.data(513).logicalSrcIdx = 512;
	  section.data(513).dtTransOffset = 2191;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7
	  section.data(514).logicalSrcIdx = 513;
	  section.data(514).dtTransOffset = 2193;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size
	  section.data(515).logicalSrcIdx = 514;
	  section.data(515).dtTransOffset = 2194;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1
	  section.data(516).logicalSrcIdx = 515;
	  section.data(516).dtTransOffset = 2196;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size
	  section.data(517).logicalSrcIdx = 516;
	  section.data(517).dtTransOffset = 2258;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2
	  section.data(518).logicalSrcIdx = 517;
	  section.data(518).dtTransOffset = 2260;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size
	  section.data(519).logicalSrcIdx = 518;
	  section.data(519).dtTransOffset = 2261;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3
	  section.data(520).logicalSrcIdx = 519;
	  section.data(520).dtTransOffset = 2263;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size
	  section.data(521).logicalSrcIdx = 520;
	  section.data(521).dtTransOffset = 2264;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4
	  section.data(522).logicalSrcIdx = 521;
	  section.data(522).dtTransOffset = 2266;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size
	  section.data(523).logicalSrcIdx = 522;
	  section.data(523).dtTransOffset = 2267;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5
	  section.data(524).logicalSrcIdx = 523;
	  section.data(524).dtTransOffset = 2269;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size
	  section.data(525).logicalSrcIdx = 524;
	  section.data(525).dtTransOffset = 2270;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6
	  section.data(526).logicalSrcIdx = 525;
	  section.data(526).dtTransOffset = 2272;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size
	  section.data(527).logicalSrcIdx = 526;
	  section.data(527).dtTransOffset = 2273;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7
	  section.data(528).logicalSrcIdx = 527;
	  section.data(528).dtTransOffset = 2275;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_j
	  section.data(529).logicalSrcIdx = 528;
	  section.data(529).dtTransOffset = 2276;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_b
	  section.data(530).logicalSrcIdx = 529;
	  section.data(530).dtTransOffset = 2278;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_b
	  section.data(531).logicalSrcIdx = 530;
	  section.data(531).dtTransOffset = 2348;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_h
	  section.data(532).logicalSrcIdx = 531;
	  section.data(532).dtTransOffset = 2350;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_k
	  section.data(533).logicalSrcIdx = 532;
	  section.data(533).dtTransOffset = 2351;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_m
	  section.data(534).logicalSrcIdx = 533;
	  section.data(534).dtTransOffset = 2353;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_k
	  section.data(535).logicalSrcIdx = 534;
	  section.data(535).dtTransOffset = 2354;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_d
	  section.data(536).logicalSrcIdx = 535;
	  section.data(536).dtTransOffset = 2356;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_j
	  section.data(537).logicalSrcIdx = 536;
	  section.data(537).dtTransOffset = 2357;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_o
	  section.data(538).logicalSrcIdx = 537;
	  section.data(538).dtTransOffset = 2359;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_o
	  section.data(539).logicalSrcIdx = 538;
	  section.data(539).dtTransOffset = 2360;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_c
	  section.data(540).logicalSrcIdx = 539;
	  section.data(540).dtTransOffset = 2362;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_n
	  section.data(541).logicalSrcIdx = 540;
	  section.data(541).dtTransOffset = 2363;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_p
	  section.data(542).logicalSrcIdx = 541;
	  section.data(542).dtTransOffset = 2365;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_p
	  section.data(543).logicalSrcIdx = 542;
	  section.data(543).dtTransOffset = 2366;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_c
	  section.data(544).logicalSrcIdx = 543;
	  section.data(544).dtTransOffset = 2368;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_j
	  section.data(545).logicalSrcIdx = 544;
	  section.data(545).dtTransOffset = 2429;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_n
	  section.data(546).logicalSrcIdx = 545;
	  section.data(546).dtTransOffset = 2431;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_l
	  section.data(547).logicalSrcIdx = 546;
	  section.data(547).dtTransOffset = 2432;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_f
	  section.data(548).logicalSrcIdx = 547;
	  section.data(548).dtTransOffset = 2434;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_e
	  section.data(549).logicalSrcIdx = 548;
	  section.data(549).dtTransOffset = 2435;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_b
	  section.data(550).logicalSrcIdx = 549;
	  section.data(550).dtTransOffset = 2437;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_m
	  section.data(551).logicalSrcIdx = 550;
	  section.data(551).dtTransOffset = 2438;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_j
	  section.data(552).logicalSrcIdx = 551;
	  section.data(552).dtTransOffset = 2440;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_f
	  section.data(553).logicalSrcIdx = 552;
	  section.data(553).dtTransOffset = 2441;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_b
	  section.data(554).logicalSrcIdx = 553;
	  section.data(554).dtTransOffset = 2443;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_i
	  section.data(555).logicalSrcIdx = 554;
	  section.data(555).dtTransOffset = 2444;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_n
	  section.data(556).logicalSrcIdx = 555;
	  section.data(556).dtTransOffset = 2446;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_h
	  section.data(557).logicalSrcIdx = 556;
	  section.data(557).dtTransOffset = 2447;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_e
	  section.data(558).logicalSrcIdx = 557;
	  section.data(558).dtTransOffset = 2449;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_h
	  section.data(559).logicalSrcIdx = 558;
	  section.data(559).dtTransOffset = 2505;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_c
	  section.data(560).logicalSrcIdx = 559;
	  section.data(560).dtTransOffset = 2507;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_h
	  section.data(561).logicalSrcIdx = 560;
	  section.data(561).dtTransOffset = 2508;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_m
	  section.data(562).logicalSrcIdx = 561;
	  section.data(562).dtTransOffset = 2510;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_n
	  section.data(563).logicalSrcIdx = 562;
	  section.data(563).dtTransOffset = 2511;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_p
	  section.data(564).logicalSrcIdx = 563;
	  section.data(564).dtTransOffset = 2513;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_i
	  section.data(565).logicalSrcIdx = 564;
	  section.data(565).dtTransOffset = 2514;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_e
	  section.data(566).logicalSrcIdx = 565;
	  section.data(566).dtTransOffset = 2516;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_b
	  section.data(567).logicalSrcIdx = 566;
	  section.data(567).dtTransOffset = 2517;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_f
	  section.data(568).logicalSrcIdx = 567;
	  section.data(568).dtTransOffset = 2519;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_k
	  section.data(569).logicalSrcIdx = 568;
	  section.data(569).dtTransOffset = 2520;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_i
	  section.data(570).logicalSrcIdx = 569;
	  section.data(570).dtTransOffset = 2522;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_m
	  section.data(571).logicalSrcIdx = 570;
	  section.data(571).dtTransOffset = 2523;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_h
	  section.data(572).logicalSrcIdx = 571;
	  section.data(572).dtTransOffset = 2525;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_o
	  section.data(573).logicalSrcIdx = 572;
	  section.data(573).dtTransOffset = 2586;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_g
	  section.data(574).logicalSrcIdx = 573;
	  section.data(574).dtTransOffset = 2588;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_p
	  section.data(575).logicalSrcIdx = 574;
	  section.data(575).dtTransOffset = 2589;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_d
	  section.data(576).logicalSrcIdx = 575;
	  section.data(576).dtTransOffset = 2591;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_n
	  section.data(577).logicalSrcIdx = 576;
	  section.data(577).dtTransOffset = 2592;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_a
	  section.data(578).logicalSrcIdx = 577;
	  section.data(578).dtTransOffset = 2594;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_j
	  section.data(579).logicalSrcIdx = 578;
	  section.data(579).dtTransOffset = 2595;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_e
	  section.data(580).logicalSrcIdx = 579;
	  section.data(580).dtTransOffset = 2597;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_n
	  section.data(581).logicalSrcIdx = 580;
	  section.data(581).dtTransOffset = 2598;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_i
	  section.data(582).logicalSrcIdx = 581;
	  section.data(582).dtTransOffset = 2600;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_e
	  section.data(583).logicalSrcIdx = 582;
	  section.data(583).dtTransOffset = 2601;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_j
	  section.data(584).logicalSrcIdx = 583;
	  section.data(584).dtTransOffset = 2603;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_e
	  section.data(585).logicalSrcIdx = 584;
	  section.data(585).dtTransOffset = 2604;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_j
	  section.data(586).logicalSrcIdx = 585;
	  section.data(586).dtTransOffset = 2606;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_f
	  section.data(587).logicalSrcIdx = 586;
	  section.data(587).dtTransOffset = 2662;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_f
	  section.data(588).logicalSrcIdx = 587;
	  section.data(588).dtTransOffset = 2664;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_o
	  section.data(589).logicalSrcIdx = 588;
	  section.data(589).dtTransOffset = 2665;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_d
	  section.data(590).logicalSrcIdx = 589;
	  section.data(590).dtTransOffset = 2667;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_n
	  section.data(591).logicalSrcIdx = 590;
	  section.data(591).dtTransOffset = 2668;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_i
	  section.data(592).logicalSrcIdx = 591;
	  section.data(592).dtTransOffset = 2670;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_b
	  section.data(593).logicalSrcIdx = 592;
	  section.data(593).dtTransOffset = 2671;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_p
	  section.data(594).logicalSrcIdx = 593;
	  section.data(594).dtTransOffset = 2673;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_f
	  section.data(595).logicalSrcIdx = 594;
	  section.data(595).dtTransOffset = 2674;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_j
	  section.data(596).logicalSrcIdx = 595;
	  section.data(596).dtTransOffset = 2676;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_i
	  section.data(597).logicalSrcIdx = 596;
	  section.data(597).dtTransOffset = 2677;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_c
	  section.data(598).logicalSrcIdx = 597;
	  section.data(598).dtTransOffset = 2679;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_b
	  section.data(599).logicalSrcIdx = 598;
	  section.data(599).dtTransOffset = 2680;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_i
	  section.data(600).logicalSrcIdx = 599;
	  section.data(600).dtTransOffset = 2682;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_f
	  section.data(601).logicalSrcIdx = 600;
	  section.data(601).dtTransOffset = 2743;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_e
	  section.data(602).logicalSrcIdx = 601;
	  section.data(602).dtTransOffset = 2745;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_m
	  section.data(603).logicalSrcIdx = 602;
	  section.data(603).dtTransOffset = 2746;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_o
	  section.data(604).logicalSrcIdx = 603;
	  section.data(604).dtTransOffset = 2748;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_b
	  section.data(605).logicalSrcIdx = 604;
	  section.data(605).dtTransOffset = 2749;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_bg
	  section.data(606).logicalSrcIdx = 605;
	  section.data(606).dtTransOffset = 2751;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_d
	  section.data(607).logicalSrcIdx = 606;
	  section.data(607).dtTransOffset = 2752;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_c
	  section.data(608).logicalSrcIdx = 607;
	  section.data(608).dtTransOffset = 2754;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_l
	  section.data(609).logicalSrcIdx = 608;
	  section.data(609).dtTransOffset = 2755;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_g
	  section.data(610).logicalSrcIdx = 609;
	  section.data(610).dtTransOffset = 2757;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_e
	  section.data(611).logicalSrcIdx = 610;
	  section.data(611).dtTransOffset = 2758;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_i
	  section.data(612).logicalSrcIdx = 611;
	  section.data(612).dtTransOffset = 2760;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size
	  section.data(613).logicalSrcIdx = 612;
	  section.data(613).dtTransOffset = 2761;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1
	  section.data(614).logicalSrcIdx = 613;
	  section.data(614).dtTransOffset = 2763;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size
	  section.data(615).logicalSrcIdx = 614;
	  section.data(615).dtTransOffset = 2824;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2
	  section.data(616).logicalSrcIdx = 615;
	  section.data(616).dtTransOffset = 2826;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size
	  section.data(617).logicalSrcIdx = 616;
	  section.data(617).dtTransOffset = 2827;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3
	  section.data(618).logicalSrcIdx = 617;
	  section.data(618).dtTransOffset = 2829;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size
	  section.data(619).logicalSrcIdx = 618;
	  section.data(619).dtTransOffset = 2830;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4
	  section.data(620).logicalSrcIdx = 619;
	  section.data(620).dtTransOffset = 2832;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size
	  section.data(621).logicalSrcIdx = 620;
	  section.data(621).dtTransOffset = 2833;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5
	  section.data(622).logicalSrcIdx = 621;
	  section.data(622).dtTransOffset = 2835;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size
	  section.data(623).logicalSrcIdx = 622;
	  section.data(623).dtTransOffset = 2836;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6
	  section.data(624).logicalSrcIdx = 623;
	  section.data(624).dtTransOffset = 2838;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size
	  section.data(625).logicalSrcIdx = 624;
	  section.data(625).dtTransOffset = 2839;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7
	  section.data(626).logicalSrcIdx = 625;
	  section.data(626).dtTransOffset = 2841;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size
	  section.data(627).logicalSrcIdx = 626;
	  section.data(627).dtTransOffset = 2842;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1
	  section.data(628).logicalSrcIdx = 627;
	  section.data(628).dtTransOffset = 2844;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size
	  section.data(629).logicalSrcIdx = 628;
	  section.data(629).dtTransOffset = 2911;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2
	  section.data(630).logicalSrcIdx = 629;
	  section.data(630).dtTransOffset = 2913;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size
	  section.data(631).logicalSrcIdx = 630;
	  section.data(631).dtTransOffset = 2914;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3
	  section.data(632).logicalSrcIdx = 631;
	  section.data(632).dtTransOffset = 2916;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size
	  section.data(633).logicalSrcIdx = 632;
	  section.data(633).dtTransOffset = 2917;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4
	  section.data(634).logicalSrcIdx = 633;
	  section.data(634).dtTransOffset = 2919;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size
	  section.data(635).logicalSrcIdx = 634;
	  section.data(635).dtTransOffset = 2920;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5
	  section.data(636).logicalSrcIdx = 635;
	  section.data(636).dtTransOffset = 2922;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size
	  section.data(637).logicalSrcIdx = 636;
	  section.data(637).dtTransOffset = 2923;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6
	  section.data(638).logicalSrcIdx = 637;
	  section.data(638).dtTransOffset = 2925;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size
	  section.data(639).logicalSrcIdx = 638;
	  section.data(639).dtTransOffset = 2926;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7
	  section.data(640).logicalSrcIdx = 639;
	  section.data(640).dtTransOffset = 2928;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_b
	  section.data(641).logicalSrcIdx = 640;
	  section.data(641).dtTransOffset = 2929;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_c
	  section.data(642).logicalSrcIdx = 641;
	  section.data(642).dtTransOffset = 2931;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_a
	  section.data(643).logicalSrcIdx = 642;
	  section.data(643).dtTransOffset = 2994;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_a
	  section.data(644).logicalSrcIdx = 643;
	  section.data(644).dtTransOffset = 2996;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_d
	  section.data(645).logicalSrcIdx = 644;
	  section.data(645).dtTransOffset = 2997;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_k
	  section.data(646).logicalSrcIdx = 645;
	  section.data(646).dtTransOffset = 2999;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_i
	  section.data(647).logicalSrcIdx = 646;
	  section.data(647).dtTransOffset = 3000;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_h
	  section.data(648).logicalSrcIdx = 647;
	  section.data(648).dtTransOffset = 3002;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_m
	  section.data(649).logicalSrcIdx = 648;
	  section.data(649).dtTransOffset = 3003;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_k
	  section.data(650).logicalSrcIdx = 649;
	  section.data(650).dtTransOffset = 3005;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_e
	  section.data(651).logicalSrcIdx = 650;
	  section.data(651).dtTransOffset = 3006;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_j
	  section.data(652).logicalSrcIdx = 651;
	  section.data(652).dtTransOffset = 3008;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_l
	  section.data(653).logicalSrcIdx = 652;
	  section.data(653).dtTransOffset = 3009;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_f
	  section.data(654).logicalSrcIdx = 653;
	  section.data(654).dtTransOffset = 3011;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_i
	  section.data(655).logicalSrcIdx = 654;
	  section.data(655).dtTransOffset = 3012;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_h
	  section.data(656).logicalSrcIdx = 655;
	  section.data(656).dtTransOffset = 3014;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_d
	  section.data(657).logicalSrcIdx = 656;
	  section.data(657).dtTransOffset = 3100;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_k
	  section.data(658).logicalSrcIdx = 657;
	  section.data(658).dtTransOffset = 3102;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_c
	  section.data(659).logicalSrcIdx = 658;
	  section.data(659).dtTransOffset = 3103;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_n
	  section.data(660).logicalSrcIdx = 659;
	  section.data(660).dtTransOffset = 3105;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_n
	  section.data(661).logicalSrcIdx = 660;
	  section.data(661).dtTransOffset = 3106;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_i
	  section.data(662).logicalSrcIdx = 661;
	  section.data(662).dtTransOffset = 3108;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_e
	  section.data(663).logicalSrcIdx = 662;
	  section.data(663).dtTransOffset = 3109;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_e
	  section.data(664).logicalSrcIdx = 663;
	  section.data(664).dtTransOffset = 3111;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_oj
	  section.data(665).logicalSrcIdx = 664;
	  section.data(665).dtTransOffset = 3112;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_h
	  section.data(666).logicalSrcIdx = 665;
	  section.data(666).dtTransOffset = 3114;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_l
	  section.data(667).logicalSrcIdx = 666;
	  section.data(667).dtTransOffset = 3115;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_j
	  section.data(668).logicalSrcIdx = 667;
	  section.data(668).dtTransOffset = 3117;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_f
	  section.data(669).logicalSrcIdx = 668;
	  section.data(669).dtTransOffset = 3118;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_d
	  section.data(670).logicalSrcIdx = 669;
	  section.data(670).dtTransOffset = 3120;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_k
	  section.data(671).logicalSrcIdx = 670;
	  section.data(671).dtTransOffset = 3178;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_g
	  section.data(672).logicalSrcIdx = 671;
	  section.data(672).dtTransOffset = 3180;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_h
	  section.data(673).logicalSrcIdx = 672;
	  section.data(673).dtTransOffset = 3181;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_i
	  section.data(674).logicalSrcIdx = 673;
	  section.data(674).dtTransOffset = 3183;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_c
	  section.data(675).logicalSrcIdx = 674;
	  section.data(675).dtTransOffset = 3184;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_f
	  section.data(676).logicalSrcIdx = 675;
	  section.data(676).dtTransOffset = 3186;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_c
	  section.data(677).logicalSrcIdx = 676;
	  section.data(677).dtTransOffset = 3187;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_h
	  section.data(678).logicalSrcIdx = 677;
	  section.data(678).dtTransOffset = 3189;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_n
	  section.data(679).logicalSrcIdx = 678;
	  section.data(679).dtTransOffset = 3190;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_l
	  section.data(680).logicalSrcIdx = 679;
	  section.data(680).dtTransOffset = 3192;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_i
	  section.data(681).logicalSrcIdx = 680;
	  section.data(681).dtTransOffset = 3193;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_c
	  section.data(682).logicalSrcIdx = 681;
	  section.data(682).dtTransOffset = 3195;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_Size
	  section.data(683).logicalSrcIdx = 682;
	  section.data(683).dtTransOffset = 3196;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1
	  section.data(684).logicalSrcIdx = 683;
	  section.data(684).dtTransOffset = 3198;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_Size
	  section.data(685).logicalSrcIdx = 684;
	  section.data(685).dtTransOffset = 3272;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2
	  section.data(686).logicalSrcIdx = 685;
	  section.data(686).dtTransOffset = 3274;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_Size
	  section.data(687).logicalSrcIdx = 686;
	  section.data(687).dtTransOffset = 3275;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3
	  section.data(688).logicalSrcIdx = 687;
	  section.data(688).dtTransOffset = 3277;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_Size
	  section.data(689).logicalSrcIdx = 688;
	  section.data(689).dtTransOffset = 3278;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4
	  section.data(690).logicalSrcIdx = 689;
	  section.data(690).dtTransOffset = 3280;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_Size
	  section.data(691).logicalSrcIdx = 690;
	  section.data(691).dtTransOffset = 3281;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5
	  section.data(692).logicalSrcIdx = 691;
	  section.data(692).dtTransOffset = 3283;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_Size
	  section.data(693).logicalSrcIdx = 692;
	  section.data(693).dtTransOffset = 3284;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6
	  section.data(694).logicalSrcIdx = 693;
	  section.data(694).dtTransOffset = 3286;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_Size
	  section.data(695).logicalSrcIdx = 694;
	  section.data(695).dtTransOffset = 3287;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7
	  section.data(696).logicalSrcIdx = 695;
	  section.data(696).dtTransOffset = 3289;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size
	  section.data(697).logicalSrcIdx = 696;
	  section.data(697).dtTransOffset = 3290;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1
	  section.data(698).logicalSrcIdx = 697;
	  section.data(698).dtTransOffset = 3292;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size
	  section.data(699).logicalSrcIdx = 698;
	  section.data(699).dtTransOffset = 3350;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2
	  section.data(700).logicalSrcIdx = 699;
	  section.data(700).dtTransOffset = 3352;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size
	  section.data(701).logicalSrcIdx = 700;
	  section.data(701).dtTransOffset = 3353;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3
	  section.data(702).logicalSrcIdx = 701;
	  section.data(702).dtTransOffset = 3355;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size
	  section.data(703).logicalSrcIdx = 702;
	  section.data(703).dtTransOffset = 3356;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4
	  section.data(704).logicalSrcIdx = 703;
	  section.data(704).dtTransOffset = 3358;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size
	  section.data(705).logicalSrcIdx = 704;
	  section.data(705).dtTransOffset = 3359;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5
	  section.data(706).logicalSrcIdx = 705;
	  section.data(706).dtTransOffset = 3361;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size
	  section.data(707).logicalSrcIdx = 706;
	  section.data(707).dtTransOffset = 3362;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6
	  section.data(708).logicalSrcIdx = 707;
	  section.data(708).dtTransOffset = 3364;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size
	  section.data(709).logicalSrcIdx = 708;
	  section.data(709).dtTransOffset = 3365;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7
	  section.data(710).logicalSrcIdx = 709;
	  section.data(710).dtTransOffset = 3367;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_j
	  section.data(711).logicalSrcIdx = 710;
	  section.data(711).dtTransOffset = 3368;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_o
	  section.data(712).logicalSrcIdx = 711;
	  section.data(712).dtTransOffset = 3370;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_p
	  section.data(713).logicalSrcIdx = 712;
	  section.data(713).dtTransOffset = 3426;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_h
	  section.data(714).logicalSrcIdx = 713;
	  section.data(714).dtTransOffset = 3428;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_m
	  section.data(715).logicalSrcIdx = 714;
	  section.data(715).dtTransOffset = 3429;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_p
	  section.data(716).logicalSrcIdx = 715;
	  section.data(716).dtTransOffset = 3431;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_d
	  section.data(717).logicalSrcIdx = 716;
	  section.data(717).dtTransOffset = 3432;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_b
	  section.data(718).logicalSrcIdx = 717;
	  section.data(718).dtTransOffset = 3434;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_b
	  section.data(719).logicalSrcIdx = 718;
	  section.data(719).dtTransOffset = 3435;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_k
	  section.data(720).logicalSrcIdx = 719;
	  section.data(720).dtTransOffset = 3437;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_c
	  section.data(721).logicalSrcIdx = 720;
	  section.data(721).dtTransOffset = 3438;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_e
	  section.data(722).logicalSrcIdx = 721;
	  section.data(722).dtTransOffset = 3440;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_n
	  section.data(723).logicalSrcIdx = 722;
	  section.data(723).dtTransOffset = 3441;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_m
	  section.data(724).logicalSrcIdx = 723;
	  section.data(724).dtTransOffset = 3443;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_k
	  section.data(725).logicalSrcIdx = 724;
	  section.data(725).dtTransOffset = 3444;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_m
	  section.data(726).logicalSrcIdx = 725;
	  section.data(726).dtTransOffset = 3446;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_k
	  section.data(727).logicalSrcIdx = 726;
	  section.data(727).dtTransOffset = 3532;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_a
	  section.data(728).logicalSrcIdx = 727;
	  section.data(728).dtTransOffset = 3534;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_n
	  section.data(729).logicalSrcIdx = 728;
	  section.data(729).dtTransOffset = 3535;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_o
	  section.data(730).logicalSrcIdx = 729;
	  section.data(730).dtTransOffset = 3537;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_dc
	  section.data(731).logicalSrcIdx = 730;
	  section.data(731).dtTransOffset = 3538;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_g
	  section.data(732).logicalSrcIdx = 731;
	  section.data(732).dtTransOffset = 3540;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_ik
	  section.data(733).logicalSrcIdx = 732;
	  section.data(733).dtTransOffset = 3541;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_f
	  section.data(734).logicalSrcIdx = 733;
	  section.data(734).dtTransOffset = 3543;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_j
	  section.data(735).logicalSrcIdx = 734;
	  section.data(735).dtTransOffset = 3544;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_ej
	  section.data(736).logicalSrcIdx = 735;
	  section.data(736).dtTransOffset = 3546;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_i
	  section.data(737).logicalSrcIdx = 736;
	  section.data(737).dtTransOffset = 3547;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_n
	  section.data(738).logicalSrcIdx = 737;
	  section.data(738).dtTransOffset = 3549;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_Size
	  section.data(739).logicalSrcIdx = 738;
	  section.data(739).dtTransOffset = 3550;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1
	  section.data(740).logicalSrcIdx = 739;
	  section.data(740).dtTransOffset = 3552;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_Size
	  section.data(741).logicalSrcIdx = 740;
	  section.data(741).dtTransOffset = 3608;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2
	  section.data(742).logicalSrcIdx = 741;
	  section.data(742).dtTransOffset = 3610;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_Size
	  section.data(743).logicalSrcIdx = 742;
	  section.data(743).dtTransOffset = 3611;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3
	  section.data(744).logicalSrcIdx = 743;
	  section.data(744).dtTransOffset = 3613;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_Size
	  section.data(745).logicalSrcIdx = 744;
	  section.data(745).dtTransOffset = 3614;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4
	  section.data(746).logicalSrcIdx = 745;
	  section.data(746).dtTransOffset = 3616;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_Size
	  section.data(747).logicalSrcIdx = 746;
	  section.data(747).dtTransOffset = 3617;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5
	  section.data(748).logicalSrcIdx = 747;
	  section.data(748).dtTransOffset = 3619;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_Size
	  section.data(749).logicalSrcIdx = 748;
	  section.data(749).dtTransOffset = 3620;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6
	  section.data(750).logicalSrcIdx = 749;
	  section.data(750).dtTransOffset = 3622;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_Size
	  section.data(751).logicalSrcIdx = 750;
	  section.data(751).dtTransOffset = 3623;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7
	  section.data(752).logicalSrcIdx = 751;
	  section.data(752).dtTransOffset = 3625;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_c
	  section.data(753).logicalSrcIdx = 752;
	  section.data(753).dtTransOffset = 3626;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_g
	  section.data(754).logicalSrcIdx = 753;
	  section.data(754).dtTransOffset = 3628;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_o
	  section.data(755).logicalSrcIdx = 754;
	  section.data(755).dtTransOffset = 3702;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_n
	  section.data(756).logicalSrcIdx = 755;
	  section.data(756).dtTransOffset = 3704;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_h
	  section.data(757).logicalSrcIdx = 756;
	  section.data(757).dtTransOffset = 3705;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_f
	  section.data(758).logicalSrcIdx = 757;
	  section.data(758).dtTransOffset = 3707;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_b
	  section.data(759).logicalSrcIdx = 758;
	  section.data(759).dtTransOffset = 3708;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_f
	  section.data(760).logicalSrcIdx = 759;
	  section.data(760).dtTransOffset = 3710;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_f
	  section.data(761).logicalSrcIdx = 760;
	  section.data(761).dtTransOffset = 3711;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_e
	  section.data(762).logicalSrcIdx = 761;
	  section.data(762).dtTransOffset = 3713;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_n
	  section.data(763).logicalSrcIdx = 762;
	  section.data(763).dtTransOffset = 3714;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_k
	  section.data(764).logicalSrcIdx = 763;
	  section.data(764).dtTransOffset = 3716;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_m
	  section.data(765).logicalSrcIdx = 764;
	  section.data(765).dtTransOffset = 3717;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_o
	  section.data(766).logicalSrcIdx = 765;
	  section.data(766).dtTransOffset = 3719;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_h
	  section.data(767).logicalSrcIdx = 766;
	  section.data(767).dtTransOffset = 3720;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_p
	  section.data(768).logicalSrcIdx = 767;
	  section.data(768).dtTransOffset = 3722;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_d
	  section.data(769).logicalSrcIdx = 768;
	  section.data(769).dtTransOffset = 3783;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_a
	  section.data(770).logicalSrcIdx = 769;
	  section.data(770).dtTransOffset = 3785;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_g
	  section.data(771).logicalSrcIdx = 770;
	  section.data(771).dtTransOffset = 3786;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_h
	  section.data(772).logicalSrcIdx = 771;
	  section.data(772).dtTransOffset = 3788;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_m
	  section.data(773).logicalSrcIdx = 772;
	  section.data(773).dtTransOffset = 3789;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_m
	  section.data(774).logicalSrcIdx = 773;
	  section.data(774).dtTransOffset = 3791;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_k
	  section.data(775).logicalSrcIdx = 774;
	  section.data(775).dtTransOffset = 3792;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_ey
	  section.data(776).logicalSrcIdx = 775;
	  section.data(776).dtTransOffset = 3794;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_m
	  section.data(777).logicalSrcIdx = 776;
	  section.data(777).dtTransOffset = 3795;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_ir
	  section.data(778).logicalSrcIdx = 777;
	  section.data(778).dtTransOffset = 3797;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_k
	  section.data(779).logicalSrcIdx = 778;
	  section.data(779).dtTransOffset = 3798;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_d
	  section.data(780).logicalSrcIdx = 779;
	  section.data(780).dtTransOffset = 3800;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_Size
	  section.data(781).logicalSrcIdx = 780;
	  section.data(781).dtTransOffset = 3801;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1
	  section.data(782).logicalSrcIdx = 781;
	  section.data(782).dtTransOffset = 3803;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_Size
	  section.data(783).logicalSrcIdx = 782;
	  section.data(783).dtTransOffset = 3859;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2
	  section.data(784).logicalSrcIdx = 783;
	  section.data(784).dtTransOffset = 3861;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_Size
	  section.data(785).logicalSrcIdx = 784;
	  section.data(785).dtTransOffset = 3862;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3
	  section.data(786).logicalSrcIdx = 785;
	  section.data(786).dtTransOffset = 3864;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_Size
	  section.data(787).logicalSrcIdx = 786;
	  section.data(787).dtTransOffset = 3865;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4
	  section.data(788).logicalSrcIdx = 787;
	  section.data(788).dtTransOffset = 3867;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_Size
	  section.data(789).logicalSrcIdx = 788;
	  section.data(789).dtTransOffset = 3868;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5
	  section.data(790).logicalSrcIdx = 789;
	  section.data(790).dtTransOffset = 3870;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_Size
	  section.data(791).logicalSrcIdx = 790;
	  section.data(791).dtTransOffset = 3871;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6
	  section.data(792).logicalSrcIdx = 791;
	  section.data(792).dtTransOffset = 3873;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_Size
	  section.data(793).logicalSrcIdx = 792;
	  section.data(793).dtTransOffset = 3874;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7
	  section.data(794).logicalSrcIdx = 793;
	  section.data(794).dtTransOffset = 3876;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_o
	  section.data(795).logicalSrcIdx = 794;
	  section.data(795).dtTransOffset = 3877;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_m
	  section.data(796).logicalSrcIdx = 795;
	  section.data(796).dtTransOffset = 3879;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_n
	  section.data(797).logicalSrcIdx = 796;
	  section.data(797).dtTransOffset = 3935;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_p
	  section.data(798).logicalSrcIdx = 797;
	  section.data(798).dtTransOffset = 3937;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_m
	  section.data(799).logicalSrcIdx = 798;
	  section.data(799).dtTransOffset = 3938;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_k
	  section.data(800).logicalSrcIdx = 799;
	  section.data(800).dtTransOffset = 3940;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_p
	  section.data(801).logicalSrcIdx = 800;
	  section.data(801).dtTransOffset = 3941;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_p
	  section.data(802).logicalSrcIdx = 801;
	  section.data(802).dtTransOffset = 3943;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_c
	  section.data(803).logicalSrcIdx = 802;
	  section.data(803).dtTransOffset = 3944;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_h
	  section.data(804).logicalSrcIdx = 803;
	  section.data(804).dtTransOffset = 3946;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_j
	  section.data(805).logicalSrcIdx = 804;
	  section.data(805).dtTransOffset = 3947;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_o
	  section.data(806).logicalSrcIdx = 805;
	  section.data(806).dtTransOffset = 3949;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_n
	  section.data(807).logicalSrcIdx = 806;
	  section.data(807).dtTransOffset = 3950;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_d
	  section.data(808).logicalSrcIdx = 807;
	  section.data(808).dtTransOffset = 3952;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size_c
	  section.data(809).logicalSrcIdx = 808;
	  section.data(809).dtTransOffset = 3953;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_o
	  section.data(810).logicalSrcIdx = 809;
	  section.data(810).dtTransOffset = 3955;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size_d
	  section.data(811).logicalSrcIdx = 810;
	  section.data(811).dtTransOffset = 4016;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_d
	  section.data(812).logicalSrcIdx = 811;
	  section.data(812).dtTransOffset = 4018;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size_m
	  section.data(813).logicalSrcIdx = 812;
	  section.data(813).dtTransOffset = 4019;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_k
	  section.data(814).logicalSrcIdx = 813;
	  section.data(814).dtTransOffset = 4021;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size_i
	  section.data(815).logicalSrcIdx = 814;
	  section.data(815).dtTransOffset = 4022;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_i
	  section.data(816).logicalSrcIdx = 815;
	  section.data(816).dtTransOffset = 4024;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size_l
	  section.data(817).logicalSrcIdx = 816;
	  section.data(817).dtTransOffset = 4025;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_c
	  section.data(818).logicalSrcIdx = 817;
	  section.data(818).dtTransOffset = 4027;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size_n
	  section.data(819).logicalSrcIdx = 818;
	  section.data(819).dtTransOffset = 4028;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_g
	  section.data(820).logicalSrcIdx = 819;
	  section.data(820).dtTransOffset = 4030;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size_l
	  section.data(821).logicalSrcIdx = 820;
	  section.data(821).dtTransOffset = 4031;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_n
	  section.data(822).logicalSrcIdx = 821;
	  section.data(822).dtTransOffset = 4033;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size_i
	  section.data(823).logicalSrcIdx = 822;
	  section.data(823).dtTransOffset = 4034;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_b
	  section.data(824).logicalSrcIdx = 823;
	  section.data(824).dtTransOffset = 4036;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size_e
	  section.data(825).logicalSrcIdx = 824;
	  section.data(825).dtTransOffset = 4103;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_l
	  section.data(826).logicalSrcIdx = 825;
	  section.data(826).dtTransOffset = 4105;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size_b
	  section.data(827).logicalSrcIdx = 826;
	  section.data(827).dtTransOffset = 4106;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_n
	  section.data(828).logicalSrcIdx = 827;
	  section.data(828).dtTransOffset = 4108;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size_h
	  section.data(829).logicalSrcIdx = 828;
	  section.data(829).dtTransOffset = 4109;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_k
	  section.data(830).logicalSrcIdx = 829;
	  section.data(830).dtTransOffset = 4111;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size_o
	  section.data(831).logicalSrcIdx = 830;
	  section.data(831).dtTransOffset = 4112;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_o
	  section.data(832).logicalSrcIdx = 831;
	  section.data(832).dtTransOffset = 4114;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size_n
	  section.data(833).logicalSrcIdx = 832;
	  section.data(833).dtTransOffset = 4115;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_h
	  section.data(834).logicalSrcIdx = 833;
	  section.data(834).dtTransOffset = 4117;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size_f
	  section.data(835).logicalSrcIdx = 834;
	  section.data(835).dtTransOffset = 4118;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_n
	  section.data(836).logicalSrcIdx = 835;
	  section.data(836).dtTransOffset = 4120;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_h
	  section.data(837).logicalSrcIdx = 836;
	  section.data(837).dtTransOffset = 4121;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_cm
	  section.data(838).logicalSrcIdx = 837;
	  section.data(838).dtTransOffset = 4123;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_h
	  section.data(839).logicalSrcIdx = 838;
	  section.data(839).dtTransOffset = 4186;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_n
	  section.data(840).logicalSrcIdx = 839;
	  section.data(840).dtTransOffset = 4188;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_f
	  section.data(841).logicalSrcIdx = 840;
	  section.data(841).dtTransOffset = 4189;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_d
	  section.data(842).logicalSrcIdx = 841;
	  section.data(842).dtTransOffset = 4191;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_n
	  section.data(843).logicalSrcIdx = 842;
	  section.data(843).dtTransOffset = 4192;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_j
	  section.data(844).logicalSrcIdx = 843;
	  section.data(844).dtTransOffset = 4194;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_n
	  section.data(845).logicalSrcIdx = 844;
	  section.data(845).dtTransOffset = 4195;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_d
	  section.data(846).logicalSrcIdx = 845;
	  section.data(846).dtTransOffset = 4197;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_b
	  section.data(847).logicalSrcIdx = 846;
	  section.data(847).dtTransOffset = 4198;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_m
	  section.data(848).logicalSrcIdx = 847;
	  section.data(848).dtTransOffset = 4200;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_g
	  section.data(849).logicalSrcIdx = 848;
	  section.data(849).dtTransOffset = 4201;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_i
	  section.data(850).logicalSrcIdx = 849;
	  section.data(850).dtTransOffset = 4203;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_n
	  section.data(851).logicalSrcIdx = 850;
	  section.data(851).dtTransOffset = 4204;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_i
	  section.data(852).logicalSrcIdx = 851;
	  section.data(852).dtTransOffset = 4206;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_bp
	  section.data(853).logicalSrcIdx = 852;
	  section.data(853).dtTransOffset = 4292;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_l
	  section.data(854).logicalSrcIdx = 853;
	  section.data(854).dtTransOffset = 4294;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_o
	  section.data(855).logicalSrcIdx = 854;
	  section.data(855).dtTransOffset = 4295;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_mv
	  section.data(856).logicalSrcIdx = 855;
	  section.data(856).dtTransOffset = 4297;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_m
	  section.data(857).logicalSrcIdx = 856;
	  section.data(857).dtTransOffset = 4298;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_g
	  section.data(858).logicalSrcIdx = 857;
	  section.data(858).dtTransOffset = 4300;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_h
	  section.data(859).logicalSrcIdx = 858;
	  section.data(859).dtTransOffset = 4301;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_p
	  section.data(860).logicalSrcIdx = 859;
	  section.data(860).dtTransOffset = 4303;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_h
	  section.data(861).logicalSrcIdx = 860;
	  section.data(861).dtTransOffset = 4304;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_p
	  section.data(862).logicalSrcIdx = 861;
	  section.data(862).dtTransOffset = 4306;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_a
	  section.data(863).logicalSrcIdx = 862;
	  section.data(863).dtTransOffset = 4307;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_jj
	  section.data(864).logicalSrcIdx = 863;
	  section.data(864).dtTransOffset = 4309;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_p
	  section.data(865).logicalSrcIdx = 864;
	  section.data(865).dtTransOffset = 4310;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_c
	  section.data(866).logicalSrcIdx = 865;
	  section.data(866).dtTransOffset = 4312;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_e
	  section.data(867).logicalSrcIdx = 866;
	  section.data(867).dtTransOffset = 4370;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_h
	  section.data(868).logicalSrcIdx = 867;
	  section.data(868).dtTransOffset = 4372;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_k
	  section.data(869).logicalSrcIdx = 868;
	  section.data(869).dtTransOffset = 4373;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_g
	  section.data(870).logicalSrcIdx = 869;
	  section.data(870).dtTransOffset = 4375;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_l
	  section.data(871).logicalSrcIdx = 870;
	  section.data(871).dtTransOffset = 4376;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_c
	  section.data(872).logicalSrcIdx = 871;
	  section.data(872).dtTransOffset = 4378;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_d
	  section.data(873).logicalSrcIdx = 872;
	  section.data(873).dtTransOffset = 4379;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_o
	  section.data(874).logicalSrcIdx = 873;
	  section.data(874).dtTransOffset = 4381;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_p
	  section.data(875).logicalSrcIdx = 874;
	  section.data(875).dtTransOffset = 4382;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_g
	  section.data(876).logicalSrcIdx = 875;
	  section.data(876).dtTransOffset = 4384;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_p
	  section.data(877).logicalSrcIdx = 876;
	  section.data(877).dtTransOffset = 4385;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_m
	  section.data(878).logicalSrcIdx = 877;
	  section.data(878).dtTransOffset = 4387;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size_n
	  section.data(879).logicalSrcIdx = 878;
	  section.data(879).dtTransOffset = 4388;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_d
	  section.data(880).logicalSrcIdx = 879;
	  section.data(880).dtTransOffset = 4390;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size_j
	  section.data(881).logicalSrcIdx = 880;
	  section.data(881).dtTransOffset = 4448;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_b
	  section.data(882).logicalSrcIdx = 881;
	  section.data(882).dtTransOffset = 4450;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size_l
	  section.data(883).logicalSrcIdx = 882;
	  section.data(883).dtTransOffset = 4451;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_m
	  section.data(884).logicalSrcIdx = 883;
	  section.data(884).dtTransOffset = 4453;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size_a
	  section.data(885).logicalSrcIdx = 884;
	  section.data(885).dtTransOffset = 4454;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_h
	  section.data(886).logicalSrcIdx = 885;
	  section.data(886).dtTransOffset = 4456;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size_o
	  section.data(887).logicalSrcIdx = 886;
	  section.data(887).dtTransOffset = 4457;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_e
	  section.data(888).logicalSrcIdx = 887;
	  section.data(888).dtTransOffset = 4459;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size_o
	  section.data(889).logicalSrcIdx = 888;
	  section.data(889).dtTransOffset = 4460;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_e
	  section.data(890).logicalSrcIdx = 889;
	  section.data(890).dtTransOffset = 4462;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size_e
	  section.data(891).logicalSrcIdx = 890;
	  section.data(891).dtTransOffset = 4463;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_i
	  section.data(892).logicalSrcIdx = 891;
	  section.data(892).dtTransOffset = 4465;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_g
	  section.data(893).logicalSrcIdx = 892;
	  section.data(893).dtTransOffset = 4466;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_p
	  section.data(894).logicalSrcIdx = 893;
	  section.data(894).dtTransOffset = 4468;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_oq
	  section.data(895).logicalSrcIdx = 894;
	  section.data(895).dtTransOffset = 4542;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_b
	  section.data(896).logicalSrcIdx = 895;
	  section.data(896).dtTransOffset = 4544;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_i
	  section.data(897).logicalSrcIdx = 896;
	  section.data(897).dtTransOffset = 4545;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_h
	  section.data(898).logicalSrcIdx = 897;
	  section.data(898).dtTransOffset = 4547;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_f
	  section.data(899).logicalSrcIdx = 898;
	  section.data(899).dtTransOffset = 4548;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_b
	  section.data(900).logicalSrcIdx = 899;
	  section.data(900).dtTransOffset = 4550;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_k
	  section.data(901).logicalSrcIdx = 900;
	  section.data(901).dtTransOffset = 4551;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_b
	  section.data(902).logicalSrcIdx = 901;
	  section.data(902).dtTransOffset = 4553;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_p
	  section.data(903).logicalSrcIdx = 902;
	  section.data(903).dtTransOffset = 4554;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_n
	  section.data(904).logicalSrcIdx = 903;
	  section.data(904).dtTransOffset = 4556;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_p
	  section.data(905).logicalSrcIdx = 904;
	  section.data(905).dtTransOffset = 4557;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_m
	  section.data(906).logicalSrcIdx = 905;
	  section.data(906).dtTransOffset = 4559;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size
	  section.data(907).logicalSrcIdx = 906;
	  section.data(907).dtTransOffset = 4560;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1
	  section.data(908).logicalSrcIdx = 907;
	  section.data(908).dtTransOffset = 4562;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size
	  section.data(909).logicalSrcIdx = 908;
	  section.data(909).dtTransOffset = 4630;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2
	  section.data(910).logicalSrcIdx = 909;
	  section.data(910).dtTransOffset = 4632;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size
	  section.data(911).logicalSrcIdx = 910;
	  section.data(911).dtTransOffset = 4633;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3
	  section.data(912).logicalSrcIdx = 911;
	  section.data(912).dtTransOffset = 4635;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size
	  section.data(913).logicalSrcIdx = 912;
	  section.data(913).dtTransOffset = 4636;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4
	  section.data(914).logicalSrcIdx = 913;
	  section.data(914).dtTransOffset = 4638;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size
	  section.data(915).logicalSrcIdx = 914;
	  section.data(915).dtTransOffset = 4639;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5
	  section.data(916).logicalSrcIdx = 915;
	  section.data(916).dtTransOffset = 4641;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size
	  section.data(917).logicalSrcIdx = 916;
	  section.data(917).dtTransOffset = 4642;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6
	  section.data(918).logicalSrcIdx = 917;
	  section.data(918).dtTransOffset = 4644;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size
	  section.data(919).logicalSrcIdx = 918;
	  section.data(919).dtTransOffset = 4645;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7
	  section.data(920).logicalSrcIdx = 919;
	  section.data(920).dtTransOffset = 4647;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_a
	  section.data(921).logicalSrcIdx = 920;
	  section.data(921).dtTransOffset = 4648;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_d
	  section.data(922).logicalSrcIdx = 921;
	  section.data(922).dtTransOffset = 4650;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_c
	  section.data(923).logicalSrcIdx = 922;
	  section.data(923).dtTransOffset = 4711;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_ga
	  section.data(924).logicalSrcIdx = 923;
	  section.data(924).dtTransOffset = 4713;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_c
	  section.data(925).logicalSrcIdx = 924;
	  section.data(925).dtTransOffset = 4714;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_k
	  section.data(926).logicalSrcIdx = 925;
	  section.data(926).dtTransOffset = 4716;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_a
	  section.data(927).logicalSrcIdx = 926;
	  section.data(927).dtTransOffset = 4717;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_o
	  section.data(928).logicalSrcIdx = 927;
	  section.data(928).dtTransOffset = 4719;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_o
	  section.data(929).logicalSrcIdx = 928;
	  section.data(929).dtTransOffset = 4720;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_i
	  section.data(930).logicalSrcIdx = 929;
	  section.data(930).dtTransOffset = 4722;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_g
	  section.data(931).logicalSrcIdx = 930;
	  section.data(931).dtTransOffset = 4723;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_e
	  section.data(932).logicalSrcIdx = 931;
	  section.data(932).dtTransOffset = 4725;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_h
	  section.data(933).logicalSrcIdx = 932;
	  section.data(933).dtTransOffset = 4726;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_p
	  section.data(934).logicalSrcIdx = 933;
	  section.data(934).dtTransOffset = 4728;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_g
	  section.data(935).logicalSrcIdx = 934;
	  section.data(935).dtTransOffset = 4729;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_h
	  section.data(936).logicalSrcIdx = 935;
	  section.data(936).dtTransOffset = 4731;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_b
	  section.data(937).logicalSrcIdx = 936;
	  section.data(937).dtTransOffset = 4792;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_a
	  section.data(938).logicalSrcIdx = 937;
	  section.data(938).dtTransOffset = 4794;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_a
	  section.data(939).logicalSrcIdx = 938;
	  section.data(939).dtTransOffset = 4795;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_b
	  section.data(940).logicalSrcIdx = 939;
	  section.data(940).dtTransOffset = 4797;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_c
	  section.data(941).logicalSrcIdx = 940;
	  section.data(941).dtTransOffset = 4798;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_o
	  section.data(942).logicalSrcIdx = 941;
	  section.data(942).dtTransOffset = 4800;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_l
	  section.data(943).logicalSrcIdx = 942;
	  section.data(943).dtTransOffset = 4801;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_d
	  section.data(944).logicalSrcIdx = 943;
	  section.data(944).dtTransOffset = 4803;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_p
	  section.data(945).logicalSrcIdx = 944;
	  section.data(945).dtTransOffset = 4804;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_p
	  section.data(946).logicalSrcIdx = 945;
	  section.data(946).dtTransOffset = 4806;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_k
	  section.data(947).logicalSrcIdx = 946;
	  section.data(947).dtTransOffset = 4807;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_c
	  section.data(948).logicalSrcIdx = 947;
	  section.data(948).dtTransOffset = 4809;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size_p
	  section.data(949).logicalSrcIdx = 948;
	  section.data(949).dtTransOffset = 4810;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_l
	  section.data(950).logicalSrcIdx = 949;
	  section.data(950).dtTransOffset = 4812;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size_e
	  section.data(951).logicalSrcIdx = 950;
	  section.data(951).dtTransOffset = 4880;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_m
	  section.data(952).logicalSrcIdx = 951;
	  section.data(952).dtTransOffset = 4882;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size_m
	  section.data(953).logicalSrcIdx = 952;
	  section.data(953).dtTransOffset = 4883;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_g
	  section.data(954).logicalSrcIdx = 953;
	  section.data(954).dtTransOffset = 4885;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size_i
	  section.data(955).logicalSrcIdx = 954;
	  section.data(955).dtTransOffset = 4886;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_b
	  section.data(956).logicalSrcIdx = 955;
	  section.data(956).dtTransOffset = 4888;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size_j
	  section.data(957).logicalSrcIdx = 956;
	  section.data(957).dtTransOffset = 4889;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_h
	  section.data(958).logicalSrcIdx = 957;
	  section.data(958).dtTransOffset = 4891;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size_j
	  section.data(959).logicalSrcIdx = 958;
	  section.data(959).dtTransOffset = 4892;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_n
	  section.data(960).logicalSrcIdx = 959;
	  section.data(960).dtTransOffset = 4894;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size_p
	  section.data(961).logicalSrcIdx = 960;
	  section.data(961).dtTransOffset = 4895;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_g
	  section.data(962).logicalSrcIdx = 961;
	  section.data(962).dtTransOffset = 4897;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_l
	  section.data(963).logicalSrcIdx = 962;
	  section.data(963).dtTransOffset = 4898;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_h
	  section.data(964).logicalSrcIdx = 963;
	  section.data(964).dtTransOffset = 4900;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_n
	  section.data(965).logicalSrcIdx = 964;
	  section.data(965).dtTransOffset = 4961;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_p
	  section.data(966).logicalSrcIdx = 965;
	  section.data(966).dtTransOffset = 4963;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_lt
	  section.data(967).logicalSrcIdx = 966;
	  section.data(967).dtTransOffset = 4964;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_op
	  section.data(968).logicalSrcIdx = 967;
	  section.data(968).dtTransOffset = 4966;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_es
	  section.data(969).logicalSrcIdx = 968;
	  section.data(969).dtTransOffset = 4967;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_o
	  section.data(970).logicalSrcIdx = 969;
	  section.data(970).dtTransOffset = 4969;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_a
	  section.data(971).logicalSrcIdx = 970;
	  section.data(971).dtTransOffset = 4970;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_h
	  section.data(972).logicalSrcIdx = 971;
	  section.data(972).dtTransOffset = 4972;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_ll
	  section.data(973).logicalSrcIdx = 972;
	  section.data(973).dtTransOffset = 4973;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_i
	  section.data(974).logicalSrcIdx = 973;
	  section.data(974).dtTransOffset = 4975;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_g
	  section.data(975).logicalSrcIdx = 974;
	  section.data(975).dtTransOffset = 4976;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_a
	  section.data(976).logicalSrcIdx = 975;
	  section.data(976).dtTransOffset = 4978;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_n
	  section.data(977).logicalSrcIdx = 976;
	  section.data(977).dtTransOffset = 4979;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_n
	  section.data(978).logicalSrcIdx = 977;
	  section.data(978).dtTransOffset = 4981;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_i
	  section.data(979).logicalSrcIdx = 978;
	  section.data(979).dtTransOffset = 5042;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_g
	  section.data(980).logicalSrcIdx = 979;
	  section.data(980).dtTransOffset = 5044;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_m
	  section.data(981).logicalSrcIdx = 980;
	  section.data(981).dtTransOffset = 5045;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_h
	  section.data(982).logicalSrcIdx = 981;
	  section.data(982).dtTransOffset = 5047;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_h
	  section.data(983).logicalSrcIdx = 982;
	  section.data(983).dtTransOffset = 5048;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_i
	  section.data(984).logicalSrcIdx = 983;
	  section.data(984).dtTransOffset = 5050;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_b
	  section.data(985).logicalSrcIdx = 984;
	  section.data(985).dtTransOffset = 5051;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_l
	  section.data(986).logicalSrcIdx = 985;
	  section.data(986).dtTransOffset = 5053;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_g
	  section.data(987).logicalSrcIdx = 986;
	  section.data(987).dtTransOffset = 5054;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_m
	  section.data(988).logicalSrcIdx = 987;
	  section.data(988).dtTransOffset = 5056;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_kb
	  section.data(989).logicalSrcIdx = 988;
	  section.data(989).dtTransOffset = 5057;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_ce
	  section.data(990).logicalSrcIdx = 989;
	  section.data(990).dtTransOffset = 5059;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_o
	  section.data(991).logicalSrcIdx = 990;
	  section.data(991).dtTransOffset = 5060;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_n
	  section.data(992).logicalSrcIdx = 991;
	  section.data(992).dtTransOffset = 5062;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_p
	  section.data(993).logicalSrcIdx = 992;
	  section.data(993).dtTransOffset = 5123;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_b
	  section.data(994).logicalSrcIdx = 993;
	  section.data(994).dtTransOffset = 5125;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_o
	  section.data(995).logicalSrcIdx = 994;
	  section.data(995).dtTransOffset = 5126;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_j
	  section.data(996).logicalSrcIdx = 995;
	  section.data(996).dtTransOffset = 5128;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_p
	  section.data(997).logicalSrcIdx = 996;
	  section.data(997).dtTransOffset = 5129;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_ho
	  section.data(998).logicalSrcIdx = 997;
	  section.data(998).dtTransOffset = 5131;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_p
	  section.data(999).logicalSrcIdx = 998;
	  section.data(999).dtTransOffset = 5132;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_j
	  section.data(1000).logicalSrcIdx = 999;
	  section.data(1000).dtTransOffset = 5134;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_ez
	  section.data(1001).logicalSrcIdx = 1000;
	  section.data(1001).dtTransOffset = 5135;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_b
	  section.data(1002).logicalSrcIdx = 1001;
	  section.data(1002).dtTransOffset = 5137;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_p
	  section.data(1003).logicalSrcIdx = 1002;
	  section.data(1003).dtTransOffset = 5138;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_d
	  section.data(1004).logicalSrcIdx = 1003;
	  section.data(1004).dtTransOffset = 5140;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size_l
	  section.data(1005).logicalSrcIdx = 1004;
	  section.data(1005).dtTransOffset = 5141;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_n
	  section.data(1006).logicalSrcIdx = 1005;
	  section.data(1006).dtTransOffset = 5143;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size_g
	  section.data(1007).logicalSrcIdx = 1006;
	  section.data(1007).dtTransOffset = 5204;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_a
	  section.data(1008).logicalSrcIdx = 1007;
	  section.data(1008).dtTransOffset = 5206;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size_ba
	  section.data(1009).logicalSrcIdx = 1008;
	  section.data(1009).dtTransOffset = 5207;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_a
	  section.data(1010).logicalSrcIdx = 1009;
	  section.data(1010).dtTransOffset = 5209;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size_e
	  section.data(1011).logicalSrcIdx = 1010;
	  section.data(1011).dtTransOffset = 5210;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_m
	  section.data(1012).logicalSrcIdx = 1011;
	  section.data(1012).dtTransOffset = 5212;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size_j
	  section.data(1013).logicalSrcIdx = 1012;
	  section.data(1013).dtTransOffset = 5213;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_m
	  section.data(1014).logicalSrcIdx = 1013;
	  section.data(1014).dtTransOffset = 5215;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size_o
	  section.data(1015).logicalSrcIdx = 1014;
	  section.data(1015).dtTransOffset = 5216;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_j
	  section.data(1016).logicalSrcIdx = 1015;
	  section.data(1016).dtTransOffset = 5218;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size_e
	  section.data(1017).logicalSrcIdx = 1016;
	  section.data(1017).dtTransOffset = 5219;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_k
	  section.data(1018).logicalSrcIdx = 1017;
	  section.data(1018).dtTransOffset = 5221;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_Size
	  section.data(1019).logicalSrcIdx = 1018;
	  section.data(1019).dtTransOffset = 5222;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1
	  section.data(1020).logicalSrcIdx = 1019;
	  section.data(1020).dtTransOffset = 5224;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_Size
	  section.data(1021).logicalSrcIdx = 1020;
	  section.data(1021).dtTransOffset = 5290;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2
	  section.data(1022).logicalSrcIdx = 1021;
	  section.data(1022).dtTransOffset = 5292;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_Size
	  section.data(1023).logicalSrcIdx = 1022;
	  section.data(1023).dtTransOffset = 5293;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3
	  section.data(1024).logicalSrcIdx = 1023;
	  section.data(1024).dtTransOffset = 5295;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_Size
	  section.data(1025).logicalSrcIdx = 1024;
	  section.data(1025).dtTransOffset = 5296;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4
	  section.data(1026).logicalSrcIdx = 1025;
	  section.data(1026).dtTransOffset = 5298;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_Size
	  section.data(1027).logicalSrcIdx = 1026;
	  section.data(1027).dtTransOffset = 5299;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5
	  section.data(1028).logicalSrcIdx = 1027;
	  section.data(1028).dtTransOffset = 5301;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_Size
	  section.data(1029).logicalSrcIdx = 1028;
	  section.data(1029).dtTransOffset = 5302;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6
	  section.data(1030).logicalSrcIdx = 1029;
	  section.data(1030).dtTransOffset = 5304;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_Size
	  section.data(1031).logicalSrcIdx = 1030;
	  section.data(1031).dtTransOffset = 5305;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7
	  section.data(1032).logicalSrcIdx = 1031;
	  section.data(1032).dtTransOffset = 5307;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size_i
	  section.data(1033).logicalSrcIdx = 1032;
	  section.data(1033).dtTransOffset = 5308;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_l
	  section.data(1034).logicalSrcIdx = 1033;
	  section.data(1034).dtTransOffset = 5310;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size_e
	  section.data(1035).logicalSrcIdx = 1034;
	  section.data(1035).dtTransOffset = 5371;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_c
	  section.data(1036).logicalSrcIdx = 1035;
	  section.data(1036).dtTransOffset = 5373;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size_b
	  section.data(1037).logicalSrcIdx = 1036;
	  section.data(1037).dtTransOffset = 5374;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_b
	  section.data(1038).logicalSrcIdx = 1037;
	  section.data(1038).dtTransOffset = 5376;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size_b
	  section.data(1039).logicalSrcIdx = 1038;
	  section.data(1039).dtTransOffset = 5377;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_e
	  section.data(1040).logicalSrcIdx = 1039;
	  section.data(1040).dtTransOffset = 5379;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size_b
	  section.data(1041).logicalSrcIdx = 1040;
	  section.data(1041).dtTransOffset = 5380;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_h
	  section.data(1042).logicalSrcIdx = 1041;
	  section.data(1042).dtTransOffset = 5382;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size_n
	  section.data(1043).logicalSrcIdx = 1042;
	  section.data(1043).dtTransOffset = 5383;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_b
	  section.data(1044).logicalSrcIdx = 1043;
	  section.data(1044).dtTransOffset = 5385;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size_p
	  section.data(1045).logicalSrcIdx = 1044;
	  section.data(1045).dtTransOffset = 5386;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_g
	  section.data(1046).logicalSrcIdx = 1045;
	  section.data(1046).dtTransOffset = 5388;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_oc
	  section.data(1047).logicalSrcIdx = 1046;
	  section.data(1047).dtTransOffset = 5389;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_a
	  section.data(1048).logicalSrcIdx = 1047;
	  section.data(1048).dtTransOffset = 5391;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_d
	  section.data(1049).logicalSrcIdx = 1048;
	  section.data(1049).dtTransOffset = 5467;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_o
	  section.data(1050).logicalSrcIdx = 1049;
	  section.data(1050).dtTransOffset = 5469;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_n
	  section.data(1051).logicalSrcIdx = 1050;
	  section.data(1051).dtTransOffset = 5470;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_i
	  section.data(1052).logicalSrcIdx = 1051;
	  section.data(1052).dtTransOffset = 5472;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_pu
	  section.data(1053).logicalSrcIdx = 1052;
	  section.data(1053).dtTransOffset = 5473;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_c
	  section.data(1054).logicalSrcIdx = 1053;
	  section.data(1054).dtTransOffset = 5475;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_o
	  section.data(1055).logicalSrcIdx = 1054;
	  section.data(1055).dtTransOffset = 5476;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_k
	  section.data(1056).logicalSrcIdx = 1055;
	  section.data(1056).dtTransOffset = 5478;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_e
	  section.data(1057).logicalSrcIdx = 1056;
	  section.data(1057).dtTransOffset = 5479;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_a
	  section.data(1058).logicalSrcIdx = 1057;
	  section.data(1058).dtTransOffset = 5481;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_d
	  section.data(1059).logicalSrcIdx = 1058;
	  section.data(1059).dtTransOffset = 5482;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_p
	  section.data(1060).logicalSrcIdx = 1059;
	  section.data(1060).dtTransOffset = 5484;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_Size
	  section.data(1061).logicalSrcIdx = 1060;
	  section.data(1061).dtTransOffset = 5485;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1
	  section.data(1062).logicalSrcIdx = 1061;
	  section.data(1062).dtTransOffset = 5487;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_Size
	  section.data(1063).logicalSrcIdx = 1062;
	  section.data(1063).dtTransOffset = 5563;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2
	  section.data(1064).logicalSrcIdx = 1063;
	  section.data(1064).dtTransOffset = 5565;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_Size
	  section.data(1065).logicalSrcIdx = 1064;
	  section.data(1065).dtTransOffset = 5566;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3
	  section.data(1066).logicalSrcIdx = 1065;
	  section.data(1066).dtTransOffset = 5568;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_Size
	  section.data(1067).logicalSrcIdx = 1066;
	  section.data(1067).dtTransOffset = 5569;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4
	  section.data(1068).logicalSrcIdx = 1067;
	  section.data(1068).dtTransOffset = 5571;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_Size
	  section.data(1069).logicalSrcIdx = 1068;
	  section.data(1069).dtTransOffset = 5572;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5
	  section.data(1070).logicalSrcIdx = 1069;
	  section.data(1070).dtTransOffset = 5574;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_Size
	  section.data(1071).logicalSrcIdx = 1070;
	  section.data(1071).dtTransOffset = 5575;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6
	  section.data(1072).logicalSrcIdx = 1071;
	  section.data(1072).dtTransOffset = 5577;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_Size
	  section.data(1073).logicalSrcIdx = 1072;
	  section.data(1073).dtTransOffset = 5578;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7
	  section.data(1074).logicalSrcIdx = 1073;
	  section.data(1074).dtTransOffset = 5580;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_m
	  section.data(1075).logicalSrcIdx = 1074;
	  section.data(1075).dtTransOffset = 5581;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_n
	  section.data(1076).logicalSrcIdx = 1075;
	  section.data(1076).dtTransOffset = 5583;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_j
	  section.data(1077).logicalSrcIdx = 1076;
	  section.data(1077).dtTransOffset = 5643;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_j
	  section.data(1078).logicalSrcIdx = 1077;
	  section.data(1078).dtTransOffset = 5645;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_l
	  section.data(1079).logicalSrcIdx = 1078;
	  section.data(1079).dtTransOffset = 5646;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_i
	  section.data(1080).logicalSrcIdx = 1079;
	  section.data(1080).dtTransOffset = 5648;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_b
	  section.data(1081).logicalSrcIdx = 1080;
	  section.data(1081).dtTransOffset = 5649;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_a
	  section.data(1082).logicalSrcIdx = 1081;
	  section.data(1082).dtTransOffset = 5651;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_o
	  section.data(1083).logicalSrcIdx = 1082;
	  section.data(1083).dtTransOffset = 5652;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_b
	  section.data(1084).logicalSrcIdx = 1083;
	  section.data(1084).dtTransOffset = 5654;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_h
	  section.data(1085).logicalSrcIdx = 1084;
	  section.data(1085).dtTransOffset = 5655;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_o
	  section.data(1086).logicalSrcIdx = 1085;
	  section.data(1086).dtTransOffset = 5657;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_c
	  section.data(1087).logicalSrcIdx = 1086;
	  section.data(1087).dtTransOffset = 5658;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_o
	  section.data(1088).logicalSrcIdx = 1087;
	  section.data(1088).dtTransOffset = 5660;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_b
	  section.data(1089).logicalSrcIdx = 1088;
	  section.data(1089).dtTransOffset = 5661;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_k
	  section.data(1090).logicalSrcIdx = 1089;
	  section.data(1090).dtTransOffset = 5663;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_a
	  section.data(1091).logicalSrcIdx = 1090;
	  section.data(1091).dtTransOffset = 5723;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_n
	  section.data(1092).logicalSrcIdx = 1091;
	  section.data(1092).dtTransOffset = 5725;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_hd
	  section.data(1093).logicalSrcIdx = 1092;
	  section.data(1093).dtTransOffset = 5726;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_h
	  section.data(1094).logicalSrcIdx = 1093;
	  section.data(1094).dtTransOffset = 5728;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_e
	  section.data(1095).logicalSrcIdx = 1094;
	  section.data(1095).dtTransOffset = 5729;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_g
	  section.data(1096).logicalSrcIdx = 1095;
	  section.data(1096).dtTransOffset = 5731;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_j
	  section.data(1097).logicalSrcIdx = 1096;
	  section.data(1097).dtTransOffset = 5732;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_p
	  section.data(1098).logicalSrcIdx = 1097;
	  section.data(1098).dtTransOffset = 5734;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_b
	  section.data(1099).logicalSrcIdx = 1098;
	  section.data(1099).dtTransOffset = 5735;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_n
	  section.data(1100).logicalSrcIdx = 1099;
	  section.data(1100).dtTransOffset = 5737;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_l
	  section.data(1101).logicalSrcIdx = 1100;
	  section.data(1101).dtTransOffset = 5738;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_h
	  section.data(1102).logicalSrcIdx = 1101;
	  section.data(1102).dtTransOffset = 5740;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_Size_k
	  section.data(1103).logicalSrcIdx = 1102;
	  section.data(1103).dtTransOffset = 5741;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_c
	  section.data(1104).logicalSrcIdx = 1103;
	  section.data(1104).dtTransOffset = 5743;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_Size_e
	  section.data(1105).logicalSrcIdx = 1104;
	  section.data(1105).dtTransOffset = 5809;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_e
	  section.data(1106).logicalSrcIdx = 1105;
	  section.data(1106).dtTransOffset = 5811;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_Size_k
	  section.data(1107).logicalSrcIdx = 1106;
	  section.data(1107).dtTransOffset = 5812;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_b
	  section.data(1108).logicalSrcIdx = 1107;
	  section.data(1108).dtTransOffset = 5814;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_Size_h
	  section.data(1109).logicalSrcIdx = 1108;
	  section.data(1109).dtTransOffset = 5815;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_d
	  section.data(1110).logicalSrcIdx = 1109;
	  section.data(1110).dtTransOffset = 5817;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_Size_c
	  section.data(1111).logicalSrcIdx = 1110;
	  section.data(1111).dtTransOffset = 5818;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_j
	  section.data(1112).logicalSrcIdx = 1111;
	  section.data(1112).dtTransOffset = 5820;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_Size_g
	  section.data(1113).logicalSrcIdx = 1112;
	  section.data(1113).dtTransOffset = 5821;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_g
	  section.data(1114).logicalSrcIdx = 1113;
	  section.data(1114).dtTransOffset = 5823;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_Size_e
	  section.data(1115).logicalSrcIdx = 1114;
	  section.data(1115).dtTransOffset = 5824;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_n
	  section.data(1116).logicalSrcIdx = 1115;
	  section.data(1116).dtTransOffset = 5826;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_Size
	  section.data(1117).logicalSrcIdx = 1116;
	  section.data(1117).dtTransOffset = 5827;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1
	  section.data(1118).logicalSrcIdx = 1117;
	  section.data(1118).dtTransOffset = 5829;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_Size
	  section.data(1119).logicalSrcIdx = 1118;
	  section.data(1119).dtTransOffset = 5897;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2
	  section.data(1120).logicalSrcIdx = 1119;
	  section.data(1120).dtTransOffset = 5899;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_Size
	  section.data(1121).logicalSrcIdx = 1120;
	  section.data(1121).dtTransOffset = 5900;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3
	  section.data(1122).logicalSrcIdx = 1121;
	  section.data(1122).dtTransOffset = 5902;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_Size
	  section.data(1123).logicalSrcIdx = 1122;
	  section.data(1123).dtTransOffset = 5903;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4
	  section.data(1124).logicalSrcIdx = 1123;
	  section.data(1124).dtTransOffset = 5905;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_Size
	  section.data(1125).logicalSrcIdx = 1124;
	  section.data(1125).dtTransOffset = 5906;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5
	  section.data(1126).logicalSrcIdx = 1125;
	  section.data(1126).dtTransOffset = 5908;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_Size
	  section.data(1127).logicalSrcIdx = 1126;
	  section.data(1127).dtTransOffset = 5909;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6
	  section.data(1128).logicalSrcIdx = 1127;
	  section.data(1128).dtTransOffset = 5911;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_Size
	  section.data(1129).logicalSrcIdx = 1128;
	  section.data(1129).dtTransOffset = 5912;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7
	  section.data(1130).logicalSrcIdx = 1129;
	  section.data(1130).dtTransOffset = 5914;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_Size
	  section.data(1131).logicalSrcIdx = 1130;
	  section.data(1131).dtTransOffset = 5915;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1
	  section.data(1132).logicalSrcIdx = 1131;
	  section.data(1132).dtTransOffset = 5917;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_Size
	  section.data(1133).logicalSrcIdx = 1132;
	  section.data(1133).dtTransOffset = 5975;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2
	  section.data(1134).logicalSrcIdx = 1133;
	  section.data(1134).dtTransOffset = 5977;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_Size
	  section.data(1135).logicalSrcIdx = 1134;
	  section.data(1135).dtTransOffset = 5978;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3
	  section.data(1136).logicalSrcIdx = 1135;
	  section.data(1136).dtTransOffset = 5980;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_Size
	  section.data(1137).logicalSrcIdx = 1136;
	  section.data(1137).dtTransOffset = 5981;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4
	  section.data(1138).logicalSrcIdx = 1137;
	  section.data(1138).dtTransOffset = 5983;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_Size
	  section.data(1139).logicalSrcIdx = 1138;
	  section.data(1139).dtTransOffset = 5984;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5
	  section.data(1140).logicalSrcIdx = 1139;
	  section.data(1140).dtTransOffset = 5986;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_Size
	  section.data(1141).logicalSrcIdx = 1140;
	  section.data(1141).dtTransOffset = 5987;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6
	  section.data(1142).logicalSrcIdx = 1141;
	  section.data(1142).dtTransOffset = 5989;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_Size
	  section.data(1143).logicalSrcIdx = 1142;
	  section.data(1143).dtTransOffset = 5990;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7
	  section.data(1144).logicalSrcIdx = 1143;
	  section.data(1144).dtTransOffset = 5992;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_Size
	  section.data(1145).logicalSrcIdx = 1144;
	  section.data(1145).dtTransOffset = 5993;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1
	  section.data(1146).logicalSrcIdx = 1145;
	  section.data(1146).dtTransOffset = 5995;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_Size
	  section.data(1147).logicalSrcIdx = 1146;
	  section.data(1147).dtTransOffset = 6056;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2
	  section.data(1148).logicalSrcIdx = 1147;
	  section.data(1148).dtTransOffset = 6058;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_Size
	  section.data(1149).logicalSrcIdx = 1148;
	  section.data(1149).dtTransOffset = 6059;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3
	  section.data(1150).logicalSrcIdx = 1149;
	  section.data(1150).dtTransOffset = 6061;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_Size
	  section.data(1151).logicalSrcIdx = 1150;
	  section.data(1151).dtTransOffset = 6062;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4
	  section.data(1152).logicalSrcIdx = 1151;
	  section.data(1152).dtTransOffset = 6064;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_Size
	  section.data(1153).logicalSrcIdx = 1152;
	  section.data(1153).dtTransOffset = 6065;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5
	  section.data(1154).logicalSrcIdx = 1153;
	  section.data(1154).dtTransOffset = 6067;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_Size
	  section.data(1155).logicalSrcIdx = 1154;
	  section.data(1155).dtTransOffset = 6068;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6
	  section.data(1156).logicalSrcIdx = 1155;
	  section.data(1156).dtTransOffset = 6070;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_Size
	  section.data(1157).logicalSrcIdx = 1156;
	  section.data(1157).dtTransOffset = 6071;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7
	  section.data(1158).logicalSrcIdx = 1157;
	  section.data(1158).dtTransOffset = 6073;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size_f
	  section.data(1159).logicalSrcIdx = 1158;
	  section.data(1159).dtTransOffset = 6074;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_d
	  section.data(1160).logicalSrcIdx = 1159;
	  section.data(1160).dtTransOffset = 6076;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size_m
	  section.data(1161).logicalSrcIdx = 1160;
	  section.data(1161).dtTransOffset = 6139;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_md
	  section.data(1162).logicalSrcIdx = 1161;
	  section.data(1162).dtTransOffset = 6141;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size_i
	  section.data(1163).logicalSrcIdx = 1162;
	  section.data(1163).dtTransOffset = 6142;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_gy
	  section.data(1164).logicalSrcIdx = 1163;
	  section.data(1164).dtTransOffset = 6144;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size_o
	  section.data(1165).logicalSrcIdx = 1164;
	  section.data(1165).dtTransOffset = 6145;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_i
	  section.data(1166).logicalSrcIdx = 1165;
	  section.data(1166).dtTransOffset = 6147;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size_l
	  section.data(1167).logicalSrcIdx = 1166;
	  section.data(1167).dtTransOffset = 6148;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_p
	  section.data(1168).logicalSrcIdx = 1167;
	  section.data(1168).dtTransOffset = 6150;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size_b
	  section.data(1169).logicalSrcIdx = 1168;
	  section.data(1169).dtTransOffset = 6151;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_k
	  section.data(1170).logicalSrcIdx = 1169;
	  section.data(1170).dtTransOffset = 6153;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size_f
	  section.data(1171).logicalSrcIdx = 1170;
	  section.data(1171).dtTransOffset = 6154;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_k
	  section.data(1172).logicalSrcIdx = 1171;
	  section.data(1172).dtTransOffset = 6156;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size_b
	  section.data(1173).logicalSrcIdx = 1172;
	  section.data(1173).dtTransOffset = 6157;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_g
	  section.data(1174).logicalSrcIdx = 1173;
	  section.data(1174).dtTransOffset = 6159;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size_m
	  section.data(1175).logicalSrcIdx = 1174;
	  section.data(1175).dtTransOffset = 6226;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_a
	  section.data(1176).logicalSrcIdx = 1175;
	  section.data(1176).dtTransOffset = 6228;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size_n
	  section.data(1177).logicalSrcIdx = 1176;
	  section.data(1177).dtTransOffset = 6229;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_h
	  section.data(1178).logicalSrcIdx = 1177;
	  section.data(1178).dtTransOffset = 6231;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size_j
	  section.data(1179).logicalSrcIdx = 1178;
	  section.data(1179).dtTransOffset = 6232;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_k
	  section.data(1180).logicalSrcIdx = 1179;
	  section.data(1180).dtTransOffset = 6234;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size_n
	  section.data(1181).logicalSrcIdx = 1180;
	  section.data(1181).dtTransOffset = 6235;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_d
	  section.data(1182).logicalSrcIdx = 1181;
	  section.data(1182).dtTransOffset = 6237;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size_o
	  section.data(1183).logicalSrcIdx = 1182;
	  section.data(1183).dtTransOffset = 6238;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_d
	  section.data(1184).logicalSrcIdx = 1183;
	  section.data(1184).dtTransOffset = 6240;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size_h
	  section.data(1185).logicalSrcIdx = 1184;
	  section.data(1185).dtTransOffset = 6241;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_k
	  section.data(1186).logicalSrcIdx = 1185;
	  section.data(1186).dtTransOffset = 6243;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_co
	  section.data(1187).logicalSrcIdx = 1186;
	  section.data(1187).dtTransOffset = 6244;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_k
	  section.data(1188).logicalSrcIdx = 1187;
	  section.data(1188).dtTransOffset = 6246;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_c
	  section.data(1189).logicalSrcIdx = 1188;
	  section.data(1189).dtTransOffset = 6322;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_i
	  section.data(1190).logicalSrcIdx = 1189;
	  section.data(1190).dtTransOffset = 6324;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_l
	  section.data(1191).logicalSrcIdx = 1190;
	  section.data(1191).dtTransOffset = 6325;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_n
	  section.data(1192).logicalSrcIdx = 1191;
	  section.data(1192).dtTransOffset = 6327;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_e
	  section.data(1193).logicalSrcIdx = 1192;
	  section.data(1193).dtTransOffset = 6328;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_p
	  section.data(1194).logicalSrcIdx = 1193;
	  section.data(1194).dtTransOffset = 6330;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_i
	  section.data(1195).logicalSrcIdx = 1194;
	  section.data(1195).dtTransOffset = 6331;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_n
	  section.data(1196).logicalSrcIdx = 1195;
	  section.data(1196).dtTransOffset = 6333;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_j
	  section.data(1197).logicalSrcIdx = 1196;
	  section.data(1197).dtTransOffset = 6334;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_f
	  section.data(1198).logicalSrcIdx = 1197;
	  section.data(1198).dtTransOffset = 6336;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_n
	  section.data(1199).logicalSrcIdx = 1198;
	  section.data(1199).dtTransOffset = 6337;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_h
	  section.data(1200).logicalSrcIdx = 1199;
	  section.data(1200).dtTransOffset = 6339;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_h
	  section.data(1201).logicalSrcIdx = 1200;
	  section.data(1201).dtTransOffset = 6340;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_bi
	  section.data(1202).logicalSrcIdx = 1201;
	  section.data(1202).dtTransOffset = 6342;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_e
	  section.data(1203).logicalSrcIdx = 1202;
	  section.data(1203).dtTransOffset = 6412;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_j
	  section.data(1204).logicalSrcIdx = 1203;
	  section.data(1204).dtTransOffset = 6414;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_f
	  section.data(1205).logicalSrcIdx = 1204;
	  section.data(1205).dtTransOffset = 6415;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_l
	  section.data(1206).logicalSrcIdx = 1205;
	  section.data(1206).dtTransOffset = 6417;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_mx
	  section.data(1207).logicalSrcIdx = 1206;
	  section.data(1207).dtTransOffset = 6418;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_f
	  section.data(1208).logicalSrcIdx = 1207;
	  section.data(1208).dtTransOffset = 6420;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_eh
	  section.data(1209).logicalSrcIdx = 1208;
	  section.data(1209).dtTransOffset = 6421;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_k
	  section.data(1210).logicalSrcIdx = 1209;
	  section.data(1210).dtTransOffset = 6423;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_i
	  section.data(1211).logicalSrcIdx = 1210;
	  section.data(1211).dtTransOffset = 6424;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_g
	  section.data(1212).logicalSrcIdx = 1211;
	  section.data(1212).dtTransOffset = 6426;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_k
	  section.data(1213).logicalSrcIdx = 1212;
	  section.data(1213).dtTransOffset = 6427;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_d
	  section.data(1214).logicalSrcIdx = 1213;
	  section.data(1214).dtTransOffset = 6429;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_Size_l
	  section.data(1215).logicalSrcIdx = 1214;
	  section.data(1215).dtTransOffset = 6430;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_d
	  section.data(1216).logicalSrcIdx = 1215;
	  section.data(1216).dtTransOffset = 6432;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_Size_o
	  section.data(1217).logicalSrcIdx = 1216;
	  section.data(1217).dtTransOffset = 6506;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_j
	  section.data(1218).logicalSrcIdx = 1217;
	  section.data(1218).dtTransOffset = 6508;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_Size_e
	  section.data(1219).logicalSrcIdx = 1218;
	  section.data(1219).dtTransOffset = 6509;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_o
	  section.data(1220).logicalSrcIdx = 1219;
	  section.data(1220).dtTransOffset = 6511;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_Size_m
	  section.data(1221).logicalSrcIdx = 1220;
	  section.data(1221).dtTransOffset = 6512;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_m
	  section.data(1222).logicalSrcIdx = 1221;
	  section.data(1222).dtTransOffset = 6514;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_Size_d
	  section.data(1223).logicalSrcIdx = 1222;
	  section.data(1223).dtTransOffset = 6515;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_h
	  section.data(1224).logicalSrcIdx = 1223;
	  section.data(1224).dtTransOffset = 6517;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_Size_o
	  section.data(1225).logicalSrcIdx = 1224;
	  section.data(1225).dtTransOffset = 6518;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_l
	  section.data(1226).logicalSrcIdx = 1225;
	  section.data(1226).dtTransOffset = 6520;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_Size_j
	  section.data(1227).logicalSrcIdx = 1226;
	  section.data(1227).dtTransOffset = 6521;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_b
	  section.data(1228).logicalSrcIdx = 1227;
	  section.data(1228).dtTransOffset = 6523;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_h3
	  section.data(1229).logicalSrcIdx = 1228;
	  section.data(1229).dtTransOffset = 6524;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_f
	  section.data(1230).logicalSrcIdx = 1229;
	  section.data(1230).dtTransOffset = 6526;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_j
	  section.data(1231).logicalSrcIdx = 1230;
	  section.data(1231).dtTransOffset = 6612;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_j
	  section.data(1232).logicalSrcIdx = 1231;
	  section.data(1232).dtTransOffset = 6614;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_f
	  section.data(1233).logicalSrcIdx = 1232;
	  section.data(1233).dtTransOffset = 6615;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_a
	  section.data(1234).logicalSrcIdx = 1233;
	  section.data(1234).dtTransOffset = 6617;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_l
	  section.data(1235).logicalSrcIdx = 1234;
	  section.data(1235).dtTransOffset = 6618;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_o
	  section.data(1236).logicalSrcIdx = 1235;
	  section.data(1236).dtTransOffset = 6620;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_k
	  section.data(1237).logicalSrcIdx = 1236;
	  section.data(1237).dtTransOffset = 6621;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_b
	  section.data(1238).logicalSrcIdx = 1237;
	  section.data(1238).dtTransOffset = 6623;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_h
	  section.data(1239).logicalSrcIdx = 1238;
	  section.data(1239).dtTransOffset = 6624;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_o
	  section.data(1240).logicalSrcIdx = 1239;
	  section.data(1240).dtTransOffset = 6626;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_nc
	  section.data(1241).logicalSrcIdx = 1240;
	  section.data(1241).dtTransOffset = 6627;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_k
	  section.data(1242).logicalSrcIdx = 1241;
	  section.data(1242).dtTransOffset = 6629;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_Size_o
	  section.data(1243).logicalSrcIdx = 1242;
	  section.data(1243).dtTransOffset = 6630;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_m
	  section.data(1244).logicalSrcIdx = 1243;
	  section.data(1244).dtTransOffset = 6632;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_Size_i
	  section.data(1245).logicalSrcIdx = 1244;
	  section.data(1245).dtTransOffset = 6688;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_h
	  section.data(1246).logicalSrcIdx = 1245;
	  section.data(1246).dtTransOffset = 6690;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_Size_g
	  section.data(1247).logicalSrcIdx = 1246;
	  section.data(1247).dtTransOffset = 6691;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_e
	  section.data(1248).logicalSrcIdx = 1247;
	  section.data(1248).dtTransOffset = 6693;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_Size_g
	  section.data(1249).logicalSrcIdx = 1248;
	  section.data(1249).dtTransOffset = 6694;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_i
	  section.data(1250).logicalSrcIdx = 1249;
	  section.data(1250).dtTransOffset = 6696;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_Size_g
	  section.data(1251).logicalSrcIdx = 1250;
	  section.data(1251).dtTransOffset = 6697;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_c
	  section.data(1252).logicalSrcIdx = 1251;
	  section.data(1252).dtTransOffset = 6699;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_Size_g
	  section.data(1253).logicalSrcIdx = 1252;
	  section.data(1253).dtTransOffset = 6700;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_a
	  section.data(1254).logicalSrcIdx = 1253;
	  section.data(1254).dtTransOffset = 6702;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_Size_l
	  section.data(1255).logicalSrcIdx = 1254;
	  section.data(1255).dtTransOffset = 6703;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_l
	  section.data(1256).logicalSrcIdx = 1255;
	  section.data(1256).dtTransOffset = 6705;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_Size_c
	  section.data(1257).logicalSrcIdx = 1256;
	  section.data(1257).dtTransOffset = 6706;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_g
	  section.data(1258).logicalSrcIdx = 1257;
	  section.data(1258).dtTransOffset = 6708;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_Size_b
	  section.data(1259).logicalSrcIdx = 1258;
	  section.data(1259).dtTransOffset = 6764;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_l
	  section.data(1260).logicalSrcIdx = 1259;
	  section.data(1260).dtTransOffset = 6766;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_Size_c
	  section.data(1261).logicalSrcIdx = 1260;
	  section.data(1261).dtTransOffset = 6767;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_g
	  section.data(1262).logicalSrcIdx = 1261;
	  section.data(1262).dtTransOffset = 6769;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_Size_n
	  section.data(1263).logicalSrcIdx = 1262;
	  section.data(1263).dtTransOffset = 6770;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_h
	  section.data(1264).logicalSrcIdx = 1263;
	  section.data(1264).dtTransOffset = 6772;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_Size_b
	  section.data(1265).logicalSrcIdx = 1264;
	  section.data(1265).dtTransOffset = 6773;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_j
	  section.data(1266).logicalSrcIdx = 1265;
	  section.data(1266).dtTransOffset = 6775;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_Size_c
	  section.data(1267).logicalSrcIdx = 1266;
	  section.data(1267).dtTransOffset = 6776;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_g
	  section.data(1268).logicalSrcIdx = 1267;
	  section.data(1268).dtTransOffset = 6778;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_Size_g
	  section.data(1269).logicalSrcIdx = 1268;
	  section.data(1269).dtTransOffset = 6779;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_h
	  section.data(1270).logicalSrcIdx = 1269;
	  section.data(1270).dtTransOffset = 6781;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_mx
	  section.data(1271).logicalSrcIdx = 1270;
	  section.data(1271).dtTransOffset = 6782;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_b
	  section.data(1272).logicalSrcIdx = 1271;
	  section.data(1272).dtTransOffset = 6784;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_oj
	  section.data(1273).logicalSrcIdx = 1272;
	  section.data(1273).dtTransOffset = 6845;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_j
	  section.data(1274).logicalSrcIdx = 1273;
	  section.data(1274).dtTransOffset = 6847;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_b
	  section.data(1275).logicalSrcIdx = 1274;
	  section.data(1275).dtTransOffset = 6848;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_j
	  section.data(1276).logicalSrcIdx = 1275;
	  section.data(1276).dtTransOffset = 6850;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_n3
	  section.data(1277).logicalSrcIdx = 1276;
	  section.data(1277).dtTransOffset = 6851;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_c
	  section.data(1278).logicalSrcIdx = 1277;
	  section.data(1278).dtTransOffset = 6853;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_i
	  section.data(1279).logicalSrcIdx = 1278;
	  section.data(1279).dtTransOffset = 6854;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_n
	  section.data(1280).logicalSrcIdx = 1279;
	  section.data(1280).dtTransOffset = 6856;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_b
	  section.data(1281).logicalSrcIdx = 1280;
	  section.data(1281).dtTransOffset = 6857;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_a
	  section.data(1282).logicalSrcIdx = 1281;
	  section.data(1282).dtTransOffset = 6859;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_o
	  section.data(1283).logicalSrcIdx = 1282;
	  section.data(1283).dtTransOffset = 6860;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_l
	  section.data(1284).logicalSrcIdx = 1283;
	  section.data(1284).dtTransOffset = 6862;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_Size_a
	  section.data(1285).logicalSrcIdx = 1284;
	  section.data(1285).dtTransOffset = 6863;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_j
	  section.data(1286).logicalSrcIdx = 1285;
	  section.data(1286).dtTransOffset = 6865;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_Size_b
	  section.data(1287).logicalSrcIdx = 1286;
	  section.data(1287).dtTransOffset = 6933;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_i
	  section.data(1288).logicalSrcIdx = 1287;
	  section.data(1288).dtTransOffset = 6935;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_Size_p
	  section.data(1289).logicalSrcIdx = 1288;
	  section.data(1289).dtTransOffset = 6936;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_g
	  section.data(1290).logicalSrcIdx = 1289;
	  section.data(1290).dtTransOffset = 6938;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_Size_b
	  section.data(1291).logicalSrcIdx = 1290;
	  section.data(1291).dtTransOffset = 6939;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_m
	  section.data(1292).logicalSrcIdx = 1291;
	  section.data(1292).dtTransOffset = 6941;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_Size_l
	  section.data(1293).logicalSrcIdx = 1292;
	  section.data(1293).dtTransOffset = 6942;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_a
	  section.data(1294).logicalSrcIdx = 1293;
	  section.data(1294).dtTransOffset = 6944;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_Size_e
	  section.data(1295).logicalSrcIdx = 1294;
	  section.data(1295).dtTransOffset = 6945;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_n
	  section.data(1296).logicalSrcIdx = 1295;
	  section.data(1296).dtTransOffset = 6947;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_Size_p
	  section.data(1297).logicalSrcIdx = 1296;
	  section.data(1297).dtTransOffset = 6948;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_b
	  section.data(1298).logicalSrcIdx = 1297;
	  section.data(1298).dtTransOffset = 6950;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_k
	  section.data(1299).logicalSrcIdx = 1298;
	  section.data(1299).dtTransOffset = 6951;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_n
	  section.data(1300).logicalSrcIdx = 1299;
	  section.data(1300).dtTransOffset = 6953;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_p
	  section.data(1301).logicalSrcIdx = 1300;
	  section.data(1301).dtTransOffset = 7014;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_l
	  section.data(1302).logicalSrcIdx = 1301;
	  section.data(1302).dtTransOffset = 7016;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_lh
	  section.data(1303).logicalSrcIdx = 1302;
	  section.data(1303).dtTransOffset = 7017;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_n
	  section.data(1304).logicalSrcIdx = 1303;
	  section.data(1304).dtTransOffset = 7019;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_g
	  section.data(1305).logicalSrcIdx = 1304;
	  section.data(1305).dtTransOffset = 7020;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_c
	  section.data(1306).logicalSrcIdx = 1305;
	  section.data(1306).dtTransOffset = 7022;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_au
	  section.data(1307).logicalSrcIdx = 1306;
	  section.data(1307).dtTransOffset = 7023;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_hz
	  section.data(1308).logicalSrcIdx = 1307;
	  section.data(1308).dtTransOffset = 7025;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_k
	  section.data(1309).logicalSrcIdx = 1308;
	  section.data(1309).dtTransOffset = 7026;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_e
	  section.data(1310).logicalSrcIdx = 1309;
	  section.data(1310).dtTransOffset = 7028;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_m
	  section.data(1311).logicalSrcIdx = 1310;
	  section.data(1311).dtTransOffset = 7029;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_d
	  section.data(1312).logicalSrcIdx = 1311;
	  section.data(1312).dtTransOffset = 7031;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_i
	  section.data(1313).logicalSrcIdx = 1312;
	  section.data(1313).dtTransOffset = 7032;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_f
	  section.data(1314).logicalSrcIdx = 1313;
	  section.data(1314).dtTransOffset = 7034;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_n
	  section.data(1315).logicalSrcIdx = 1314;
	  section.data(1315).dtTransOffset = 7095;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_n
	  section.data(1316).logicalSrcIdx = 1315;
	  section.data(1316).dtTransOffset = 7097;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_o
	  section.data(1317).logicalSrcIdx = 1316;
	  section.data(1317).dtTransOffset = 7098;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_c
	  section.data(1318).logicalSrcIdx = 1317;
	  section.data(1318).dtTransOffset = 7100;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_k
	  section.data(1319).logicalSrcIdx = 1318;
	  section.data(1319).dtTransOffset = 7101;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_a
	  section.data(1320).logicalSrcIdx = 1319;
	  section.data(1320).dtTransOffset = 7103;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_g
	  section.data(1321).logicalSrcIdx = 1320;
	  section.data(1321).dtTransOffset = 7104;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_f
	  section.data(1322).logicalSrcIdx = 1321;
	  section.data(1322).dtTransOffset = 7106;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_d
	  section.data(1323).logicalSrcIdx = 1322;
	  section.data(1323).dtTransOffset = 7107;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_j
	  section.data(1324).logicalSrcIdx = 1323;
	  section.data(1324).dtTransOffset = 7109;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_a
	  section.data(1325).logicalSrcIdx = 1324;
	  section.data(1325).dtTransOffset = 7110;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_i
	  section.data(1326).logicalSrcIdx = 1325;
	  section.data(1326).dtTransOffset = 7112;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_l
	  section.data(1327).logicalSrcIdx = 1326;
	  section.data(1327).dtTransOffset = 7113;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_f
	  section.data(1328).logicalSrcIdx = 1327;
	  section.data(1328).dtTransOffset = 7115;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_n
	  section.data(1329).logicalSrcIdx = 1328;
	  section.data(1329).dtTransOffset = 7176;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_f
	  section.data(1330).logicalSrcIdx = 1329;
	  section.data(1330).dtTransOffset = 7178;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_e
	  section.data(1331).logicalSrcIdx = 1330;
	  section.data(1331).dtTransOffset = 7179;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_p
	  section.data(1332).logicalSrcIdx = 1331;
	  section.data(1332).dtTransOffset = 7181;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_e
	  section.data(1333).logicalSrcIdx = 1332;
	  section.data(1333).dtTransOffset = 7182;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_l
	  section.data(1334).logicalSrcIdx = 1333;
	  section.data(1334).dtTransOffset = 7184;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_d
	  section.data(1335).logicalSrcIdx = 1334;
	  section.data(1335).dtTransOffset = 7185;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_p
	  section.data(1336).logicalSrcIdx = 1335;
	  section.data(1336).dtTransOffset = 7187;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_n
	  section.data(1337).logicalSrcIdx = 1336;
	  section.data(1337).dtTransOffset = 7188;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_p
	  section.data(1338).logicalSrcIdx = 1337;
	  section.data(1338).dtTransOffset = 7190;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_o
	  section.data(1339).logicalSrcIdx = 1338;
	  section.data(1339).dtTransOffset = 7191;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_g
	  section.data(1340).logicalSrcIdx = 1339;
	  section.data(1340).dtTransOffset = 7193;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size_b
	  section.data(1341).logicalSrcIdx = 1340;
	  section.data(1341).dtTransOffset = 7194;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_h
	  section.data(1342).logicalSrcIdx = 1341;
	  section.data(1342).dtTransOffset = 7196;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size_m
	  section.data(1343).logicalSrcIdx = 1342;
	  section.data(1343).dtTransOffset = 7257;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_c
	  section.data(1344).logicalSrcIdx = 1343;
	  section.data(1344).dtTransOffset = 7259;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size_j
	  section.data(1345).logicalSrcIdx = 1344;
	  section.data(1345).dtTransOffset = 7260;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_b
	  section.data(1346).logicalSrcIdx = 1345;
	  section.data(1346).dtTransOffset = 7262;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size_g
	  section.data(1347).logicalSrcIdx = 1346;
	  section.data(1347).dtTransOffset = 7263;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_i
	  section.data(1348).logicalSrcIdx = 1347;
	  section.data(1348).dtTransOffset = 7265;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size_a
	  section.data(1349).logicalSrcIdx = 1348;
	  section.data(1349).dtTransOffset = 7266;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_j
	  section.data(1350).logicalSrcIdx = 1349;
	  section.data(1350).dtTransOffset = 7268;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size_i
	  section.data(1351).logicalSrcIdx = 1350;
	  section.data(1351).dtTransOffset = 7269;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_i
	  section.data(1352).logicalSrcIdx = 1351;
	  section.data(1352).dtTransOffset = 7271;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size_b
	  section.data(1353).logicalSrcIdx = 1352;
	  section.data(1353).dtTransOffset = 7272;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_d
	  section.data(1354).logicalSrcIdx = 1353;
	  section.data(1354).dtTransOffset = 7274;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size_l
	  section.data(1355).logicalSrcIdx = 1354;
	  section.data(1355).dtTransOffset = 7275;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_k
	  section.data(1356).logicalSrcIdx = 1355;
	  section.data(1356).dtTransOffset = 7277;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size_a
	  section.data(1357).logicalSrcIdx = 1356;
	  section.data(1357).dtTransOffset = 7338;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_g
	  section.data(1358).logicalSrcIdx = 1357;
	  section.data(1358).dtTransOffset = 7340;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size_g
	  section.data(1359).logicalSrcIdx = 1358;
	  section.data(1359).dtTransOffset = 7341;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_mz
	  section.data(1360).logicalSrcIdx = 1359;
	  section.data(1360).dtTransOffset = 7343;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size_h
	  section.data(1361).logicalSrcIdx = 1360;
	  section.data(1361).dtTransOffset = 7344;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_i
	  section.data(1362).logicalSrcIdx = 1361;
	  section.data(1362).dtTransOffset = 7346;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size_f
	  section.data(1363).logicalSrcIdx = 1362;
	  section.data(1363).dtTransOffset = 7347;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_e1
	  section.data(1364).logicalSrcIdx = 1363;
	  section.data(1364).dtTransOffset = 7349;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size_g
	  section.data(1365).logicalSrcIdx = 1364;
	  section.data(1365).dtTransOffset = 7350;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_k
	  section.data(1366).logicalSrcIdx = 1365;
	  section.data(1366).dtTransOffset = 7352;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size_a
	  section.data(1367).logicalSrcIdx = 1366;
	  section.data(1367).dtTransOffset = 7353;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_j
	  section.data(1368).logicalSrcIdx = 1367;
	  section.data(1368).dtTransOffset = 7355;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_ob
	  section.data(1369).logicalSrcIdx = 1368;
	  section.data(1369).dtTransOffset = 7356;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_ml
	  section.data(1370).logicalSrcIdx = 1369;
	  section.data(1370).dtTransOffset = 7358;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_j
	  section.data(1371).logicalSrcIdx = 1370;
	  section.data(1371).dtTransOffset = 7434;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_l
	  section.data(1372).logicalSrcIdx = 1371;
	  section.data(1372).dtTransOffset = 7436;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_a
	  section.data(1373).logicalSrcIdx = 1372;
	  section.data(1373).dtTransOffset = 7437;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_o
	  section.data(1374).logicalSrcIdx = 1373;
	  section.data(1374).dtTransOffset = 7439;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_i
	  section.data(1375).logicalSrcIdx = 1374;
	  section.data(1375).dtTransOffset = 7440;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_d
	  section.data(1376).logicalSrcIdx = 1375;
	  section.data(1376).dtTransOffset = 7442;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_m
	  section.data(1377).logicalSrcIdx = 1376;
	  section.data(1377).dtTransOffset = 7443;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_o
	  section.data(1378).logicalSrcIdx = 1377;
	  section.data(1378).dtTransOffset = 7445;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_c
	  section.data(1379).logicalSrcIdx = 1378;
	  section.data(1379).dtTransOffset = 7446;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_l
	  section.data(1380).logicalSrcIdx = 1379;
	  section.data(1380).dtTransOffset = 7448;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_j
	  section.data(1381).logicalSrcIdx = 1380;
	  section.data(1381).dtTransOffset = 7449;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_a
	  section.data(1382).logicalSrcIdx = 1381;
	  section.data(1382).dtTransOffset = 7451;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_Size_g
	  section.data(1383).logicalSrcIdx = 1382;
	  section.data(1383).dtTransOffset = 7452;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_i
	  section.data(1384).logicalSrcIdx = 1383;
	  section.data(1384).dtTransOffset = 7454;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_Size_j
	  section.data(1385).logicalSrcIdx = 1384;
	  section.data(1385).dtTransOffset = 7530;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_d
	  section.data(1386).logicalSrcIdx = 1385;
	  section.data(1386).dtTransOffset = 7532;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_Size_j
	  section.data(1387).logicalSrcIdx = 1386;
	  section.data(1387).dtTransOffset = 7533;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_j
	  section.data(1388).logicalSrcIdx = 1387;
	  section.data(1388).dtTransOffset = 7535;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_Size_g
	  section.data(1389).logicalSrcIdx = 1388;
	  section.data(1389).dtTransOffset = 7536;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_c
	  section.data(1390).logicalSrcIdx = 1389;
	  section.data(1390).dtTransOffset = 7538;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_Size_b
	  section.data(1391).logicalSrcIdx = 1390;
	  section.data(1391).dtTransOffset = 7539;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_m
	  section.data(1392).logicalSrcIdx = 1391;
	  section.data(1392).dtTransOffset = 7541;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_Size_h
	  section.data(1393).logicalSrcIdx = 1392;
	  section.data(1393).dtTransOffset = 7542;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_l
	  section.data(1394).logicalSrcIdx = 1393;
	  section.data(1394).dtTransOffset = 7544;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_Size_m
	  section.data(1395).logicalSrcIdx = 1394;
	  section.data(1395).dtTransOffset = 7545;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_h
	  section.data(1396).logicalSrcIdx = 1395;
	  section.data(1396).dtTransOffset = 7547;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_l5
	  section.data(1397).logicalSrcIdx = 1396;
	  section.data(1397).dtTransOffset = 7548;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_i
	  section.data(1398).logicalSrcIdx = 1397;
	  section.data(1398).dtTransOffset = 7550;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_hv
	  section.data(1399).logicalSrcIdx = 1398;
	  section.data(1399).dtTransOffset = 7610;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_d
	  section.data(1400).logicalSrcIdx = 1399;
	  section.data(1400).dtTransOffset = 7612;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_k
	  section.data(1401).logicalSrcIdx = 1400;
	  section.data(1401).dtTransOffset = 7613;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_m
	  section.data(1402).logicalSrcIdx = 1401;
	  section.data(1402).dtTransOffset = 7615;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_l
	  section.data(1403).logicalSrcIdx = 1402;
	  section.data(1403).dtTransOffset = 7616;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_j
	  section.data(1404).logicalSrcIdx = 1403;
	  section.data(1404).dtTransOffset = 7618;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_g
	  section.data(1405).logicalSrcIdx = 1404;
	  section.data(1405).dtTransOffset = 7619;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_j
	  section.data(1406).logicalSrcIdx = 1405;
	  section.data(1406).dtTransOffset = 7621;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_j
	  section.data(1407).logicalSrcIdx = 1406;
	  section.data(1407).dtTransOffset = 7622;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_i
	  section.data(1408).logicalSrcIdx = 1407;
	  section.data(1408).dtTransOffset = 7624;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_g
	  section.data(1409).logicalSrcIdx = 1408;
	  section.data(1409).dtTransOffset = 7625;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_n
	  section.data(1410).logicalSrcIdx = 1409;
	  section.data(1410).dtTransOffset = 7627;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_pu
	  section.data(1411).logicalSrcIdx = 1410;
	  section.data(1411).dtTransOffset = 7628;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_e
	  section.data(1412).logicalSrcIdx = 1411;
	  section.data(1412).dtTransOffset = 7630;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_m
	  section.data(1413).logicalSrcIdx = 1412;
	  section.data(1413).dtTransOffset = 7690;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_l
	  section.data(1414).logicalSrcIdx = 1413;
	  section.data(1414).dtTransOffset = 7692;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_kg
	  section.data(1415).logicalSrcIdx = 1414;
	  section.data(1415).dtTransOffset = 7693;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_c
	  section.data(1416).logicalSrcIdx = 1415;
	  section.data(1416).dtTransOffset = 7695;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_k
	  section.data(1417).logicalSrcIdx = 1416;
	  section.data(1417).dtTransOffset = 7696;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_j
	  section.data(1418).logicalSrcIdx = 1417;
	  section.data(1418).dtTransOffset = 7698;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_h
	  section.data(1419).logicalSrcIdx = 1418;
	  section.data(1419).dtTransOffset = 7699;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_od
	  section.data(1420).logicalSrcIdx = 1419;
	  section.data(1420).dtTransOffset = 7701;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_g
	  section.data(1421).logicalSrcIdx = 1420;
	  section.data(1421).dtTransOffset = 7702;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_c
	  section.data(1422).logicalSrcIdx = 1421;
	  section.data(1422).dtTransOffset = 7704;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_a
	  section.data(1423).logicalSrcIdx = 1422;
	  section.data(1423).dtTransOffset = 7705;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_j
	  section.data(1424).logicalSrcIdx = 1423;
	  section.data(1424).dtTransOffset = 7707;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_Size_c
	  section.data(1425).logicalSrcIdx = 1424;
	  section.data(1425).dtTransOffset = 7708;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_o
	  section.data(1426).logicalSrcIdx = 1425;
	  section.data(1426).dtTransOffset = 7710;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_Size_b
	  section.data(1427).logicalSrcIdx = 1426;
	  section.data(1427).dtTransOffset = 7768;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_j
	  section.data(1428).logicalSrcIdx = 1427;
	  section.data(1428).dtTransOffset = 7770;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_Size_j
	  section.data(1429).logicalSrcIdx = 1428;
	  section.data(1429).dtTransOffset = 7771;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_a
	  section.data(1430).logicalSrcIdx = 1429;
	  section.data(1430).dtTransOffset = 7773;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_Size_l
	  section.data(1431).logicalSrcIdx = 1430;
	  section.data(1431).dtTransOffset = 7774;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_g
	  section.data(1432).logicalSrcIdx = 1431;
	  section.data(1432).dtTransOffset = 7776;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_Size_a
	  section.data(1433).logicalSrcIdx = 1432;
	  section.data(1433).dtTransOffset = 7777;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_g
	  section.data(1434).logicalSrcIdx = 1433;
	  section.data(1434).dtTransOffset = 7779;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_Size_p
	  section.data(1435).logicalSrcIdx = 1434;
	  section.data(1435).dtTransOffset = 7780;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_a
	  section.data(1436).logicalSrcIdx = 1435;
	  section.data(1436).dtTransOffset = 7782;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_Size_c
	  section.data(1437).logicalSrcIdx = 1436;
	  section.data(1437).dtTransOffset = 7783;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_o
	  section.data(1438).logicalSrcIdx = 1437;
	  section.data(1438).dtTransOffset = 7785;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_Size_a
	  section.data(1439).logicalSrcIdx = 1438;
	  section.data(1439).dtTransOffset = 7786;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_k
	  section.data(1440).logicalSrcIdx = 1439;
	  section.data(1440).dtTransOffset = 7788;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_Size_i
	  section.data(1441).logicalSrcIdx = 1440;
	  section.data(1441).dtTransOffset = 7854;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_i
	  section.data(1442).logicalSrcIdx = 1441;
	  section.data(1442).dtTransOffset = 7856;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_Size_p
	  section.data(1443).logicalSrcIdx = 1442;
	  section.data(1443).dtTransOffset = 7857;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_g
	  section.data(1444).logicalSrcIdx = 1443;
	  section.data(1444).dtTransOffset = 7859;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_Size_m
	  section.data(1445).logicalSrcIdx = 1444;
	  section.data(1445).dtTransOffset = 7860;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_n
	  section.data(1446).logicalSrcIdx = 1445;
	  section.data(1446).dtTransOffset = 7862;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_Size_i
	  section.data(1447).logicalSrcIdx = 1446;
	  section.data(1447).dtTransOffset = 7863;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_c
	  section.data(1448).logicalSrcIdx = 1447;
	  section.data(1448).dtTransOffset = 7865;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_Size_m
	  section.data(1449).logicalSrcIdx = 1448;
	  section.data(1449).dtTransOffset = 7866;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_l
	  section.data(1450).logicalSrcIdx = 1449;
	  section.data(1450).dtTransOffset = 7868;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_Size_d
	  section.data(1451).logicalSrcIdx = 1450;
	  section.data(1451).dtTransOffset = 7869;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_k
	  section.data(1452).logicalSrcIdx = 1451;
	  section.data(1452).dtTransOffset = 7871;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_Size_c
	  section.data(1453).logicalSrcIdx = 1452;
	  section.data(1453).dtTransOffset = 7872;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_b
	  section.data(1454).logicalSrcIdx = 1453;
	  section.data(1454).dtTransOffset = 7874;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_Size_g
	  section.data(1455).logicalSrcIdx = 1454;
	  section.data(1455).dtTransOffset = 7942;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_k
	  section.data(1456).logicalSrcIdx = 1455;
	  section.data(1456).dtTransOffset = 7944;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_Size_h
	  section.data(1457).logicalSrcIdx = 1456;
	  section.data(1457).dtTransOffset = 7945;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_n
	  section.data(1458).logicalSrcIdx = 1457;
	  section.data(1458).dtTransOffset = 7947;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_Size_m
	  section.data(1459).logicalSrcIdx = 1458;
	  section.data(1459).dtTransOffset = 7948;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_mg
	  section.data(1460).logicalSrcIdx = 1459;
	  section.data(1460).dtTransOffset = 7950;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_Size_e
	  section.data(1461).logicalSrcIdx = 1460;
	  section.data(1461).dtTransOffset = 7951;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_f
	  section.data(1462).logicalSrcIdx = 1461;
	  section.data(1462).dtTransOffset = 7953;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_Size_o
	  section.data(1463).logicalSrcIdx = 1462;
	  section.data(1463).dtTransOffset = 7954;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_nk
	  section.data(1464).logicalSrcIdx = 1463;
	  section.data(1464).dtTransOffset = 7956;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_Size_k
	  section.data(1465).logicalSrcIdx = 1464;
	  section.data(1465).dtTransOffset = 7957;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_a
	  section.data(1466).logicalSrcIdx = 1465;
	  section.data(1466).dtTransOffset = 7959;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_Size_l
	  section.data(1467).logicalSrcIdx = 1466;
	  section.data(1467).dtTransOffset = 7960;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_j
	  section.data(1468).logicalSrcIdx = 1467;
	  section.data(1468).dtTransOffset = 7962;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_Size_p
	  section.data(1469).logicalSrcIdx = 1468;
	  section.data(1469).dtTransOffset = 8020;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_d
	  section.data(1470).logicalSrcIdx = 1469;
	  section.data(1470).dtTransOffset = 8022;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_Size_f
	  section.data(1471).logicalSrcIdx = 1470;
	  section.data(1471).dtTransOffset = 8023;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_d
	  section.data(1472).logicalSrcIdx = 1471;
	  section.data(1472).dtTransOffset = 8025;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_Size_p
	  section.data(1473).logicalSrcIdx = 1472;
	  section.data(1473).dtTransOffset = 8026;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_p
	  section.data(1474).logicalSrcIdx = 1473;
	  section.data(1474).dtTransOffset = 8028;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_Size_d
	  section.data(1475).logicalSrcIdx = 1474;
	  section.data(1475).dtTransOffset = 8029;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_l
	  section.data(1476).logicalSrcIdx = 1475;
	  section.data(1476).dtTransOffset = 8031;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_Size_n
	  section.data(1477).logicalSrcIdx = 1476;
	  section.data(1477).dtTransOffset = 8032;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_f
	  section.data(1478).logicalSrcIdx = 1477;
	  section.data(1478).dtTransOffset = 8034;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_Size_l
	  section.data(1479).logicalSrcIdx = 1478;
	  section.data(1479).dtTransOffset = 8035;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_ok
	  section.data(1480).logicalSrcIdx = 1479;
	  section.data(1480).dtTransOffset = 8037;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_Size_f
	  section.data(1481).logicalSrcIdx = 1480;
	  section.data(1481).dtTransOffset = 8038;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_g
	  section.data(1482).logicalSrcIdx = 1481;
	  section.data(1482).dtTransOffset = 8040;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_Size_l
	  section.data(1483).logicalSrcIdx = 1482;
	  section.data(1483).dtTransOffset = 8101;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_l
	  section.data(1484).logicalSrcIdx = 1483;
	  section.data(1484).dtTransOffset = 8103;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_Size_j
	  section.data(1485).logicalSrcIdx = 1484;
	  section.data(1485).dtTransOffset = 8104;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_b
	  section.data(1486).logicalSrcIdx = 1485;
	  section.data(1486).dtTransOffset = 8106;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_Size_i
	  section.data(1487).logicalSrcIdx = 1486;
	  section.data(1487).dtTransOffset = 8107;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_c
	  section.data(1488).logicalSrcIdx = 1487;
	  section.data(1488).dtTransOffset = 8109;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_Size_c
	  section.data(1489).logicalSrcIdx = 1488;
	  section.data(1489).dtTransOffset = 8110;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_n
	  section.data(1490).logicalSrcIdx = 1489;
	  section.data(1490).dtTransOffset = 8112;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_Size_j
	  section.data(1491).logicalSrcIdx = 1490;
	  section.data(1491).dtTransOffset = 8113;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_d
	  section.data(1492).logicalSrcIdx = 1491;
	  section.data(1492).dtTransOffset = 8115;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_Size_i
	  section.data(1493).logicalSrcIdx = 1492;
	  section.data(1493).dtTransOffset = 8116;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_d
	  section.data(1494).logicalSrcIdx = 1493;
	  section.data(1494).dtTransOffset = 8118;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size_k
	  section.data(1495).logicalSrcIdx = 1494;
	  section.data(1495).dtTransOffset = 8119;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_f
	  section.data(1496).logicalSrcIdx = 1495;
	  section.data(1496).dtTransOffset = 8121;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size_k
	  section.data(1497).logicalSrcIdx = 1496;
	  section.data(1497).dtTransOffset = 8184;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_c
	  section.data(1498).logicalSrcIdx = 1497;
	  section.data(1498).dtTransOffset = 8186;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size_h
	  section.data(1499).logicalSrcIdx = 1498;
	  section.data(1499).dtTransOffset = 8187;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_b
	  section.data(1500).logicalSrcIdx = 1499;
	  section.data(1500).dtTransOffset = 8189;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size_m
	  section.data(1501).logicalSrcIdx = 1500;
	  section.data(1501).dtTransOffset = 8190;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_d
	  section.data(1502).logicalSrcIdx = 1501;
	  section.data(1502).dtTransOffset = 8192;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size_n
	  section.data(1503).logicalSrcIdx = 1502;
	  section.data(1503).dtTransOffset = 8193;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_e
	  section.data(1504).logicalSrcIdx = 1503;
	  section.data(1504).dtTransOffset = 8195;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size_o
	  section.data(1505).logicalSrcIdx = 1504;
	  section.data(1505).dtTransOffset = 8196;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_a
	  section.data(1506).logicalSrcIdx = 1505;
	  section.data(1506).dtTransOffset = 8198;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size_e
	  section.data(1507).logicalSrcIdx = 1506;
	  section.data(1507).dtTransOffset = 8199;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_f
	  section.data(1508).logicalSrcIdx = 1507;
	  section.data(1508).dtTransOffset = 8201;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size_o
	  section.data(1509).logicalSrcIdx = 1508;
	  section.data(1509).dtTransOffset = 8202;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_gy
	  section.data(1510).logicalSrcIdx = 1509;
	  section.data(1510).dtTransOffset = 8204;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size_o
	  section.data(1511).logicalSrcIdx = 1510;
	  section.data(1511).dtTransOffset = 8271;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_e
	  section.data(1512).logicalSrcIdx = 1511;
	  section.data(1512).dtTransOffset = 8273;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size_l
	  section.data(1513).logicalSrcIdx = 1512;
	  section.data(1513).dtTransOffset = 8274;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_l
	  section.data(1514).logicalSrcIdx = 1513;
	  section.data(1514).dtTransOffset = 8276;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size_jx
	  section.data(1515).logicalSrcIdx = 1514;
	  section.data(1515).dtTransOffset = 8277;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_iy
	  section.data(1516).logicalSrcIdx = 1515;
	  section.data(1516).dtTransOffset = 8279;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size_d
	  section.data(1517).logicalSrcIdx = 1516;
	  section.data(1517).dtTransOffset = 8280;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_d2
	  section.data(1518).logicalSrcIdx = 1517;
	  section.data(1518).dtTransOffset = 8282;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size_c
	  section.data(1519).logicalSrcIdx = 1518;
	  section.data(1519).dtTransOffset = 8283;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_l
	  section.data(1520).logicalSrcIdx = 1519;
	  section.data(1520).dtTransOffset = 8285;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size_b
	  section.data(1521).logicalSrcIdx = 1520;
	  section.data(1521).dtTransOffset = 8286;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_h
	  section.data(1522).logicalSrcIdx = 1521;
	  section.data(1522).dtTransOffset = 8288;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_i
	  section.data(1523).logicalSrcIdx = 1522;
	  section.data(1523).dtTransOffset = 8289;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_e
	  section.data(1524).logicalSrcIdx = 1523;
	  section.data(1524).dtTransOffset = 8291;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_a
	  section.data(1525).logicalSrcIdx = 1524;
	  section.data(1525).dtTransOffset = 8367;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_k
	  section.data(1526).logicalSrcIdx = 1525;
	  section.data(1526).dtTransOffset = 8369;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_o
	  section.data(1527).logicalSrcIdx = 1526;
	  section.data(1527).dtTransOffset = 8370;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_p
	  section.data(1528).logicalSrcIdx = 1527;
	  section.data(1528).dtTransOffset = 8372;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_fy
	  section.data(1529).logicalSrcIdx = 1528;
	  section.data(1529).dtTransOffset = 8373;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_l
	  section.data(1530).logicalSrcIdx = 1529;
	  section.data(1530).dtTransOffset = 8375;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_o
	  section.data(1531).logicalSrcIdx = 1530;
	  section.data(1531).dtTransOffset = 8376;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_np
	  section.data(1532).logicalSrcIdx = 1531;
	  section.data(1532).dtTransOffset = 8378;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_pd
	  section.data(1533).logicalSrcIdx = 1532;
	  section.data(1533).dtTransOffset = 8379;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_kl
	  section.data(1534).logicalSrcIdx = 1533;
	  section.data(1534).dtTransOffset = 8381;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_f
	  section.data(1535).logicalSrcIdx = 1534;
	  section.data(1535).dtTransOffset = 8382;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_l
	  section.data(1536).logicalSrcIdx = 1535;
	  section.data(1536).dtTransOffset = 8384;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_m
	  section.data(1537).logicalSrcIdx = 1536;
	  section.data(1537).dtTransOffset = 8385;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_d
	  section.data(1538).logicalSrcIdx = 1537;
	  section.data(1538).dtTransOffset = 8387;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_e4
	  section.data(1539).logicalSrcIdx = 1538;
	  section.data(1539).dtTransOffset = 8457;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_o
	  section.data(1540).logicalSrcIdx = 1539;
	  section.data(1540).dtTransOffset = 8459;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_i
	  section.data(1541).logicalSrcIdx = 1540;
	  section.data(1541).dtTransOffset = 8460;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_e
	  section.data(1542).logicalSrcIdx = 1541;
	  section.data(1542).dtTransOffset = 8462;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_p
	  section.data(1543).logicalSrcIdx = 1542;
	  section.data(1543).dtTransOffset = 8463;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_h
	  section.data(1544).logicalSrcIdx = 1543;
	  section.data(1544).dtTransOffset = 8465;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_i
	  section.data(1545).logicalSrcIdx = 1544;
	  section.data(1545).dtTransOffset = 8466;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_i
	  section.data(1546).logicalSrcIdx = 1545;
	  section.data(1546).dtTransOffset = 8468;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_k
	  section.data(1547).logicalSrcIdx = 1546;
	  section.data(1547).dtTransOffset = 8469;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_j
	  section.data(1548).logicalSrcIdx = 1547;
	  section.data(1548).dtTransOffset = 8471;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_o
	  section.data(1549).logicalSrcIdx = 1548;
	  section.data(1549).dtTransOffset = 8472;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_o
	  section.data(1550).logicalSrcIdx = 1549;
	  section.data(1550).dtTransOffset = 8474;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_Size_p
	  section.data(1551).logicalSrcIdx = 1550;
	  section.data(1551).dtTransOffset = 8475;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_k
	  section.data(1552).logicalSrcIdx = 1551;
	  section.data(1552).dtTransOffset = 8477;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_Size_b
	  section.data(1553).logicalSrcIdx = 1552;
	  section.data(1553).dtTransOffset = 8551;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_b
	  section.data(1554).logicalSrcIdx = 1553;
	  section.data(1554).dtTransOffset = 8553;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_Size_n
	  section.data(1555).logicalSrcIdx = 1554;
	  section.data(1555).dtTransOffset = 8554;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_p
	  section.data(1556).logicalSrcIdx = 1555;
	  section.data(1556).dtTransOffset = 8556;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_Size_b
	  section.data(1557).logicalSrcIdx = 1556;
	  section.data(1557).dtTransOffset = 8557;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_n
	  section.data(1558).logicalSrcIdx = 1557;
	  section.data(1558).dtTransOffset = 8559;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_Size_dc
	  section.data(1559).logicalSrcIdx = 1558;
	  section.data(1559).dtTransOffset = 8560;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_b
	  section.data(1560).logicalSrcIdx = 1559;
	  section.data(1560).dtTransOffset = 8562;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_Size_h
	  section.data(1561).logicalSrcIdx = 1560;
	  section.data(1561).dtTransOffset = 8563;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_c
	  section.data(1562).logicalSrcIdx = 1561;
	  section.data(1562).dtTransOffset = 8565;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_Size_k
	  section.data(1563).logicalSrcIdx = 1562;
	  section.data(1563).dtTransOffset = 8566;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_l
	  section.data(1564).logicalSrcIdx = 1563;
	  section.data(1564).dtTransOffset = 8568;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_Size_m
	  section.data(1565).logicalSrcIdx = 1564;
	  section.data(1565).dtTransOffset = 8569;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_m
	  section.data(1566).logicalSrcIdx = 1565;
	  section.data(1566).dtTransOffset = 8571;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_Size_h
	  section.data(1567).logicalSrcIdx = 1566;
	  section.data(1567).dtTransOffset = 8632;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_n
	  section.data(1568).logicalSrcIdx = 1567;
	  section.data(1568).dtTransOffset = 8634;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_Size_o
	  section.data(1569).logicalSrcIdx = 1568;
	  section.data(1569).dtTransOffset = 8635;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_g
	  section.data(1570).logicalSrcIdx = 1569;
	  section.data(1570).dtTransOffset = 8637;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_Size_e
	  section.data(1571).logicalSrcIdx = 1570;
	  section.data(1571).dtTransOffset = 8638;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_p
	  section.data(1572).logicalSrcIdx = 1571;
	  section.data(1572).dtTransOffset = 8640;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_Size_b
	  section.data(1573).logicalSrcIdx = 1572;
	  section.data(1573).dtTransOffset = 8641;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_k
	  section.data(1574).logicalSrcIdx = 1573;
	  section.data(1574).dtTransOffset = 8643;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_Size_jo
	  section.data(1575).logicalSrcIdx = 1574;
	  section.data(1575).dtTransOffset = 8644;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_h
	  section.data(1576).logicalSrcIdx = 1575;
	  section.data(1576).dtTransOffset = 8646;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_Size_h
	  section.data(1577).logicalSrcIdx = 1576;
	  section.data(1577).dtTransOffset = 8647;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_p
	  section.data(1578).logicalSrcIdx = 1577;
	  section.data(1578).dtTransOffset = 8649;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_g
	  section.data(1579).logicalSrcIdx = 1578;
	  section.data(1579).dtTransOffset = 8650;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_mb
	  section.data(1580).logicalSrcIdx = 1579;
	  section.data(1580).dtTransOffset = 8652;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_c
	  section.data(1581).logicalSrcIdx = 1580;
	  section.data(1581).dtTransOffset = 8738;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_d
	  section.data(1582).logicalSrcIdx = 1581;
	  section.data(1582).dtTransOffset = 8740;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_k
	  section.data(1583).logicalSrcIdx = 1582;
	  section.data(1583).dtTransOffset = 8741;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_n
	  section.data(1584).logicalSrcIdx = 1583;
	  section.data(1584).dtTransOffset = 8743;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_l0
	  section.data(1585).logicalSrcIdx = 1584;
	  section.data(1585).dtTransOffset = 8744;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_h
	  section.data(1586).logicalSrcIdx = 1585;
	  section.data(1586).dtTransOffset = 8746;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_p
	  section.data(1587).logicalSrcIdx = 1586;
	  section.data(1587).dtTransOffset = 8747;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_d
	  section.data(1588).logicalSrcIdx = 1587;
	  section.data(1588).dtTransOffset = 8749;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_m
	  section.data(1589).logicalSrcIdx = 1588;
	  section.data(1589).dtTransOffset = 8750;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_n
	  section.data(1590).logicalSrcIdx = 1589;
	  section.data(1590).dtTransOffset = 8752;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_d
	  section.data(1591).logicalSrcIdx = 1590;
	  section.data(1591).dtTransOffset = 8753;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_e
	  section.data(1592).logicalSrcIdx = 1591;
	  section.data(1592).dtTransOffset = 8755;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_Size_e
	  section.data(1593).logicalSrcIdx = 1592;
	  section.data(1593).dtTransOffset = 8756;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_p
	  section.data(1594).logicalSrcIdx = 1593;
	  section.data(1594).dtTransOffset = 8758;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_Size_b
	  section.data(1595).logicalSrcIdx = 1594;
	  section.data(1595).dtTransOffset = 8814;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_f
	  section.data(1596).logicalSrcIdx = 1595;
	  section.data(1596).dtTransOffset = 8816;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_Size_n
	  section.data(1597).logicalSrcIdx = 1596;
	  section.data(1597).dtTransOffset = 8817;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_g
	  section.data(1598).logicalSrcIdx = 1597;
	  section.data(1598).dtTransOffset = 8819;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_Size_o
	  section.data(1599).logicalSrcIdx = 1598;
	  section.data(1599).dtTransOffset = 8820;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_n
	  section.data(1600).logicalSrcIdx = 1599;
	  section.data(1600).dtTransOffset = 8822;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_Size_c
	  section.data(1601).logicalSrcIdx = 1600;
	  section.data(1601).dtTransOffset = 8823;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_f
	  section.data(1602).logicalSrcIdx = 1601;
	  section.data(1602).dtTransOffset = 8825;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_Size_f
	  section.data(1603).logicalSrcIdx = 1602;
	  section.data(1603).dtTransOffset = 8826;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_i
	  section.data(1604).logicalSrcIdx = 1603;
	  section.data(1604).dtTransOffset = 8828;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_Size_a
	  section.data(1605).logicalSrcIdx = 1604;
	  section.data(1605).dtTransOffset = 8829;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_c
	  section.data(1606).logicalSrcIdx = 1605;
	  section.data(1606).dtTransOffset = 8831;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_Size_m
	  section.data(1607).logicalSrcIdx = 1606;
	  section.data(1607).dtTransOffset = 8832;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_i
	  section.data(1608).logicalSrcIdx = 1607;
	  section.data(1608).dtTransOffset = 8834;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_Size_d
	  section.data(1609).logicalSrcIdx = 1608;
	  section.data(1609).dtTransOffset = 8890;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_e
	  section.data(1610).logicalSrcIdx = 1609;
	  section.data(1610).dtTransOffset = 8892;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_Size_b
	  section.data(1611).logicalSrcIdx = 1610;
	  section.data(1611).dtTransOffset = 8893;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_f
	  section.data(1612).logicalSrcIdx = 1611;
	  section.data(1612).dtTransOffset = 8895;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_Size_e
	  section.data(1613).logicalSrcIdx = 1612;
	  section.data(1613).dtTransOffset = 8896;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_c
	  section.data(1614).logicalSrcIdx = 1613;
	  section.data(1614).dtTransOffset = 8898;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_Size_n
	  section.data(1615).logicalSrcIdx = 1614;
	  section.data(1615).dtTransOffset = 8899;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_i
	  section.data(1616).logicalSrcIdx = 1615;
	  section.data(1616).dtTransOffset = 8901;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_Size_l
	  section.data(1617).logicalSrcIdx = 1616;
	  section.data(1617).dtTransOffset = 8902;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_b
	  section.data(1618).logicalSrcIdx = 1617;
	  section.data(1618).dtTransOffset = 8904;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_Size_f
	  section.data(1619).logicalSrcIdx = 1618;
	  section.data(1619).dtTransOffset = 8905;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_f
	  section.data(1620).logicalSrcIdx = 1619;
	  section.data(1620).dtTransOffset = 8907;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_d
	  section.data(1621).logicalSrcIdx = 1620;
	  section.data(1621).dtTransOffset = 8908;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_a
	  section.data(1622).logicalSrcIdx = 1621;
	  section.data(1622).dtTransOffset = 8910;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_e
	  section.data(1623).logicalSrcIdx = 1622;
	  section.data(1623).dtTransOffset = 8971;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_p
	  section.data(1624).logicalSrcIdx = 1623;
	  section.data(1624).dtTransOffset = 8973;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_g3
	  section.data(1625).logicalSrcIdx = 1624;
	  section.data(1625).dtTransOffset = 8974;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_n
	  section.data(1626).logicalSrcIdx = 1625;
	  section.data(1626).dtTransOffset = 8976;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_nj
	  section.data(1627).logicalSrcIdx = 1626;
	  section.data(1627).dtTransOffset = 8977;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_l
	  section.data(1628).logicalSrcIdx = 1627;
	  section.data(1628).dtTransOffset = 8979;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_m
	  section.data(1629).logicalSrcIdx = 1628;
	  section.data(1629).dtTransOffset = 8980;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_b
	  section.data(1630).logicalSrcIdx = 1629;
	  section.data(1630).dtTransOffset = 8982;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_i
	  section.data(1631).logicalSrcIdx = 1630;
	  section.data(1631).dtTransOffset = 8983;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_o
	  section.data(1632).logicalSrcIdx = 1631;
	  section.data(1632).dtTransOffset = 8985;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_hc
	  section.data(1633).logicalSrcIdx = 1632;
	  section.data(1633).dtTransOffset = 8986;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_h
	  section.data(1634).logicalSrcIdx = 1633;
	  section.data(1634).dtTransOffset = 8988;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_bo
	  section.data(1635).logicalSrcIdx = 1634;
	  section.data(1635).dtTransOffset = 8989;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_k
	  section.data(1636).logicalSrcIdx = 1635;
	  section.data(1636).dtTransOffset = 8991;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_c
	  section.data(1637).logicalSrcIdx = 1636;
	  section.data(1637).dtTransOffset = 9052;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_nm
	  section.data(1638).logicalSrcIdx = 1637;
	  section.data(1638).dtTransOffset = 9054;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_e
	  section.data(1639).logicalSrcIdx = 1638;
	  section.data(1639).dtTransOffset = 9055;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_m
	  section.data(1640).logicalSrcIdx = 1639;
	  section.data(1640).dtTransOffset = 9057;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_bv
	  section.data(1641).logicalSrcIdx = 1640;
	  section.data(1641).dtTransOffset = 9058;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_i
	  section.data(1642).logicalSrcIdx = 1641;
	  section.data(1642).dtTransOffset = 9060;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_c
	  section.data(1643).logicalSrcIdx = 1642;
	  section.data(1643).dtTransOffset = 9061;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_cg
	  section.data(1644).logicalSrcIdx = 1643;
	  section.data(1644).dtTransOffset = 9063;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_e
	  section.data(1645).logicalSrcIdx = 1644;
	  section.data(1645).dtTransOffset = 9064;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_d
	  section.data(1646).logicalSrcIdx = 1645;
	  section.data(1646).dtTransOffset = 9066;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_c
	  section.data(1647).logicalSrcIdx = 1646;
	  section.data(1647).dtTransOffset = 9067;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_f
	  section.data(1648).logicalSrcIdx = 1647;
	  section.data(1648).dtTransOffset = 9069;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_ix
	  section.data(1649).logicalSrcIdx = 1648;
	  section.data(1649).dtTransOffset = 9070;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_b
	  section.data(1650).logicalSrcIdx = 1649;
	  section.data(1650).dtTransOffset = 9072;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_h
	  section.data(1651).logicalSrcIdx = 1650;
	  section.data(1651).dtTransOffset = 9133;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_j
	  section.data(1652).logicalSrcIdx = 1651;
	  section.data(1652).dtTransOffset = 9135;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_f
	  section.data(1653).logicalSrcIdx = 1652;
	  section.data(1653).dtTransOffset = 9136;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_n
	  section.data(1654).logicalSrcIdx = 1653;
	  section.data(1654).dtTransOffset = 9138;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_a
	  section.data(1655).logicalSrcIdx = 1654;
	  section.data(1655).dtTransOffset = 9139;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_d
	  section.data(1656).logicalSrcIdx = 1655;
	  section.data(1656).dtTransOffset = 9141;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_bh
	  section.data(1657).logicalSrcIdx = 1656;
	  section.data(1657).dtTransOffset = 9142;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_ds
	  section.data(1658).logicalSrcIdx = 1657;
	  section.data(1658).dtTransOffset = 9144;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_g4
	  section.data(1659).logicalSrcIdx = 1658;
	  section.data(1659).dtTransOffset = 9145;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_o
	  section.data(1660).logicalSrcIdx = 1659;
	  section.data(1660).dtTransOffset = 9147;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_l
	  section.data(1661).logicalSrcIdx = 1660;
	  section.data(1661).dtTransOffset = 9148;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_l
	  section.data(1662).logicalSrcIdx = 1661;
	  section.data(1662).dtTransOffset = 9150;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_k
	  section.data(1663).logicalSrcIdx = 1662;
	  section.data(1663).dtTransOffset = 9151;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_fr
	  section.data(1664).logicalSrcIdx = 1663;
	  section.data(1664).dtTransOffset = 9153;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_nf
	  section.data(1665).logicalSrcIdx = 1664;
	  section.data(1665).dtTransOffset = 9214;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_d
	  section.data(1666).logicalSrcIdx = 1665;
	  section.data(1666).dtTransOffset = 9216;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_m
	  section.data(1667).logicalSrcIdx = 1666;
	  section.data(1667).dtTransOffset = 9217;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_m
	  section.data(1668).logicalSrcIdx = 1667;
	  section.data(1668).dtTransOffset = 9219;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_i0
	  section.data(1669).logicalSrcIdx = 1668;
	  section.data(1669).dtTransOffset = 9220;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_e
	  section.data(1670).logicalSrcIdx = 1669;
	  section.data(1670).dtTransOffset = 9222;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_h
	  section.data(1671).logicalSrcIdx = 1670;
	  section.data(1671).dtTransOffset = 9223;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_g
	  section.data(1672).logicalSrcIdx = 1671;
	  section.data(1672).dtTransOffset = 9225;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_j
	  section.data(1673).logicalSrcIdx = 1672;
	  section.data(1673).dtTransOffset = 9226;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_mb
	  section.data(1674).logicalSrcIdx = 1673;
	  section.data(1674).dtTransOffset = 9228;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_pm
	  section.data(1675).logicalSrcIdx = 1674;
	  section.data(1675).dtTransOffset = 9229;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_p
	  section.data(1676).logicalSrcIdx = 1675;
	  section.data(1676).dtTransOffset = 9231;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size_p
	  section.data(1677).logicalSrcIdx = 1676;
	  section.data(1677).dtTransOffset = 9232;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_f
	  section.data(1678).logicalSrcIdx = 1677;
	  section.data(1678).dtTransOffset = 9234;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size_i
	  section.data(1679).logicalSrcIdx = 1678;
	  section.data(1679).dtTransOffset = 9295;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_n
	  section.data(1680).logicalSrcIdx = 1679;
	  section.data(1680).dtTransOffset = 9297;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size_h
	  section.data(1681).logicalSrcIdx = 1680;
	  section.data(1681).dtTransOffset = 9298;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_bt
	  section.data(1682).logicalSrcIdx = 1681;
	  section.data(1682).dtTransOffset = 9300;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size_n
	  section.data(1683).logicalSrcIdx = 1682;
	  section.data(1683).dtTransOffset = 9301;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_o
	  section.data(1684).logicalSrcIdx = 1683;
	  section.data(1684).dtTransOffset = 9303;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size_p
	  section.data(1685).logicalSrcIdx = 1684;
	  section.data(1685).dtTransOffset = 9304;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_d
	  section.data(1686).logicalSrcIdx = 1685;
	  section.data(1686).dtTransOffset = 9306;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size_k
	  section.data(1687).logicalSrcIdx = 1686;
	  section.data(1687).dtTransOffset = 9307;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_n
	  section.data(1688).logicalSrcIdx = 1687;
	  section.data(1688).dtTransOffset = 9309;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size_j
	  section.data(1689).logicalSrcIdx = 1688;
	  section.data(1689).dtTransOffset = 9310;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_o
	  section.data(1690).logicalSrcIdx = 1689;
	  section.data(1690).dtTransOffset = 9312;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size_d
	  section.data(1691).logicalSrcIdx = 1690;
	  section.data(1691).dtTransOffset = 9313;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_a
	  section.data(1692).logicalSrcIdx = 1691;
	  section.data(1692).dtTransOffset = 9315;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size_i
	  section.data(1693).logicalSrcIdx = 1692;
	  section.data(1693).dtTransOffset = 9376;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_f
	  section.data(1694).logicalSrcIdx = 1693;
	  section.data(1694).dtTransOffset = 9378;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size_e
	  section.data(1695).logicalSrcIdx = 1694;
	  section.data(1695).dtTransOffset = 9379;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_i
	  section.data(1696).logicalSrcIdx = 1695;
	  section.data(1696).dtTransOffset = 9381;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size_h5
	  section.data(1697).logicalSrcIdx = 1696;
	  section.data(1697).dtTransOffset = 9382;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_n
	  section.data(1698).logicalSrcIdx = 1697;
	  section.data(1698).dtTransOffset = 9384;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size_a
	  section.data(1699).logicalSrcIdx = 1698;
	  section.data(1699).dtTransOffset = 9385;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_k
	  section.data(1700).logicalSrcIdx = 1699;
	  section.data(1700).dtTransOffset = 9387;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size_c
	  section.data(1701).logicalSrcIdx = 1700;
	  section.data(1701).dtTransOffset = 9388;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_f
	  section.data(1702).logicalSrcIdx = 1701;
	  section.data(1702).dtTransOffset = 9390;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size_d
	  section.data(1703).logicalSrcIdx = 1702;
	  section.data(1703).dtTransOffset = 9391;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_d
	  section.data(1704).logicalSrcIdx = 1703;
	  section.data(1704).dtTransOffset = 9393;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_k
	  section.data(1705).logicalSrcIdx = 1704;
	  section.data(1705).dtTransOffset = 9394;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_i
	  section.data(1706).logicalSrcIdx = 1705;
	  section.data(1706).dtTransOffset = 9396;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_m
	  section.data(1707).logicalSrcIdx = 1706;
	  section.data(1707).dtTransOffset = 9472;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_a
	  section.data(1708).logicalSrcIdx = 1707;
	  section.data(1708).dtTransOffset = 9474;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_b
	  section.data(1709).logicalSrcIdx = 1708;
	  section.data(1709).dtTransOffset = 9475;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_e
	  section.data(1710).logicalSrcIdx = 1709;
	  section.data(1710).dtTransOffset = 9477;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_k
	  section.data(1711).logicalSrcIdx = 1710;
	  section.data(1711).dtTransOffset = 9478;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_o
	  section.data(1712).logicalSrcIdx = 1711;
	  section.data(1712).dtTransOffset = 9480;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_bu
	  section.data(1713).logicalSrcIdx = 1712;
	  section.data(1713).dtTransOffset = 9481;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_b
	  section.data(1714).logicalSrcIdx = 1713;
	  section.data(1714).dtTransOffset = 9483;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_b
	  section.data(1715).logicalSrcIdx = 1714;
	  section.data(1715).dtTransOffset = 9484;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_n
	  section.data(1716).logicalSrcIdx = 1715;
	  section.data(1716).dtTransOffset = 9486;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_b
	  section.data(1717).logicalSrcIdx = 1716;
	  section.data(1717).dtTransOffset = 9487;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_f
	  section.data(1718).logicalSrcIdx = 1717;
	  section.data(1718).dtTransOffset = 9489;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size_i
	  section.data(1719).logicalSrcIdx = 1718;
	  section.data(1719).dtTransOffset = 9490;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_fe
	  section.data(1720).logicalSrcIdx = 1719;
	  section.data(1720).dtTransOffset = 9492;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size_f
	  section.data(1721).logicalSrcIdx = 1720;
	  section.data(1721).dtTransOffset = 9555;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_k
	  section.data(1722).logicalSrcIdx = 1721;
	  section.data(1722).dtTransOffset = 9557;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size_k
	  section.data(1723).logicalSrcIdx = 1722;
	  section.data(1723).dtTransOffset = 9558;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_a
	  section.data(1724).logicalSrcIdx = 1723;
	  section.data(1724).dtTransOffset = 9560;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size_mb
	  section.data(1725).logicalSrcIdx = 1724;
	  section.data(1725).dtTransOffset = 9561;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_m
	  section.data(1726).logicalSrcIdx = 1725;
	  section.data(1726).dtTransOffset = 9563;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size_lc
	  section.data(1727).logicalSrcIdx = 1726;
	  section.data(1727).dtTransOffset = 9564;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_d
	  section.data(1728).logicalSrcIdx = 1727;
	  section.data(1728).dtTransOffset = 9566;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size_c
	  section.data(1729).logicalSrcIdx = 1728;
	  section.data(1729).dtTransOffset = 9567;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_j
	  section.data(1730).logicalSrcIdx = 1729;
	  section.data(1730).dtTransOffset = 9569;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size_c
	  section.data(1731).logicalSrcIdx = 1730;
	  section.data(1731).dtTransOffset = 9570;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_o
	  section.data(1732).logicalSrcIdx = 1731;
	  section.data(1732).dtTransOffset = 9572;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_Size_ga
	  section.data(1733).logicalSrcIdx = 1732;
	  section.data(1733).dtTransOffset = 9573;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_iz
	  section.data(1734).logicalSrcIdx = 1733;
	  section.data(1734).dtTransOffset = 9575;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_Size_k
	  section.data(1735).logicalSrcIdx = 1734;
	  section.data(1735).dtTransOffset = 9651;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_p
	  section.data(1736).logicalSrcIdx = 1735;
	  section.data(1736).dtTransOffset = 9653;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_Size_h
	  section.data(1737).logicalSrcIdx = 1736;
	  section.data(1737).dtTransOffset = 9654;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_c
	  section.data(1738).logicalSrcIdx = 1737;
	  section.data(1738).dtTransOffset = 9656;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_Size_c
	  section.data(1739).logicalSrcIdx = 1738;
	  section.data(1739).dtTransOffset = 9657;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_b
	  section.data(1740).logicalSrcIdx = 1739;
	  section.data(1740).dtTransOffset = 9659;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_Size_d
	  section.data(1741).logicalSrcIdx = 1740;
	  section.data(1741).dtTransOffset = 9660;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_k
	  section.data(1742).logicalSrcIdx = 1741;
	  section.data(1742).dtTransOffset = 9662;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_Size_f
	  section.data(1743).logicalSrcIdx = 1742;
	  section.data(1743).dtTransOffset = 9663;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_b
	  section.data(1744).logicalSrcIdx = 1743;
	  section.data(1744).dtTransOffset = 9665;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_Size_n
	  section.data(1745).logicalSrcIdx = 1744;
	  section.data(1745).dtTransOffset = 9666;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_k
	  section.data(1746).logicalSrcIdx = 1745;
	  section.data(1746).dtTransOffset = 9668;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_a
	  section.data(1747).logicalSrcIdx = 1746;
	  section.data(1747).dtTransOffset = 9669;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_mv
	  section.data(1748).logicalSrcIdx = 1747;
	  section.data(1748).dtTransOffset = 9671;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_c
	  section.data(1749).logicalSrcIdx = 1748;
	  section.data(1749).dtTransOffset = 9731;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_jn
	  section.data(1750).logicalSrcIdx = 1749;
	  section.data(1750).dtTransOffset = 9733;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_n
	  section.data(1751).logicalSrcIdx = 1750;
	  section.data(1751).dtTransOffset = 9734;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_kc
	  section.data(1752).logicalSrcIdx = 1751;
	  section.data(1752).dtTransOffset = 9736;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_f
	  section.data(1753).logicalSrcIdx = 1752;
	  section.data(1753).dtTransOffset = 9737;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_ka
	  section.data(1754).logicalSrcIdx = 1753;
	  section.data(1754).dtTransOffset = 9739;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_k
	  section.data(1755).logicalSrcIdx = 1754;
	  section.data(1755).dtTransOffset = 9740;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_jp
	  section.data(1756).logicalSrcIdx = 1755;
	  section.data(1756).dtTransOffset = 9742;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_o
	  section.data(1757).logicalSrcIdx = 1756;
	  section.data(1757).dtTransOffset = 9743;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_jc
	  section.data(1758).logicalSrcIdx = 1757;
	  section.data(1758).dtTransOffset = 9745;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_p
	  section.data(1759).logicalSrcIdx = 1758;
	  section.data(1759).dtTransOffset = 9746;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_oe
	  section.data(1760).logicalSrcIdx = 1759;
	  section.data(1760).dtTransOffset = 9748;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_c
	  section.data(1761).logicalSrcIdx = 1760;
	  section.data(1761).dtTransOffset = 9749;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_i
	  section.data(1762).logicalSrcIdx = 1761;
	  section.data(1762).dtTransOffset = 9751;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_l
	  section.data(1763).logicalSrcIdx = 1762;
	  section.data(1763).dtTransOffset = 9811;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_i
	  section.data(1764).logicalSrcIdx = 1763;
	  section.data(1764).dtTransOffset = 9813;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_l
	  section.data(1765).logicalSrcIdx = 1764;
	  section.data(1765).dtTransOffset = 9814;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_ii
	  section.data(1766).logicalSrcIdx = 1765;
	  section.data(1766).dtTransOffset = 9816;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_g
	  section.data(1767).logicalSrcIdx = 1766;
	  section.data(1767).dtTransOffset = 9817;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_g4
	  section.data(1768).logicalSrcIdx = 1767;
	  section.data(1768).dtTransOffset = 9819;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_g
	  section.data(1769).logicalSrcIdx = 1768;
	  section.data(1769).dtTransOffset = 9820;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_o5
	  section.data(1770).logicalSrcIdx = 1769;
	  section.data(1770).dtTransOffset = 9822;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_d
	  section.data(1771).logicalSrcIdx = 1770;
	  section.data(1771).dtTransOffset = 9823;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_ld
	  section.data(1772).logicalSrcIdx = 1771;
	  section.data(1772).dtTransOffset = 9825;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_d
	  section.data(1773).logicalSrcIdx = 1772;
	  section.data(1773).dtTransOffset = 9826;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_f
	  section.data(1774).logicalSrcIdx = 1773;
	  section.data(1774).dtTransOffset = 9828;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_Size_m
	  section.data(1775).logicalSrcIdx = 1774;
	  section.data(1775).dtTransOffset = 9829;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P1_kj
	  section.data(1776).logicalSrcIdx = 1775;
	  section.data(1776).dtTransOffset = 9831;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_Size_j
	  section.data(1777).logicalSrcIdx = 1776;
	  section.data(1777).dtTransOffset = 9897;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P2_c
	  section.data(1778).logicalSrcIdx = 1777;
	  section.data(1778).dtTransOffset = 9899;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_Size_kz
	  section.data(1779).logicalSrcIdx = 1778;
	  section.data(1779).dtTransOffset = 9900;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P3_n
	  section.data(1780).logicalSrcIdx = 1779;
	  section.data(1780).dtTransOffset = 9902;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_Size_f
	  section.data(1781).logicalSrcIdx = 1780;
	  section.data(1781).dtTransOffset = 9903;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P4_g
	  section.data(1782).logicalSrcIdx = 1781;
	  section.data(1782).dtTransOffset = 9905;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_Size_j
	  section.data(1783).logicalSrcIdx = 1782;
	  section.data(1783).dtTransOffset = 9906;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P5_e
	  section.data(1784).logicalSrcIdx = 1783;
	  section.data(1784).dtTransOffset = 9908;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_Size_n
	  section.data(1785).logicalSrcIdx = 1784;
	  section.data(1785).dtTransOffset = 9909;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P6_n
	  section.data(1786).logicalSrcIdx = 1785;
	  section.data(1786).dtTransOffset = 9911;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_Size_h
	  section.data(1787).logicalSrcIdx = 1786;
	  section.data(1787).dtTransOffset = 9912;
	
	  ;% umich_2d_walking_P.EtherCATRxVar23_P7_kt
	  section.data(1788).logicalSrcIdx = 1787;
	  section.data(1788).dtTransOffset = 9914;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_Size_m
	  section.data(1789).logicalSrcIdx = 1788;
	  section.data(1789).dtTransOffset = 9915;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P1_j2
	  section.data(1790).logicalSrcIdx = 1789;
	  section.data(1790).dtTransOffset = 9917;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_Size_n
	  section.data(1791).logicalSrcIdx = 1790;
	  section.data(1791).dtTransOffset = 9985;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P2_iv
	  section.data(1792).logicalSrcIdx = 1791;
	  section.data(1792).dtTransOffset = 9987;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_Size_i
	  section.data(1793).logicalSrcIdx = 1792;
	  section.data(1793).dtTransOffset = 9988;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P3_d
	  section.data(1794).logicalSrcIdx = 1793;
	  section.data(1794).dtTransOffset = 9990;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_Size_p
	  section.data(1795).logicalSrcIdx = 1794;
	  section.data(1795).dtTransOffset = 9991;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P4_n
	  section.data(1796).logicalSrcIdx = 1795;
	  section.data(1796).dtTransOffset = 9993;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_Size_h
	  section.data(1797).logicalSrcIdx = 1796;
	  section.data(1797).dtTransOffset = 9994;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P5_g
	  section.data(1798).logicalSrcIdx = 1797;
	  section.data(1798).dtTransOffset = 9996;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_Size_a
	  section.data(1799).logicalSrcIdx = 1798;
	  section.data(1799).dtTransOffset = 9997;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P6_j
	  section.data(1800).logicalSrcIdx = 1799;
	  section.data(1800).dtTransOffset = 9999;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_Size_j
	  section.data(1801).logicalSrcIdx = 1800;
	  section.data(1801).dtTransOffset = 10000;
	
	  ;% umich_2d_walking_P.EtherCATRxVar21_P7_h
	  section.data(1802).logicalSrcIdx = 1801;
	  section.data(1802).dtTransOffset = 10002;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_Size_n
	  section.data(1803).logicalSrcIdx = 1802;
	  section.data(1803).dtTransOffset = 10003;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P1_n
	  section.data(1804).logicalSrcIdx = 1803;
	  section.data(1804).dtTransOffset = 10005;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_Size_f
	  section.data(1805).logicalSrcIdx = 1804;
	  section.data(1805).dtTransOffset = 10063;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P2_dk
	  section.data(1806).logicalSrcIdx = 1805;
	  section.data(1806).dtTransOffset = 10065;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_Size_h
	  section.data(1807).logicalSrcIdx = 1806;
	  section.data(1807).dtTransOffset = 10066;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P3_o
	  section.data(1808).logicalSrcIdx = 1807;
	  section.data(1808).dtTransOffset = 10068;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_Size_f
	  section.data(1809).logicalSrcIdx = 1808;
	  section.data(1809).dtTransOffset = 10069;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P4_j
	  section.data(1810).logicalSrcIdx = 1809;
	  section.data(1810).dtTransOffset = 10071;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_Size_k
	  section.data(1811).logicalSrcIdx = 1810;
	  section.data(1811).dtTransOffset = 10072;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P5_i
	  section.data(1812).logicalSrcIdx = 1811;
	  section.data(1812).dtTransOffset = 10074;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_Size_a
	  section.data(1813).logicalSrcIdx = 1812;
	  section.data(1813).dtTransOffset = 10075;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P6_j
	  section.data(1814).logicalSrcIdx = 1813;
	  section.data(1814).dtTransOffset = 10077;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_Size_a
	  section.data(1815).logicalSrcIdx = 1814;
	  section.data(1815).dtTransOffset = 10078;
	
	  ;% umich_2d_walking_P.EtherCATRxVar20_P7_p
	  section.data(1816).logicalSrcIdx = 1815;
	  section.data(1816).dtTransOffset = 10080;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_Size_o
	  section.data(1817).logicalSrcIdx = 1816;
	  section.data(1817).dtTransOffset = 10081;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P1_h
	  section.data(1818).logicalSrcIdx = 1817;
	  section.data(1818).dtTransOffset = 10083;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_Size_i
	  section.data(1819).logicalSrcIdx = 1818;
	  section.data(1819).dtTransOffset = 10144;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P2_e
	  section.data(1820).logicalSrcIdx = 1819;
	  section.data(1820).dtTransOffset = 10146;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_Size_i
	  section.data(1821).logicalSrcIdx = 1820;
	  section.data(1821).dtTransOffset = 10147;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P3_gf
	  section.data(1822).logicalSrcIdx = 1821;
	  section.data(1822).dtTransOffset = 10149;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_Size_l
	  section.data(1823).logicalSrcIdx = 1822;
	  section.data(1823).dtTransOffset = 10150;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P4_i
	  section.data(1824).logicalSrcIdx = 1823;
	  section.data(1824).dtTransOffset = 10152;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_Size_a
	  section.data(1825).logicalSrcIdx = 1824;
	  section.data(1825).dtTransOffset = 10153;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P5_p
	  section.data(1826).logicalSrcIdx = 1825;
	  section.data(1826).dtTransOffset = 10155;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_Size_o
	  section.data(1827).logicalSrcIdx = 1826;
	  section.data(1827).dtTransOffset = 10156;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P6_k
	  section.data(1828).logicalSrcIdx = 1827;
	  section.data(1828).dtTransOffset = 10158;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_Size_j
	  section.data(1829).logicalSrcIdx = 1828;
	  section.data(1829).dtTransOffset = 10159;
	
	  ;% umich_2d_walking_P.EtherCATRxVar22_P7_k
	  section.data(1830).logicalSrcIdx = 1829;
	  section.data(1830).dtTransOffset = 10161;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_Size_o
	  section.data(1831).logicalSrcIdx = 1830;
	  section.data(1831).dtTransOffset = 10162;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P1_a
	  section.data(1832).logicalSrcIdx = 1831;
	  section.data(1832).dtTransOffset = 10164;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_Size_mq
	  section.data(1833).logicalSrcIdx = 1832;
	  section.data(1833).dtTransOffset = 10227;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P2_b
	  section.data(1834).logicalSrcIdx = 1833;
	  section.data(1834).dtTransOffset = 10229;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_Size_ia
	  section.data(1835).logicalSrcIdx = 1834;
	  section.data(1835).dtTransOffset = 10230;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P3_n
	  section.data(1836).logicalSrcIdx = 1835;
	  section.data(1836).dtTransOffset = 10232;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_Size_n
	  section.data(1837).logicalSrcIdx = 1836;
	  section.data(1837).dtTransOffset = 10233;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P4_h
	  section.data(1838).logicalSrcIdx = 1837;
	  section.data(1838).dtTransOffset = 10235;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_Size_l3
	  section.data(1839).logicalSrcIdx = 1838;
	  section.data(1839).dtTransOffset = 10236;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P5_dv
	  section.data(1840).logicalSrcIdx = 1839;
	  section.data(1840).dtTransOffset = 10238;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_Size_h
	  section.data(1841).logicalSrcIdx = 1840;
	  section.data(1841).dtTransOffset = 10239;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P6_m
	  section.data(1842).logicalSrcIdx = 1841;
	  section.data(1842).dtTransOffset = 10241;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_Size_n
	  section.data(1843).logicalSrcIdx = 1842;
	  section.data(1843).dtTransOffset = 10242;
	
	  ;% umich_2d_walking_P.EtherCATRxVar18_P7_h
	  section.data(1844).logicalSrcIdx = 1843;
	  section.data(1844).dtTransOffset = 10244;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size_i
	  section.data(1845).logicalSrcIdx = 1844;
	  section.data(1845).dtTransOffset = 10245;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_h
	  section.data(1846).logicalSrcIdx = 1845;
	  section.data(1846).dtTransOffset = 10247;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size_f
	  section.data(1847).logicalSrcIdx = 1846;
	  section.data(1847).dtTransOffset = 10314;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_o
	  section.data(1848).logicalSrcIdx = 1847;
	  section.data(1848).dtTransOffset = 10316;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size_b
	  section.data(1849).logicalSrcIdx = 1848;
	  section.data(1849).dtTransOffset = 10317;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_g
	  section.data(1850).logicalSrcIdx = 1849;
	  section.data(1850).dtTransOffset = 10319;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size_h
	  section.data(1851).logicalSrcIdx = 1850;
	  section.data(1851).dtTransOffset = 10320;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_c
	  section.data(1852).logicalSrcIdx = 1851;
	  section.data(1852).dtTransOffset = 10322;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size_e
	  section.data(1853).logicalSrcIdx = 1852;
	  section.data(1853).dtTransOffset = 10323;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_o
	  section.data(1854).logicalSrcIdx = 1853;
	  section.data(1854).dtTransOffset = 10325;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size_f
	  section.data(1855).logicalSrcIdx = 1854;
	  section.data(1855).dtTransOffset = 10326;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_p
	  section.data(1856).logicalSrcIdx = 1855;
	  section.data(1856).dtTransOffset = 10328;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size_n
	  section.data(1857).logicalSrcIdx = 1856;
	  section.data(1857).dtTransOffset = 10329;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_g
	  section.data(1858).logicalSrcIdx = 1857;
	  section.data(1858).dtTransOffset = 10331;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_Size_b1
	  section.data(1859).logicalSrcIdx = 1858;
	  section.data(1859).dtTransOffset = 10332;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P1_a
	  section.data(1860).logicalSrcIdx = 1859;
	  section.data(1860).dtTransOffset = 10334;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_Size_k
	  section.data(1861).logicalSrcIdx = 1860;
	  section.data(1861).dtTransOffset = 10401;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P2_j
	  section.data(1862).logicalSrcIdx = 1861;
	  section.data(1862).dtTransOffset = 10403;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_Size_ns
	  section.data(1863).logicalSrcIdx = 1862;
	  section.data(1863).dtTransOffset = 10404;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P3_o
	  section.data(1864).logicalSrcIdx = 1863;
	  section.data(1864).dtTransOffset = 10406;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_Size_p
	  section.data(1865).logicalSrcIdx = 1864;
	  section.data(1865).dtTransOffset = 10407;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P4_o
	  section.data(1866).logicalSrcIdx = 1865;
	  section.data(1866).dtTransOffset = 10409;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_Size_lh
	  section.data(1867).logicalSrcIdx = 1866;
	  section.data(1867).dtTransOffset = 10410;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P5_j
	  section.data(1868).logicalSrcIdx = 1867;
	  section.data(1868).dtTransOffset = 10412;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_Size_b
	  section.data(1869).logicalSrcIdx = 1868;
	  section.data(1869).dtTransOffset = 10413;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P6_i
	  section.data(1870).logicalSrcIdx = 1869;
	  section.data(1870).dtTransOffset = 10415;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_Size_e
	  section.data(1871).logicalSrcIdx = 1870;
	  section.data(1871).dtTransOffset = 10416;
	
	  ;% umich_2d_walking_P.EtherCATRxVar19_P7_kt
	  section.data(1872).logicalSrcIdx = 1871;
	  section.data(1872).dtTransOffset = 10418;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_iw
	  section.data(1873).logicalSrcIdx = 1872;
	  section.data(1873).dtTransOffset = 10419;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_kc
	  section.data(1874).logicalSrcIdx = 1873;
	  section.data(1874).dtTransOffset = 10421;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_l
	  section.data(1875).logicalSrcIdx = 1874;
	  section.data(1875).dtTransOffset = 10497;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_j
	  section.data(1876).logicalSrcIdx = 1875;
	  section.data(1876).dtTransOffset = 10499;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_ly
	  section.data(1877).logicalSrcIdx = 1876;
	  section.data(1877).dtTransOffset = 10500;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_g
	  section.data(1878).logicalSrcIdx = 1877;
	  section.data(1878).dtTransOffset = 10502;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_i
	  section.data(1879).logicalSrcIdx = 1878;
	  section.data(1879).dtTransOffset = 10503;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_g
	  section.data(1880).logicalSrcIdx = 1879;
	  section.data(1880).dtTransOffset = 10505;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_f2
	  section.data(1881).logicalSrcIdx = 1880;
	  section.data(1881).dtTransOffset = 10506;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_nz
	  section.data(1882).logicalSrcIdx = 1881;
	  section.data(1882).dtTransOffset = 10508;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_m
	  section.data(1883).logicalSrcIdx = 1882;
	  section.data(1883).dtTransOffset = 10509;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_nh
	  section.data(1884).logicalSrcIdx = 1883;
	  section.data(1884).dtTransOffset = 10511;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_c
	  section.data(1885).logicalSrcIdx = 1884;
	  section.data(1885).dtTransOffset = 10512;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_lh
	  section.data(1886).logicalSrcIdx = 1885;
	  section.data(1886).dtTransOffset = 10514;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_Size_hb
	  section.data(1887).logicalSrcIdx = 1886;
	  section.data(1887).dtTransOffset = 10515;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P1_f
	  section.data(1888).logicalSrcIdx = 1887;
	  section.data(1888).dtTransOffset = 10517;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_Size_p
	  section.data(1889).logicalSrcIdx = 1888;
	  section.data(1889).dtTransOffset = 10587;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P2_n
	  section.data(1890).logicalSrcIdx = 1889;
	  section.data(1890).dtTransOffset = 10589;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_Size_f0
	  section.data(1891).logicalSrcIdx = 1890;
	  section.data(1891).dtTransOffset = 10590;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P3_o
	  section.data(1892).logicalSrcIdx = 1891;
	  section.data(1892).dtTransOffset = 10592;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_Size_b
	  section.data(1893).logicalSrcIdx = 1892;
	  section.data(1893).dtTransOffset = 10593;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P4_l
	  section.data(1894).logicalSrcIdx = 1893;
	  section.data(1894).dtTransOffset = 10595;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_Size_b
	  section.data(1895).logicalSrcIdx = 1894;
	  section.data(1895).dtTransOffset = 10596;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P5_pv
	  section.data(1896).logicalSrcIdx = 1895;
	  section.data(1896).dtTransOffset = 10598;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_Size_p
	  section.data(1897).logicalSrcIdx = 1896;
	  section.data(1897).dtTransOffset = 10599;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P6_d
	  section.data(1898).logicalSrcIdx = 1897;
	  section.data(1898).dtTransOffset = 10601;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_Size_d
	  section.data(1899).logicalSrcIdx = 1898;
	  section.data(1899).dtTransOffset = 10602;
	
	  ;% umich_2d_walking_P.EtherCATRxVar5_P7_b
	  section.data(1900).logicalSrcIdx = 1899;
	  section.data(1900).dtTransOffset = 10604;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_Size_f
	  section.data(1901).logicalSrcIdx = 1900;
	  section.data(1901).dtTransOffset = 10605;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P1_a
	  section.data(1902).logicalSrcIdx = 1901;
	  section.data(1902).dtTransOffset = 10607;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_Size_p
	  section.data(1903).logicalSrcIdx = 1902;
	  section.data(1903).dtTransOffset = 10681;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P2_l
	  section.data(1904).logicalSrcIdx = 1903;
	  section.data(1904).dtTransOffset = 10683;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_Size_l
	  section.data(1905).logicalSrcIdx = 1904;
	  section.data(1905).dtTransOffset = 10684;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P3_j
	  section.data(1906).logicalSrcIdx = 1905;
	  section.data(1906).dtTransOffset = 10686;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_Size_e
	  section.data(1907).logicalSrcIdx = 1906;
	  section.data(1907).dtTransOffset = 10687;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P4_b
	  section.data(1908).logicalSrcIdx = 1907;
	  section.data(1908).dtTransOffset = 10689;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_Size_j
	  section.data(1909).logicalSrcIdx = 1908;
	  section.data(1909).dtTransOffset = 10690;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P5_i
	  section.data(1910).logicalSrcIdx = 1909;
	  section.data(1910).dtTransOffset = 10692;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_Size_c
	  section.data(1911).logicalSrcIdx = 1910;
	  section.data(1911).dtTransOffset = 10693;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P6_k
	  section.data(1912).logicalSrcIdx = 1911;
	  section.data(1912).dtTransOffset = 10695;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_Size_h
	  section.data(1913).logicalSrcIdx = 1912;
	  section.data(1913).dtTransOffset = 10696;
	
	  ;% umich_2d_walking_P.EtherCATRxVar9_P7_k
	  section.data(1914).logicalSrcIdx = 1913;
	  section.data(1914).dtTransOffset = 10698;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_Size_jq
	  section.data(1915).logicalSrcIdx = 1914;
	  section.data(1915).dtTransOffset = 10699;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P1_i
	  section.data(1916).logicalSrcIdx = 1915;
	  section.data(1916).dtTransOffset = 10701;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_Size_e
	  section.data(1917).logicalSrcIdx = 1916;
	  section.data(1917).dtTransOffset = 10787;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P2_e
	  section.data(1918).logicalSrcIdx = 1917;
	  section.data(1918).dtTransOffset = 10789;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_Size_g
	  section.data(1919).logicalSrcIdx = 1918;
	  section.data(1919).dtTransOffset = 10790;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P3_nf
	  section.data(1920).logicalSrcIdx = 1919;
	  section.data(1920).dtTransOffset = 10792;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_Size_h
	  section.data(1921).logicalSrcIdx = 1920;
	  section.data(1921).dtTransOffset = 10793;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P4_n
	  section.data(1922).logicalSrcIdx = 1921;
	  section.data(1922).dtTransOffset = 10795;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_Size_h
	  section.data(1923).logicalSrcIdx = 1922;
	  section.data(1923).dtTransOffset = 10796;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P5_j
	  section.data(1924).logicalSrcIdx = 1923;
	  section.data(1924).dtTransOffset = 10798;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_Size_bk
	  section.data(1925).logicalSrcIdx = 1924;
	  section.data(1925).dtTransOffset = 10799;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P6_h
	  section.data(1926).logicalSrcIdx = 1925;
	  section.data(1926).dtTransOffset = 10801;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_Size_da
	  section.data(1927).logicalSrcIdx = 1926;
	  section.data(1927).dtTransOffset = 10802;
	
	  ;% umich_2d_walking_P.EtherCATRxVar1_P7_a
	  section.data(1928).logicalSrcIdx = 1927;
	  section.data(1928).dtTransOffset = 10804;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_Size_b
	  section.data(1929).logicalSrcIdx = 1928;
	  section.data(1929).dtTransOffset = 10805;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P1_e
	  section.data(1930).logicalSrcIdx = 1929;
	  section.data(1930).dtTransOffset = 10807;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_Size_a
	  section.data(1931).logicalSrcIdx = 1930;
	  section.data(1931).dtTransOffset = 10863;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P2_e
	  section.data(1932).logicalSrcIdx = 1931;
	  section.data(1932).dtTransOffset = 10865;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_Size_nk
	  section.data(1933).logicalSrcIdx = 1932;
	  section.data(1933).dtTransOffset = 10866;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P3_ep
	  section.data(1934).logicalSrcIdx = 1933;
	  section.data(1934).dtTransOffset = 10868;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_Size_j
	  section.data(1935).logicalSrcIdx = 1934;
	  section.data(1935).dtTransOffset = 10869;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P4_c
	  section.data(1936).logicalSrcIdx = 1935;
	  section.data(1936).dtTransOffset = 10871;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_Size_cy
	  section.data(1937).logicalSrcIdx = 1936;
	  section.data(1937).dtTransOffset = 10872;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P5_cc
	  section.data(1938).logicalSrcIdx = 1937;
	  section.data(1938).dtTransOffset = 10874;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_Size_n
	  section.data(1939).logicalSrcIdx = 1938;
	  section.data(1939).dtTransOffset = 10875;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P6_b
	  section.data(1940).logicalSrcIdx = 1939;
	  section.data(1940).dtTransOffset = 10877;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_Size_f
	  section.data(1941).logicalSrcIdx = 1940;
	  section.data(1941).dtTransOffset = 10878;
	
	  ;% umich_2d_walking_P.EtherCATRxVar11_P7_d
	  section.data(1942).logicalSrcIdx = 1941;
	  section.data(1942).dtTransOffset = 10880;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_Size_b
	  section.data(1943).logicalSrcIdx = 1942;
	  section.data(1943).dtTransOffset = 10881;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P1_b
	  section.data(1944).logicalSrcIdx = 1943;
	  section.data(1944).dtTransOffset = 10883;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_Size_j
	  section.data(1945).logicalSrcIdx = 1944;
	  section.data(1945).dtTransOffset = 10939;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P2_p
	  section.data(1946).logicalSrcIdx = 1945;
	  section.data(1946).dtTransOffset = 10941;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_Size_f
	  section.data(1947).logicalSrcIdx = 1946;
	  section.data(1947).dtTransOffset = 10942;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P3_fo
	  section.data(1948).logicalSrcIdx = 1947;
	  section.data(1948).dtTransOffset = 10944;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_Size_b
	  section.data(1949).logicalSrcIdx = 1948;
	  section.data(1949).dtTransOffset = 10945;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P4_l
	  section.data(1950).logicalSrcIdx = 1949;
	  section.data(1950).dtTransOffset = 10947;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_Size_i
	  section.data(1951).logicalSrcIdx = 1950;
	  section.data(1951).dtTransOffset = 10948;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P5_f
	  section.data(1952).logicalSrcIdx = 1951;
	  section.data(1952).dtTransOffset = 10950;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_Size_k
	  section.data(1953).logicalSrcIdx = 1952;
	  section.data(1953).dtTransOffset = 10951;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P6_m
	  section.data(1954).logicalSrcIdx = 1953;
	  section.data(1954).dtTransOffset = 10953;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_Size_o
	  section.data(1955).logicalSrcIdx = 1954;
	  section.data(1955).dtTransOffset = 10954;
	
	  ;% umich_2d_walking_P.EtherCATRxVar10_P7_fo
	  section.data(1956).logicalSrcIdx = 1955;
	  section.data(1956).dtTransOffset = 10956;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_Size_b
	  section.data(1957).logicalSrcIdx = 1956;
	  section.data(1957).dtTransOffset = 10957;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P1_bu
	  section.data(1958).logicalSrcIdx = 1957;
	  section.data(1958).dtTransOffset = 10959;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_Size_h
	  section.data(1959).logicalSrcIdx = 1958;
	  section.data(1959).dtTransOffset = 11020;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P2_h
	  section.data(1960).logicalSrcIdx = 1959;
	  section.data(1960).dtTransOffset = 11022;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_Size_l
	  section.data(1961).logicalSrcIdx = 1960;
	  section.data(1961).dtTransOffset = 11023;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P3_g
	  section.data(1962).logicalSrcIdx = 1961;
	  section.data(1962).dtTransOffset = 11025;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_Size_c
	  section.data(1963).logicalSrcIdx = 1962;
	  section.data(1963).dtTransOffset = 11026;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P4_cw
	  section.data(1964).logicalSrcIdx = 1963;
	  section.data(1964).dtTransOffset = 11028;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_Size_ij
	  section.data(1965).logicalSrcIdx = 1964;
	  section.data(1965).dtTransOffset = 11029;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P5_h
	  section.data(1966).logicalSrcIdx = 1965;
	  section.data(1966).dtTransOffset = 11031;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_Size_l
	  section.data(1967).logicalSrcIdx = 1966;
	  section.data(1967).dtTransOffset = 11032;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P6_l
	  section.data(1968).logicalSrcIdx = 1967;
	  section.data(1968).dtTransOffset = 11034;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_Size_b
	  section.data(1969).logicalSrcIdx = 1968;
	  section.data(1969).dtTransOffset = 11035;
	
	  ;% umich_2d_walking_P.EtherCATRxVar12_P7_a
	  section.data(1970).logicalSrcIdx = 1969;
	  section.data(1970).dtTransOffset = 11037;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_Size_lu
	  section.data(1971).logicalSrcIdx = 1970;
	  section.data(1971).dtTransOffset = 11038;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P1_nl
	  section.data(1972).logicalSrcIdx = 1971;
	  section.data(1972).dtTransOffset = 11040;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_Size_fn
	  section.data(1973).logicalSrcIdx = 1972;
	  section.data(1973).dtTransOffset = 11101;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P2_n3
	  section.data(1974).logicalSrcIdx = 1973;
	  section.data(1974).dtTransOffset = 11103;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_Size_i
	  section.data(1975).logicalSrcIdx = 1974;
	  section.data(1975).dtTransOffset = 11104;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P3_p
	  section.data(1976).logicalSrcIdx = 1975;
	  section.data(1976).dtTransOffset = 11106;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_Size_bx
	  section.data(1977).logicalSrcIdx = 1976;
	  section.data(1977).dtTransOffset = 11107;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P4_h
	  section.data(1978).logicalSrcIdx = 1977;
	  section.data(1978).dtTransOffset = 11109;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_Size_j
	  section.data(1979).logicalSrcIdx = 1978;
	  section.data(1979).dtTransOffset = 11110;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P5_k
	  section.data(1980).logicalSrcIdx = 1979;
	  section.data(1980).dtTransOffset = 11112;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_Size_l1
	  section.data(1981).logicalSrcIdx = 1980;
	  section.data(1981).dtTransOffset = 11113;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P6_f
	  section.data(1982).logicalSrcIdx = 1981;
	  section.data(1982).dtTransOffset = 11115;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_Size_l
	  section.data(1983).logicalSrcIdx = 1982;
	  section.data(1983).dtTransOffset = 11116;
	
	  ;% umich_2d_walking_P.EtherCATRxVar13_P7_k
	  section.data(1984).logicalSrcIdx = 1983;
	  section.data(1984).dtTransOffset = 11118;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_o
	  section.data(1985).logicalSrcIdx = 1984;
	  section.data(1985).dtTransOffset = 11119;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_i
	  section.data(1986).logicalSrcIdx = 1985;
	  section.data(1986).dtTransOffset = 11121;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_hq
	  section.data(1987).logicalSrcIdx = 1986;
	  section.data(1987).dtTransOffset = 11182;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_aq
	  section.data(1988).logicalSrcIdx = 1987;
	  section.data(1988).dtTransOffset = 11184;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_i
	  section.data(1989).logicalSrcIdx = 1988;
	  section.data(1989).dtTransOffset = 11185;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_o
	  section.data(1990).logicalSrcIdx = 1989;
	  section.data(1990).dtTransOffset = 11187;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_p
	  section.data(1991).logicalSrcIdx = 1990;
	  section.data(1991).dtTransOffset = 11188;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_l
	  section.data(1992).logicalSrcIdx = 1991;
	  section.data(1992).dtTransOffset = 11190;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_m
	  section.data(1993).logicalSrcIdx = 1992;
	  section.data(1993).dtTransOffset = 11191;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_fi
	  section.data(1994).logicalSrcIdx = 1993;
	  section.data(1994).dtTransOffset = 11193;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_h
	  section.data(1995).logicalSrcIdx = 1994;
	  section.data(1995).dtTransOffset = 11194;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_g
	  section.data(1996).logicalSrcIdx = 1995;
	  section.data(1996).dtTransOffset = 11196;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_i
	  section.data(1997).logicalSrcIdx = 1996;
	  section.data(1997).dtTransOffset = 11197;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_d
	  section.data(1998).logicalSrcIdx = 1997;
	  section.data(1998).dtTransOffset = 11199;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_Size_a
	  section.data(1999).logicalSrcIdx = 1998;
	  section.data(1999).dtTransOffset = 11200;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P1_p3
	  section.data(2000).logicalSrcIdx = 1999;
	  section.data(2000).dtTransOffset = 11202;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_Size_k
	  section.data(2001).logicalSrcIdx = 2000;
	  section.data(2001).dtTransOffset = 11278;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P2_nv
	  section.data(2002).logicalSrcIdx = 2001;
	  section.data(2002).dtTransOffset = 11280;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_Size_lg
	  section.data(2003).logicalSrcIdx = 2002;
	  section.data(2003).dtTransOffset = 11281;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P3_fq
	  section.data(2004).logicalSrcIdx = 2003;
	  section.data(2004).dtTransOffset = 11283;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_Size_p
	  section.data(2005).logicalSrcIdx = 2004;
	  section.data(2005).dtTransOffset = 11284;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P4_i
	  section.data(2006).logicalSrcIdx = 2005;
	  section.data(2006).dtTransOffset = 11286;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_Size_fx
	  section.data(2007).logicalSrcIdx = 2006;
	  section.data(2007).dtTransOffset = 11287;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P5_c
	  section.data(2008).logicalSrcIdx = 2007;
	  section.data(2008).dtTransOffset = 11289;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_Size_a
	  section.data(2009).logicalSrcIdx = 2008;
	  section.data(2009).dtTransOffset = 11290;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P6_h
	  section.data(2010).logicalSrcIdx = 2009;
	  section.data(2010).dtTransOffset = 11292;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_Size_nh
	  section.data(2011).logicalSrcIdx = 2010;
	  section.data(2011).dtTransOffset = 11293;
	
	  ;% umich_2d_walking_P.EtherCATRxVar_P7_p
	  section.data(2012).logicalSrcIdx = 2011;
	  section.data(2012).dtTransOffset = 11295;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_Size_kr
	  section.data(2013).logicalSrcIdx = 2012;
	  section.data(2013).dtTransOffset = 11296;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P1_g
	  section.data(2014).logicalSrcIdx = 2013;
	  section.data(2014).dtTransOffset = 11298;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_Size_m
	  section.data(2015).logicalSrcIdx = 2014;
	  section.data(2015).dtTransOffset = 11359;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P2_l
	  section.data(2016).logicalSrcIdx = 2015;
	  section.data(2016).dtTransOffset = 11361;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_Size_l
	  section.data(2017).logicalSrcIdx = 2016;
	  section.data(2017).dtTransOffset = 11362;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P3_d3
	  section.data(2018).logicalSrcIdx = 2017;
	  section.data(2018).dtTransOffset = 11364;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_Size_d
	  section.data(2019).logicalSrcIdx = 2018;
	  section.data(2019).dtTransOffset = 11365;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P4_hz
	  section.data(2020).logicalSrcIdx = 2019;
	  section.data(2020).dtTransOffset = 11367;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_Size_c
	  section.data(2021).logicalSrcIdx = 2020;
	  section.data(2021).dtTransOffset = 11368;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P5_dr
	  section.data(2022).logicalSrcIdx = 2021;
	  section.data(2022).dtTransOffset = 11370;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_Size_o
	  section.data(2023).logicalSrcIdx = 2022;
	  section.data(2023).dtTransOffset = 11371;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P6_c
	  section.data(2024).logicalSrcIdx = 2023;
	  section.data(2024).dtTransOffset = 11373;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_Size_px
	  section.data(2025).logicalSrcIdx = 2024;
	  section.data(2025).dtTransOffset = 11374;
	
	  ;% umich_2d_walking_P.EtherCATRxVar15_P7_j
	  section.data(2026).logicalSrcIdx = 2025;
	  section.data(2026).dtTransOffset = 11376;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_Size_k
	  section.data(2027).logicalSrcIdx = 2026;
	  section.data(2027).dtTransOffset = 11377;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P1_g
	  section.data(2028).logicalSrcIdx = 2027;
	  section.data(2028).dtTransOffset = 11379;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_Size_p
	  section.data(2029).logicalSrcIdx = 2028;
	  section.data(2029).dtTransOffset = 11440;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P2_p
	  section.data(2030).logicalSrcIdx = 2029;
	  section.data(2030).dtTransOffset = 11442;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_Size_i
	  section.data(2031).logicalSrcIdx = 2030;
	  section.data(2031).dtTransOffset = 11443;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P3_j
	  section.data(2032).logicalSrcIdx = 2031;
	  section.data(2032).dtTransOffset = 11445;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_Size_p
	  section.data(2033).logicalSrcIdx = 2032;
	  section.data(2033).dtTransOffset = 11446;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P4_mu
	  section.data(2034).logicalSrcIdx = 2033;
	  section.data(2034).dtTransOffset = 11448;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_Size_c
	  section.data(2035).logicalSrcIdx = 2034;
	  section.data(2035).dtTransOffset = 11449;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P5_b
	  section.data(2036).logicalSrcIdx = 2035;
	  section.data(2036).dtTransOffset = 11451;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_Size_j
	  section.data(2037).logicalSrcIdx = 2036;
	  section.data(2037).dtTransOffset = 11452;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P6_f
	  section.data(2038).logicalSrcIdx = 2037;
	  section.data(2038).dtTransOffset = 11454;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_Size_i
	  section.data(2039).logicalSrcIdx = 2038;
	  section.data(2039).dtTransOffset = 11455;
	
	  ;% umich_2d_walking_P.EtherCATRxVar16_P7_kc
	  section.data(2040).logicalSrcIdx = 2039;
	  section.data(2040).dtTransOffset = 11457;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_Size_g
	  section.data(2041).logicalSrcIdx = 2040;
	  section.data(2041).dtTransOffset = 11458;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P1_f
	  section.data(2042).logicalSrcIdx = 2041;
	  section.data(2042).dtTransOffset = 11460;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_Size_ix
	  section.data(2043).logicalSrcIdx = 2042;
	  section.data(2043).dtTransOffset = 11521;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P2_e
	  section.data(2044).logicalSrcIdx = 2043;
	  section.data(2044).dtTransOffset = 11523;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_Size_bg
	  section.data(2045).logicalSrcIdx = 2044;
	  section.data(2045).dtTransOffset = 11524;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P3_h
	  section.data(2046).logicalSrcIdx = 2045;
	  section.data(2046).dtTransOffset = 11526;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_Size_l
	  section.data(2047).logicalSrcIdx = 2046;
	  section.data(2047).dtTransOffset = 11527;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P4_o
	  section.data(2048).logicalSrcIdx = 2047;
	  section.data(2048).dtTransOffset = 11529;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_Size_l
	  section.data(2049).logicalSrcIdx = 2048;
	  section.data(2049).dtTransOffset = 11530;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P5_g
	  section.data(2050).logicalSrcIdx = 2049;
	  section.data(2050).dtTransOffset = 11532;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_Size_d
	  section.data(2051).logicalSrcIdx = 2050;
	  section.data(2051).dtTransOffset = 11533;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P6_o
	  section.data(2052).logicalSrcIdx = 2051;
	  section.data(2052).dtTransOffset = 11535;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_Size_ao
	  section.data(2053).logicalSrcIdx = 2052;
	  section.data(2053).dtTransOffset = 11536;
	
	  ;% umich_2d_walking_P.EtherCATRxVar17_P7_p
	  section.data(2054).logicalSrcIdx = 2053;
	  section.data(2054).dtTransOffset = 11538;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_Size_m
	  section.data(2055).logicalSrcIdx = 2054;
	  section.data(2055).dtTransOffset = 11539;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P1_l
	  section.data(2056).logicalSrcIdx = 2055;
	  section.data(2056).dtTransOffset = 11541;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_Size_p
	  section.data(2057).logicalSrcIdx = 2056;
	  section.data(2057).dtTransOffset = 11617;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P2_n
	  section.data(2058).logicalSrcIdx = 2057;
	  section.data(2058).dtTransOffset = 11619;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_Size_i
	  section.data(2059).logicalSrcIdx = 2058;
	  section.data(2059).dtTransOffset = 11620;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P3_kg
	  section.data(2060).logicalSrcIdx = 2059;
	  section.data(2060).dtTransOffset = 11622;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_Size_h
	  section.data(2061).logicalSrcIdx = 2060;
	  section.data(2061).dtTransOffset = 11623;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P4_g
	  section.data(2062).logicalSrcIdx = 2061;
	  section.data(2062).dtTransOffset = 11625;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_Size_p
	  section.data(2063).logicalSrcIdx = 2062;
	  section.data(2063).dtTransOffset = 11626;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P5_m
	  section.data(2064).logicalSrcIdx = 2063;
	  section.data(2064).dtTransOffset = 11628;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_Size_jq
	  section.data(2065).logicalSrcIdx = 2064;
	  section.data(2065).dtTransOffset = 11629;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P6_lt
	  section.data(2066).logicalSrcIdx = 2065;
	  section.data(2066).dtTransOffset = 11631;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_Size_p
	  section.data(2067).logicalSrcIdx = 2066;
	  section.data(2067).dtTransOffset = 11632;
	
	  ;% umich_2d_walking_P.EtherCATRxVar6_P7_cc
	  section.data(2068).logicalSrcIdx = 2067;
	  section.data(2068).dtTransOffset = 11634;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_Size_g2
	  section.data(2069).logicalSrcIdx = 2068;
	  section.data(2069).dtTransOffset = 11635;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P1_o
	  section.data(2070).logicalSrcIdx = 2069;
	  section.data(2070).dtTransOffset = 11637;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_Size_b
	  section.data(2071).logicalSrcIdx = 2070;
	  section.data(2071).dtTransOffset = 11713;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P2_pm
	  section.data(2072).logicalSrcIdx = 2071;
	  section.data(2072).dtTransOffset = 11715;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_Size_e
	  section.data(2073).logicalSrcIdx = 2072;
	  section.data(2073).dtTransOffset = 11716;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P3_k
	  section.data(2074).logicalSrcIdx = 2073;
	  section.data(2074).dtTransOffset = 11718;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_Size_l
	  section.data(2075).logicalSrcIdx = 2074;
	  section.data(2075).dtTransOffset = 11719;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P4_p
	  section.data(2076).logicalSrcIdx = 2075;
	  section.data(2076).dtTransOffset = 11721;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_Size_l
	  section.data(2077).logicalSrcIdx = 2076;
	  section.data(2077).dtTransOffset = 11722;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P5_h
	  section.data(2078).logicalSrcIdx = 2077;
	  section.data(2078).dtTransOffset = 11724;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_Size_e
	  section.data(2079).logicalSrcIdx = 2078;
	  section.data(2079).dtTransOffset = 11725;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P6_g
	  section.data(2080).logicalSrcIdx = 2079;
	  section.data(2080).dtTransOffset = 11727;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_Size_i
	  section.data(2081).logicalSrcIdx = 2080;
	  section.data(2081).dtTransOffset = 11728;
	
	  ;% umich_2d_walking_P.EtherCATRxVar7_P7_kn
	  section.data(2082).logicalSrcIdx = 2081;
	  section.data(2082).dtTransOffset = 11730;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_Size_p
	  section.data(2083).logicalSrcIdx = 2082;
	  section.data(2083).dtTransOffset = 11731;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P1_c
	  section.data(2084).logicalSrcIdx = 2083;
	  section.data(2084).dtTransOffset = 11733;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_Size_a
	  section.data(2085).logicalSrcIdx = 2084;
	  section.data(2085).dtTransOffset = 11793;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P2_h
	  section.data(2086).logicalSrcIdx = 2085;
	  section.data(2086).dtTransOffset = 11795;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_Size_a
	  section.data(2087).logicalSrcIdx = 2086;
	  section.data(2087).dtTransOffset = 11796;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P3_l
	  section.data(2088).logicalSrcIdx = 2087;
	  section.data(2088).dtTransOffset = 11798;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_Size_m
	  section.data(2089).logicalSrcIdx = 2088;
	  section.data(2089).dtTransOffset = 11799;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P4_bm
	  section.data(2090).logicalSrcIdx = 2089;
	  section.data(2090).dtTransOffset = 11801;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_Size_h
	  section.data(2091).logicalSrcIdx = 2090;
	  section.data(2091).dtTransOffset = 11802;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P5_jj
	  section.data(2092).logicalSrcIdx = 2091;
	  section.data(2092).dtTransOffset = 11804;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_Size_m
	  section.data(2093).logicalSrcIdx = 2092;
	  section.data(2093).dtTransOffset = 11805;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P6_h
	  section.data(2094).logicalSrcIdx = 2093;
	  section.data(2094).dtTransOffset = 11807;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_Size_pz
	  section.data(2095).logicalSrcIdx = 2094;
	  section.data(2095).dtTransOffset = 11808;
	
	  ;% umich_2d_walking_P.EtherCATRxVar2_P7_a
	  section.data(2096).logicalSrcIdx = 2095;
	  section.data(2096).dtTransOffset = 11810;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_Size_cr
	  section.data(2097).logicalSrcIdx = 2096;
	  section.data(2097).dtTransOffset = 11811;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P1_cp
	  section.data(2098).logicalSrcIdx = 2097;
	  section.data(2098).dtTransOffset = 11813;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_Size_f
	  section.data(2099).logicalSrcIdx = 2098;
	  section.data(2099).dtTransOffset = 11873;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P2_hz
	  section.data(2100).logicalSrcIdx = 2099;
	  section.data(2100).dtTransOffset = 11875;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_Size_o
	  section.data(2101).logicalSrcIdx = 2100;
	  section.data(2101).dtTransOffset = 11876;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P3_m
	  section.data(2102).logicalSrcIdx = 2101;
	  section.data(2102).dtTransOffset = 11878;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_Size_a
	  section.data(2103).logicalSrcIdx = 2102;
	  section.data(2103).dtTransOffset = 11879;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P4_l
	  section.data(2104).logicalSrcIdx = 2103;
	  section.data(2104).dtTransOffset = 11881;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_Size_k
	  section.data(2105).logicalSrcIdx = 2104;
	  section.data(2105).dtTransOffset = 11882;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P5_m
	  section.data(2106).logicalSrcIdx = 2105;
	  section.data(2106).dtTransOffset = 11884;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_Size_l
	  section.data(2107).logicalSrcIdx = 2106;
	  section.data(2107).dtTransOffset = 11885;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P6_b
	  section.data(2108).logicalSrcIdx = 2107;
	  section.data(2108).dtTransOffset = 11887;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_Size_k
	  section.data(2109).logicalSrcIdx = 2108;
	  section.data(2109).dtTransOffset = 11888;
	
	  ;% umich_2d_walking_P.EtherCATRxVar3_P7_i
	  section.data(2110).logicalSrcIdx = 2109;
	  section.data(2110).dtTransOffset = 11890;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_Size_k
	  section.data(2111).logicalSrcIdx = 2110;
	  section.data(2111).dtTransOffset = 11891;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P1_l
	  section.data(2112).logicalSrcIdx = 2111;
	  section.data(2112).dtTransOffset = 11893;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_Size_hd
	  section.data(2113).logicalSrcIdx = 2112;
	  section.data(2113).dtTransOffset = 11954;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P2_h
	  section.data(2114).logicalSrcIdx = 2113;
	  section.data(2114).dtTransOffset = 11956;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_Size_ml
	  section.data(2115).logicalSrcIdx = 2114;
	  section.data(2115).dtTransOffset = 11957;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P3_j
	  section.data(2116).logicalSrcIdx = 2115;
	  section.data(2116).dtTransOffset = 11959;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_Size_e
	  section.data(2117).logicalSrcIdx = 2116;
	  section.data(2117).dtTransOffset = 11960;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P4_e
	  section.data(2118).logicalSrcIdx = 2117;
	  section.data(2118).dtTransOffset = 11962;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_Size_bm
	  section.data(2119).logicalSrcIdx = 2118;
	  section.data(2119).dtTransOffset = 11963;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P5_o
	  section.data(2120).logicalSrcIdx = 2119;
	  section.data(2120).dtTransOffset = 11965;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_Size_ge
	  section.data(2121).logicalSrcIdx = 2120;
	  section.data(2121).dtTransOffset = 11966;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P6_pu
	  section.data(2122).logicalSrcIdx = 2121;
	  section.data(2122).dtTransOffset = 11968;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_Size_lq
	  section.data(2123).logicalSrcIdx = 2122;
	  section.data(2123).dtTransOffset = 11969;
	
	  ;% umich_2d_walking_P.EtherCATRxVar14_P7_n
	  section.data(2124).logicalSrcIdx = 2123;
	  section.data(2124).dtTransOffset = 11971;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_h
	  section.data(2125).logicalSrcIdx = 2124;
	  section.data(2125).dtTransOffset = 11972;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_l
	  section.data(2126).logicalSrcIdx = 2125;
	  section.data(2126).dtTransOffset = 11974;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_d
	  section.data(2127).logicalSrcIdx = 2126;
	  section.data(2127).dtTransOffset = 12035;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_o
	  section.data(2128).logicalSrcIdx = 2127;
	  section.data(2128).dtTransOffset = 12037;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_k
	  section.data(2129).logicalSrcIdx = 2128;
	  section.data(2129).dtTransOffset = 12038;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_m
	  section.data(2130).logicalSrcIdx = 2129;
	  section.data(2130).dtTransOffset = 12040;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_g
	  section.data(2131).logicalSrcIdx = 2130;
	  section.data(2131).dtTransOffset = 12041;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_k
	  section.data(2132).logicalSrcIdx = 2131;
	  section.data(2132).dtTransOffset = 12043;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_g
	  section.data(2133).logicalSrcIdx = 2132;
	  section.data(2133).dtTransOffset = 12044;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_a
	  section.data(2134).logicalSrcIdx = 2133;
	  section.data(2134).dtTransOffset = 12046;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_f
	  section.data(2135).logicalSrcIdx = 2134;
	  section.data(2135).dtTransOffset = 12047;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_c
	  section.data(2136).logicalSrcIdx = 2135;
	  section.data(2136).dtTransOffset = 12049;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_d
	  section.data(2137).logicalSrcIdx = 2136;
	  section.data(2137).dtTransOffset = 12050;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_f
	  section.data(2138).logicalSrcIdx = 2137;
	  section.data(2138).dtTransOffset = 12052;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_l
	  section.data(2139).logicalSrcIdx = 2138;
	  section.data(2139).dtTransOffset = 12053;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_h
	  section.data(2140).logicalSrcIdx = 2139;
	  section.data(2140).dtTransOffset = 12055;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_h
	  section.data(2141).logicalSrcIdx = 2140;
	  section.data(2141).dtTransOffset = 12116;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_b
	  section.data(2142).logicalSrcIdx = 2141;
	  section.data(2142).dtTransOffset = 12118;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_k
	  section.data(2143).logicalSrcIdx = 2142;
	  section.data(2143).dtTransOffset = 12119;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_o
	  section.data(2144).logicalSrcIdx = 2143;
	  section.data(2144).dtTransOffset = 12121;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_a
	  section.data(2145).logicalSrcIdx = 2144;
	  section.data(2145).dtTransOffset = 12122;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_p
	  section.data(2146).logicalSrcIdx = 2145;
	  section.data(2146).dtTransOffset = 12124;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_h
	  section.data(2147).logicalSrcIdx = 2146;
	  section.data(2147).dtTransOffset = 12125;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_d
	  section.data(2148).logicalSrcIdx = 2147;
	  section.data(2148).dtTransOffset = 12127;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_o
	  section.data(2149).logicalSrcIdx = 2148;
	  section.data(2149).dtTransOffset = 12128;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_d
	  section.data(2150).logicalSrcIdx = 2149;
	  section.data(2150).dtTransOffset = 12130;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_i
	  section.data(2151).logicalSrcIdx = 2150;
	  section.data(2151).dtTransOffset = 12131;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_n
	  section.data(2152).logicalSrcIdx = 2151;
	  section.data(2152).dtTransOffset = 12133;
	
	  ;% umich_2d_walking_P.Constant10_Value_c
	  section.data(2153).logicalSrcIdx = 2152;
	  section.data(2153).dtTransOffset = 12134;
	
	  ;% umich_2d_walking_P.Constant11_Value_d
	  section.data(2154).logicalSrcIdx = 2153;
	  section.data(2154).dtTransOffset = 12135;
	
	  ;% umich_2d_walking_P.SagittalMotorSaturation_UpperSa
	  section.data(2155).logicalSrcIdx = 2154;
	  section.data(2155).dtTransOffset = 12136;
	
	  ;% umich_2d_walking_P.SagittalMotorSaturation_LowerSa
	  section.data(2156).logicalSrcIdx = 2155;
	  section.data(2156).dtTransOffset = 12137;
	
	  ;% umich_2d_walking_P.LegMotorSaturation_UpperSat
	  section.data(2157).logicalSrcIdx = 2156;
	  section.data(2157).dtTransOffset = 12138;
	
	  ;% umich_2d_walking_P.LegMotorSaturation_LowerSat
	  section.data(2158).logicalSrcIdx = 2157;
	  section.data(2158).dtTransOffset = 12139;
	
	  ;% umich_2d_walking_P.Constant12_Value_f
	  section.data(2159).logicalSrcIdx = 2158;
	  section.data(2159).dtTransOffset = 12140;
	
	  ;% umich_2d_walking_P.Constant13_Value
	  section.data(2160).logicalSrcIdx = 2159;
	  section.data(2160).dtTransOffset = 12141;
	
	  ;% umich_2d_walking_P.LateralMotorSaturation_UpperSat
	  section.data(2161).logicalSrcIdx = 2160;
	  section.data(2161).dtTransOffset = 12142;
	
	  ;% umich_2d_walking_P.LateralMotorSaturation_LowerSat
	  section.data(2162).logicalSrcIdx = 2161;
	  section.data(2162).dtTransOffset = 12143;
	
	  ;% umich_2d_walking_P.HipMotorSaturation_UpperSat
	  section.data(2163).logicalSrcIdx = 2162;
	  section.data(2163).dtTransOffset = 12144;
	
	  ;% umich_2d_walking_P.HipMotorSaturation_LowerSat
	  section.data(2164).logicalSrcIdx = 2163;
	  section.data(2164).dtTransOffset = 12145;
	
	  ;% umich_2d_walking_P.Constant_Value_pk
	  section.data(2165).logicalSrcIdx = 2164;
	  section.data(2165).dtTransOffset = 12146;
	
	  ;% umich_2d_walking_P.Constant1_Value_b
	  section.data(2166).logicalSrcIdx = 2165;
	  section.data(2166).dtTransOffset = 12147;
	
	  ;% umich_2d_walking_P.Constant2_Value_ni
	  section.data(2167).logicalSrcIdx = 2166;
	  section.data(2167).dtTransOffset = 12148;
	
	  ;% umich_2d_walking_P.Constant3_Value_a
	  section.data(2168).logicalSrcIdx = 2167;
	  section.data(2168).dtTransOffset = 12149;
	
	  ;% umich_2d_walking_P.Constant5_Value_bx
	  section.data(2169).logicalSrcIdx = 2168;
	  section.data(2169).dtTransOffset = 12150;
	
	  ;% umich_2d_walking_P.Constant4_Value_p
	  section.data(2170).logicalSrcIdx = 2169;
	  section.data(2170).dtTransOffset = 12151;
	
	  ;% umich_2d_walking_P.Constant6_Value_b
	  section.data(2171).logicalSrcIdx = 2170;
	  section.data(2171).dtTransOffset = 12152;
	
	  ;% umich_2d_walking_P.Constant7_Value_n
	  section.data(2172).logicalSrcIdx = 2171;
	  section.data(2172).dtTransOffset = 12153;
	
	  ;% umich_2d_walking_P.Constant9_Value_o
	  section.data(2173).logicalSrcIdx = 2172;
	  section.data(2173).dtTransOffset = 12154;
	
	  ;% umich_2d_walking_P.Constant8_Value_c
	  section.data(2174).logicalSrcIdx = 2173;
	  section.data(2174).dtTransOffset = 12155;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size
	  section.data(2175).logicalSrcIdx = 2174;
	  section.data(2175).dtTransOffset = 12156;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1
	  section.data(2176).logicalSrcIdx = 2175;
	  section.data(2176).dtTransOffset = 12158;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size
	  section.data(2177).logicalSrcIdx = 2176;
	  section.data(2177).dtTransOffset = 12225;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2
	  section.data(2178).logicalSrcIdx = 2177;
	  section.data(2178).dtTransOffset = 12227;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size
	  section.data(2179).logicalSrcIdx = 2178;
	  section.data(2179).dtTransOffset = 12228;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3
	  section.data(2180).logicalSrcIdx = 2179;
	  section.data(2180).dtTransOffset = 12230;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size
	  section.data(2181).logicalSrcIdx = 2180;
	  section.data(2181).dtTransOffset = 12231;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4
	  section.data(2182).logicalSrcIdx = 2181;
	  section.data(2182).dtTransOffset = 12233;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size
	  section.data(2183).logicalSrcIdx = 2182;
	  section.data(2183).dtTransOffset = 12234;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5
	  section.data(2184).logicalSrcIdx = 2183;
	  section.data(2184).dtTransOffset = 12236;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size
	  section.data(2185).logicalSrcIdx = 2184;
	  section.data(2185).dtTransOffset = 12237;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6
	  section.data(2186).logicalSrcIdx = 2185;
	  section.data(2186).dtTransOffset = 12239;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size
	  section.data(2187).logicalSrcIdx = 2186;
	  section.data(2187).dtTransOffset = 12240;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7
	  section.data(2188).logicalSrcIdx = 2187;
	  section.data(2188).dtTransOffset = 12242;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_k
	  section.data(2189).logicalSrcIdx = 2188;
	  section.data(2189).dtTransOffset = 12243;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_a
	  section.data(2190).logicalSrcIdx = 2189;
	  section.data(2190).dtTransOffset = 12245;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_j
	  section.data(2191).logicalSrcIdx = 2190;
	  section.data(2191).dtTransOffset = 12306;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_ox
	  section.data(2192).logicalSrcIdx = 2191;
	  section.data(2192).dtTransOffset = 12308;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_j
	  section.data(2193).logicalSrcIdx = 2192;
	  section.data(2193).dtTransOffset = 12309;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_a
	  section.data(2194).logicalSrcIdx = 2193;
	  section.data(2194).dtTransOffset = 12311;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_gp
	  section.data(2195).logicalSrcIdx = 2194;
	  section.data(2195).dtTransOffset = 12312;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_e
	  section.data(2196).logicalSrcIdx = 2195;
	  section.data(2196).dtTransOffset = 12314;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_i
	  section.data(2197).logicalSrcIdx = 2196;
	  section.data(2197).dtTransOffset = 12315;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_i
	  section.data(2198).logicalSrcIdx = 2197;
	  section.data(2198).dtTransOffset = 12317;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_i
	  section.data(2199).logicalSrcIdx = 2198;
	  section.data(2199).dtTransOffset = 12318;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_j
	  section.data(2200).logicalSrcIdx = 2199;
	  section.data(2200).dtTransOffset = 12320;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_h
	  section.data(2201).logicalSrcIdx = 2200;
	  section.data(2201).dtTransOffset = 12321;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_a
	  section.data(2202).logicalSrcIdx = 2201;
	  section.data(2202).dtTransOffset = 12323;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_k
	  section.data(2203).logicalSrcIdx = 2202;
	  section.data(2203).dtTransOffset = 12324;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_d
	  section.data(2204).logicalSrcIdx = 2203;
	  section.data(2204).dtTransOffset = 12326;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_k
	  section.data(2205).logicalSrcIdx = 2204;
	  section.data(2205).dtTransOffset = 12387;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_g
	  section.data(2206).logicalSrcIdx = 2205;
	  section.data(2206).dtTransOffset = 12389;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_o
	  section.data(2207).logicalSrcIdx = 2206;
	  section.data(2207).dtTransOffset = 12390;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_h
	  section.data(2208).logicalSrcIdx = 2207;
	  section.data(2208).dtTransOffset = 12392;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_i
	  section.data(2209).logicalSrcIdx = 2208;
	  section.data(2209).dtTransOffset = 12393;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_b
	  section.data(2210).logicalSrcIdx = 2209;
	  section.data(2210).dtTransOffset = 12395;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_n
	  section.data(2211).logicalSrcIdx = 2210;
	  section.data(2211).dtTransOffset = 12396;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_j
	  section.data(2212).logicalSrcIdx = 2211;
	  section.data(2212).dtTransOffset = 12398;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_n
	  section.data(2213).logicalSrcIdx = 2212;
	  section.data(2213).dtTransOffset = 12399;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_f
	  section.data(2214).logicalSrcIdx = 2213;
	  section.data(2214).dtTransOffset = 12401;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_e
	  section.data(2215).logicalSrcIdx = 2214;
	  section.data(2215).dtTransOffset = 12402;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_l
	  section.data(2216).logicalSrcIdx = 2215;
	  section.data(2216).dtTransOffset = 12404;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size_h
	  section.data(2217).logicalSrcIdx = 2216;
	  section.data(2217).dtTransOffset = 12405;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_d
	  section.data(2218).logicalSrcIdx = 2217;
	  section.data(2218).dtTransOffset = 12407;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size_e
	  section.data(2219).logicalSrcIdx = 2218;
	  section.data(2219).dtTransOffset = 12474;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_o
	  section.data(2220).logicalSrcIdx = 2219;
	  section.data(2220).dtTransOffset = 12476;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size_k
	  section.data(2221).logicalSrcIdx = 2220;
	  section.data(2221).dtTransOffset = 12477;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_p
	  section.data(2222).logicalSrcIdx = 2221;
	  section.data(2222).dtTransOffset = 12479;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size_n
	  section.data(2223).logicalSrcIdx = 2222;
	  section.data(2223).dtTransOffset = 12480;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_g
	  section.data(2224).logicalSrcIdx = 2223;
	  section.data(2224).dtTransOffset = 12482;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size_j
	  section.data(2225).logicalSrcIdx = 2224;
	  section.data(2225).dtTransOffset = 12483;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_c
	  section.data(2226).logicalSrcIdx = 2225;
	  section.data(2226).dtTransOffset = 12485;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size_e
	  section.data(2227).logicalSrcIdx = 2226;
	  section.data(2227).dtTransOffset = 12486;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_c
	  section.data(2228).logicalSrcIdx = 2227;
	  section.data(2228).dtTransOffset = 12488;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size_j
	  section.data(2229).logicalSrcIdx = 2228;
	  section.data(2229).dtTransOffset = 12489;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_b
	  section.data(2230).logicalSrcIdx = 2229;
	  section.data(2230).dtTransOffset = 12491;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_e
	  section.data(2231).logicalSrcIdx = 2230;
	  section.data(2231).dtTransOffset = 12492;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_k
	  section.data(2232).logicalSrcIdx = 2231;
	  section.data(2232).dtTransOffset = 12494;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_m
	  section.data(2233).logicalSrcIdx = 2232;
	  section.data(2233).dtTransOffset = 12555;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_l
	  section.data(2234).logicalSrcIdx = 2233;
	  section.data(2234).dtTransOffset = 12557;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_f
	  section.data(2235).logicalSrcIdx = 2234;
	  section.data(2235).dtTransOffset = 12558;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_k
	  section.data(2236).logicalSrcIdx = 2235;
	  section.data(2236).dtTransOffset = 12560;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_n
	  section.data(2237).logicalSrcIdx = 2236;
	  section.data(2237).dtTransOffset = 12561;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_l
	  section.data(2238).logicalSrcIdx = 2237;
	  section.data(2238).dtTransOffset = 12563;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_p
	  section.data(2239).logicalSrcIdx = 2238;
	  section.data(2239).dtTransOffset = 12564;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_k
	  section.data(2240).logicalSrcIdx = 2239;
	  section.data(2240).dtTransOffset = 12566;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_j
	  section.data(2241).logicalSrcIdx = 2240;
	  section.data(2241).dtTransOffset = 12567;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_i
	  section.data(2242).logicalSrcIdx = 2241;
	  section.data(2242).dtTransOffset = 12569;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_p
	  section.data(2243).logicalSrcIdx = 2242;
	  section.data(2243).dtTransOffset = 12570;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_g
	  section.data(2244).logicalSrcIdx = 2243;
	  section.data(2244).dtTransOffset = 12572;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_f
	  section.data(2245).logicalSrcIdx = 2244;
	  section.data(2245).dtTransOffset = 12573;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_c
	  section.data(2246).logicalSrcIdx = 2245;
	  section.data(2246).dtTransOffset = 12575;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_n
	  section.data(2247).logicalSrcIdx = 2246;
	  section.data(2247).dtTransOffset = 12636;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_l
	  section.data(2248).logicalSrcIdx = 2247;
	  section.data(2248).dtTransOffset = 12638;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_f
	  section.data(2249).logicalSrcIdx = 2248;
	  section.data(2249).dtTransOffset = 12639;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_k
	  section.data(2250).logicalSrcIdx = 2249;
	  section.data(2250).dtTransOffset = 12641;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_iy
	  section.data(2251).logicalSrcIdx = 2250;
	  section.data(2251).dtTransOffset = 12642;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_i
	  section.data(2252).logicalSrcIdx = 2251;
	  section.data(2252).dtTransOffset = 12644;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_j
	  section.data(2253).logicalSrcIdx = 2252;
	  section.data(2253).dtTransOffset = 12645;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_dg
	  section.data(2254).logicalSrcIdx = 2253;
	  section.data(2254).dtTransOffset = 12647;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_k
	  section.data(2255).logicalSrcIdx = 2254;
	  section.data(2255).dtTransOffset = 12648;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_c
	  section.data(2256).logicalSrcIdx = 2255;
	  section.data(2256).dtTransOffset = 12650;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_d
	  section.data(2257).logicalSrcIdx = 2256;
	  section.data(2257).dtTransOffset = 12651;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_a
	  section.data(2258).logicalSrcIdx = 2257;
	  section.data(2258).dtTransOffset = 12653;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size_n
	  section.data(2259).logicalSrcIdx = 2258;
	  section.data(2259).dtTransOffset = 12654;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_m
	  section.data(2260).logicalSrcIdx = 2259;
	  section.data(2260).dtTransOffset = 12656;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size_n
	  section.data(2261).logicalSrcIdx = 2260;
	  section.data(2261).dtTransOffset = 12723;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_j
	  section.data(2262).logicalSrcIdx = 2261;
	  section.data(2262).dtTransOffset = 12725;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size_l
	  section.data(2263).logicalSrcIdx = 2262;
	  section.data(2263).dtTransOffset = 12726;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_pj
	  section.data(2264).logicalSrcIdx = 2263;
	  section.data(2264).dtTransOffset = 12728;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size_c
	  section.data(2265).logicalSrcIdx = 2264;
	  section.data(2265).dtTransOffset = 12729;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_g5
	  section.data(2266).logicalSrcIdx = 2265;
	  section.data(2266).dtTransOffset = 12731;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size_i
	  section.data(2267).logicalSrcIdx = 2266;
	  section.data(2267).dtTransOffset = 12732;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_k
	  section.data(2268).logicalSrcIdx = 2267;
	  section.data(2268).dtTransOffset = 12734;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size_m
	  section.data(2269).logicalSrcIdx = 2268;
	  section.data(2269).dtTransOffset = 12735;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_h
	  section.data(2270).logicalSrcIdx = 2269;
	  section.data(2270).dtTransOffset = 12737;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size_jk
	  section.data(2271).logicalSrcIdx = 2270;
	  section.data(2271).dtTransOffset = 12738;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_a
	  section.data(2272).logicalSrcIdx = 2271;
	  section.data(2272).dtTransOffset = 12740;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_j
	  section.data(2273).logicalSrcIdx = 2272;
	  section.data(2273).dtTransOffset = 12741;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_n
	  section.data(2274).logicalSrcIdx = 2273;
	  section.data(2274).dtTransOffset = 12743;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_l
	  section.data(2275).logicalSrcIdx = 2274;
	  section.data(2275).dtTransOffset = 12804;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_a
	  section.data(2276).logicalSrcIdx = 2275;
	  section.data(2276).dtTransOffset = 12806;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_p
	  section.data(2277).logicalSrcIdx = 2276;
	  section.data(2277).dtTransOffset = 12807;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_b
	  section.data(2278).logicalSrcIdx = 2277;
	  section.data(2278).dtTransOffset = 12809;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_c
	  section.data(2279).logicalSrcIdx = 2278;
	  section.data(2279).dtTransOffset = 12810;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_i
	  section.data(2280).logicalSrcIdx = 2279;
	  section.data(2280).dtTransOffset = 12812;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_c
	  section.data(2281).logicalSrcIdx = 2280;
	  section.data(2281).dtTransOffset = 12813;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_e
	  section.data(2282).logicalSrcIdx = 2281;
	  section.data(2282).dtTransOffset = 12815;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_e
	  section.data(2283).logicalSrcIdx = 2282;
	  section.data(2283).dtTransOffset = 12816;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_d
	  section.data(2284).logicalSrcIdx = 2283;
	  section.data(2284).dtTransOffset = 12818;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_pt
	  section.data(2285).logicalSrcIdx = 2284;
	  section.data(2285).dtTransOffset = 12819;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_e
	  section.data(2286).logicalSrcIdx = 2285;
	  section.data(2286).dtTransOffset = 12821;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_j
	  section.data(2287).logicalSrcIdx = 2286;
	  section.data(2287).dtTransOffset = 12822;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_hk
	  section.data(2288).logicalSrcIdx = 2287;
	  section.data(2288).dtTransOffset = 12824;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_m
	  section.data(2289).logicalSrcIdx = 2288;
	  section.data(2289).dtTransOffset = 12885;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_gt
	  section.data(2290).logicalSrcIdx = 2289;
	  section.data(2290).dtTransOffset = 12887;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_l
	  section.data(2291).logicalSrcIdx = 2290;
	  section.data(2291).dtTransOffset = 12888;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_d
	  section.data(2292).logicalSrcIdx = 2291;
	  section.data(2292).dtTransOffset = 12890;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_i5
	  section.data(2293).logicalSrcIdx = 2292;
	  section.data(2293).dtTransOffset = 12891;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_bm
	  section.data(2294).logicalSrcIdx = 2293;
	  section.data(2294).dtTransOffset = 12893;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_d
	  section.data(2295).logicalSrcIdx = 2294;
	  section.data(2295).dtTransOffset = 12894;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_f
	  section.data(2296).logicalSrcIdx = 2295;
	  section.data(2296).dtTransOffset = 12896;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_p
	  section.data(2297).logicalSrcIdx = 2296;
	  section.data(2297).dtTransOffset = 12897;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_de
	  section.data(2298).logicalSrcIdx = 2297;
	  section.data(2298).dtTransOffset = 12899;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_h
	  section.data(2299).logicalSrcIdx = 2298;
	  section.data(2299).dtTransOffset = 12900;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_e
	  section.data(2300).logicalSrcIdx = 2299;
	  section.data(2300).dtTransOffset = 12902;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size_a
	  section.data(2301).logicalSrcIdx = 2300;
	  section.data(2301).dtTransOffset = 12903;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_o
	  section.data(2302).logicalSrcIdx = 2301;
	  section.data(2302).dtTransOffset = 12905;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size_k
	  section.data(2303).logicalSrcIdx = 2302;
	  section.data(2303).dtTransOffset = 12972;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_k
	  section.data(2304).logicalSrcIdx = 2303;
	  section.data(2304).dtTransOffset = 12974;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size_c
	  section.data(2305).logicalSrcIdx = 2304;
	  section.data(2305).dtTransOffset = 12975;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_d
	  section.data(2306).logicalSrcIdx = 2305;
	  section.data(2306).dtTransOffset = 12977;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size_k
	  section.data(2307).logicalSrcIdx = 2306;
	  section.data(2307).dtTransOffset = 12978;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_g4
	  section.data(2308).logicalSrcIdx = 2307;
	  section.data(2308).dtTransOffset = 12980;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size_i1
	  section.data(2309).logicalSrcIdx = 2308;
	  section.data(2309).dtTransOffset = 12981;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_f
	  section.data(2310).logicalSrcIdx = 2309;
	  section.data(2310).dtTransOffset = 12983;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size_g
	  section.data(2311).logicalSrcIdx = 2310;
	  section.data(2311).dtTransOffset = 12984;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_p
	  section.data(2312).logicalSrcIdx = 2311;
	  section.data(2312).dtTransOffset = 12986;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size_k
	  section.data(2313).logicalSrcIdx = 2312;
	  section.data(2313).dtTransOffset = 12987;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_i
	  section.data(2314).logicalSrcIdx = 2313;
	  section.data(2314).dtTransOffset = 12989;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_d
	  section.data(2315).logicalSrcIdx = 2314;
	  section.data(2315).dtTransOffset = 12990;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_f
	  section.data(2316).logicalSrcIdx = 2315;
	  section.data(2316).dtTransOffset = 12992;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_c
	  section.data(2317).logicalSrcIdx = 2316;
	  section.data(2317).dtTransOffset = 13053;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_j
	  section.data(2318).logicalSrcIdx = 2317;
	  section.data(2318).dtTransOffset = 13055;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_m
	  section.data(2319).logicalSrcIdx = 2318;
	  section.data(2319).dtTransOffset = 13056;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_i
	  section.data(2320).logicalSrcIdx = 2319;
	  section.data(2320).dtTransOffset = 13058;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_i
	  section.data(2321).logicalSrcIdx = 2320;
	  section.data(2321).dtTransOffset = 13059;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_c
	  section.data(2322).logicalSrcIdx = 2321;
	  section.data(2322).dtTransOffset = 13061;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_n
	  section.data(2323).logicalSrcIdx = 2322;
	  section.data(2323).dtTransOffset = 13062;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_j
	  section.data(2324).logicalSrcIdx = 2323;
	  section.data(2324).dtTransOffset = 13064;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_c
	  section.data(2325).logicalSrcIdx = 2324;
	  section.data(2325).dtTransOffset = 13065;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_m
	  section.data(2326).logicalSrcIdx = 2325;
	  section.data(2326).dtTransOffset = 13067;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_c
	  section.data(2327).logicalSrcIdx = 2326;
	  section.data(2327).dtTransOffset = 13068;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_ax
	  section.data(2328).logicalSrcIdx = 2327;
	  section.data(2328).dtTransOffset = 13070;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_n
	  section.data(2329).logicalSrcIdx = 2328;
	  section.data(2329).dtTransOffset = 13071;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_ho
	  section.data(2330).logicalSrcIdx = 2329;
	  section.data(2330).dtTransOffset = 13073;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_p
	  section.data(2331).logicalSrcIdx = 2330;
	  section.data(2331).dtTransOffset = 13134;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_b5
	  section.data(2332).logicalSrcIdx = 2331;
	  section.data(2332).dtTransOffset = 13136;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_p
	  section.data(2333).logicalSrcIdx = 2332;
	  section.data(2333).dtTransOffset = 13137;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_du
	  section.data(2334).logicalSrcIdx = 2333;
	  section.data(2334).dtTransOffset = 13139;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_p
	  section.data(2335).logicalSrcIdx = 2334;
	  section.data(2335).dtTransOffset = 13140;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_j
	  section.data(2336).logicalSrcIdx = 2335;
	  section.data(2336).dtTransOffset = 13142;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_l
	  section.data(2337).logicalSrcIdx = 2336;
	  section.data(2337).dtTransOffset = 13143;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_b
	  section.data(2338).logicalSrcIdx = 2337;
	  section.data(2338).dtTransOffset = 13145;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_c
	  section.data(2339).logicalSrcIdx = 2338;
	  section.data(2339).dtTransOffset = 13146;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_l
	  section.data(2340).logicalSrcIdx = 2339;
	  section.data(2340).dtTransOffset = 13148;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_ha
	  section.data(2341).logicalSrcIdx = 2340;
	  section.data(2341).dtTransOffset = 13149;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_g
	  section.data(2342).logicalSrcIdx = 2341;
	  section.data(2342).dtTransOffset = 13151;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size_m
	  section.data(2343).logicalSrcIdx = 2342;
	  section.data(2343).dtTransOffset = 13152;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_a
	  section.data(2344).logicalSrcIdx = 2343;
	  section.data(2344).dtTransOffset = 13154;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size_g
	  section.data(2345).logicalSrcIdx = 2344;
	  section.data(2345).dtTransOffset = 13221;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_ol
	  section.data(2346).logicalSrcIdx = 2345;
	  section.data(2346).dtTransOffset = 13223;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size_p
	  section.data(2347).logicalSrcIdx = 2346;
	  section.data(2347).dtTransOffset = 13224;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_b
	  section.data(2348).logicalSrcIdx = 2347;
	  section.data(2348).dtTransOffset = 13226;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size_i
	  section.data(2349).logicalSrcIdx = 2348;
	  section.data(2349).dtTransOffset = 13227;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_i
	  section.data(2350).logicalSrcIdx = 2349;
	  section.data(2350).dtTransOffset = 13229;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size_p
	  section.data(2351).logicalSrcIdx = 2350;
	  section.data(2351).dtTransOffset = 13230;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_m
	  section.data(2352).logicalSrcIdx = 2351;
	  section.data(2352).dtTransOffset = 13232;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size_mg
	  section.data(2353).logicalSrcIdx = 2352;
	  section.data(2353).dtTransOffset = 13233;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_a
	  section.data(2354).logicalSrcIdx = 2353;
	  section.data(2354).dtTransOffset = 13235;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size_n
	  section.data(2355).logicalSrcIdx = 2354;
	  section.data(2355).dtTransOffset = 13236;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_l
	  section.data(2356).logicalSrcIdx = 2355;
	  section.data(2356).dtTransOffset = 13238;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_Size_n
	  section.data(2357).logicalSrcIdx = 2356;
	  section.data(2357).dtTransOffset = 13239;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P1_p
	  section.data(2358).logicalSrcIdx = 2357;
	  section.data(2358).dtTransOffset = 13241;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_Size_h
	  section.data(2359).logicalSrcIdx = 2358;
	  section.data(2359).dtTransOffset = 13302;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P2_d
	  section.data(2360).logicalSrcIdx = 2359;
	  section.data(2360).dtTransOffset = 13304;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_Size_e
	  section.data(2361).logicalSrcIdx = 2360;
	  section.data(2361).dtTransOffset = 13305;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P3_h
	  section.data(2362).logicalSrcIdx = 2361;
	  section.data(2362).dtTransOffset = 13307;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_Size_h
	  section.data(2363).logicalSrcIdx = 2362;
	  section.data(2363).dtTransOffset = 13308;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P4_b
	  section.data(2364).logicalSrcIdx = 2363;
	  section.data(2364).dtTransOffset = 13310;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_Size_e
	  section.data(2365).logicalSrcIdx = 2364;
	  section.data(2365).dtTransOffset = 13311;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P5_a3
	  section.data(2366).logicalSrcIdx = 2365;
	  section.data(2366).dtTransOffset = 13313;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_Size_k
	  section.data(2367).logicalSrcIdx = 2366;
	  section.data(2367).dtTransOffset = 13314;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P6_g
	  section.data(2368).logicalSrcIdx = 2367;
	  section.data(2368).dtTransOffset = 13316;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_Size_j
	  section.data(2369).logicalSrcIdx = 2368;
	  section.data(2369).dtTransOffset = 13317;
	
	  ;% umich_2d_walking_P.EtherCATTxVar3_P7_p
	  section.data(2370).logicalSrcIdx = 2369;
	  section.data(2370).dtTransOffset = 13319;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_Size_b
	  section.data(2371).logicalSrcIdx = 2370;
	  section.data(2371).dtTransOffset = 13320;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P1_n
	  section.data(2372).logicalSrcIdx = 2371;
	  section.data(2372).dtTransOffset = 13322;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_Size_ms
	  section.data(2373).logicalSrcIdx = 2372;
	  section.data(2373).dtTransOffset = 13383;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P2_o
	  section.data(2374).logicalSrcIdx = 2373;
	  section.data(2374).dtTransOffset = 13385;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_Size_d
	  section.data(2375).logicalSrcIdx = 2374;
	  section.data(2375).dtTransOffset = 13386;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P3_n
	  section.data(2376).logicalSrcIdx = 2375;
	  section.data(2376).dtTransOffset = 13388;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_Size_f
	  section.data(2377).logicalSrcIdx = 2376;
	  section.data(2377).dtTransOffset = 13389;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P4_d
	  section.data(2378).logicalSrcIdx = 2377;
	  section.data(2378).dtTransOffset = 13391;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_Size_b
	  section.data(2379).logicalSrcIdx = 2378;
	  section.data(2379).dtTransOffset = 13392;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P5_c
	  section.data(2380).logicalSrcIdx = 2379;
	  section.data(2380).dtTransOffset = 13394;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_Size_i
	  section.data(2381).logicalSrcIdx = 2380;
	  section.data(2381).dtTransOffset = 13395;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P6_o
	  section.data(2382).logicalSrcIdx = 2381;
	  section.data(2382).dtTransOffset = 13397;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_Size_f
	  section.data(2383).logicalSrcIdx = 2382;
	  section.data(2383).dtTransOffset = 13398;
	
	  ;% umich_2d_walking_P.EtherCATTxVar4_P7_j
	  section.data(2384).logicalSrcIdx = 2383;
	  section.data(2384).dtTransOffset = 13400;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_Size_k
	  section.data(2385).logicalSrcIdx = 2384;
	  section.data(2385).dtTransOffset = 13401;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P1_k
	  section.data(2386).logicalSrcIdx = 2385;
	  section.data(2386).dtTransOffset = 13403;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_Size_c
	  section.data(2387).logicalSrcIdx = 2386;
	  section.data(2387).dtTransOffset = 13470;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P2_f
	  section.data(2388).logicalSrcIdx = 2387;
	  section.data(2388).dtTransOffset = 13472;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_Size_g
	  section.data(2389).logicalSrcIdx = 2388;
	  section.data(2389).dtTransOffset = 13473;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P3_e
	  section.data(2390).logicalSrcIdx = 2389;
	  section.data(2390).dtTransOffset = 13475;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_Size_a
	  section.data(2391).logicalSrcIdx = 2390;
	  section.data(2391).dtTransOffset = 13476;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P4_p
	  section.data(2392).logicalSrcIdx = 2391;
	  section.data(2392).dtTransOffset = 13478;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_Size_e
	  section.data(2393).logicalSrcIdx = 2392;
	  section.data(2393).dtTransOffset = 13479;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P5_o
	  section.data(2394).logicalSrcIdx = 2393;
	  section.data(2394).dtTransOffset = 13481;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_Size_p
	  section.data(2395).logicalSrcIdx = 2394;
	  section.data(2395).dtTransOffset = 13482;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P6_pg
	  section.data(2396).logicalSrcIdx = 2395;
	  section.data(2396).dtTransOffset = 13484;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_Size_l
	  section.data(2397).logicalSrcIdx = 2396;
	  section.data(2397).dtTransOffset = 13485;
	
	  ;% umich_2d_walking_P.EtherCATTxVar5_P7_d
	  section.data(2398).logicalSrcIdx = 2397;
	  section.data(2398).dtTransOffset = 13487;
	
	  ;% umich_2d_walking_P.signal_Gain
	  section.data(2399).logicalSrcIdx = 2398;
	  section.data(2399).dtTransOffset = 13488;
	
	  ;% umich_2d_walking_P.raw_signals_Gain
	  section.data(2400).logicalSrcIdx = 2399;
	  section.data(2400).dtTransOffset = 13489;
	
	  ;% umich_2d_walking_P.sw_Gain
	  section.data(2401).logicalSrcIdx = 2400;
	  section.data(2401).dtTransOffset = 13490;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilter
	  section.data(2402).logicalSrcIdx = 2401;
	  section.data(2402).dtTransOffset = 13491;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_g
	  section.data(2403).logicalSrcIdx = 2402;
	  section.data(2403).dtTransOffset = 13493;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_h
	  section.data(2404).logicalSrcIdx = 2403;
	  section.data(2404).dtTransOffset = 13495;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_k
	  section.data(2405).logicalSrcIdx = 2404;
	  section.data(2405).dtTransOffset = 13496;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_o
	  section.data(2406).logicalSrcIdx = 2405;
	  section.data(2406).dtTransOffset = 13498;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_b
	  section.data(2407).logicalSrcIdx = 2406;
	  section.data(2407).dtTransOffset = 13500;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFil_kb
	  section.data(2408).logicalSrcIdx = 2407;
	  section.data(2408).dtTransOffset = 13501;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_c
	  section.data(2409).logicalSrcIdx = 2408;
	  section.data(2409).dtTransOffset = 13503;
	
	  ;% umich_2d_walking_P.DiscreteSinglePoleLowpassFilt_p
	  section.data(2410).logicalSrcIdx = 2409;
	  section.data(2410).dtTransOffset = 13505;
	
	  ;% umich_2d_walking_P.spring_torques_Gain
	  section.data(2411).logicalSrcIdx = 2410;
	  section.data(2411).dtTransOffset = 13506;
	
	  ;% umich_2d_walking_P.desired_pitch_Value_m
	  section.data(2412).logicalSrcIdx = 2411;
	  section.data(2412).dtTransOffset = 13507;
	
	  ;% umich_2d_walking_P.ProportionalGain1_Gain_i
	  section.data(2413).logicalSrcIdx = 2412;
	  section.data(2413).dtTransOffset = 13508;
	
	  ;% umich_2d_walking_P.desired_pitch_velocity_Value
	  section.data(2414).logicalSrcIdx = 2413;
	  section.data(2414).dtTransOffset = 13509;
	
	  ;% umich_2d_walking_P.ProportionalGain2_Gain_b
	  section.data(2415).logicalSrcIdx = 2414;
	  section.data(2415).dtTransOffset = 13510;
	
	  ;% umich_2d_walking_P.torso_pitch_offset_Value
	  section.data(2416).logicalSrcIdx = 2415;
	  section.data(2416).dtTransOffset = 13511;
	
	  ;% umich_2d_walking_P.Saturation_UpperSat_n
	  section.data(2417).logicalSrcIdx = 2416;
	  section.data(2417).dtTransOffset = 13512;
	
	  ;% umich_2d_walking_P.Saturation_LowerSat_d
	  section.data(2418).logicalSrcIdx = 2417;
	  section.data(2418).dtTransOffset = 13513;
	
	  ;% umich_2d_walking_P.lateral_correction_Gain
	  section.data(2419).logicalSrcIdx = 2418;
	  section.data(2419).dtTransOffset = 13514;
	
	  ;% umich_2d_walking_P.pos_tau_Amp
	  section.data(2420).logicalSrcIdx = 2419;
	  section.data(2420).dtTransOffset = 13515;
	
	  ;% umich_2d_walking_P.pos_tau_Period
	  section.data(2421).logicalSrcIdx = 2420;
	  section.data(2421).dtTransOffset = 13516;
	
	  ;% umich_2d_walking_P.pos_tau_Duty
	  section.data(2422).logicalSrcIdx = 2421;
	  section.data(2422).dtTransOffset = 13517;
	
	  ;% umich_2d_walking_P.pos_tau_PhaseDelay
	  section.data(2423).logicalSrcIdx = 2422;
	  section.data(2423).dtTransOffset = 13518;
	
	  ;% umich_2d_walking_P.neg_tau_Amp
	  section.data(2424).logicalSrcIdx = 2423;
	  section.data(2424).dtTransOffset = 13519;
	
	  ;% umich_2d_walking_P.neg_tau_Period
	  section.data(2425).logicalSrcIdx = 2424;
	  section.data(2425).dtTransOffset = 13520;
	
	  ;% umich_2d_walking_P.neg_tau_Duty
	  section.data(2426).logicalSrcIdx = 2425;
	  section.data(2426).dtTransOffset = 13521;
	
	  ;% umich_2d_walking_P.neg_tau_PhaseDelay
	  section.data(2427).logicalSrcIdx = 2426;
	  section.data(2427).dtTransOffset = 13522;
	
	  ;% umich_2d_walking_P.Gain_Gain_i
	  section.data(2428).logicalSrcIdx = 2427;
	  section.data(2428).dtTransOffset = 13523;
	
	  ;% umich_2d_walking_P.Gain1_Gain_j
	  section.data(2429).logicalSrcIdx = 2428;
	  section.data(2429).dtTransOffset = 13524;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% umich_2d_walking_P.counter_InitialCondition
	  section.data(1).logicalSrcIdx = 2429;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_P.Constant_Value_a1
	  section.data(2).logicalSrcIdx = 2430;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% umich_2d_walking_P.Counter_InitialCount
	  section.data(1).logicalSrcIdx = 2431;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_P.Counter_HitValue
	  section.data(2).logicalSrcIdx = 2432;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% umich_2d_walking_P.ManualSwitch_CurrentSetting
	  section.data(1).logicalSrcIdx = 2433;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 7;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (umich_2d_walking_B)
    ;%
      section.nData     = 332;
      section.data(332)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.Clock
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.DataTypeConversion149
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n1
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.Gain2
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n2
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.Sum
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.phiphi
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_B.Abs
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% umich_2d_walking_B.Sum2
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% umich_2d_walking_B.RoundingFunction
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_f
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% umich_2d_walking_B.Switch
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% umich_2d_walking_B.Product
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% umich_2d_walking_B.Sum1
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% umich_2d_walking_B.DataTypeConversion97
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 15;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n1_p
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 16;
	
	  ;% umich_2d_walking_B.Gain2_l
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 17;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n2_l
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 18;
	
	  ;% umich_2d_walking_B.Sum_o
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 19;
	
	  ;% umich_2d_walking_B.phiphi_g
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 20;
	
	  ;% umich_2d_walking_B.Abs_k
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 21;
	
	  ;% umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_fu
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 22;
	
	  ;% umich_2d_walking_B.Sum2_h
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 23;
	
	  ;% umich_2d_walking_B.RoundingFunction_o
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 24;
	
	  ;% umich_2d_walking_B.HIP_INC_MAX_ENCODER_TICKS_m
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 25;
	
	  ;% umich_2d_walking_B.Switch_g
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 26;
	
	  ;% umich_2d_walking_B.Product_k
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 27;
	
	  ;% umich_2d_walking_B.Sum1_g
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 28;
	
	  ;% umich_2d_walking_B.DataTypeConversion132
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 29;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n1_i
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 30;
	
	  ;% umich_2d_walking_B.Gain2_e
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 31;
	
	  ;% umich_2d_walking_B.UnitDelayphi_n2_j
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 32;
	
	  ;% umich_2d_walking_B.Sum_h
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 33;
	
	  ;% umich_2d_walking_B.phiphi_j
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 34;
	
	  ;% umich_2d_walking_B.Abs_p
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 35;
	
	  ;% umich_2d_walking_B.BOOM_MAX_ENCODER_TICKS
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 36;
	
	  ;% umich_2d_walking_B.Sum2_l
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 37;
	
	  ;% umich_2d_walking_B.RoundingFunction_f
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 38;
	
	  ;% umich_2d_walking_B.BOOM_MAX_ENCODER_TICKS_o
	  section.data(40).logicalSrcIdx = 39;
	  section.data(40).dtTransOffset = 39;
	
	  ;% umich_2d_walking_B.Switch_f
	  section.data(41).logicalSrcIdx = 40;
	  section.data(41).dtTransOffset = 40;
	
	  ;% umich_2d_walking_B.Product_i
	  section.data(42).logicalSrcIdx = 41;
	  section.data(42).dtTransOffset = 41;
	
	  ;% umich_2d_walking_B.Sum1_n
	  section.data(43).logicalSrcIdx = 42;
	  section.data(43).dtTransOffset = 42;
	
	  ;% umich_2d_walking_B.Product_m
	  section.data(44).logicalSrcIdx = 43;
	  section.data(44).dtTransOffset = 43;
	
	  ;% umich_2d_walking_B.DataTypeConversion49
	  section.data(45).logicalSrcIdx = 44;
	  section.data(45).dtTransOffset = 46;
	
	  ;% umich_2d_walking_B.DataTypeConversion50
	  section.data(46).logicalSrcIdx = 45;
	  section.data(46).dtTransOffset = 47;
	
	  ;% umich_2d_walking_B.DataTypeConversion73
	  section.data(47).logicalSrcIdx = 46;
	  section.data(47).dtTransOffset = 48;
	
	  ;% umich_2d_walking_B.DataTypeConversion74
	  section.data(48).logicalSrcIdx = 47;
	  section.data(48).dtTransOffset = 49;
	
	  ;% umich_2d_walking_B.DataTypeConversion3
	  section.data(49).logicalSrcIdx = 48;
	  section.data(49).dtTransOffset = 50;
	
	  ;% umich_2d_walking_B.DataTypeConversion1
	  section.data(50).logicalSrcIdx = 49;
	  section.data(50).dtTransOffset = 51;
	
	  ;% umich_2d_walking_B.DataTypeConversion25
	  section.data(51).logicalSrcIdx = 50;
	  section.data(51).dtTransOffset = 52;
	
	  ;% umich_2d_walking_B.DataTypeConversion26
	  section.data(52).logicalSrcIdx = 51;
	  section.data(52).dtTransOffset = 53;
	
	  ;% umich_2d_walking_B.DataTypeConversion150
	  section.data(53).logicalSrcIdx = 52;
	  section.data(53).dtTransOffset = 54;
	
	  ;% umich_2d_walking_B.DataTypeConversion98
	  section.data(54).logicalSrcIdx = 53;
	  section.data(54).dtTransOffset = 55;
	
	  ;% umich_2d_walking_B.DataTypeConversion133
	  section.data(55).logicalSrcIdx = 54;
	  section.data(55).dtTransOffset = 56;
	
	  ;% umich_2d_walking_B.DataTypeConversion131
	  section.data(56).logicalSrcIdx = 55;
	  section.data(56).dtTransOffset = 57;
	
	  ;% umich_2d_walking_B.tick_diff
	  section.data(57).logicalSrcIdx = 56;
	  section.data(57).dtTransOffset = 58;
	
	  ;% umich_2d_walking_B.rad_diff
	  section.data(58).logicalSrcIdx = 57;
	  section.data(58).dtTransOffset = 70;
	
	  ;% umich_2d_walking_B.calibrated_angle
	  section.data(59).logicalSrcIdx = 58;
	  section.data(59).dtTransOffset = 82;
	
	  ;% umich_2d_walking_B.reverse
	  section.data(60).logicalSrcIdx = 59;
	  section.data(60).dtTransOffset = 94;
	
	  ;% umich_2d_walking_B.Gain1
	  section.data(61).logicalSrcIdx = 60;
	  section.data(61).dtTransOffset = 95;
	
	  ;% umich_2d_walking_B.Sum2_a
	  section.data(62).logicalSrcIdx = 61;
	  section.data(62).dtTransOffset = 96;
	
	  ;% umich_2d_walking_B.Sum2_e
	  section.data(63).logicalSrcIdx = 62;
	  section.data(63).dtTransOffset = 104;
	
	  ;% umich_2d_walking_B.Clock_i
	  section.data(64).logicalSrcIdx = 63;
	  section.data(64).dtTransOffset = 112;
	
	  ;% umich_2d_walking_B.qLatR_abs_Initial
	  section.data(65).logicalSrcIdx = 64;
	  section.data(65).dtTransOffset = 113;
	
	  ;% umich_2d_walking_B.qLatR
	  section.data(66).logicalSrcIdx = 65;
	  section.data(66).dtTransOffset = 114;
	
	  ;% umich_2d_walking_B.qLatL_abs_Initial
	  section.data(67).logicalSrcIdx = 66;
	  section.data(67).dtTransOffset = 115;
	
	  ;% umich_2d_walking_B.qLatL
	  section.data(68).logicalSrcIdx = 67;
	  section.data(68).dtTransOffset = 116;
	
	  ;% umich_2d_walking_B.Gain1_c
	  section.data(69).logicalSrcIdx = 68;
	  section.data(69).dtTransOffset = 117;
	
	  ;% umich_2d_walking_B.Uk1
	  section.data(70).logicalSrcIdx = 69;
	  section.data(70).dtTransOffset = 130;
	
	  ;% umich_2d_walking_B.Diff
	  section.data(71).logicalSrcIdx = 70;
	  section.data(71).dtTransOffset = 143;
	
	  ;% umich_2d_walking_B.single_pole_filter
	  section.data(72).logicalSrcIdx = 71;
	  section.data(72).dtTransOffset = 156;
	
	  ;% umich_2d_walking_B.Gain2_a
	  section.data(73).logicalSrcIdx = 72;
	  section.data(73).dtTransOffset = 169;
	
	  ;% umich_2d_walking_B.Gain
	  section.data(74).logicalSrcIdx = 73;
	  section.data(74).dtTransOffset = 170;
	
	  ;% umich_2d_walking_B.VectorConcatenate
	  section.data(75).logicalSrcIdx = 74;
	  section.data(75).dtTransOffset = 178;
	
	  ;% umich_2d_walking_B.rad2deg1
	  section.data(76).logicalSrcIdx = 75;
	  section.data(76).dtTransOffset = 204;
	
	  ;% umich_2d_walking_B.stance_leg_state
	  section.data(77).logicalSrcIdx = 76;
	  section.data(77).dtTransOffset = 206;
	
	  ;% umich_2d_walking_B.y_signals
	  section.data(78).logicalSrcIdx = 77;
	  section.data(78).dtTransOffset = 207;
	
	  ;% umich_2d_walking_B.rad2deg2
	  section.data(79).logicalSrcIdx = 78;
	  section.data(79).dtTransOffset = 213;
	
	  ;% umich_2d_walking_B.s_signals
	  section.data(80).logicalSrcIdx = 79;
	  section.data(80).dtTransOffset = 219;
	
	  ;% umich_2d_walking_B.pd_signals
	  section.data(81).logicalSrcIdx = 80;
	  section.data(81).dtTransOffset = 220;
	
	  ;% umich_2d_walking_B.Clock1
	  section.data(82).logicalSrcIdx = 81;
	  section.data(82).dtTransOffset = 224;
	
	  ;% umich_2d_walking_B.Switch_c
	  section.data(83).logicalSrcIdx = 82;
	  section.data(83).dtTransOffset = 225;
	
	  ;% umich_2d_walking_B.Sum1_h
	  section.data(84).logicalSrcIdx = 83;
	  section.data(84).dtTransOffset = 231;
	
	  ;% umich_2d_walking_B.ProportionalGain1
	  section.data(85).logicalSrcIdx = 84;
	  section.data(85).dtTransOffset = 233;
	
	  ;% umich_2d_walking_B.Sum1_o
	  section.data(86).logicalSrcIdx = 85;
	  section.data(86).dtTransOffset = 235;
	
	  ;% umich_2d_walking_B.Gain_h
	  section.data(87).logicalSrcIdx = 86;
	  section.data(87).dtTransOffset = 236;
	
	  ;% umich_2d_walking_B.Sum2_j
	  section.data(88).logicalSrcIdx = 87;
	  section.data(88).dtTransOffset = 237;
	
	  ;% umich_2d_walking_B.ProportionalGain
	  section.data(89).logicalSrcIdx = 88;
	  section.data(89).dtTransOffset = 239;
	
	  ;% umich_2d_walking_B.ProportionalGain2
	  section.data(90).logicalSrcIdx = 89;
	  section.data(90).dtTransOffset = 241;
	
	  ;% umich_2d_walking_B.DiscreteTimeIntegrator
	  section.data(91).logicalSrcIdx = 90;
	  section.data(91).dtTransOffset = 243;
	
	  ;% umich_2d_walking_B.Sum_l
	  section.data(92).logicalSrcIdx = 91;
	  section.data(92).dtTransOffset = 245;
	
	  ;% umich_2d_walking_B.Sum4
	  section.data(93).logicalSrcIdx = 92;
	  section.data(93).dtTransOffset = 247;
	
	  ;% umich_2d_walking_B.Gain1_n
	  section.data(94).logicalSrcIdx = 93;
	  section.data(94).dtTransOffset = 249;
	
	  ;% umich_2d_walking_B.MotorSaturation
	  section.data(95).logicalSrcIdx = 94;
	  section.data(95).dtTransOffset = 250;
	
	  ;% umich_2d_walking_B.Gain_d
	  section.data(96).logicalSrcIdx = 95;
	  section.data(96).dtTransOffset = 252;
	
	  ;% umich_2d_walking_B.current_cmds
	  section.data(97).logicalSrcIdx = 96;
	  section.data(97).dtTransOffset = 257;
	
	  ;% umich_2d_walking_B.Clock_a
	  section.data(98).logicalSrcIdx = 97;
	  section.data(98).dtTransOffset = 263;
	
	  ;% umich_2d_walking_B.Counter_o1
	  section.data(99).logicalSrcIdx = 98;
	  section.data(99).dtTransOffset = 264;
	
	  ;% umich_2d_walking_B.DataTypeConversion10
	  section.data(100).logicalSrcIdx = 99;
	  section.data(100).dtTransOffset = 265;
	
	  ;% umich_2d_walking_B.DataTypeConversion100
	  section.data(101).logicalSrcIdx = 100;
	  section.data(101).dtTransOffset = 266;
	
	  ;% umich_2d_walking_B.DataTypeConversion101
	  section.data(102).logicalSrcIdx = 101;
	  section.data(102).dtTransOffset = 267;
	
	  ;% umich_2d_walking_B.DataTypeConversion102
	  section.data(103).logicalSrcIdx = 102;
	  section.data(103).dtTransOffset = 268;
	
	  ;% umich_2d_walking_B.DataTypeConversion103
	  section.data(104).logicalSrcIdx = 103;
	  section.data(104).dtTransOffset = 269;
	
	  ;% umich_2d_walking_B.DataTypeConversion104
	  section.data(105).logicalSrcIdx = 104;
	  section.data(105).dtTransOffset = 270;
	
	  ;% umich_2d_walking_B.DataTypeConversion105
	  section.data(106).logicalSrcIdx = 105;
	  section.data(106).dtTransOffset = 271;
	
	  ;% umich_2d_walking_B.DataTypeConversion106
	  section.data(107).logicalSrcIdx = 106;
	  section.data(107).dtTransOffset = 272;
	
	  ;% umich_2d_walking_B.DataTypeConversion107
	  section.data(108).logicalSrcIdx = 107;
	  section.data(108).dtTransOffset = 273;
	
	  ;% umich_2d_walking_B.DataTypeConversion108
	  section.data(109).logicalSrcIdx = 108;
	  section.data(109).dtTransOffset = 274;
	
	  ;% umich_2d_walking_B.DataTypeConversion109
	  section.data(110).logicalSrcIdx = 109;
	  section.data(110).dtTransOffset = 275;
	
	  ;% umich_2d_walking_B.DataTypeConversion11
	  section.data(111).logicalSrcIdx = 110;
	  section.data(111).dtTransOffset = 276;
	
	  ;% umich_2d_walking_B.DataTypeConversion110
	  section.data(112).logicalSrcIdx = 111;
	  section.data(112).dtTransOffset = 277;
	
	  ;% umich_2d_walking_B.DataTypeConversion111
	  section.data(113).logicalSrcIdx = 112;
	  section.data(113).dtTransOffset = 278;
	
	  ;% umich_2d_walking_B.DataTypeConversion12
	  section.data(114).logicalSrcIdx = 113;
	  section.data(114).dtTransOffset = 279;
	
	  ;% umich_2d_walking_B.DataTypeConversion127
	  section.data(115).logicalSrcIdx = 114;
	  section.data(115).dtTransOffset = 280;
	
	  ;% umich_2d_walking_B.DataTypeConversion128
	  section.data(116).logicalSrcIdx = 115;
	  section.data(116).dtTransOffset = 281;
	
	  ;% umich_2d_walking_B.DataTypeConversion129
	  section.data(117).logicalSrcIdx = 116;
	  section.data(117).dtTransOffset = 282;
	
	  ;% umich_2d_walking_B.DataTypeConversion13
	  section.data(118).logicalSrcIdx = 117;
	  section.data(118).dtTransOffset = 283;
	
	  ;% umich_2d_walking_B.DataTypeConversion130
	  section.data(119).logicalSrcIdx = 118;
	  section.data(119).dtTransOffset = 284;
	
	  ;% umich_2d_walking_B.DataTypeConversion134
	  section.data(120).logicalSrcIdx = 119;
	  section.data(120).dtTransOffset = 285;
	
	  ;% umich_2d_walking_B.DataTypeConversion135
	  section.data(121).logicalSrcIdx = 120;
	  section.data(121).dtTransOffset = 286;
	
	  ;% umich_2d_walking_B.DataTypeConversion136
	  section.data(122).logicalSrcIdx = 121;
	  section.data(122).dtTransOffset = 287;
	
	  ;% umich_2d_walking_B.DataTypeConversion137
	  section.data(123).logicalSrcIdx = 122;
	  section.data(123).dtTransOffset = 288;
	
	  ;% umich_2d_walking_B.DataTypeConversion138
	  section.data(124).logicalSrcIdx = 123;
	  section.data(124).dtTransOffset = 289;
	
	  ;% umich_2d_walking_B.DataTypeConversion139
	  section.data(125).logicalSrcIdx = 124;
	  section.data(125).dtTransOffset = 290;
	
	  ;% umich_2d_walking_B.DataTypeConversion14
	  section.data(126).logicalSrcIdx = 125;
	  section.data(126).dtTransOffset = 291;
	
	  ;% umich_2d_walking_B.DataTypeConversion140
	  section.data(127).logicalSrcIdx = 126;
	  section.data(127).dtTransOffset = 292;
	
	  ;% umich_2d_walking_B.DataTypeConversion141
	  section.data(128).logicalSrcIdx = 127;
	  section.data(128).dtTransOffset = 293;
	
	  ;% umich_2d_walking_B.DataTypeConversion142
	  section.data(129).logicalSrcIdx = 128;
	  section.data(129).dtTransOffset = 294;
	
	  ;% umich_2d_walking_B.DataTypeConversion143
	  section.data(130).logicalSrcIdx = 129;
	  section.data(130).dtTransOffset = 295;
	
	  ;% umich_2d_walking_B.DataTypeConversion144
	  section.data(131).logicalSrcIdx = 130;
	  section.data(131).dtTransOffset = 296;
	
	  ;% umich_2d_walking_B.DataTypeConversion145
	  section.data(132).logicalSrcIdx = 131;
	  section.data(132).dtTransOffset = 297;
	
	  ;% umich_2d_walking_B.DataTypeConversion146
	  section.data(133).logicalSrcIdx = 132;
	  section.data(133).dtTransOffset = 298;
	
	  ;% umich_2d_walking_B.DataTypeConversion147
	  section.data(134).logicalSrcIdx = 133;
	  section.data(134).dtTransOffset = 299;
	
	  ;% umich_2d_walking_B.DataTypeConversion148
	  section.data(135).logicalSrcIdx = 134;
	  section.data(135).dtTransOffset = 300;
	
	  ;% umich_2d_walking_B.DataTypeConversion15
	  section.data(136).logicalSrcIdx = 135;
	  section.data(136).dtTransOffset = 301;
	
	  ;% umich_2d_walking_B.DataTypeConversion151
	  section.data(137).logicalSrcIdx = 136;
	  section.data(137).dtTransOffset = 302;
	
	  ;% umich_2d_walking_B.DataTypeConversion157
	  section.data(138).logicalSrcIdx = 137;
	  section.data(138).dtTransOffset = 303;
	
	  ;% umich_2d_walking_B.DataTypeConversion16
	  section.data(139).logicalSrcIdx = 138;
	  section.data(139).dtTransOffset = 304;
	
	  ;% umich_2d_walking_B.DataTypeConversion17
	  section.data(140).logicalSrcIdx = 139;
	  section.data(140).dtTransOffset = 305;
	
	  ;% umich_2d_walking_B.DataTypeConversion18
	  section.data(141).logicalSrcIdx = 140;
	  section.data(141).dtTransOffset = 306;
	
	  ;% umich_2d_walking_B.DataTypeConversion19
	  section.data(142).logicalSrcIdx = 141;
	  section.data(142).dtTransOffset = 307;
	
	  ;% umich_2d_walking_B.DataTypeConversion2
	  section.data(143).logicalSrcIdx = 142;
	  section.data(143).dtTransOffset = 308;
	
	  ;% umich_2d_walking_B.DataTypeConversion20
	  section.data(144).logicalSrcIdx = 143;
	  section.data(144).dtTransOffset = 309;
	
	  ;% umich_2d_walking_B.DataTypeConversion21
	  section.data(145).logicalSrcIdx = 144;
	  section.data(145).dtTransOffset = 310;
	
	  ;% umich_2d_walking_B.DataTypeConversion22
	  section.data(146).logicalSrcIdx = 145;
	  section.data(146).dtTransOffset = 311;
	
	  ;% umich_2d_walking_B.DataTypeConversion23
	  section.data(147).logicalSrcIdx = 146;
	  section.data(147).dtTransOffset = 312;
	
	  ;% umich_2d_walking_B.DataTypeConversion24
	  section.data(148).logicalSrcIdx = 147;
	  section.data(148).dtTransOffset = 313;
	
	  ;% umich_2d_walking_B.DataTypeConversion27
	  section.data(149).logicalSrcIdx = 148;
	  section.data(149).dtTransOffset = 314;
	
	  ;% umich_2d_walking_B.DataTypeConversion28
	  section.data(150).logicalSrcIdx = 149;
	  section.data(150).dtTransOffset = 315;
	
	  ;% umich_2d_walking_B.DataTypeConversion29
	  section.data(151).logicalSrcIdx = 150;
	  section.data(151).dtTransOffset = 316;
	
	  ;% umich_2d_walking_B.DataTypeConversion30
	  section.data(152).logicalSrcIdx = 151;
	  section.data(152).dtTransOffset = 317;
	
	  ;% umich_2d_walking_B.DataTypeConversion31
	  section.data(153).logicalSrcIdx = 152;
	  section.data(153).dtTransOffset = 318;
	
	  ;% umich_2d_walking_B.DataTypeConversion32
	  section.data(154).logicalSrcIdx = 153;
	  section.data(154).dtTransOffset = 319;
	
	  ;% umich_2d_walking_B.DataTypeConversion33
	  section.data(155).logicalSrcIdx = 154;
	  section.data(155).dtTransOffset = 320;
	
	  ;% umich_2d_walking_B.DataTypeConversion34
	  section.data(156).logicalSrcIdx = 155;
	  section.data(156).dtTransOffset = 321;
	
	  ;% umich_2d_walking_B.DataTypeConversion35
	  section.data(157).logicalSrcIdx = 156;
	  section.data(157).dtTransOffset = 322;
	
	  ;% umich_2d_walking_B.DataTypeConversion36
	  section.data(158).logicalSrcIdx = 157;
	  section.data(158).dtTransOffset = 323;
	
	  ;% umich_2d_walking_B.DataTypeConversion37
	  section.data(159).logicalSrcIdx = 158;
	  section.data(159).dtTransOffset = 324;
	
	  ;% umich_2d_walking_B.DataTypeConversion38
	  section.data(160).logicalSrcIdx = 159;
	  section.data(160).dtTransOffset = 325;
	
	  ;% umich_2d_walking_B.DataTypeConversion39
	  section.data(161).logicalSrcIdx = 160;
	  section.data(161).dtTransOffset = 326;
	
	  ;% umich_2d_walking_B.DataTypeConversion4
	  section.data(162).logicalSrcIdx = 161;
	  section.data(162).dtTransOffset = 327;
	
	  ;% umich_2d_walking_B.DataTypeConversion40
	  section.data(163).logicalSrcIdx = 162;
	  section.data(163).dtTransOffset = 328;
	
	  ;% umich_2d_walking_B.DataTypeConversion41
	  section.data(164).logicalSrcIdx = 163;
	  section.data(164).dtTransOffset = 329;
	
	  ;% umich_2d_walking_B.DataTypeConversion42
	  section.data(165).logicalSrcIdx = 164;
	  section.data(165).dtTransOffset = 330;
	
	  ;% umich_2d_walking_B.DataTypeConversion43
	  section.data(166).logicalSrcIdx = 165;
	  section.data(166).dtTransOffset = 331;
	
	  ;% umich_2d_walking_B.DataTypeConversion44
	  section.data(167).logicalSrcIdx = 166;
	  section.data(167).dtTransOffset = 332;
	
	  ;% umich_2d_walking_B.DataTypeConversion45
	  section.data(168).logicalSrcIdx = 167;
	  section.data(168).dtTransOffset = 333;
	
	  ;% umich_2d_walking_B.DataTypeConversion46
	  section.data(169).logicalSrcIdx = 168;
	  section.data(169).dtTransOffset = 334;
	
	  ;% umich_2d_walking_B.DataTypeConversion47
	  section.data(170).logicalSrcIdx = 169;
	  section.data(170).dtTransOffset = 335;
	
	  ;% umich_2d_walking_B.DataTypeConversion48
	  section.data(171).logicalSrcIdx = 170;
	  section.data(171).dtTransOffset = 336;
	
	  ;% umich_2d_walking_B.DataTypeConversion5
	  section.data(172).logicalSrcIdx = 171;
	  section.data(172).dtTransOffset = 337;
	
	  ;% umich_2d_walking_B.DataTypeConversion51
	  section.data(173).logicalSrcIdx = 172;
	  section.data(173).dtTransOffset = 338;
	
	  ;% umich_2d_walking_B.DataTypeConversion52
	  section.data(174).logicalSrcIdx = 173;
	  section.data(174).dtTransOffset = 339;
	
	  ;% umich_2d_walking_B.DataTypeConversion53
	  section.data(175).logicalSrcIdx = 174;
	  section.data(175).dtTransOffset = 340;
	
	  ;% umich_2d_walking_B.DataTypeConversion54
	  section.data(176).logicalSrcIdx = 175;
	  section.data(176).dtTransOffset = 341;
	
	  ;% umich_2d_walking_B.DataTypeConversion55
	  section.data(177).logicalSrcIdx = 176;
	  section.data(177).dtTransOffset = 342;
	
	  ;% umich_2d_walking_B.DataTypeConversion56
	  section.data(178).logicalSrcIdx = 177;
	  section.data(178).dtTransOffset = 343;
	
	  ;% umich_2d_walking_B.DataTypeConversion57
	  section.data(179).logicalSrcIdx = 178;
	  section.data(179).dtTransOffset = 344;
	
	  ;% umich_2d_walking_B.DataTypeConversion58
	  section.data(180).logicalSrcIdx = 179;
	  section.data(180).dtTransOffset = 345;
	
	  ;% umich_2d_walking_B.DataTypeConversion59
	  section.data(181).logicalSrcIdx = 180;
	  section.data(181).dtTransOffset = 346;
	
	  ;% umich_2d_walking_B.DataTypeConversion6
	  section.data(182).logicalSrcIdx = 181;
	  section.data(182).dtTransOffset = 347;
	
	  ;% umich_2d_walking_B.DataTypeConversion60
	  section.data(183).logicalSrcIdx = 182;
	  section.data(183).dtTransOffset = 348;
	
	  ;% umich_2d_walking_B.DataTypeConversion61
	  section.data(184).logicalSrcIdx = 183;
	  section.data(184).dtTransOffset = 349;
	
	  ;% umich_2d_walking_B.DataTypeConversion62
	  section.data(185).logicalSrcIdx = 184;
	  section.data(185).dtTransOffset = 350;
	
	  ;% umich_2d_walking_B.DataTypeConversion63
	  section.data(186).logicalSrcIdx = 185;
	  section.data(186).dtTransOffset = 351;
	
	  ;% umich_2d_walking_B.DataTypeConversion64
	  section.data(187).logicalSrcIdx = 186;
	  section.data(187).dtTransOffset = 352;
	
	  ;% umich_2d_walking_B.DataTypeConversion65
	  section.data(188).logicalSrcIdx = 187;
	  section.data(188).dtTransOffset = 353;
	
	  ;% umich_2d_walking_B.DataTypeConversion66
	  section.data(189).logicalSrcIdx = 188;
	  section.data(189).dtTransOffset = 354;
	
	  ;% umich_2d_walking_B.DataTypeConversion67
	  section.data(190).logicalSrcIdx = 189;
	  section.data(190).dtTransOffset = 355;
	
	  ;% umich_2d_walking_B.DataTypeConversion68
	  section.data(191).logicalSrcIdx = 190;
	  section.data(191).dtTransOffset = 356;
	
	  ;% umich_2d_walking_B.DataTypeConversion69
	  section.data(192).logicalSrcIdx = 191;
	  section.data(192).dtTransOffset = 357;
	
	  ;% umich_2d_walking_B.DataTypeConversion7
	  section.data(193).logicalSrcIdx = 192;
	  section.data(193).dtTransOffset = 358;
	
	  ;% umich_2d_walking_B.DataTypeConversion70
	  section.data(194).logicalSrcIdx = 193;
	  section.data(194).dtTransOffset = 359;
	
	  ;% umich_2d_walking_B.DataTypeConversion71
	  section.data(195).logicalSrcIdx = 194;
	  section.data(195).dtTransOffset = 360;
	
	  ;% umich_2d_walking_B.DataTypeConversion72
	  section.data(196).logicalSrcIdx = 195;
	  section.data(196).dtTransOffset = 361;
	
	  ;% umich_2d_walking_B.DataTypeConversion75
	  section.data(197).logicalSrcIdx = 196;
	  section.data(197).dtTransOffset = 362;
	
	  ;% umich_2d_walking_B.DataTypeConversion76
	  section.data(198).logicalSrcIdx = 197;
	  section.data(198).dtTransOffset = 363;
	
	  ;% umich_2d_walking_B.DataTypeConversion77
	  section.data(199).logicalSrcIdx = 198;
	  section.data(199).dtTransOffset = 364;
	
	  ;% umich_2d_walking_B.DataTypeConversion78
	  section.data(200).logicalSrcIdx = 199;
	  section.data(200).dtTransOffset = 365;
	
	  ;% umich_2d_walking_B.DataTypeConversion79
	  section.data(201).logicalSrcIdx = 200;
	  section.data(201).dtTransOffset = 366;
	
	  ;% umich_2d_walking_B.DataTypeConversion8
	  section.data(202).logicalSrcIdx = 201;
	  section.data(202).dtTransOffset = 367;
	
	  ;% umich_2d_walking_B.DataTypeConversion80
	  section.data(203).logicalSrcIdx = 202;
	  section.data(203).dtTransOffset = 368;
	
	  ;% umich_2d_walking_B.DataTypeConversion81
	  section.data(204).logicalSrcIdx = 203;
	  section.data(204).dtTransOffset = 369;
	
	  ;% umich_2d_walking_B.DataTypeConversion82
	  section.data(205).logicalSrcIdx = 204;
	  section.data(205).dtTransOffset = 370;
	
	  ;% umich_2d_walking_B.DataTypeConversion83
	  section.data(206).logicalSrcIdx = 205;
	  section.data(206).dtTransOffset = 371;
	
	  ;% umich_2d_walking_B.DataTypeConversion84
	  section.data(207).logicalSrcIdx = 206;
	  section.data(207).dtTransOffset = 372;
	
	  ;% umich_2d_walking_B.DataTypeConversion85
	  section.data(208).logicalSrcIdx = 207;
	  section.data(208).dtTransOffset = 373;
	
	  ;% umich_2d_walking_B.DataTypeConversion86
	  section.data(209).logicalSrcIdx = 208;
	  section.data(209).dtTransOffset = 374;
	
	  ;% umich_2d_walking_B.DataTypeConversion87
	  section.data(210).logicalSrcIdx = 209;
	  section.data(210).dtTransOffset = 375;
	
	  ;% umich_2d_walking_B.DataTypeConversion88
	  section.data(211).logicalSrcIdx = 210;
	  section.data(211).dtTransOffset = 376;
	
	  ;% umich_2d_walking_B.DataTypeConversion89
	  section.data(212).logicalSrcIdx = 211;
	  section.data(212).dtTransOffset = 377;
	
	  ;% umich_2d_walking_B.DataTypeConversion9
	  section.data(213).logicalSrcIdx = 212;
	  section.data(213).dtTransOffset = 378;
	
	  ;% umich_2d_walking_B.DataTypeConversion90
	  section.data(214).logicalSrcIdx = 213;
	  section.data(214).dtTransOffset = 379;
	
	  ;% umich_2d_walking_B.DataTypeConversion91
	  section.data(215).logicalSrcIdx = 214;
	  section.data(215).dtTransOffset = 380;
	
	  ;% umich_2d_walking_B.DataTypeConversion92
	  section.data(216).logicalSrcIdx = 215;
	  section.data(216).dtTransOffset = 381;
	
	  ;% umich_2d_walking_B.DataTypeConversion93
	  section.data(217).logicalSrcIdx = 216;
	  section.data(217).dtTransOffset = 382;
	
	  ;% umich_2d_walking_B.DataTypeConversion94
	  section.data(218).logicalSrcIdx = 217;
	  section.data(218).dtTransOffset = 383;
	
	  ;% umich_2d_walking_B.DataTypeConversion95
	  section.data(219).logicalSrcIdx = 218;
	  section.data(219).dtTransOffset = 384;
	
	  ;% umich_2d_walking_B.DataTypeConversion96
	  section.data(220).logicalSrcIdx = 219;
	  section.data(220).dtTransOffset = 385;
	
	  ;% umich_2d_walking_B.DataTypeConversion99
	  section.data(221).logicalSrcIdx = 220;
	  section.data(221).dtTransOffset = 386;
	
	  ;% umich_2d_walking_B.SagittalMotorSaturation
	  section.data(222).logicalSrcIdx = 221;
	  section.data(222).dtTransOffset = 387;
	
	  ;% umich_2d_walking_B.Divide2
	  section.data(223).logicalSrcIdx = 222;
	  section.data(223).dtTransOffset = 391;
	
	  ;% umich_2d_walking_B.LegMotorSaturation
	  section.data(224).logicalSrcIdx = 223;
	  section.data(224).dtTransOffset = 395;
	
	  ;% umich_2d_walking_B.LateralMotorSaturation
	  section.data(225).logicalSrcIdx = 224;
	  section.data(225).dtTransOffset = 399;
	
	  ;% umich_2d_walking_B.Divide3
	  section.data(226).logicalSrcIdx = 225;
	  section.data(226).dtTransOffset = 401;
	
	  ;% umich_2d_walking_B.HipMotorSaturation
	  section.data(227).logicalSrcIdx = 226;
	  section.data(227).dtTransOffset = 403;
	
	  ;% umich_2d_walking_B.Divide
	  section.data(228).logicalSrcIdx = 227;
	  section.data(228).dtTransOffset = 405;
	
	  ;% umich_2d_walking_B.Divide1
	  section.data(229).logicalSrcIdx = 228;
	  section.data(229).dtTransOffset = 406;
	
	  ;% umich_2d_walking_B.Product_g
	  section.data(230).logicalSrcIdx = 229;
	  section.data(230).dtTransOffset = 407;
	
	  ;% umich_2d_walking_B.signal
	  section.data(231).logicalSrcIdx = 230;
	  section.data(231).dtTransOffset = 413;
	
	  ;% umich_2d_walking_B.raw_signals
	  section.data(232).logicalSrcIdx = 231;
	  section.data(232).dtTransOffset = 426;
	
	  ;% umich_2d_walking_B.sw
	  section.data(233).logicalSrcIdx = 232;
	  section.data(233).dtTransOffset = 441;
	
	  ;% umich_2d_walking_B.DiscreteSinglePoleLowpassFilter
	  section.data(234).logicalSrcIdx = 233;
	  section.data(234).dtTransOffset = 451;
	
	  ;% umich_2d_walking_B.DiscreteSinglePoleLowpassFilt_e
	  section.data(235).logicalSrcIdx = 234;
	  section.data(235).dtTransOffset = 452;
	
	  ;% umich_2d_walking_B.DiscreteSinglePoleLowpassFilt_j
	  section.data(236).logicalSrcIdx = 235;
	  section.data(236).dtTransOffset = 453;
	
	  ;% umich_2d_walking_B.Sum_p
	  section.data(237).logicalSrcIdx = 236;
	  section.data(237).dtTransOffset = 454;
	
	  ;% umich_2d_walking_B.spring_torques
	  section.data(238).logicalSrcIdx = 237;
	  section.data(238).dtTransOffset = 458;
	
	  ;% umich_2d_walking_B.Sum1_e
	  section.data(239).logicalSrcIdx = 238;
	  section.data(239).dtTransOffset = 462;
	
	  ;% umich_2d_walking_B.ProportionalGain1_c
	  section.data(240).logicalSrcIdx = 239;
	  section.data(240).dtTransOffset = 463;
	
	  ;% umich_2d_walking_B.Sum3
	  section.data(241).logicalSrcIdx = 240;
	  section.data(241).dtTransOffset = 464;
	
	  ;% umich_2d_walking_B.ProportionalGain2_i
	  section.data(242).logicalSrcIdx = 241;
	  section.data(242).dtTransOffset = 465;
	
	  ;% umich_2d_walking_B.Sum4_a
	  section.data(243).logicalSrcIdx = 242;
	  section.data(243).dtTransOffset = 466;
	
	  ;% umich_2d_walking_B.Sum2_ed
	  section.data(244).logicalSrcIdx = 243;
	  section.data(244).dtTransOffset = 467;
	
	  ;% umich_2d_walking_B.Saturation
	  section.data(245).logicalSrcIdx = 244;
	  section.data(245).dtTransOffset = 468;
	
	  ;% umich_2d_walking_B.lateral_correction
	  section.data(246).logicalSrcIdx = 245;
	  section.data(246).dtTransOffset = 469;
	
	  ;% umich_2d_walking_B.pos_tau
	  section.data(247).logicalSrcIdx = 246;
	  section.data(247).dtTransOffset = 470;
	
	  ;% umich_2d_walking_B.neg_tau
	  section.data(248).logicalSrcIdx = 247;
	  section.data(248).dtTransOffset = 471;
	
	  ;% umich_2d_walking_B.Sum1_ow
	  section.data(249).logicalSrcIdx = 248;
	  section.data(249).dtTransOffset = 472;
	
	  ;% umich_2d_walking_B.Gain_p
	  section.data(250).logicalSrcIdx = 249;
	  section.data(250).dtTransOffset = 473;
	
	  ;% umich_2d_walking_B.Gain1_d
	  section.data(251).logicalSrcIdx = 250;
	  section.data(251).dtTransOffset = 474;
	
	  ;% umich_2d_walking_B.TmpSignalConversionAtSFunctionI
	  section.data(252).logicalSrcIdx = 251;
	  section.data(252).dtTransOffset = 475;
	
	  ;% umich_2d_walking_B.TmpSignalConversionAtSFunctio_p
	  section.data(253).logicalSrcIdx = 252;
	  section.data(253).dtTransOffset = 478;
	
	  ;% umich_2d_walking_B.TmpSignalConversionAtSFunctio_c
	  section.data(254).logicalSrcIdx = 253;
	  section.data(254).dtTransOffset = 481;
	
	  ;% umich_2d_walking_B.u
	  section.data(255).logicalSrcIdx = 254;
	  section.data(255).dtTransOffset = 483;
	
	  ;% umich_2d_walking_B.y
	  section.data(256).logicalSrcIdx = 255;
	  section.data(256).dtTransOffset = 489;
	
	  ;% umich_2d_walking_B.dy
	  section.data(257).logicalSrcIdx = 256;
	  section.data(257).dtTransOffset = 495;
	
	  ;% umich_2d_walking_B.s
	  section.data(258).logicalSrcIdx = 257;
	  section.data(258).dtTransOffset = 501;
	
	  ;% umich_2d_walking_B.ds
	  section.data(259).logicalSrcIdx = 258;
	  section.data(259).dtTransOffset = 502;
	
	  ;% umich_2d_walking_B.pd
	  section.data(260).logicalSrcIdx = 259;
	  section.data(260).dtTransOffset = 503;
	
	  ;% umich_2d_walking_B.stance_leg_next
	  section.data(261).logicalSrcIdx = 260;
	  section.data(261).dtTransOffset = 507;
	
	  ;% umich_2d_walking_B.SpringStiffness1
	  section.data(262).logicalSrcIdx = 261;
	  section.data(262).dtTransOffset = 508;
	
	  ;% umich_2d_walking_B.In
	  section.data(263).logicalSrcIdx = 262;
	  section.data(263).dtTransOffset = 514;
	
	  ;% umich_2d_walking_B.TmpSignalConversionAtSFunctio_i
	  section.data(264).logicalSrcIdx = 263;
	  section.data(264).dtTransOffset = 518;
	
	  ;% umich_2d_walking_B.backLAmp1
	  section.data(265).logicalSrcIdx = 264;
	  section.data(265).dtTransOffset = 630;
	
	  ;% umich_2d_walking_B.backLAmp2
	  section.data(266).logicalSrcIdx = 265;
	  section.data(266).dtTransOffset = 631;
	
	  ;% umich_2d_walking_B.frontLAmp1
	  section.data(267).logicalSrcIdx = 266;
	  section.data(267).dtTransOffset = 632;
	
	  ;% umich_2d_walking_B.frontLAmp2
	  section.data(268).logicalSrcIdx = 267;
	  section.data(268).dtTransOffset = 633;
	
	  ;% umich_2d_walking_B.backRAmp1
	  section.data(269).logicalSrcIdx = 268;
	  section.data(269).dtTransOffset = 634;
	
	  ;% umich_2d_walking_B.backRAmp2
	  section.data(270).logicalSrcIdx = 269;
	  section.data(270).dtTransOffset = 635;
	
	  ;% umich_2d_walking_B.frontRAmp1
	  section.data(271).logicalSrcIdx = 270;
	  section.data(271).dtTransOffset = 636;
	
	  ;% umich_2d_walking_B.frontRAmp2
	  section.data(272).logicalSrcIdx = 271;
	  section.data(272).dtTransOffset = 637;
	
	  ;% umich_2d_walking_B.backLError
	  section.data(273).logicalSrcIdx = 272;
	  section.data(273).dtTransOffset = 638;
	
	  ;% umich_2d_walking_B.frontLError
	  section.data(274).logicalSrcIdx = 273;
	  section.data(274).dtTransOffset = 639;
	
	  ;% umich_2d_walking_B.backRError
	  section.data(275).logicalSrcIdx = 274;
	  section.data(275).dtTransOffset = 640;
	
	  ;% umich_2d_walking_B.frontRError
	  section.data(276).logicalSrcIdx = 275;
	  section.data(276).dtTransOffset = 641;
	
	  ;% umich_2d_walking_B.backLMotorV
	  section.data(277).logicalSrcIdx = 276;
	  section.data(277).dtTransOffset = 642;
	
	  ;% umich_2d_walking_B.backLLogicV
	  section.data(278).logicalSrcIdx = 277;
	  section.data(278).dtTransOffset = 643;
	
	  ;% umich_2d_walking_B.frontLMotorV
	  section.data(279).logicalSrcIdx = 278;
	  section.data(279).dtTransOffset = 644;
	
	  ;% umich_2d_walking_B.frontLLogicV
	  section.data(280).logicalSrcIdx = 279;
	  section.data(280).dtTransOffset = 645;
	
	  ;% umich_2d_walking_B.backRMotorV
	  section.data(281).logicalSrcIdx = 280;
	  section.data(281).dtTransOffset = 646;
	
	  ;% umich_2d_walking_B.backRLogicV
	  section.data(282).logicalSrcIdx = 281;
	  section.data(282).dtTransOffset = 647;
	
	  ;% umich_2d_walking_B.frontRMotorV
	  section.data(283).logicalSrcIdx = 282;
	  section.data(283).dtTransOffset = 648;
	
	  ;% umich_2d_walking_B.frontRLogicV
	  section.data(284).logicalSrcIdx = 283;
	  section.data(284).dtTransOffset = 649;
	
	  ;% umich_2d_walking_B.frontLTemp0
	  section.data(285).logicalSrcIdx = 284;
	  section.data(285).dtTransOffset = 650;
	
	  ;% umich_2d_walking_B.frontLTemp1
	  section.data(286).logicalSrcIdx = 285;
	  section.data(286).dtTransOffset = 651;
	
	  ;% umich_2d_walking_B.frontLTemp2
	  section.data(287).logicalSrcIdx = 286;
	  section.data(287).dtTransOffset = 652;
	
	  ;% umich_2d_walking_B.frontLTemp3
	  section.data(288).logicalSrcIdx = 287;
	  section.data(288).dtTransOffset = 653;
	
	  ;% umich_2d_walking_B.frontLTemp4
	  section.data(289).logicalSrcIdx = 288;
	  section.data(289).dtTransOffset = 654;
	
	  ;% umich_2d_walking_B.frontLTemp5
	  section.data(290).logicalSrcIdx = 289;
	  section.data(290).dtTransOffset = 655;
	
	  ;% umich_2d_walking_B.backLTemp0
	  section.data(291).logicalSrcIdx = 290;
	  section.data(291).dtTransOffset = 656;
	
	  ;% umich_2d_walking_B.backLTemp1
	  section.data(292).logicalSrcIdx = 291;
	  section.data(292).dtTransOffset = 657;
	
	  ;% umich_2d_walking_B.backLTemp2
	  section.data(293).logicalSrcIdx = 292;
	  section.data(293).dtTransOffset = 658;
	
	  ;% umich_2d_walking_B.backLTemp3
	  section.data(294).logicalSrcIdx = 293;
	  section.data(294).dtTransOffset = 659;
	
	  ;% umich_2d_walking_B.backLTemp4
	  section.data(295).logicalSrcIdx = 294;
	  section.data(295).dtTransOffset = 660;
	
	  ;% umich_2d_walking_B.backLTemp5
	  section.data(296).logicalSrcIdx = 295;
	  section.data(296).dtTransOffset = 661;
	
	  ;% umich_2d_walking_B.Sum_n
	  section.data(297).logicalSrcIdx = 296;
	  section.data(297).dtTransOffset = 662;
	
	  ;% umich_2d_walking_B.Sum1_o4
	  section.data(298).logicalSrcIdx = 297;
	  section.data(298).dtTransOffset = 663;
	
	  ;% umich_2d_walking_B.SpringStiffness
	  section.data(299).logicalSrcIdx = 298;
	  section.data(299).dtTransOffset = 667;
	
	  ;% umich_2d_walking_B.Sum5
	  section.data(300).logicalSrcIdx = 299;
	  section.data(300).dtTransOffset = 671;
	
	  ;% umich_2d_walking_B.Product_d
	  section.data(301).logicalSrcIdx = 300;
	  section.data(301).dtTransOffset = 675;
	
	  ;% umich_2d_walking_B.Sum6
	  section.data(302).logicalSrcIdx = 301;
	  section.data(302).dtTransOffset = 679;
	
	  ;% umich_2d_walking_B.SpringStiffness1_a
	  section.data(303).logicalSrcIdx = 302;
	  section.data(303).dtTransOffset = 683;
	
	  ;% umich_2d_walking_B.Sum2_ez
	  section.data(304).logicalSrcIdx = 303;
	  section.data(304).dtTransOffset = 687;
	
	  ;% umich_2d_walking_B.kd_gain
	  section.data(305).logicalSrcIdx = 304;
	  section.data(305).dtTransOffset = 691;
	
	  ;% umich_2d_walking_B.Sum7
	  section.data(306).logicalSrcIdx = 305;
	  section.data(306).dtTransOffset = 695;
	
	  ;% umich_2d_walking_B.Gain1_m
	  section.data(307).logicalSrcIdx = 306;
	  section.data(307).dtTransOffset = 699;
	
	  ;% umich_2d_walking_B.Uk1_j
	  section.data(308).logicalSrcIdx = 307;
	  section.data(308).dtTransOffset = 703;
	
	  ;% umich_2d_walking_B.Diff_c
	  section.data(309).logicalSrcIdx = 308;
	  section.data(309).dtTransOffset = 707;
	
	  ;% umich_2d_walking_B.single_pole_filter_n
	  section.data(310).logicalSrcIdx = 309;
	  section.data(310).dtTransOffset = 711;
	
	  ;% umich_2d_walking_B.kd_gain1
	  section.data(311).logicalSrcIdx = 310;
	  section.data(311).dtTransOffset = 715;
	
	  ;% umich_2d_walking_B.ManualSwitch
	  section.data(312).logicalSrcIdx = 311;
	  section.data(312).dtTransOffset = 719;
	
	  ;% umich_2d_walking_B.kp_signal
	  section.data(313).logicalSrcIdx = 312;
	  section.data(313).dtTransOffset = 725;
	
	  ;% umich_2d_walking_B.Step
	  section.data(314).logicalSrcIdx = 313;
	  section.data(314).dtTransOffset = 726;
	
	  ;% umich_2d_walking_B.Clock_n
	  section.data(315).logicalSrcIdx = 314;
	  section.data(315).dtTransOffset = 727;
	
	  ;% umich_2d_walking_B.Sum_i
	  section.data(316).logicalSrcIdx = 315;
	  section.data(316).dtTransOffset = 728;
	
	  ;% umich_2d_walking_B.Product_o
	  section.data(317).logicalSrcIdx = 316;
	  section.data(317).dtTransOffset = 729;
	
	  ;% umich_2d_walking_B.Output
	  section.data(318).logicalSrcIdx = 317;
	  section.data(318).dtTransOffset = 730;
	
	  ;% umich_2d_walking_B.Saturation_n
	  section.data(319).logicalSrcIdx = 318;
	  section.data(319).dtTransOffset = 731;
	
	  ;% umich_2d_walking_B.Product_id
	  section.data(320).logicalSrcIdx = 319;
	  section.data(320).dtTransOffset = 732;
	
	  ;% umich_2d_walking_B.Step_p
	  section.data(321).logicalSrcIdx = 320;
	  section.data(321).dtTransOffset = 736;
	
	  ;% umich_2d_walking_B.Clock_d
	  section.data(322).logicalSrcIdx = 321;
	  section.data(322).dtTransOffset = 737;
	
	  ;% umich_2d_walking_B.Sum_ip
	  section.data(323).logicalSrcIdx = 322;
	  section.data(323).dtTransOffset = 738;
	
	  ;% umich_2d_walking_B.Product_p
	  section.data(324).logicalSrcIdx = 323;
	  section.data(324).dtTransOffset = 739;
	
	  ;% umich_2d_walking_B.Output_j
	  section.data(325).logicalSrcIdx = 324;
	  section.data(325).dtTransOffset = 740;
	
	  ;% umich_2d_walking_B.Saturation1
	  section.data(326).logicalSrcIdx = 325;
	  section.data(326).dtTransOffset = 741;
	
	  ;% umich_2d_walking_B.Product1
	  section.data(327).logicalSrcIdx = 326;
	  section.data(327).dtTransOffset = 742;
	
	  ;% umich_2d_walking_B.tau_cmd_signal
	  section.data(328).logicalSrcIdx = 327;
	  section.data(328).dtTransOffset = 744;
	
	  ;% umich_2d_walking_B.TorqueLimiteroutside
	  section.data(329).logicalSrcIdx = 328;
	  section.data(329).dtTransOffset = 750;
	
	  ;% umich_2d_walking_B.Product1_n
	  section.data(330).logicalSrcIdx = 329;
	  section.data(330).dtTransOffset = 754;
	
	  ;% umich_2d_walking_B.Sum3_j
	  section.data(331).logicalSrcIdx = 330;
	  section.data(331).dtTransOffset = 758;
	
	  ;% umich_2d_walking_B.TorqueLimiteroutside1
	  section.data(332).logicalSrcIdx = 331;
	  section.data(332).dtTransOffset = 762;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.EtherCATRxFrames
	  section.data(1).logicalSrcIdx = 332;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_p
	  section.data(2).logicalSrcIdx = 333;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_k
	  section.data(3).logicalSrcIdx = 334;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_i
	  section.data(4).logicalSrcIdx = 335;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_i4
	  section.data(5).logicalSrcIdx = 336;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_h
	  section.data(6).logicalSrcIdx = 337;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.DataTypeConversion5_a
	  section.data(7).logicalSrcIdx = 338;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 16;
      section.data(16)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.EtherCATRxVar1
	  section.data(1).logicalSrcIdx = 339;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4
	  section.data(2).logicalSrcIdx = 340;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.EtherCATRxVar8
	  section.data(3).logicalSrcIdx = 341;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_n
	  section.data(4).logicalSrcIdx = 342;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.EtherCATRxVar8_b
	  section.data(5).logicalSrcIdx = 343;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_j
	  section.data(6).logicalSrcIdx = 344;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.EtherCATRxVar8_p
	  section.data(7).logicalSrcIdx = 345;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_i
	  section.data(8).logicalSrcIdx = 346;
	  section.data(8).dtTransOffset = 7;
	
	  ;% umich_2d_walking_B.EtherCATRxVar8_n
	  section.data(9).logicalSrcIdx = 347;
	  section.data(9).dtTransOffset = 8;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_b
	  section.data(10).logicalSrcIdx = 348;
	  section.data(10).dtTransOffset = 9;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_l
	  section.data(11).logicalSrcIdx = 349;
	  section.data(11).dtTransOffset = 10;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5
	  section.data(12).logicalSrcIdx = 350;
	  section.data(12).dtTransOffset = 11;
	
	  ;% umich_2d_walking_B.EtherCATRxVar4_ic
	  section.data(13).logicalSrcIdx = 351;
	  section.data(13).dtTransOffset = 12;
	
	  ;% umich_2d_walking_B.counter
	  section.data(14).logicalSrcIdx = 352;
	  section.data(14).dtTransOffset = 13;
	
	  ;% umich_2d_walking_B.EtherCATInit
	  section.data(15).logicalSrcIdx = 353;
	  section.data(15).dtTransOffset = 14;
	
	  ;% umich_2d_walking_B.Sum_hp
	  section.data(16).logicalSrcIdx = 354;
	  section.data(16).dtTransOffset = 18;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 10;
      section.data(10)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.EtherCATRxVar
	  section.data(1).logicalSrcIdx = 355;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_a
	  section.data(2).logicalSrcIdx = 356;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6
	  section.data(3).logicalSrcIdx = 357;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.EtherCATRxVar7
	  section.data(4).logicalSrcIdx = 358;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_m
	  section.data(5).logicalSrcIdx = 359;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.EtherCATRxVar7_h
	  section.data(6).logicalSrcIdx = 360;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_i
	  section.data(7).logicalSrcIdx = 361;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_B.EtherCATRxVar7_o
	  section.data(8).logicalSrcIdx = 362;
	  section.data(8).dtTransOffset = 7;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_a
	  section.data(9).logicalSrcIdx = 363;
	  section.data(9).dtTransOffset = 8;
	
	  ;% umich_2d_walking_B.EtherCATRxVar7_p
	  section.data(10).logicalSrcIdx = 364;
	  section.data(10).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 87;
      section.data(87)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.EtherCATRxVar2
	  section.data(1).logicalSrcIdx = 365;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_a
	  section.data(2).logicalSrcIdx = 366;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_j
	  section.data(3).logicalSrcIdx = 367;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_g
	  section.data(4).logicalSrcIdx = 368;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3
	  section.data(5).logicalSrcIdx = 369;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_i
	  section.data(6).logicalSrcIdx = 370;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_n
	  section.data(7).logicalSrcIdx = 371;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_h
	  section.data(8).logicalSrcIdx = 372;
	  section.data(8).dtTransOffset = 7;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13
	  section.data(9).logicalSrcIdx = 373;
	  section.data(9).dtTransOffset = 8;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_g
	  section.data(10).logicalSrcIdx = 374;
	  section.data(10).dtTransOffset = 9;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12
	  section.data(11).logicalSrcIdx = 375;
	  section.data(11).dtTransOffset = 10;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_c
	  section.data(12).logicalSrcIdx = 376;
	  section.data(12).dtTransOffset = 11;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_f
	  section.data(13).logicalSrcIdx = 377;
	  section.data(13).dtTransOffset = 12;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_i
	  section.data(14).logicalSrcIdx = 378;
	  section.data(14).dtTransOffset = 13;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_d
	  section.data(15).logicalSrcIdx = 379;
	  section.data(15).dtTransOffset = 14;
	
	  ;% umich_2d_walking_B.EtherCATRxVar9
	  section.data(16).logicalSrcIdx = 380;
	  section.data(16).dtTransOffset = 15;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_l
	  section.data(17).logicalSrcIdx = 381;
	  section.data(17).dtTransOffset = 16;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_b
	  section.data(18).logicalSrcIdx = 382;
	  section.data(18).dtTransOffset = 17;
	
	  ;% umich_2d_walking_B.EtherCATRxVar11
	  section.data(19).logicalSrcIdx = 383;
	  section.data(19).dtTransOffset = 18;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_e
	  section.data(20).logicalSrcIdx = 384;
	  section.data(20).dtTransOffset = 19;
	
	  ;% umich_2d_walking_B.EtherCATRxVar10
	  section.data(21).logicalSrcIdx = 385;
	  section.data(21).dtTransOffset = 20;
	
	  ;% umich_2d_walking_B.EtherCATRxVar6_n
	  section.data(22).logicalSrcIdx = 386;
	  section.data(22).dtTransOffset = 21;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_e
	  section.data(23).logicalSrcIdx = 387;
	  section.data(23).dtTransOffset = 22;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_i
	  section.data(24).logicalSrcIdx = 388;
	  section.data(24).dtTransOffset = 23;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_g
	  section.data(25).logicalSrcIdx = 389;
	  section.data(25).dtTransOffset = 24;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14
	  section.data(26).logicalSrcIdx = 390;
	  section.data(26).dtTransOffset = 25;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_ff
	  section.data(27).logicalSrcIdx = 391;
	  section.data(27).dtTransOffset = 26;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_k
	  section.data(28).logicalSrcIdx = 392;
	  section.data(28).dtTransOffset = 27;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15
	  section.data(29).logicalSrcIdx = 393;
	  section.data(29).dtTransOffset = 28;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16
	  section.data(30).logicalSrcIdx = 394;
	  section.data(30).dtTransOffset = 29;
	
	  ;% umich_2d_walking_B.EtherCATRxVar23
	  section.data(31).logicalSrcIdx = 395;
	  section.data(31).dtTransOffset = 30;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17
	  section.data(32).logicalSrcIdx = 396;
	  section.data(32).dtTransOffset = 31;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_m
	  section.data(33).logicalSrcIdx = 397;
	  section.data(33).dtTransOffset = 32;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_id
	  section.data(34).logicalSrcIdx = 398;
	  section.data(34).dtTransOffset = 33;
	
	  ;% umich_2d_walking_B.EtherCATRxVar23_i
	  section.data(35).logicalSrcIdx = 399;
	  section.data(35).dtTransOffset = 34;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_b
	  section.data(36).logicalSrcIdx = 400;
	  section.data(36).dtTransOffset = 35;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_a
	  section.data(37).logicalSrcIdx = 401;
	  section.data(37).dtTransOffset = 36;
	
	  ;% umich_2d_walking_B.EtherCATRxVar9_a
	  section.data(38).logicalSrcIdx = 402;
	  section.data(38).dtTransOffset = 37;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_m
	  section.data(39).logicalSrcIdx = 403;
	  section.data(39).dtTransOffset = 38;
	
	  ;% umich_2d_walking_B.EtherCATRxVar11_j
	  section.data(40).logicalSrcIdx = 404;
	  section.data(40).dtTransOffset = 39;
	
	  ;% umich_2d_walking_B.EtherCATRxVar10_g
	  section.data(41).logicalSrcIdx = 405;
	  section.data(41).dtTransOffset = 40;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_m
	  section.data(42).logicalSrcIdx = 406;
	  section.data(42).dtTransOffset = 41;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_j
	  section.data(43).logicalSrcIdx = 407;
	  section.data(43).dtTransOffset = 42;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_p
	  section.data(44).logicalSrcIdx = 408;
	  section.data(44).dtTransOffset = 43;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_g
	  section.data(45).logicalSrcIdx = 409;
	  section.data(45).dtTransOffset = 44;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16_a
	  section.data(46).logicalSrcIdx = 410;
	  section.data(46).dtTransOffset = 45;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17_p
	  section.data(47).logicalSrcIdx = 411;
	  section.data(47).dtTransOffset = 46;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_ac
	  section.data(48).logicalSrcIdx = 412;
	  section.data(48).dtTransOffset = 47;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_l
	  section.data(49).logicalSrcIdx = 413;
	  section.data(49).dtTransOffset = 48;
	
	  ;% umich_2d_walking_B.EtherCATRxVar23_h
	  section.data(50).logicalSrcIdx = 414;
	  section.data(50).dtTransOffset = 49;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_h
	  section.data(51).logicalSrcIdx = 415;
	  section.data(51).dtTransOffset = 50;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_d
	  section.data(52).logicalSrcIdx = 416;
	  section.data(52).dtTransOffset = 51;
	
	  ;% umich_2d_walking_B.EtherCATRxVar9_ak
	  section.data(53).logicalSrcIdx = 417;
	  section.data(53).dtTransOffset = 52;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_d
	  section.data(54).logicalSrcIdx = 418;
	  section.data(54).dtTransOffset = 53;
	
	  ;% umich_2d_walking_B.EtherCATRxVar11_g
	  section.data(55).logicalSrcIdx = 419;
	  section.data(55).dtTransOffset = 54;
	
	  ;% umich_2d_walking_B.EtherCATRxVar10_a
	  section.data(56).logicalSrcIdx = 420;
	  section.data(56).dtTransOffset = 55;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_m3
	  section.data(57).logicalSrcIdx = 421;
	  section.data(57).dtTransOffset = 56;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_p
	  section.data(58).logicalSrcIdx = 422;
	  section.data(58).dtTransOffset = 57;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_j
	  section.data(59).logicalSrcIdx = 423;
	  section.data(59).dtTransOffset = 58;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_gy
	  section.data(60).logicalSrcIdx = 424;
	  section.data(60).dtTransOffset = 59;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16_p
	  section.data(61).logicalSrcIdx = 425;
	  section.data(61).dtTransOffset = 60;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17_m
	  section.data(62).logicalSrcIdx = 426;
	  section.data(62).dtTransOffset = 61;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_mv
	  section.data(63).logicalSrcIdx = 427;
	  section.data(63).dtTransOffset = 62;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_k
	  section.data(64).logicalSrcIdx = 428;
	  section.data(64).dtTransOffset = 63;
	
	  ;% umich_2d_walking_B.EtherCATRxVar23_p
	  section.data(65).logicalSrcIdx = 429;
	  section.data(65).dtTransOffset = 64;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_c
	  section.data(66).logicalSrcIdx = 430;
	  section.data(66).dtTransOffset = 65;
	
	  ;% umich_2d_walking_B.EtherCATRxVar5_l
	  section.data(67).logicalSrcIdx = 431;
	  section.data(67).dtTransOffset = 66;
	
	  ;% umich_2d_walking_B.EtherCATRxVar9_g
	  section.data(68).logicalSrcIdx = 432;
	  section.data(68).dtTransOffset = 67;
	
	  ;% umich_2d_walking_B.EtherCATRxVar1_a
	  section.data(69).logicalSrcIdx = 433;
	  section.data(69).dtTransOffset = 68;
	
	  ;% umich_2d_walking_B.EtherCATRxVar11_jc
	  section.data(70).logicalSrcIdx = 434;
	  section.data(70).dtTransOffset = 69;
	
	  ;% umich_2d_walking_B.EtherCATRxVar10_l
	  section.data(71).logicalSrcIdx = 435;
	  section.data(71).dtTransOffset = 70;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_j
	  section.data(72).logicalSrcIdx = 436;
	  section.data(72).dtTransOffset = 71;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_e
	  section.data(73).logicalSrcIdx = 437;
	  section.data(73).dtTransOffset = 72;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_c
	  section.data(74).logicalSrcIdx = 438;
	  section.data(74).dtTransOffset = 73;
	
	  ;% umich_2d_walking_B.EtherCATRxVar_gt
	  section.data(75).logicalSrcIdx = 439;
	  section.data(75).dtTransOffset = 74;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_l
	  section.data(76).logicalSrcIdx = 440;
	  section.data(76).dtTransOffset = 75;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16_m
	  section.data(77).logicalSrcIdx = 441;
	  section.data(77).dtTransOffset = 76;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17_mi
	  section.data(78).logicalSrcIdx = 442;
	  section.data(78).dtTransOffset = 77;
	
	  ;% umich_2d_walking_B.EtherCATRxVar2_d
	  section.data(79).logicalSrcIdx = 443;
	  section.data(79).dtTransOffset = 78;
	
	  ;% umich_2d_walking_B.EtherCATRxVar3_g
	  section.data(80).logicalSrcIdx = 444;
	  section.data(80).dtTransOffset = 79;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_o
	  section.data(81).logicalSrcIdx = 445;
	  section.data(81).dtTransOffset = 80;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_g
	  section.data(82).logicalSrcIdx = 446;
	  section.data(82).dtTransOffset = 81;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_c
	  section.data(83).logicalSrcIdx = 447;
	  section.data(83).dtTransOffset = 82;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_k
	  section.data(84).logicalSrcIdx = 448;
	  section.data(84).dtTransOffset = 83;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_b
	  section.data(85).logicalSrcIdx = 449;
	  section.data(85).dtTransOffset = 84;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_a
	  section.data(86).logicalSrcIdx = 450;
	  section.data(86).dtTransOffset = 85;
	
	  ;% umich_2d_walking_B.DataTypeConversion4_e
	  section.data(87).logicalSrcIdx = 451;
	  section.data(87).dtTransOffset = 86;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 44;
      section.data(44)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.Compare
	  section.data(1).logicalSrcIdx = 452;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.Compare_k
	  section.data(2).logicalSrcIdx = 453;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.Compare_o
	  section.data(3).logicalSrcIdx = 454;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_B.EtherCATRxVar14_n
	  section.data(4).logicalSrcIdx = 455;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_gp
	  section.data(5).logicalSrcIdx = 456;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_B.EtherCATRxVar12_b
	  section.data(6).logicalSrcIdx = 457;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_B.EtherCATRxVar13_a
	  section.data(7).logicalSrcIdx = 458;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_p
	  section.data(8).logicalSrcIdx = 459;
	  section.data(8).dtTransOffset = 7;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19
	  section.data(9).logicalSrcIdx = 460;
	  section.data(9).dtTransOffset = 8;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16_g
	  section.data(10).logicalSrcIdx = 461;
	  section.data(10).dtTransOffset = 9;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_e
	  section.data(11).logicalSrcIdx = 462;
	  section.data(11).dtTransOffset = 10;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17_g
	  section.data(12).logicalSrcIdx = 463;
	  section.data(12).dtTransOffset = 11;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19_i
	  section.data(13).logicalSrcIdx = 464;
	  section.data(13).dtTransOffset = 12;
	
	  ;% umich_2d_walking_B.EtherCATRxVar16_d
	  section.data(14).logicalSrcIdx = 465;
	  section.data(14).dtTransOffset = 13;
	
	  ;% umich_2d_walking_B.EtherCATRxVar15_a
	  section.data(15).logicalSrcIdx = 466;
	  section.data(15).dtTransOffset = 14;
	
	  ;% umich_2d_walking_B.EtherCATRxVar17_k
	  section.data(16).logicalSrcIdx = 467;
	  section.data(16).dtTransOffset = 15;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18
	  section.data(17).logicalSrcIdx = 468;
	  section.data(17).dtTransOffset = 16;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18_o
	  section.data(18).logicalSrcIdx = 469;
	  section.data(18).dtTransOffset = 17;
	
	  ;% umich_2d_walking_B.EtherCATRxVar21
	  section.data(19).logicalSrcIdx = 470;
	  section.data(19).dtTransOffset = 18;
	
	  ;% umich_2d_walking_B.EtherCATRxVar20
	  section.data(20).logicalSrcIdx = 471;
	  section.data(20).dtTransOffset = 19;
	
	  ;% umich_2d_walking_B.EtherCATRxVar22
	  section.data(21).logicalSrcIdx = 472;
	  section.data(21).dtTransOffset = 20;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18_p
	  section.data(22).logicalSrcIdx = 473;
	  section.data(22).dtTransOffset = 21;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19_p
	  section.data(23).logicalSrcIdx = 474;
	  section.data(23).dtTransOffset = 22;
	
	  ;% umich_2d_walking_B.EtherCATRxVar21_h
	  section.data(24).logicalSrcIdx = 475;
	  section.data(24).dtTransOffset = 23;
	
	  ;% umich_2d_walking_B.EtherCATRxVar20_b
	  section.data(25).logicalSrcIdx = 476;
	  section.data(25).dtTransOffset = 24;
	
	  ;% umich_2d_walking_B.EtherCATRxVar21_g
	  section.data(26).logicalSrcIdx = 477;
	  section.data(26).dtTransOffset = 25;
	
	  ;% umich_2d_walking_B.EtherCATRxVar20_j
	  section.data(27).logicalSrcIdx = 478;
	  section.data(27).dtTransOffset = 26;
	
	  ;% umich_2d_walking_B.EtherCATRxVar22_d
	  section.data(28).logicalSrcIdx = 479;
	  section.data(28).dtTransOffset = 27;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18_i
	  section.data(29).logicalSrcIdx = 480;
	  section.data(29).dtTransOffset = 28;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19_b
	  section.data(30).logicalSrcIdx = 481;
	  section.data(30).dtTransOffset = 29;
	
	  ;% umich_2d_walking_B.EtherCATRxVar22_g
	  section.data(31).logicalSrcIdx = 482;
	  section.data(31).dtTransOffset = 30;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18_b
	  section.data(32).logicalSrcIdx = 483;
	  section.data(32).dtTransOffset = 31;
	
	  ;% umich_2d_walking_B.EtherCATRxVar21_i
	  section.data(33).logicalSrcIdx = 484;
	  section.data(33).dtTransOffset = 32;
	
	  ;% umich_2d_walking_B.EtherCATRxVar20_a
	  section.data(34).logicalSrcIdx = 485;
	  section.data(34).dtTransOffset = 33;
	
	  ;% umich_2d_walking_B.EtherCATRxVar22_k
	  section.data(35).logicalSrcIdx = 486;
	  section.data(35).dtTransOffset = 34;
	
	  ;% umich_2d_walking_B.EtherCATRxVar18_g
	  section.data(36).logicalSrcIdx = 487;
	  section.data(36).dtTransOffset = 35;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19_a
	  section.data(37).logicalSrcIdx = 488;
	  section.data(37).dtTransOffset = 36;
	
	  ;% umich_2d_walking_B.EtherCATRxVar19_k
	  section.data(38).logicalSrcIdx = 489;
	  section.data(38).dtTransOffset = 37;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_e
	  section.data(39).logicalSrcIdx = 490;
	  section.data(39).dtTransOffset = 38;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_f
	  section.data(40).logicalSrcIdx = 491;
	  section.data(40).dtTransOffset = 39;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_c
	  section.data(41).logicalSrcIdx = 492;
	  section.data(41).dtTransOffset = 40;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_n
	  section.data(42).logicalSrcIdx = 493;
	  section.data(42).dtTransOffset = 41;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_cr
	  section.data(43).logicalSrcIdx = 494;
	  section.data(43).dtTransOffset = 42;
	
	  ;% umich_2d_walking_B.DataTypeConversion3_m
	  section.data(44).logicalSrcIdx = 495;
	  section.data(44).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(6) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% umich_2d_walking_B.Compare_b
	  section.data(1).logicalSrcIdx = 496;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_B.Compare_m
	  section.data(2).logicalSrcIdx = 497;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_B.Counter_o2
	  section.data(3).logicalSrcIdx = 498;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(7) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 8;
    sectIdxOffset = 7;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (umich_2d_walking_DWork)
    ;%
      section.nData     = 21;
      section.data(21)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.UnitDelayphi_n1_DSTATE
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.UnitDelayphi_n2_DSTATE
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_DWork.UnitDelayphi_n1_DSTATE_i
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_DWork.UnitDelayphi_n2_DSTATE_h
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_DWork.UnitDelayphi_n1_DSTATE_n
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_DWork.UnitDelayphi_n2_DSTATE_f
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% umich_2d_walking_DWork.UD_DSTATE
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% umich_2d_walking_DWork.single_pole_filter_states
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 19;
	
	  ;% umich_2d_walking_DWork.stance_leg_state_DSTATE
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 32;
	
	  ;% umich_2d_walking_DWork.DiscreteTimeIntegrator_DSTATE
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 33;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilter
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 35;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilt_b
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 36;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilt_k
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 37;
	
	  ;% umich_2d_walking_DWork.UD_DSTATE_l
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 38;
	
	  ;% umich_2d_walking_DWork.single_pole_filter_states_p
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 42;
	
	  ;% umich_2d_walking_DWork.single_pole_filter_tmp
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 46;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilt_g
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 59;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilt_n
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 60;
	
	  ;% umich_2d_walking_DWork.DiscreteSinglePoleLowpassFilt_d
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 61;
	
	  ;% umich_2d_walking_DWork.last_s
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 62;
	
	  ;% umich_2d_walking_DWork.single_pole_filter_tmp_c
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 63;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.counter_DSTATE
	  section.data(1).logicalSrcIdx = 21;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.clockTickCounter
	  section.data(1).logicalSrcIdx = 22;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.clockTickCounter_h
	  section.data(2).logicalSrcIdx = 23;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_DWork.sfEvent
	  section.data(3).logicalSrcIdx = 24;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_DWork.sfEvent_f
	  section.data(4).logicalSrcIdx = 25;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 158;
      section.data(158)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK
	  section.data(1).logicalSrcIdx = 26;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_f
	  section.data(2).logicalSrcIdx = 27;
	  section.data(2).dtTransOffset = 7;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK
	  section.data(3).logicalSrcIdx = 28;
	  section.data(3).dtTransOffset = 14;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK
	  section.data(4).logicalSrcIdx = 29;
	  section.data(4).dtTransOffset = 21;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar8_IWORK
	  section.data(5).logicalSrcIdx = 30;
	  section.data(5).dtTransOffset = 28;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_f
	  section.data(6).logicalSrcIdx = 31;
	  section.data(6).dtTransOffset = 35;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar8_IWORK_f
	  section.data(7).logicalSrcIdx = 32;
	  section.data(7).dtTransOffset = 42;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_j
	  section.data(8).logicalSrcIdx = 33;
	  section.data(8).dtTransOffset = 49;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar8_IWORK_j
	  section.data(9).logicalSrcIdx = 34;
	  section.data(9).dtTransOffset = 56;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_jn
	  section.data(10).logicalSrcIdx = 35;
	  section.data(10).dtTransOffset = 63;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar8_IWORK_o
	  section.data(11).logicalSrcIdx = 36;
	  section.data(11).dtTransOffset = 70;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_b
	  section.data(12).logicalSrcIdx = 37;
	  section.data(12).dtTransOffset = 77;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_n
	  section.data(13).logicalSrcIdx = 38;
	  section.data(13).dtTransOffset = 84;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK
	  section.data(14).logicalSrcIdx = 39;
	  section.data(14).dtTransOffset = 91;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar4_IWORK_i
	  section.data(15).logicalSrcIdx = 40;
	  section.data(15).dtTransOffset = 98;
	
	  ;% umich_2d_walking_DWork.EtherCATRxFrames_IWORK
	  section.data(16).logicalSrcIdx = 41;
	  section.data(16).dtTransOffset = 105;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK
	  section.data(17).logicalSrcIdx = 42;
	  section.data(17).dtTransOffset = 106;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK
	  section.data(18).logicalSrcIdx = 43;
	  section.data(18).dtTransOffset = 113;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK
	  section.data(19).logicalSrcIdx = 44;
	  section.data(19).dtTransOffset = 120;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK
	  section.data(20).logicalSrcIdx = 45;
	  section.data(20).dtTransOffset = 127;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK
	  section.data(21).logicalSrcIdx = 46;
	  section.data(21).dtTransOffset = 134;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK
	  section.data(22).logicalSrcIdx = 47;
	  section.data(22).dtTransOffset = 141;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK
	  section.data(23).logicalSrcIdx = 48;
	  section.data(23).dtTransOffset = 148;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_a
	  section.data(24).logicalSrcIdx = 49;
	  section.data(24).dtTransOffset = 155;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK
	  section.data(25).logicalSrcIdx = 50;
	  section.data(25).dtTransOffset = 162;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK
	  section.data(26).logicalSrcIdx = 51;
	  section.data(26).dtTransOffset = 169;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_b
	  section.data(27).logicalSrcIdx = 52;
	  section.data(27).dtTransOffset = 176;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_g
	  section.data(28).logicalSrcIdx = 53;
	  section.data(28).dtTransOffset = 183;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_i
	  section.data(29).logicalSrcIdx = 54;
	  section.data(29).dtTransOffset = 190;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_c
	  section.data(30).logicalSrcIdx = 55;
	  section.data(30).dtTransOffset = 197;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_i
	  section.data(31).logicalSrcIdx = 56;
	  section.data(31).dtTransOffset = 204;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_d
	  section.data(32).logicalSrcIdx = 57;
	  section.data(32).dtTransOffset = 211;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK
	  section.data(33).logicalSrcIdx = 58;
	  section.data(33).dtTransOffset = 218;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK
	  section.data(34).logicalSrcIdx = 59;
	  section.data(34).dtTransOffset = 225;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_g
	  section.data(35).logicalSrcIdx = 60;
	  section.data(35).dtTransOffset = 232;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_p
	  section.data(36).logicalSrcIdx = 61;
	  section.data(36).dtTransOffset = 239;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_l
	  section.data(37).logicalSrcIdx = 62;
	  section.data(37).dtTransOffset = 246;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar9_IWORK
	  section.data(38).logicalSrcIdx = 63;
	  section.data(38).dtTransOffset = 253;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK
	  section.data(39).logicalSrcIdx = 64;
	  section.data(39).dtTransOffset = 260;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_n
	  section.data(40).logicalSrcIdx = 65;
	  section.data(40).dtTransOffset = 267;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_o
	  section.data(41).logicalSrcIdx = 66;
	  section.data(41).dtTransOffset = 274;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar11_IWORK
	  section.data(42).logicalSrcIdx = 67;
	  section.data(42).dtTransOffset = 281;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_j
	  section.data(43).logicalSrcIdx = 68;
	  section.data(43).dtTransOffset = 288;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_d
	  section.data(44).logicalSrcIdx = 69;
	  section.data(44).dtTransOffset = 295;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar10_IWORK
	  section.data(45).logicalSrcIdx = 70;
	  section.data(45).dtTransOffset = 302;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_j
	  section.data(46).logicalSrcIdx = 71;
	  section.data(46).dtTransOffset = 309;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK_m
	  section.data(47).logicalSrcIdx = 72;
	  section.data(47).dtTransOffset = 316;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK_m
	  section.data(48).logicalSrcIdx = 73;
	  section.data(48).dtTransOffset = 323;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_c
	  section.data(49).logicalSrcIdx = 74;
	  section.data(49).dtTransOffset = 330;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_a
	  section.data(50).logicalSrcIdx = 75;
	  section.data(50).dtTransOffset = 337;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_i
	  section.data(51).logicalSrcIdx = 76;
	  section.data(51).dtTransOffset = 344;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK_b
	  section.data(52).logicalSrcIdx = 77;
	  section.data(52).dtTransOffset = 351;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_i
	  section.data(53).logicalSrcIdx = 78;
	  section.data(53).dtTransOffset = 358;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK
	  section.data(54).logicalSrcIdx = 79;
	  section.data(54).dtTransOffset = 365;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_n
	  section.data(55).logicalSrcIdx = 80;
	  section.data(55).dtTransOffset = 372;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_f
	  section.data(56).logicalSrcIdx = 81;
	  section.data(56).dtTransOffset = 379;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK_p
	  section.data(57).logicalSrcIdx = 82;
	  section.data(57).dtTransOffset = 386;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_p
	  section.data(58).logicalSrcIdx = 83;
	  section.data(58).dtTransOffset = 393;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_g
	  section.data(59).logicalSrcIdx = 84;
	  section.data(59).dtTransOffset = 400;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_h
	  section.data(60).logicalSrcIdx = 85;
	  section.data(60).dtTransOffset = 407;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK_f
	  section.data(61).logicalSrcIdx = 86;
	  section.data(61).dtTransOffset = 414;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar23_IWORK
	  section.data(62).logicalSrcIdx = 87;
	  section.data(62).dtTransOffset = 421;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK_i
	  section.data(63).logicalSrcIdx = 88;
	  section.data(63).dtTransOffset = 428;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_jo
	  section.data(64).logicalSrcIdx = 89;
	  section.data(64).dtTransOffset = 435;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar7_IWORK
	  section.data(65).logicalSrcIdx = 90;
	  section.data(65).dtTransOffset = 442;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_p
	  section.data(66).logicalSrcIdx = 91;
	  section.data(66).dtTransOffset = 449;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_lw
	  section.data(67).logicalSrcIdx = 92;
	  section.data(67).dtTransOffset = 456;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar23_IWORK_b
	  section.data(68).logicalSrcIdx = 93;
	  section.data(68).dtTransOffset = 463;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar21_IWORK
	  section.data(69).logicalSrcIdx = 94;
	  section.data(69).dtTransOffset = 470;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar20_IWORK
	  section.data(70).logicalSrcIdx = 95;
	  section.data(70).dtTransOffset = 477;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar22_IWORK
	  section.data(71).logicalSrcIdx = 96;
	  section.data(71).dtTransOffset = 484;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK_c
	  section.data(72).logicalSrcIdx = 97;
	  section.data(72).dtTransOffset = 491;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK_c
	  section.data(73).logicalSrcIdx = 98;
	  section.data(73).dtTransOffset = 498;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_il
	  section.data(74).logicalSrcIdx = 99;
	  section.data(74).dtTransOffset = 505;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_g
	  section.data(75).logicalSrcIdx = 100;
	  section.data(75).dtTransOffset = 512;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar9_IWORK_p
	  section.data(76).logicalSrcIdx = 101;
	  section.data(76).dtTransOffset = 519;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_f
	  section.data(77).logicalSrcIdx = 102;
	  section.data(77).dtTransOffset = 526;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar11_IWORK_p
	  section.data(78).logicalSrcIdx = 103;
	  section.data(78).dtTransOffset = 533;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar10_IWORK_f
	  section.data(79).logicalSrcIdx = 104;
	  section.data(79).dtTransOffset = 540;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_i
	  section.data(80).logicalSrcIdx = 105;
	  section.data(80).dtTransOffset = 547;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar21_IWORK_k
	  section.data(81).logicalSrcIdx = 106;
	  section.data(81).dtTransOffset = 554;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_b
	  section.data(82).logicalSrcIdx = 107;
	  section.data(82).dtTransOffset = 561;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_c
	  section.data(83).logicalSrcIdx = 108;
	  section.data(83).dtTransOffset = 568;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_n
	  section.data(84).logicalSrcIdx = 109;
	  section.data(84).dtTransOffset = 575;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK_l
	  section.data(85).logicalSrcIdx = 110;
	  section.data(85).dtTransOffset = 582;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK_n
	  section.data(86).logicalSrcIdx = 111;
	  section.data(86).dtTransOffset = 589;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_a
	  section.data(87).logicalSrcIdx = 112;
	  section.data(87).dtTransOffset = 596;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar7_IWORK_e
	  section.data(88).logicalSrcIdx = 113;
	  section.data(88).dtTransOffset = 603;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_m
	  section.data(89).logicalSrcIdx = 114;
	  section.data(89).dtTransOffset = 610;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_n
	  section.data(90).logicalSrcIdx = 115;
	  section.data(90).dtTransOffset = 617;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar20_IWORK_k
	  section.data(91).logicalSrcIdx = 116;
	  section.data(91).dtTransOffset = 624;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar23_IWORK_o
	  section.data(92).logicalSrcIdx = 117;
	  section.data(92).dtTransOffset = 631;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar21_IWORK_m
	  section.data(93).logicalSrcIdx = 118;
	  section.data(93).dtTransOffset = 638;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar20_IWORK_j
	  section.data(94).logicalSrcIdx = 119;
	  section.data(94).dtTransOffset = 645;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar22_IWORK_i
	  section.data(95).logicalSrcIdx = 120;
	  section.data(95).dtTransOffset = 652;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK_e
	  section.data(96).logicalSrcIdx = 121;
	  section.data(96).dtTransOffset = 659;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK_f
	  section.data(97).logicalSrcIdx = 122;
	  section.data(97).dtTransOffset = 666;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_b
	  section.data(98).logicalSrcIdx = 123;
	  section.data(98).dtTransOffset = 673;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_pb
	  section.data(99).logicalSrcIdx = 124;
	  section.data(99).dtTransOffset = 680;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar9_IWORK_o
	  section.data(100).logicalSrcIdx = 125;
	  section.data(100).dtTransOffset = 687;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar22_IWORK_j
	  section.data(101).logicalSrcIdx = 126;
	  section.data(101).dtTransOffset = 694;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_h
	  section.data(102).logicalSrcIdx = 127;
	  section.data(102).dtTransOffset = 701;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar11_IWORK_d
	  section.data(103).logicalSrcIdx = 128;
	  section.data(103).dtTransOffset = 708;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar10_IWORK_m
	  section.data(104).logicalSrcIdx = 129;
	  section.data(104).dtTransOffset = 715;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_o
	  section.data(105).logicalSrcIdx = 130;
	  section.data(105).dtTransOffset = 722;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_pd
	  section.data(106).logicalSrcIdx = 131;
	  section.data(106).dtTransOffset = 729;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_d
	  section.data(107).logicalSrcIdx = 132;
	  section.data(107).dtTransOffset = 736;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_a
	  section.data(108).logicalSrcIdx = 133;
	  section.data(108).dtTransOffset = 743;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK_a
	  section.data(109).logicalSrcIdx = 134;
	  section.data(109).dtTransOffset = 750;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK_j
	  section.data(110).logicalSrcIdx = 135;
	  section.data(110).dtTransOffset = 757;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_n
	  section.data(111).logicalSrcIdx = 136;
	  section.data(111).dtTransOffset = 764;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK_a
	  section.data(112).logicalSrcIdx = 137;
	  section.data(112).dtTransOffset = 771;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar7_IWORK_p
	  section.data(113).logicalSrcIdx = 138;
	  section.data(113).dtTransOffset = 778;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_l
	  section.data(114).logicalSrcIdx = 139;
	  section.data(114).dtTransOffset = 785;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_e
	  section.data(115).logicalSrcIdx = 140;
	  section.data(115).dtTransOffset = 792;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar23_IWORK_o0
	  section.data(116).logicalSrcIdx = 141;
	  section.data(116).dtTransOffset = 799;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar21_IWORK_o
	  section.data(117).logicalSrcIdx = 142;
	  section.data(117).dtTransOffset = 806;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar20_IWORK_o
	  section.data(118).logicalSrcIdx = 143;
	  section.data(118).dtTransOffset = 813;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar22_IWORK_c
	  section.data(119).logicalSrcIdx = 144;
	  section.data(119).dtTransOffset = 820;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar18_IWORK_j
	  section.data(120).logicalSrcIdx = 145;
	  section.data(120).dtTransOffset = 827;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK_i
	  section.data(121).logicalSrcIdx = 146;
	  section.data(121).dtTransOffset = 834;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar19_IWORK_b
	  section.data(122).logicalSrcIdx = 147;
	  section.data(122).dtTransOffset = 841;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_bs
	  section.data(123).logicalSrcIdx = 148;
	  section.data(123).dtTransOffset = 848;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar5_IWORK_o
	  section.data(124).logicalSrcIdx = 149;
	  section.data(124).dtTransOffset = 855;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar9_IWORK_k
	  section.data(125).logicalSrcIdx = 150;
	  section.data(125).dtTransOffset = 862;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar1_IWORK_k
	  section.data(126).logicalSrcIdx = 151;
	  section.data(126).dtTransOffset = 869;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar11_IWORK_pj
	  section.data(127).logicalSrcIdx = 152;
	  section.data(127).dtTransOffset = 876;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar10_IWORK_mv
	  section.data(128).logicalSrcIdx = 153;
	  section.data(128).dtTransOffset = 883;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar12_IWORK_g
	  section.data(129).logicalSrcIdx = 154;
	  section.data(129).dtTransOffset = 890;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar13_IWORK_pr
	  section.data(130).logicalSrcIdx = 155;
	  section.data(130).dtTransOffset = 897;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_m
	  section.data(131).logicalSrcIdx = 156;
	  section.data(131).dtTransOffset = 904;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar_IWORK_f
	  section.data(132).logicalSrcIdx = 157;
	  section.data(132).dtTransOffset = 911;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar15_IWORK_f
	  section.data(133).logicalSrcIdx = 158;
	  section.data(133).dtTransOffset = 918;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar16_IWORK_a3
	  section.data(134).logicalSrcIdx = 159;
	  section.data(134).dtTransOffset = 925;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar17_IWORK_l
	  section.data(135).logicalSrcIdx = 160;
	  section.data(135).dtTransOffset = 932;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar6_IWORK_g
	  section.data(136).logicalSrcIdx = 161;
	  section.data(136).dtTransOffset = 939;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar7_IWORK_b
	  section.data(137).logicalSrcIdx = 162;
	  section.data(137).dtTransOffset = 946;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar2_IWORK_i
	  section.data(138).logicalSrcIdx = 163;
	  section.data(138).dtTransOffset = 953;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar3_IWORK_e5
	  section.data(139).logicalSrcIdx = 164;
	  section.data(139).dtTransOffset = 960;
	
	  ;% umich_2d_walking_DWork.EtherCATRxVar14_IWORK_i
	  section.data(140).logicalSrcIdx = 165;
	  section.data(140).dtTransOffset = 967;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_h
	  section.data(141).logicalSrcIdx = 166;
	  section.data(141).dtTransOffset = 974;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_f
	  section.data(142).logicalSrcIdx = 167;
	  section.data(142).dtTransOffset = 981;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK
	  section.data(143).logicalSrcIdx = 168;
	  section.data(143).dtTransOffset = 988;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_d
	  section.data(144).logicalSrcIdx = 169;
	  section.data(144).dtTransOffset = 995;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_j
	  section.data(145).logicalSrcIdx = 170;
	  section.data(145).dtTransOffset = 1002;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK_i
	  section.data(146).logicalSrcIdx = 171;
	  section.data(146).dtTransOffset = 1009;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_e
	  section.data(147).logicalSrcIdx = 172;
	  section.data(147).dtTransOffset = 1016;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_g
	  section.data(148).logicalSrcIdx = 173;
	  section.data(148).dtTransOffset = 1023;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK_j
	  section.data(149).logicalSrcIdx = 174;
	  section.data(149).dtTransOffset = 1030;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_c
	  section.data(150).logicalSrcIdx = 175;
	  section.data(150).dtTransOffset = 1037;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_p
	  section.data(151).logicalSrcIdx = 176;
	  section.data(151).dtTransOffset = 1044;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK_o
	  section.data(152).logicalSrcIdx = 177;
	  section.data(152).dtTransOffset = 1051;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_ct
	  section.data(153).logicalSrcIdx = 178;
	  section.data(153).dtTransOffset = 1058;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_b
	  section.data(154).logicalSrcIdx = 179;
	  section.data(154).dtTransOffset = 1065;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK_jr
	  section.data(155).logicalSrcIdx = 180;
	  section.data(155).dtTransOffset = 1072;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar3_IWORK_g
	  section.data(156).logicalSrcIdx = 181;
	  section.data(156).dtTransOffset = 1079;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar4_IWORK_e
	  section.data(157).logicalSrcIdx = 182;
	  section.data(157).dtTransOffset = 1086;
	
	  ;% umich_2d_walking_DWork.EtherCATTxVar5_IWORK_b
	  section.data(158).logicalSrcIdx = 183;
	  section.data(158).dtTransOffset = 1093;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.Counter_Count
	  section.data(1).logicalSrcIdx = 184;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.InitialLateralHipAnglesrad_Subs
	  section.data(1).logicalSrcIdx = 185;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.ActuatorControl_SubsysRanBC
	  section.data(2).logicalSrcIdx = 186;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.DiscreteTimeIntegrator_SYSTEM_E
	  section.data(1).logicalSrcIdx = 187;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.is_active_c2_umich_2d_walking
	  section.data(2).logicalSrcIdx = 188;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_DWork.is_active_c8_umich_2d_walking
	  section.data(3).logicalSrcIdx = 189;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% umich_2d_walking_DWork.isStable
	  section.data(1).logicalSrcIdx = 190;
	  section.data(1).dtTransOffset = 0;
	
	  ;% umich_2d_walking_DWork.doneDoubleBufferReInit
	  section.data(2).logicalSrcIdx = 191;
	  section.data(2).dtTransOffset = 1;
	
	  ;% umich_2d_walking_DWork.last_s_not_empty
	  section.data(3).logicalSrcIdx = 192;
	  section.data(3).dtTransOffset = 2;
	
	  ;% umich_2d_walking_DWork.isStable_j
	  section.data(4).logicalSrcIdx = 193;
	  section.data(4).dtTransOffset = 3;
	
	  ;% umich_2d_walking_DWork.doneDoubleBufferReInit_a
	  section.data(5).logicalSrcIdx = 194;
	  section.data(5).dtTransOffset = 4;
	
	  ;% umich_2d_walking_DWork.ActuatorControl_MODE
	  section.data(6).logicalSrcIdx = 195;
	  section.data(6).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 4084565516;
  targMap.checksum1 = 891450955;
  targMap.checksum2 = 2051772576;
  targMap.checksum3 = 3171870643;

