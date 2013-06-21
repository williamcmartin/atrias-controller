function pt=initial_setuppt
pt = [];
pt(1).blockname = 'medulla_cmd';
pt(1).paramname = 'Value';
pt(1).class     = 'scalar';
pt(1).nrows     = 1;
pt(1).ncols     = 1;
pt(1).subsource = 'SS_DOUBLE';
pt(1).ndims     = '2';
pt(1).size      = '[]';
pt(getlenPT) = pt(1);

pt(2).blockname = 'Compare To Constant/Constant';
pt(2).paramname = 'Value';
pt(2).class     = 'scalar';
pt(2).nrows     = 1;
pt(2).ncols     = 1;
pt(2).subsource = 'SS_DOUBLE';
pt(2).ndims     = '2';
pt(2).size      = '[]';

pt(3).blockname = 'DAQ/raw_signals';
pt(3).paramname = 'Gain';
pt(3).class     = 'scalar';
pt(3).nrows     = 1;
pt(3).ncols     = 1;
pt(3).subsource = 'SS_DOUBLE';
pt(3).ndims     = '2';
pt(3).size      = '[]';

pt(4).blockname = 'DAQ/sw';
pt(4).paramname = 'Gain';
pt(4).class     = 'scalar';
pt(4).nrows     = 1;
pt(4).ncols     = 1;
pt(4).subsource = 'SS_DOUBLE';
pt(4).ndims     = '2';
pt(4).size      = '[]';

pt(5).blockname = 'DAQ/Motor Saturation';
pt(5).paramname = 'UpperLimit';
pt(5).class     = 'scalar';
pt(5).nrows     = 1;
pt(5).ncols     = 1;
pt(5).subsource = 'SS_DOUBLE';
pt(5).ndims     = '2';
pt(5).size      = '[]';

pt(6).blockname = 'DAQ/Motor Saturation';
pt(6).paramname = 'LowerLimit';
pt(6).class     = 'scalar';
pt(6).nrows     = 1;
pt(6).ncols     = 1;
pt(6).subsource = 'SS_DOUBLE';
pt(6).ndims     = '2';
pt(6).size      = '[]';

pt(7).blockname = 'DAQ/Counter';
pt(7).paramname = 'InitialCount';
pt(7).class     = 'scalar';
pt(7).nrows     = 1;
pt(7).ncols     = 1;
pt(7).subsource = 'SS_UINT16';
pt(7).ndims     = '2';
pt(7).size      = '[]';

pt(8).blockname = 'DAQ/Counter';
pt(8).paramname = 'HitValue';
pt(8).class     = 'scalar';
pt(8).nrows     = 1;
pt(8).ncols     = 1;
pt(8).subsource = 'SS_UINT16';
pt(8).ndims     = '2';
pt(8).size      = '[]';

pt(9).blockname = 'DAQ/EtherCAT';
pt(9).paramname = 'P1';
pt(9).class     = 'scalar';
pt(9).nrows     = 1;
pt(9).ncols     = 1;
pt(9).subsource = 'SS_DOUBLE';
pt(9).ndims     = '2';
pt(9).size      = '[]';

pt(10).blockname = 'DAQ/EtherCAT';
pt(10).paramname = 'P2';
pt(10).class     = 'scalar';
pt(10).nrows     = 1;
pt(10).ncols     = 1;
pt(10).subsource = 'SS_DOUBLE';
pt(10).ndims     = '2';
pt(10).size      = '[]';

pt(11).blockname = 'DAQ/EtherCAT';
pt(11).paramname = 'P3';
pt(11).class     = 'scalar';
pt(11).nrows     = 1;
pt(11).ncols     = 1;
pt(11).subsource = 'SS_DOUBLE';
pt(11).ndims     = '2';
pt(11).size      = '[]';

pt(12).blockname = 'DAQ/EtherCAT';
pt(12).paramname = 'P4';
pt(12).class     = 'scalar';
pt(12).nrows     = 1;
pt(12).ncols     = 1;
pt(12).subsource = 'SS_DOUBLE';
pt(12).ndims     = '2';
pt(12).size      = '[]';

pt(13).blockname = 'DAQ/EtherCAT Rx Frames';
pt(13).paramname = 'P1';
pt(13).class     = 'scalar';
pt(13).nrows     = 1;
pt(13).ncols     = 1;
pt(13).subsource = 'SS_DOUBLE';
pt(13).ndims     = '2';
pt(13).size      = '[]';

pt(14).blockname = 'Simple Sinusoidal Motion/motor_torque_cmd';
pt(14).paramname = 'InitialOutput';
pt(14).class     = 'vector';
pt(14).nrows     = 1;
pt(14).ncols     = 6;
pt(14).subsource = 'SS_DOUBLE';
pt(14).ndims     = '2';
pt(14).size      = '[]';

pt(15).blockname = 'Simple Sinusoidal Motion/Constant';
pt(15).paramname = 'Value';
pt(15).class     = 'scalar';
pt(15).nrows     = 1;
pt(15).ncols     = 1;
pt(15).subsource = 'SS_DOUBLE';
pt(15).ndims     = '2';
pt(15).size      = '[]';

pt(16).blockname = 'Simple Sinusoidal Motion/Constant1';
pt(16).paramname = 'Value';
pt(16).class     = 'scalar';
pt(16).nrows     = 1;
pt(16).ncols     = 1;
pt(16).subsource = 'SS_DOUBLE';
pt(16).ndims     = '2';
pt(16).size      = '[]';

pt(17).blockname = 'Simple Sinusoidal Motion/Constant2';
pt(17).paramname = 'Value';
pt(17).class     = 'scalar';
pt(17).nrows     = 1;
pt(17).ncols     = 1;
pt(17).subsource = 'SS_DOUBLE';
pt(17).ndims     = '2';
pt(17).size      = '[]';

pt(18).blockname = 'Simple Sinusoidal Motion/Motor Saturation';
pt(18).paramname = 'UpperLimit';
pt(18).class     = 'scalar';
pt(18).nrows     = 1;
pt(18).ncols     = 1;
pt(18).subsource = 'SS_DOUBLE';
pt(18).ndims     = '2';
pt(18).size      = '[]';

pt(19).blockname = 'Simple Sinusoidal Motion/Motor Saturation';
pt(19).paramname = 'LowerLimit';
pt(19).class     = 'scalar';
pt(19).nrows     = 1;
pt(19).ncols     = 1;
pt(19).subsource = 'SS_DOUBLE';
pt(19).ndims     = '2';
pt(19).size      = '[]';

pt(20).blockname = 'Simple Sinusoidal Motion/Manual Switch';
pt(20).paramname = 'CurrentSetting';
pt(20).class     = 'scalar';
pt(20).nrows     = 1;
pt(20).ncols     = 1;
pt(20).subsource = 'SS_UINT8';
pt(20).ndims     = '2';
pt(20).size      = '[]';

pt(21).blockname = 'Simple Sinusoidal Motion/Manual Switch1';
pt(21).paramname = 'CurrentSetting';
pt(21).class     = 'scalar';
pt(21).nrows     = 1;
pt(21).ncols     = 1;
pt(21).subsource = 'SS_UINT8';
pt(21).ndims     = '2';
pt(21).size      = '[]';

pt(22).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(22).paramname = 'P1';
pt(22).class     = 'vector';
pt(22).nrows     = 1;
pt(22).ncols     = 57;
pt(22).subsource = 'SS_DOUBLE';
pt(22).ndims     = '2';
pt(22).size      = '[]';

pt(23).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(23).paramname = 'P2';
pt(23).class     = 'scalar';
pt(23).nrows     = 1;
pt(23).ncols     = 1;
pt(23).subsource = 'SS_DOUBLE';
pt(23).ndims     = '2';
pt(23).size      = '[]';

pt(24).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(24).paramname = 'P3';
pt(24).class     = 'scalar';
pt(24).nrows     = 1;
pt(24).ncols     = 1;
pt(24).subsource = 'SS_DOUBLE';
pt(24).ndims     = '2';
pt(24).size      = '[]';

pt(25).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(25).paramname = 'P4';
pt(25).class     = 'scalar';
pt(25).nrows     = 1;
pt(25).ncols     = 1;
pt(25).subsource = 'SS_DOUBLE';
pt(25).ndims     = '2';
pt(25).size      = '[]';

pt(26).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(26).paramname = 'P5';
pt(26).class     = 'scalar';
pt(26).nrows     = 1;
pt(26).ncols     = 1;
pt(26).subsource = 'SS_DOUBLE';
pt(26).ndims     = '2';
pt(26).size      = '[]';

pt(27).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(27).paramname = 'P6';
pt(27).class     = 'scalar';
pt(27).nrows     = 1;
pt(27).ncols     = 1;
pt(27).subsource = 'SS_DOUBLE';
pt(27).ndims     = '2';
pt(27).size      = '[]';

pt(28).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var ';
pt(28).paramname = 'P7';
pt(28).class     = 'scalar';
pt(28).nrows     = 1;
pt(28).ncols     = 1;
pt(28).subsource = 'SS_DOUBLE';
pt(28).ndims     = '2';
pt(28).size      = '[]';

pt(29).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(29).paramname = 'P1';
pt(29).class     = 'vector';
pt(29).nrows     = 1;
pt(29).ncols     = 55;
pt(29).subsource = 'SS_DOUBLE';
pt(29).ndims     = '2';
pt(29).size      = '[]';

pt(30).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(30).paramname = 'P2';
pt(30).class     = 'scalar';
pt(30).nrows     = 1;
pt(30).ncols     = 1;
pt(30).subsource = 'SS_DOUBLE';
pt(30).ndims     = '2';
pt(30).size      = '[]';

pt(31).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(31).paramname = 'P3';
pt(31).class     = 'scalar';
pt(31).nrows     = 1;
pt(31).ncols     = 1;
pt(31).subsource = 'SS_DOUBLE';
pt(31).ndims     = '2';
pt(31).size      = '[]';

pt(32).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(32).paramname = 'P4';
pt(32).class     = 'scalar';
pt(32).nrows     = 1;
pt(32).ncols     = 1;
pt(32).subsource = 'SS_DOUBLE';
pt(32).ndims     = '2';
pt(32).size      = '[]';

pt(33).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(33).paramname = 'P5';
pt(33).class     = 'scalar';
pt(33).nrows     = 1;
pt(33).ncols     = 1;
pt(33).subsource = 'SS_DOUBLE';
pt(33).ndims     = '2';
pt(33).size      = '[]';

pt(34).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(34).paramname = 'P6';
pt(34).class     = 'scalar';
pt(34).nrows     = 1;
pt(34).ncols     = 1;
pt(34).subsource = 'SS_DOUBLE';
pt(34).ndims     = '2';
pt(34).size      = '[]';

pt(35).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 1';
pt(35).paramname = 'P7';
pt(35).class     = 'scalar';
pt(35).nrows     = 1;
pt(35).ncols     = 1;
pt(35).subsource = 'SS_DOUBLE';
pt(35).ndims     = '2';
pt(35).size      = '[]';

pt(36).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(36).paramname = 'P1';
pt(36).class     = 'vector';
pt(36).nrows     = 1;
pt(36).ncols     = 64;
pt(36).subsource = 'SS_DOUBLE';
pt(36).ndims     = '2';
pt(36).size      = '[]';

pt(37).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(37).paramname = 'P2';
pt(37).class     = 'scalar';
pt(37).nrows     = 1;
pt(37).ncols     = 1;
pt(37).subsource = 'SS_DOUBLE';
pt(37).ndims     = '2';
pt(37).size      = '[]';

pt(38).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(38).paramname = 'P3';
pt(38).class     = 'scalar';
pt(38).nrows     = 1;
pt(38).ncols     = 1;
pt(38).subsource = 'SS_DOUBLE';
pt(38).ndims     = '2';
pt(38).size      = '[]';

pt(39).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(39).paramname = 'P4';
pt(39).class     = 'scalar';
pt(39).nrows     = 1;
pt(39).ncols     = 1;
pt(39).subsource = 'SS_DOUBLE';
pt(39).ndims     = '2';
pt(39).size      = '[]';

pt(40).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(40).paramname = 'P5';
pt(40).class     = 'scalar';
pt(40).nrows     = 1;
pt(40).ncols     = 1;
pt(40).subsource = 'SS_DOUBLE';
pt(40).ndims     = '2';
pt(40).size      = '[]';

pt(41).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(41).paramname = 'P6';
pt(41).class     = 'scalar';
pt(41).nrows     = 1;
pt(41).ncols     = 1;
pt(41).subsource = 'SS_DOUBLE';
pt(41).ndims     = '2';
pt(41).size      = '[]';

pt(42).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 12';
pt(42).paramname = 'P7';
pt(42).class     = 'scalar';
pt(42).nrows     = 1;
pt(42).ncols     = 1;
pt(42).subsource = 'SS_DOUBLE';
pt(42).ndims     = '2';
pt(42).size      = '[]';

pt(43).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(43).paramname = 'P1';
pt(43).class     = 'vector';
pt(43).nrows     = 1;
pt(43).ncols     = 68;
pt(43).subsource = 'SS_DOUBLE';
pt(43).ndims     = '2';
pt(43).size      = '[]';

pt(44).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(44).paramname = 'P2';
pt(44).class     = 'scalar';
pt(44).nrows     = 1;
pt(44).ncols     = 1;
pt(44).subsource = 'SS_DOUBLE';
pt(44).ndims     = '2';
pt(44).size      = '[]';

pt(45).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(45).paramname = 'P3';
pt(45).class     = 'scalar';
pt(45).nrows     = 1;
pt(45).ncols     = 1;
pt(45).subsource = 'SS_DOUBLE';
pt(45).ndims     = '2';
pt(45).size      = '[]';

pt(46).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(46).paramname = 'P4';
pt(46).class     = 'scalar';
pt(46).nrows     = 1;
pt(46).ncols     = 1;
pt(46).subsource = 'SS_DOUBLE';
pt(46).ndims     = '2';
pt(46).size      = '[]';

pt(47).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(47).paramname = 'P5';
pt(47).class     = 'scalar';
pt(47).nrows     = 1;
pt(47).ncols     = 1;
pt(47).subsource = 'SS_DOUBLE';
pt(47).ndims     = '2';
pt(47).size      = '[]';

pt(48).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(48).paramname = 'P6';
pt(48).class     = 'scalar';
pt(48).nrows     = 1;
pt(48).ncols     = 1;
pt(48).subsource = 'SS_DOUBLE';
pt(48).ndims     = '2';
pt(48).size      = '[]';

pt(49).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 13';
pt(49).paramname = 'P7';
pt(49).class     = 'scalar';
pt(49).nrows     = 1;
pt(49).ncols     = 1;
pt(49).subsource = 'SS_DOUBLE';
pt(49).ndims     = '2';
pt(49).size      = '[]';

pt(50).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(50).paramname = 'P1';
pt(50).class     = 'vector';
pt(50).nrows     = 1;
pt(50).ncols     = 59;
pt(50).subsource = 'SS_DOUBLE';
pt(50).ndims     = '2';
pt(50).size      = '[]';

pt(51).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(51).paramname = 'P2';
pt(51).class     = 'scalar';
pt(51).nrows     = 1;
pt(51).ncols     = 1;
pt(51).subsource = 'SS_DOUBLE';
pt(51).ndims     = '2';
pt(51).size      = '[]';

pt(52).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(52).paramname = 'P3';
pt(52).class     = 'scalar';
pt(52).nrows     = 1;
pt(52).ncols     = 1;
pt(52).subsource = 'SS_DOUBLE';
pt(52).ndims     = '2';
pt(52).size      = '[]';

pt(53).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(53).paramname = 'P4';
pt(53).class     = 'scalar';
pt(53).nrows     = 1;
pt(53).ncols     = 1;
pt(53).subsource = 'SS_DOUBLE';
pt(53).ndims     = '2';
pt(53).size      = '[]';

pt(54).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(54).paramname = 'P5';
pt(54).class     = 'scalar';
pt(54).nrows     = 1;
pt(54).ncols     = 1;
pt(54).subsource = 'SS_DOUBLE';
pt(54).ndims     = '2';
pt(54).size      = '[]';

pt(55).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(55).paramname = 'P6';
pt(55).class     = 'scalar';
pt(55).nrows     = 1;
pt(55).ncols     = 1;
pt(55).subsource = 'SS_DOUBLE';
pt(55).ndims     = '2';
pt(55).size      = '[]';

pt(56).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 14';
pt(56).paramname = 'P7';
pt(56).class     = 'scalar';
pt(56).nrows     = 1;
pt(56).ncols     = 1;
pt(56).subsource = 'SS_DOUBLE';
pt(56).ndims     = '2';
pt(56).size      = '[]';

pt(57).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(57).paramname = 'P1';
pt(57).class     = 'vector';
pt(57).nrows     = 1;
pt(57).ncols     = 62;
pt(57).subsource = 'SS_DOUBLE';
pt(57).ndims     = '2';
pt(57).size      = '[]';

pt(58).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(58).paramname = 'P2';
pt(58).class     = 'scalar';
pt(58).nrows     = 1;
pt(58).ncols     = 1;
pt(58).subsource = 'SS_DOUBLE';
pt(58).ndims     = '2';
pt(58).size      = '[]';

pt(59).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(59).paramname = 'P3';
pt(59).class     = 'scalar';
pt(59).nrows     = 1;
pt(59).ncols     = 1;
pt(59).subsource = 'SS_DOUBLE';
pt(59).ndims     = '2';
pt(59).size      = '[]';

pt(60).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(60).paramname = 'P4';
pt(60).class     = 'scalar';
pt(60).nrows     = 1;
pt(60).ncols     = 1;
pt(60).subsource = 'SS_DOUBLE';
pt(60).ndims     = '2';
pt(60).size      = '[]';

pt(61).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(61).paramname = 'P5';
pt(61).class     = 'scalar';
pt(61).nrows     = 1;
pt(61).ncols     = 1;
pt(61).subsource = 'SS_DOUBLE';
pt(61).ndims     = '2';
pt(61).size      = '[]';

pt(62).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(62).paramname = 'P6';
pt(62).class     = 'scalar';
pt(62).nrows     = 1;
pt(62).ncols     = 1;
pt(62).subsource = 'SS_DOUBLE';
pt(62).ndims     = '2';
pt(62).size      = '[]';

pt(63).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 15';
pt(63).paramname = 'P7';
pt(63).class     = 'scalar';
pt(63).nrows     = 1;
pt(63).ncols     = 1;
pt(63).subsource = 'SS_DOUBLE';
pt(63).ndims     = '2';
pt(63).size      = '[]';

pt(64).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(64).paramname = 'P1';
pt(64).class     = 'vector';
pt(64).nrows     = 1;
pt(64).ncols     = 57;
pt(64).subsource = 'SS_DOUBLE';
pt(64).ndims     = '2';
pt(64).size      = '[]';

pt(65).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(65).paramname = 'P2';
pt(65).class     = 'scalar';
pt(65).nrows     = 1;
pt(65).ncols     = 1;
pt(65).subsource = 'SS_DOUBLE';
pt(65).ndims     = '2';
pt(65).size      = '[]';

pt(66).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(66).paramname = 'P3';
pt(66).class     = 'scalar';
pt(66).nrows     = 1;
pt(66).ncols     = 1;
pt(66).subsource = 'SS_DOUBLE';
pt(66).ndims     = '2';
pt(66).size      = '[]';

pt(67).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(67).paramname = 'P4';
pt(67).class     = 'scalar';
pt(67).nrows     = 1;
pt(67).ncols     = 1;
pt(67).subsource = 'SS_DOUBLE';
pt(67).ndims     = '2';
pt(67).size      = '[]';

pt(68).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(68).paramname = 'P5';
pt(68).class     = 'scalar';
pt(68).nrows     = 1;
pt(68).ncols     = 1;
pt(68).subsource = 'SS_DOUBLE';
pt(68).ndims     = '2';
pt(68).size      = '[]';

pt(69).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(69).paramname = 'P6';
pt(69).class     = 'scalar';
pt(69).nrows     = 1;
pt(69).ncols     = 1;
pt(69).subsource = 'SS_DOUBLE';
pt(69).ndims     = '2';
pt(69).size      = '[]';

pt(70).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 2';
pt(70).paramname = 'P7';
pt(70).class     = 'scalar';
pt(70).nrows     = 1;
pt(70).ncols     = 1;
pt(70).subsource = 'SS_DOUBLE';
pt(70).ndims     = '2';
pt(70).size      = '[]';

pt(71).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(71).paramname = 'P1';
pt(71).class     = 'vector';
pt(71).nrows     = 1;
pt(71).ncols     = 61;
pt(71).subsource = 'SS_DOUBLE';
pt(71).ndims     = '2';
pt(71).size      = '[]';

pt(72).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(72).paramname = 'P2';
pt(72).class     = 'scalar';
pt(72).nrows     = 1;
pt(72).ncols     = 1;
pt(72).subsource = 'SS_DOUBLE';
pt(72).ndims     = '2';
pt(72).size      = '[]';

pt(73).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(73).paramname = 'P3';
pt(73).class     = 'scalar';
pt(73).nrows     = 1;
pt(73).ncols     = 1;
pt(73).subsource = 'SS_DOUBLE';
pt(73).ndims     = '2';
pt(73).size      = '[]';

pt(74).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(74).paramname = 'P4';
pt(74).class     = 'scalar';
pt(74).nrows     = 1;
pt(74).ncols     = 1;
pt(74).subsource = 'SS_DOUBLE';
pt(74).ndims     = '2';
pt(74).size      = '[]';

pt(75).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(75).paramname = 'P5';
pt(75).class     = 'scalar';
pt(75).nrows     = 1;
pt(75).ncols     = 1;
pt(75).subsource = 'SS_DOUBLE';
pt(75).ndims     = '2';
pt(75).size      = '[]';

pt(76).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(76).paramname = 'P6';
pt(76).class     = 'scalar';
pt(76).nrows     = 1;
pt(76).ncols     = 1;
pt(76).subsource = 'SS_DOUBLE';
pt(76).ndims     = '2';
pt(76).size      = '[]';

pt(77).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 3';
pt(77).paramname = 'P7';
pt(77).class     = 'scalar';
pt(77).nrows     = 1;
pt(77).ncols     = 1;
pt(77).subsource = 'SS_DOUBLE';
pt(77).ndims     = '2';
pt(77).size      = '[]';

pt(78).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(78).paramname = 'P1';
pt(78).class     = 'vector';
pt(78).nrows     = 1;
pt(78).ncols     = 59;
pt(78).subsource = 'SS_DOUBLE';
pt(78).ndims     = '2';
pt(78).size      = '[]';

pt(79).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(79).paramname = 'P2';
pt(79).class     = 'scalar';
pt(79).nrows     = 1;
pt(79).ncols     = 1;
pt(79).subsource = 'SS_DOUBLE';
pt(79).ndims     = '2';
pt(79).size      = '[]';

pt(80).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(80).paramname = 'P3';
pt(80).class     = 'scalar';
pt(80).nrows     = 1;
pt(80).ncols     = 1;
pt(80).subsource = 'SS_DOUBLE';
pt(80).ndims     = '2';
pt(80).size      = '[]';

pt(81).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(81).paramname = 'P4';
pt(81).class     = 'scalar';
pt(81).nrows     = 1;
pt(81).ncols     = 1;
pt(81).subsource = 'SS_DOUBLE';
pt(81).ndims     = '2';
pt(81).size      = '[]';

pt(82).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(82).paramname = 'P5';
pt(82).class     = 'scalar';
pt(82).nrows     = 1;
pt(82).ncols     = 1;
pt(82).subsource = 'SS_DOUBLE';
pt(82).ndims     = '2';
pt(82).size      = '[]';

pt(83).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(83).paramname = 'P6';
pt(83).class     = 'scalar';
pt(83).nrows     = 1;
pt(83).ncols     = 1;
pt(83).subsource = 'SS_DOUBLE';
pt(83).ndims     = '2';
pt(83).size      = '[]';

pt(84).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 4';
pt(84).paramname = 'P7';
pt(84).class     = 'scalar';
pt(84).nrows     = 1;
pt(84).ncols     = 1;
pt(84).subsource = 'SS_DOUBLE';
pt(84).ndims     = '2';
pt(84).size      = '[]';

pt(85).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(85).paramname = 'P1';
pt(85).class     = 'vector';
pt(85).nrows     = 1;
pt(85).ncols     = 55;
pt(85).subsource = 'SS_DOUBLE';
pt(85).ndims     = '2';
pt(85).size      = '[]';

pt(86).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(86).paramname = 'P2';
pt(86).class     = 'scalar';
pt(86).nrows     = 1;
pt(86).ncols     = 1;
pt(86).subsource = 'SS_DOUBLE';
pt(86).ndims     = '2';
pt(86).size      = '[]';

pt(87).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(87).paramname = 'P3';
pt(87).class     = 'scalar';
pt(87).nrows     = 1;
pt(87).ncols     = 1;
pt(87).subsource = 'SS_DOUBLE';
pt(87).ndims     = '2';
pt(87).size      = '[]';

pt(88).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(88).paramname = 'P4';
pt(88).class     = 'scalar';
pt(88).nrows     = 1;
pt(88).ncols     = 1;
pt(88).subsource = 'SS_DOUBLE';
pt(88).ndims     = '2';
pt(88).size      = '[]';

pt(89).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(89).paramname = 'P5';
pt(89).class     = 'scalar';
pt(89).nrows     = 1;
pt(89).ncols     = 1;
pt(89).subsource = 'SS_DOUBLE';
pt(89).ndims     = '2';
pt(89).size      = '[]';

pt(90).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(90).paramname = 'P6';
pt(90).class     = 'scalar';
pt(90).nrows     = 1;
pt(90).ncols     = 1;
pt(90).subsource = 'SS_DOUBLE';
pt(90).ndims     = '2';
pt(90).size      = '[]';

pt(91).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 5';
pt(91).paramname = 'P7';
pt(91).class     = 'scalar';
pt(91).nrows     = 1;
pt(91).ncols     = 1;
pt(91).subsource = 'SS_DOUBLE';
pt(91).ndims     = '2';
pt(91).size      = '[]';

pt(92).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(92).paramname = 'P1';
pt(92).class     = 'vector';
pt(92).nrows     = 1;
pt(92).ncols     = 57;
pt(92).subsource = 'SS_DOUBLE';
pt(92).ndims     = '2';
pt(92).size      = '[]';

pt(93).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(93).paramname = 'P2';
pt(93).class     = 'scalar';
pt(93).nrows     = 1;
pt(93).ncols     = 1;
pt(93).subsource = 'SS_DOUBLE';
pt(93).ndims     = '2';
pt(93).size      = '[]';

pt(94).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(94).paramname = 'P3';
pt(94).class     = 'scalar';
pt(94).nrows     = 1;
pt(94).ncols     = 1;
pt(94).subsource = 'SS_DOUBLE';
pt(94).ndims     = '2';
pt(94).size      = '[]';

pt(95).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(95).paramname = 'P4';
pt(95).class     = 'scalar';
pt(95).nrows     = 1;
pt(95).ncols     = 1;
pt(95).subsource = 'SS_DOUBLE';
pt(95).ndims     = '2';
pt(95).size      = '[]';

pt(96).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(96).paramname = 'P5';
pt(96).class     = 'scalar';
pt(96).nrows     = 1;
pt(96).ncols     = 1;
pt(96).subsource = 'SS_DOUBLE';
pt(96).ndims     = '2';
pt(96).size      = '[]';

pt(97).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(97).paramname = 'P6';
pt(97).class     = 'scalar';
pt(97).nrows     = 1;
pt(97).ncols     = 1;
pt(97).subsource = 'SS_DOUBLE';
pt(97).ndims     = '2';
pt(97).size      = '[]';

pt(98).blockname = 'DAQ/BoomMedulla/EtherCAT Rx Var 6';
pt(98).paramname = 'P7';
pt(98).class     = 'scalar';
pt(98).nrows     = 1;
pt(98).ncols     = 1;
pt(98).subsource = 'SS_DOUBLE';
pt(98).ndims     = '2';
pt(98).size      = '[]';

pt(99).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(99).paramname = 'P1';
pt(99).class     = 'vector';
pt(99).nrows     = 1;
pt(99).ncols     = 62;
pt(99).subsource = 'SS_DOUBLE';
pt(99).ndims     = '2';
pt(99).size      = '[]';

pt(100).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(100).paramname = 'P2';
pt(100).class     = 'scalar';
pt(100).nrows     = 1;
pt(100).ncols     = 1;
pt(100).subsource = 'SS_DOUBLE';
pt(100).ndims     = '2';
pt(100).size      = '[]';

pt(101).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(101).paramname = 'P3';
pt(101).class     = 'scalar';
pt(101).nrows     = 1;
pt(101).ncols     = 1;
pt(101).subsource = 'SS_DOUBLE';
pt(101).ndims     = '2';
pt(101).size      = '[]';

pt(102).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(102).paramname = 'P4';
pt(102).class     = 'scalar';
pt(102).nrows     = 1;
pt(102).ncols     = 1;
pt(102).subsource = 'SS_DOUBLE';
pt(102).ndims     = '2';
pt(102).size      = '[]';

pt(103).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(103).paramname = 'P5';
pt(103).class     = 'scalar';
pt(103).nrows     = 1;
pt(103).ncols     = 1;
pt(103).subsource = 'SS_DOUBLE';
pt(103).ndims     = '2';
pt(103).size      = '[]';

pt(104).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(104).paramname = 'P6';
pt(104).class     = 'scalar';
pt(104).nrows     = 1;
pt(104).ncols     = 1;
pt(104).subsource = 'SS_DOUBLE';
pt(104).ndims     = '2';
pt(104).size      = '[]';

pt(105).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 3';
pt(105).paramname = 'P7';
pt(105).class     = 'scalar';
pt(105).nrows     = 1;
pt(105).ncols     = 1;
pt(105).subsource = 'SS_DOUBLE';
pt(105).ndims     = '2';
pt(105).size      = '[]';

pt(106).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(106).paramname = 'P1';
pt(106).class     = 'vector';
pt(106).nrows     = 1;
pt(106).ncols     = 62;
pt(106).subsource = 'SS_DOUBLE';
pt(106).ndims     = '2';
pt(106).size      = '[]';

pt(107).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(107).paramname = 'P2';
pt(107).class     = 'scalar';
pt(107).nrows     = 1;
pt(107).ncols     = 1;
pt(107).subsource = 'SS_DOUBLE';
pt(107).ndims     = '2';
pt(107).size      = '[]';

pt(108).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(108).paramname = 'P3';
pt(108).class     = 'scalar';
pt(108).nrows     = 1;
pt(108).ncols     = 1;
pt(108).subsource = 'SS_DOUBLE';
pt(108).ndims     = '2';
pt(108).size      = '[]';

pt(109).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(109).paramname = 'P4';
pt(109).class     = 'scalar';
pt(109).nrows     = 1;
pt(109).ncols     = 1;
pt(109).subsource = 'SS_DOUBLE';
pt(109).ndims     = '2';
pt(109).size      = '[]';

pt(110).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(110).paramname = 'P5';
pt(110).class     = 'scalar';
pt(110).nrows     = 1;
pt(110).ncols     = 1;
pt(110).subsource = 'SS_DOUBLE';
pt(110).ndims     = '2';
pt(110).size      = '[]';

pt(111).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(111).paramname = 'P6';
pt(111).class     = 'scalar';
pt(111).nrows     = 1;
pt(111).ncols     = 1;
pt(111).subsource = 'SS_DOUBLE';
pt(111).ndims     = '2';
pt(111).size      = '[]';

pt(112).blockname = 'DAQ/BoomMedulla/EtherCAT Tx Var 4';
pt(112).paramname = 'P7';
pt(112).class     = 'scalar';
pt(112).nrows     = 1;
pt(112).ncols     = 1;
pt(112).subsource = 'SS_DOUBLE';
pt(112).ndims     = '2';
pt(112).size      = '[]';

pt(113).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(113).paramname = 'P1';
pt(113).class     = 'vector';
pt(113).nrows     = 1;
pt(113).ncols     = 74;
pt(113).subsource = 'SS_DOUBLE';
pt(113).ndims     = '2';
pt(113).size      = '[]';

pt(114).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(114).paramname = 'P2';
pt(114).class     = 'scalar';
pt(114).nrows     = 1;
pt(114).ncols     = 1;
pt(114).subsource = 'SS_DOUBLE';
pt(114).ndims     = '2';
pt(114).size      = '[]';

pt(115).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(115).paramname = 'P3';
pt(115).class     = 'scalar';
pt(115).nrows     = 1;
pt(115).ncols     = 1;
pt(115).subsource = 'SS_DOUBLE';
pt(115).ndims     = '2';
pt(115).size      = '[]';

pt(116).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(116).paramname = 'P4';
pt(116).class     = 'scalar';
pt(116).nrows     = 1;
pt(116).ncols     = 1;
pt(116).subsource = 'SS_DOUBLE';
pt(116).ndims     = '2';
pt(116).size      = '[]';

pt(117).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(117).paramname = 'P5';
pt(117).class     = 'scalar';
pt(117).nrows     = 1;
pt(117).ncols     = 1;
pt(117).subsource = 'SS_DOUBLE';
pt(117).ndims     = '2';
pt(117).size      = '[]';

pt(118).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(118).paramname = 'P6';
pt(118).class     = 'scalar';
pt(118).nrows     = 1;
pt(118).ncols     = 1;
pt(118).subsource = 'SS_DOUBLE';
pt(118).ndims     = '2';
pt(118).size      = '[]';

pt(119).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var ';
pt(119).paramname = 'P7';
pt(119).class     = 'scalar';
pt(119).nrows     = 1;
pt(119).ncols     = 1;
pt(119).subsource = 'SS_DOUBLE';
pt(119).ndims     = '2';
pt(119).size      = '[]';

pt(120).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(120).paramname = 'P1';
pt(120).class     = 'vector';
pt(120).nrows     = 1;
pt(120).ncols     = 56;
pt(120).subsource = 'SS_DOUBLE';
pt(120).ndims     = '2';
pt(120).size      = '[]';

pt(121).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(121).paramname = 'P2';
pt(121).class     = 'scalar';
pt(121).nrows     = 1;
pt(121).ncols     = 1;
pt(121).subsource = 'SS_DOUBLE';
pt(121).ndims     = '2';
pt(121).size      = '[]';

pt(122).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(122).paramname = 'P3';
pt(122).class     = 'scalar';
pt(122).nrows     = 1;
pt(122).ncols     = 1;
pt(122).subsource = 'SS_DOUBLE';
pt(122).ndims     = '2';
pt(122).size      = '[]';

pt(123).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(123).paramname = 'P4';
pt(123).class     = 'scalar';
pt(123).nrows     = 1;
pt(123).ncols     = 1;
pt(123).subsource = 'SS_DOUBLE';
pt(123).ndims     = '2';
pt(123).size      = '[]';

pt(124).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(124).paramname = 'P5';
pt(124).class     = 'scalar';
pt(124).nrows     = 1;
pt(124).ncols     = 1;
pt(124).subsource = 'SS_DOUBLE';
pt(124).ndims     = '2';
pt(124).size      = '[]';

pt(125).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(125).paramname = 'P6';
pt(125).class     = 'scalar';
pt(125).nrows     = 1;
pt(125).ncols     = 1;
pt(125).subsource = 'SS_DOUBLE';
pt(125).ndims     = '2';
pt(125).size      = '[]';

pt(126).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 1';
pt(126).paramname = 'P7';
pt(126).class     = 'scalar';
pt(126).nrows     = 1;
pt(126).ncols     = 1;
pt(126).subsource = 'SS_DOUBLE';
pt(126).ndims     = '2';
pt(126).size      = '[]';

pt(127).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(127).paramname = 'P1';
pt(127).class     = 'vector';
pt(127).nrows     = 1;
pt(127).ncols     = 61;
pt(127).subsource = 'SS_DOUBLE';
pt(127).ndims     = '2';
pt(127).size      = '[]';

pt(128).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(128).paramname = 'P2';
pt(128).class     = 'scalar';
pt(128).nrows     = 1;
pt(128).ncols     = 1;
pt(128).subsource = 'SS_DOUBLE';
pt(128).ndims     = '2';
pt(128).size      = '[]';

pt(129).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(129).paramname = 'P3';
pt(129).class     = 'scalar';
pt(129).nrows     = 1;
pt(129).ncols     = 1;
pt(129).subsource = 'SS_DOUBLE';
pt(129).ndims     = '2';
pt(129).size      = '[]';

pt(130).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(130).paramname = 'P4';
pt(130).class     = 'scalar';
pt(130).nrows     = 1;
pt(130).ncols     = 1;
pt(130).subsource = 'SS_DOUBLE';
pt(130).ndims     = '2';
pt(130).size      = '[]';

pt(131).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(131).paramname = 'P5';
pt(131).class     = 'scalar';
pt(131).nrows     = 1;
pt(131).ncols     = 1;
pt(131).subsource = 'SS_DOUBLE';
pt(131).ndims     = '2';
pt(131).size      = '[]';

pt(132).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(132).paramname = 'P6';
pt(132).class     = 'scalar';
pt(132).nrows     = 1;
pt(132).ncols     = 1;
pt(132).subsource = 'SS_DOUBLE';
pt(132).ndims     = '2';
pt(132).size      = '[]';

pt(133).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 12';
pt(133).paramname = 'P7';
pt(133).class     = 'scalar';
pt(133).nrows     = 1;
pt(133).ncols     = 1;
pt(133).subsource = 'SS_DOUBLE';
pt(133).ndims     = '2';
pt(133).size      = '[]';

pt(134).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(134).paramname = 'P1';
pt(134).class     = 'vector';
pt(134).nrows     = 1;
pt(134).ncols     = 61;
pt(134).subsource = 'SS_DOUBLE';
pt(134).ndims     = '2';
pt(134).size      = '[]';

pt(135).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(135).paramname = 'P2';
pt(135).class     = 'scalar';
pt(135).nrows     = 1;
pt(135).ncols     = 1;
pt(135).subsource = 'SS_DOUBLE';
pt(135).ndims     = '2';
pt(135).size      = '[]';

pt(136).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(136).paramname = 'P3';
pt(136).class     = 'scalar';
pt(136).nrows     = 1;
pt(136).ncols     = 1;
pt(136).subsource = 'SS_DOUBLE';
pt(136).ndims     = '2';
pt(136).size      = '[]';

pt(137).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(137).paramname = 'P4';
pt(137).class     = 'scalar';
pt(137).nrows     = 1;
pt(137).ncols     = 1;
pt(137).subsource = 'SS_DOUBLE';
pt(137).ndims     = '2';
pt(137).size      = '[]';

pt(138).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(138).paramname = 'P5';
pt(138).class     = 'scalar';
pt(138).nrows     = 1;
pt(138).ncols     = 1;
pt(138).subsource = 'SS_DOUBLE';
pt(138).ndims     = '2';
pt(138).size      = '[]';

pt(139).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(139).paramname = 'P6';
pt(139).class     = 'scalar';
pt(139).nrows     = 1;
pt(139).ncols     = 1;
pt(139).subsource = 'SS_DOUBLE';
pt(139).ndims     = '2';
pt(139).size      = '[]';

pt(140).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 13';
pt(140).paramname = 'P7';
pt(140).class     = 'scalar';
pt(140).nrows     = 1;
pt(140).ncols     = 1;
pt(140).subsource = 'SS_DOUBLE';
pt(140).ndims     = '2';
pt(140).size      = '[]';

pt(141).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(141).paramname = 'P1';
pt(141).class     = 'vector';
pt(141).nrows     = 1;
pt(141).ncols     = 61;
pt(141).subsource = 'SS_DOUBLE';
pt(141).ndims     = '2';
pt(141).size      = '[]';

pt(142).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(142).paramname = 'P2';
pt(142).class     = 'scalar';
pt(142).nrows     = 1;
pt(142).ncols     = 1;
pt(142).subsource = 'SS_DOUBLE';
pt(142).ndims     = '2';
pt(142).size      = '[]';

pt(143).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(143).paramname = 'P3';
pt(143).class     = 'scalar';
pt(143).nrows     = 1;
pt(143).ncols     = 1;
pt(143).subsource = 'SS_DOUBLE';
pt(143).ndims     = '2';
pt(143).size      = '[]';

pt(144).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(144).paramname = 'P4';
pt(144).class     = 'scalar';
pt(144).nrows     = 1;
pt(144).ncols     = 1;
pt(144).subsource = 'SS_DOUBLE';
pt(144).ndims     = '2';
pt(144).size      = '[]';

pt(145).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(145).paramname = 'P5';
pt(145).class     = 'scalar';
pt(145).nrows     = 1;
pt(145).ncols     = 1;
pt(145).subsource = 'SS_DOUBLE';
pt(145).ndims     = '2';
pt(145).size      = '[]';

pt(146).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(146).paramname = 'P6';
pt(146).class     = 'scalar';
pt(146).nrows     = 1;
pt(146).ncols     = 1;
pt(146).subsource = 'SS_DOUBLE';
pt(146).ndims     = '2';
pt(146).size      = '[]';

pt(147).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 14';
pt(147).paramname = 'P7';
pt(147).class     = 'scalar';
pt(147).nrows     = 1;
pt(147).ncols     = 1;
pt(147).subsource = 'SS_DOUBLE';
pt(147).ndims     = '2';
pt(147).size      = '[]';

pt(148).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(148).paramname = 'P1';
pt(148).class     = 'vector';
pt(148).nrows     = 1;
pt(148).ncols     = 63;
pt(148).subsource = 'SS_DOUBLE';
pt(148).ndims     = '2';
pt(148).size      = '[]';

pt(149).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(149).paramname = 'P2';
pt(149).class     = 'scalar';
pt(149).nrows     = 1;
pt(149).ncols     = 1;
pt(149).subsource = 'SS_DOUBLE';
pt(149).ndims     = '2';
pt(149).size      = '[]';

pt(150).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(150).paramname = 'P3';
pt(150).class     = 'scalar';
pt(150).nrows     = 1;
pt(150).ncols     = 1;
pt(150).subsource = 'SS_DOUBLE';
pt(150).ndims     = '2';
pt(150).size      = '[]';

pt(151).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(151).paramname = 'P4';
pt(151).class     = 'scalar';
pt(151).nrows     = 1;
pt(151).ncols     = 1;
pt(151).subsource = 'SS_DOUBLE';
pt(151).ndims     = '2';
pt(151).size      = '[]';

pt(152).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(152).paramname = 'P5';
pt(152).class     = 'scalar';
pt(152).nrows     = 1;
pt(152).ncols     = 1;
pt(152).subsource = 'SS_DOUBLE';
pt(152).ndims     = '2';
pt(152).size      = '[]';

pt(153).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(153).paramname = 'P6';
pt(153).class     = 'scalar';
pt(153).nrows     = 1;
pt(153).ncols     = 1;
pt(153).subsource = 'SS_DOUBLE';
pt(153).ndims     = '2';
pt(153).size      = '[]';

pt(154).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 15';
pt(154).paramname = 'P7';
pt(154).class     = 'scalar';
pt(154).nrows     = 1;
pt(154).ncols     = 1;
pt(154).subsource = 'SS_DOUBLE';
pt(154).ndims     = '2';
pt(154).size      = '[]';

pt(155).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(155).paramname = 'P1';
pt(155).class     = 'vector';
pt(155).nrows     = 1;
pt(155).ncols     = 67;
pt(155).subsource = 'SS_DOUBLE';
pt(155).ndims     = '2';
pt(155).size      = '[]';

pt(156).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(156).paramname = 'P2';
pt(156).class     = 'scalar';
pt(156).nrows     = 1;
pt(156).ncols     = 1;
pt(156).subsource = 'SS_DOUBLE';
pt(156).ndims     = '2';
pt(156).size      = '[]';

pt(157).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(157).paramname = 'P3';
pt(157).class     = 'scalar';
pt(157).nrows     = 1;
pt(157).ncols     = 1;
pt(157).subsource = 'SS_DOUBLE';
pt(157).ndims     = '2';
pt(157).size      = '[]';

pt(158).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(158).paramname = 'P4';
pt(158).class     = 'scalar';
pt(158).nrows     = 1;
pt(158).ncols     = 1;
pt(158).subsource = 'SS_DOUBLE';
pt(158).ndims     = '2';
pt(158).size      = '[]';

pt(159).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(159).paramname = 'P5';
pt(159).class     = 'scalar';
pt(159).nrows     = 1;
pt(159).ncols     = 1;
pt(159).subsource = 'SS_DOUBLE';
pt(159).ndims     = '2';
pt(159).size      = '[]';

pt(160).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(160).paramname = 'P6';
pt(160).class     = 'scalar';
pt(160).nrows     = 1;
pt(160).ncols     = 1;
pt(160).subsource = 'SS_DOUBLE';
pt(160).ndims     = '2';
pt(160).size      = '[]';

pt(161).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 16';
pt(161).paramname = 'P7';
pt(161).class     = 'scalar';
pt(161).nrows     = 1;
pt(161).ncols     = 1;
pt(161).subsource = 'SS_DOUBLE';
pt(161).ndims     = '2';
pt(161).size      = '[]';

pt(162).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(162).paramname = 'P1';
pt(162).class     = 'vector';
pt(162).nrows     = 1;
pt(162).ncols     = 58;
pt(162).subsource = 'SS_DOUBLE';
pt(162).ndims     = '2';
pt(162).size      = '[]';

pt(163).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(163).paramname = 'P2';
pt(163).class     = 'scalar';
pt(163).nrows     = 1;
pt(163).ncols     = 1;
pt(163).subsource = 'SS_DOUBLE';
pt(163).ndims     = '2';
pt(163).size      = '[]';

pt(164).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(164).paramname = 'P3';
pt(164).class     = 'scalar';
pt(164).nrows     = 1;
pt(164).ncols     = 1;
pt(164).subsource = 'SS_DOUBLE';
pt(164).ndims     = '2';
pt(164).size      = '[]';

pt(165).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(165).paramname = 'P4';
pt(165).class     = 'scalar';
pt(165).nrows     = 1;
pt(165).ncols     = 1;
pt(165).subsource = 'SS_DOUBLE';
pt(165).ndims     = '2';
pt(165).size      = '[]';

pt(166).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(166).paramname = 'P5';
pt(166).class     = 'scalar';
pt(166).nrows     = 1;
pt(166).ncols     = 1;
pt(166).subsource = 'SS_DOUBLE';
pt(166).ndims     = '2';
pt(166).size      = '[]';

pt(167).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(167).paramname = 'P6';
pt(167).class     = 'scalar';
pt(167).nrows     = 1;
pt(167).ncols     = 1;
pt(167).subsource = 'SS_DOUBLE';
pt(167).ndims     = '2';
pt(167).size      = '[]';

pt(168).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 17';
pt(168).paramname = 'P7';
pt(168).class     = 'scalar';
pt(168).nrows     = 1;
pt(168).ncols     = 1;
pt(168).subsource = 'SS_DOUBLE';
pt(168).ndims     = '2';
pt(168).size      = '[]';

pt(169).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(169).paramname = 'P1';
pt(169).class     = 'vector';
pt(169).nrows     = 1;
pt(169).ncols     = 68;
pt(169).subsource = 'SS_DOUBLE';
pt(169).ndims     = '2';
pt(169).size      = '[]';

pt(170).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(170).paramname = 'P2';
pt(170).class     = 'scalar';
pt(170).nrows     = 1;
pt(170).ncols     = 1;
pt(170).subsource = 'SS_DOUBLE';
pt(170).ndims     = '2';
pt(170).size      = '[]';

pt(171).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(171).paramname = 'P3';
pt(171).class     = 'scalar';
pt(171).nrows     = 1;
pt(171).ncols     = 1;
pt(171).subsource = 'SS_DOUBLE';
pt(171).ndims     = '2';
pt(171).size      = '[]';

pt(172).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(172).paramname = 'P4';
pt(172).class     = 'scalar';
pt(172).nrows     = 1;
pt(172).ncols     = 1;
pt(172).subsource = 'SS_DOUBLE';
pt(172).ndims     = '2';
pt(172).size      = '[]';

pt(173).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(173).paramname = 'P5';
pt(173).class     = 'scalar';
pt(173).nrows     = 1;
pt(173).ncols     = 1;
pt(173).subsource = 'SS_DOUBLE';
pt(173).ndims     = '2';
pt(173).size      = '[]';

pt(174).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(174).paramname = 'P6';
pt(174).class     = 'scalar';
pt(174).nrows     = 1;
pt(174).ncols     = 1;
pt(174).subsource = 'SS_DOUBLE';
pt(174).ndims     = '2';
pt(174).size      = '[]';

pt(175).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 18';
pt(175).paramname = 'P7';
pt(175).class     = 'scalar';
pt(175).nrows     = 1;
pt(175).ncols     = 1;
pt(175).subsource = 'SS_DOUBLE';
pt(175).ndims     = '2';
pt(175).size      = '[]';

pt(176).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(176).paramname = 'P1';
pt(176).class     = 'vector';
pt(176).nrows     = 1;
pt(176).ncols     = 61;
pt(176).subsource = 'SS_DOUBLE';
pt(176).ndims     = '2';
pt(176).size      = '[]';

pt(177).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(177).paramname = 'P2';
pt(177).class     = 'scalar';
pt(177).nrows     = 1;
pt(177).ncols     = 1;
pt(177).subsource = 'SS_DOUBLE';
pt(177).ndims     = '2';
pt(177).size      = '[]';

pt(178).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(178).paramname = 'P3';
pt(178).class     = 'scalar';
pt(178).nrows     = 1;
pt(178).ncols     = 1;
pt(178).subsource = 'SS_DOUBLE';
pt(178).ndims     = '2';
pt(178).size      = '[]';

pt(179).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(179).paramname = 'P4';
pt(179).class     = 'scalar';
pt(179).nrows     = 1;
pt(179).ncols     = 1;
pt(179).subsource = 'SS_DOUBLE';
pt(179).ndims     = '2';
pt(179).size      = '[]';

pt(180).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(180).paramname = 'P5';
pt(180).class     = 'scalar';
pt(180).nrows     = 1;
pt(180).ncols     = 1;
pt(180).subsource = 'SS_DOUBLE';
pt(180).ndims     = '2';
pt(180).size      = '[]';

pt(181).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(181).paramname = 'P6';
pt(181).class     = 'scalar';
pt(181).nrows     = 1;
pt(181).ncols     = 1;
pt(181).subsource = 'SS_DOUBLE';
pt(181).ndims     = '2';
pt(181).size      = '[]';

pt(182).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 19';
pt(182).paramname = 'P7';
pt(182).class     = 'scalar';
pt(182).nrows     = 1;
pt(182).ncols     = 1;
pt(182).subsource = 'SS_DOUBLE';
pt(182).ndims     = '2';
pt(182).size      = '[]';

pt(183).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(183).paramname = 'P1';
pt(183).class     = 'vector';
pt(183).nrows     = 1;
pt(183).ncols     = 76;
pt(183).subsource = 'SS_DOUBLE';
pt(183).ndims     = '2';
pt(183).size      = '[]';

pt(184).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(184).paramname = 'P2';
pt(184).class     = 'scalar';
pt(184).nrows     = 1;
pt(184).ncols     = 1;
pt(184).subsource = 'SS_DOUBLE';
pt(184).ndims     = '2';
pt(184).size      = '[]';

pt(185).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(185).paramname = 'P3';
pt(185).class     = 'scalar';
pt(185).nrows     = 1;
pt(185).ncols     = 1;
pt(185).subsource = 'SS_DOUBLE';
pt(185).ndims     = '2';
pt(185).size      = '[]';

pt(186).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(186).paramname = 'P4';
pt(186).class     = 'scalar';
pt(186).nrows     = 1;
pt(186).ncols     = 1;
pt(186).subsource = 'SS_DOUBLE';
pt(186).ndims     = '2';
pt(186).size      = '[]';

pt(187).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(187).paramname = 'P5';
pt(187).class     = 'scalar';
pt(187).nrows     = 1;
pt(187).ncols     = 1;
pt(187).subsource = 'SS_DOUBLE';
pt(187).ndims     = '2';
pt(187).size      = '[]';

pt(188).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(188).paramname = 'P6';
pt(188).class     = 'scalar';
pt(188).nrows     = 1;
pt(188).ncols     = 1;
pt(188).subsource = 'SS_DOUBLE';
pt(188).ndims     = '2';
pt(188).size      = '[]';

pt(189).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 2';
pt(189).paramname = 'P7';
pt(189).class     = 'scalar';
pt(189).nrows     = 1;
pt(189).ncols     = 1;
pt(189).subsource = 'SS_DOUBLE';
pt(189).ndims     = '2';
pt(189).size      = '[]';

pt(190).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(190).paramname = 'P1';
pt(190).class     = 'vector';
pt(190).nrows     = 1;
pt(190).ncols     = 58;
pt(190).subsource = 'SS_DOUBLE';
pt(190).ndims     = '2';
pt(190).size      = '[]';

pt(191).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(191).paramname = 'P2';
pt(191).class     = 'scalar';
pt(191).nrows     = 1;
pt(191).ncols     = 1;
pt(191).subsource = 'SS_DOUBLE';
pt(191).ndims     = '2';
pt(191).size      = '[]';

pt(192).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(192).paramname = 'P3';
pt(192).class     = 'scalar';
pt(192).nrows     = 1;
pt(192).ncols     = 1;
pt(192).subsource = 'SS_DOUBLE';
pt(192).ndims     = '2';
pt(192).size      = '[]';

pt(193).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(193).paramname = 'P4';
pt(193).class     = 'scalar';
pt(193).nrows     = 1;
pt(193).ncols     = 1;
pt(193).subsource = 'SS_DOUBLE';
pt(193).ndims     = '2';
pt(193).size      = '[]';

pt(194).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(194).paramname = 'P5';
pt(194).class     = 'scalar';
pt(194).nrows     = 1;
pt(194).ncols     = 1;
pt(194).subsource = 'SS_DOUBLE';
pt(194).ndims     = '2';
pt(194).size      = '[]';

pt(195).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(195).paramname = 'P6';
pt(195).class     = 'scalar';
pt(195).nrows     = 1;
pt(195).ncols     = 1;
pt(195).subsource = 'SS_DOUBLE';
pt(195).ndims     = '2';
pt(195).size      = '[]';

pt(196).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 3';
pt(196).paramname = 'P7';
pt(196).class     = 'scalar';
pt(196).nrows     = 1;
pt(196).ncols     = 1;
pt(196).subsource = 'SS_DOUBLE';
pt(196).ndims     = '2';
pt(196).size      = '[]';

pt(197).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(197).paramname = 'P1';
pt(197).class     = 'vector';
pt(197).nrows     = 1;
pt(197).ncols     = 56;
pt(197).subsource = 'SS_DOUBLE';
pt(197).ndims     = '2';
pt(197).size      = '[]';

pt(198).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(198).paramname = 'P2';
pt(198).class     = 'scalar';
pt(198).nrows     = 1;
pt(198).ncols     = 1;
pt(198).subsource = 'SS_DOUBLE';
pt(198).ndims     = '2';
pt(198).size      = '[]';

pt(199).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(199).paramname = 'P3';
pt(199).class     = 'scalar';
pt(199).nrows     = 1;
pt(199).ncols     = 1;
pt(199).subsource = 'SS_DOUBLE';
pt(199).ndims     = '2';
pt(199).size      = '[]';

pt(200).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(200).paramname = 'P4';
pt(200).class     = 'scalar';
pt(200).nrows     = 1;
pt(200).ncols     = 1;
pt(200).subsource = 'SS_DOUBLE';
pt(200).ndims     = '2';
pt(200).size      = '[]';

pt(201).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(201).paramname = 'P5';
pt(201).class     = 'scalar';
pt(201).nrows     = 1;
pt(201).ncols     = 1;
pt(201).subsource = 'SS_DOUBLE';
pt(201).ndims     = '2';
pt(201).size      = '[]';

pt(202).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(202).paramname = 'P6';
pt(202).class     = 'scalar';
pt(202).nrows     = 1;
pt(202).ncols     = 1;
pt(202).subsource = 'SS_DOUBLE';
pt(202).ndims     = '2';
pt(202).size      = '[]';

pt(203).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 4';
pt(203).paramname = 'P7';
pt(203).class     = 'scalar';
pt(203).nrows     = 1;
pt(203).ncols     = 1;
pt(203).subsource = 'SS_DOUBLE';
pt(203).ndims     = '2';
pt(203).size      = '[]';

pt(204).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(204).paramname = 'P1';
pt(204).class     = 'vector';
pt(204).nrows     = 1;
pt(204).ncols     = 86;
pt(204).subsource = 'SS_DOUBLE';
pt(204).ndims     = '2';
pt(204).size      = '[]';

pt(205).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(205).paramname = 'P2';
pt(205).class     = 'scalar';
pt(205).nrows     = 1;
pt(205).ncols     = 1;
pt(205).subsource = 'SS_DOUBLE';
pt(205).ndims     = '2';
pt(205).size      = '[]';

pt(206).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(206).paramname = 'P3';
pt(206).class     = 'scalar';
pt(206).nrows     = 1;
pt(206).ncols     = 1;
pt(206).subsource = 'SS_DOUBLE';
pt(206).ndims     = '2';
pt(206).size      = '[]';

pt(207).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(207).paramname = 'P4';
pt(207).class     = 'scalar';
pt(207).nrows     = 1;
pt(207).ncols     = 1;
pt(207).subsource = 'SS_DOUBLE';
pt(207).ndims     = '2';
pt(207).size      = '[]';

pt(208).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(208).paramname = 'P5';
pt(208).class     = 'scalar';
pt(208).nrows     = 1;
pt(208).ncols     = 1;
pt(208).subsource = 'SS_DOUBLE';
pt(208).ndims     = '2';
pt(208).size      = '[]';

pt(209).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(209).paramname = 'P6';
pt(209).class     = 'scalar';
pt(209).nrows     = 1;
pt(209).ncols     = 1;
pt(209).subsource = 'SS_DOUBLE';
pt(209).ndims     = '2';
pt(209).size      = '[]';

pt(210).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 5';
pt(210).paramname = 'P7';
pt(210).class     = 'scalar';
pt(210).nrows     = 1;
pt(210).ncols     = 1;
pt(210).subsource = 'SS_DOUBLE';
pt(210).ndims     = '2';
pt(210).size      = '[]';

pt(211).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(211).paramname = 'P1';
pt(211).class     = 'vector';
pt(211).nrows     = 1;
pt(211).ncols     = 56;
pt(211).subsource = 'SS_DOUBLE';
pt(211).ndims     = '2';
pt(211).size      = '[]';

pt(212).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(212).paramname = 'P2';
pt(212).class     = 'scalar';
pt(212).nrows     = 1;
pt(212).ncols     = 1;
pt(212).subsource = 'SS_DOUBLE';
pt(212).ndims     = '2';
pt(212).size      = '[]';

pt(213).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(213).paramname = 'P3';
pt(213).class     = 'scalar';
pt(213).nrows     = 1;
pt(213).ncols     = 1;
pt(213).subsource = 'SS_DOUBLE';
pt(213).ndims     = '2';
pt(213).size      = '[]';

pt(214).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(214).paramname = 'P4';
pt(214).class     = 'scalar';
pt(214).nrows     = 1;
pt(214).ncols     = 1;
pt(214).subsource = 'SS_DOUBLE';
pt(214).ndims     = '2';
pt(214).size      = '[]';

pt(215).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(215).paramname = 'P5';
pt(215).class     = 'scalar';
pt(215).nrows     = 1;
pt(215).ncols     = 1;
pt(215).subsource = 'SS_DOUBLE';
pt(215).ndims     = '2';
pt(215).size      = '[]';

pt(216).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(216).paramname = 'P6';
pt(216).class     = 'scalar';
pt(216).nrows     = 1;
pt(216).ncols     = 1;
pt(216).subsource = 'SS_DOUBLE';
pt(216).ndims     = '2';
pt(216).size      = '[]';

pt(217).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Rx Var 6';
pt(217).paramname = 'P7';
pt(217).class     = 'scalar';
pt(217).nrows     = 1;
pt(217).ncols     = 1;
pt(217).subsource = 'SS_DOUBLE';
pt(217).ndims     = '2';
pt(217).size      = '[]';

pt(218).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(218).paramname = 'P1';
pt(218).class     = 'vector';
pt(218).nrows     = 1;
pt(218).ncols     = 61;
pt(218).subsource = 'SS_DOUBLE';
pt(218).ndims     = '2';
pt(218).size      = '[]';

pt(219).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(219).paramname = 'P2';
pt(219).class     = 'scalar';
pt(219).nrows     = 1;
pt(219).ncols     = 1;
pt(219).subsource = 'SS_DOUBLE';
pt(219).ndims     = '2';
pt(219).size      = '[]';

pt(220).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(220).paramname = 'P3';
pt(220).class     = 'scalar';
pt(220).nrows     = 1;
pt(220).ncols     = 1;
pt(220).subsource = 'SS_DOUBLE';
pt(220).ndims     = '2';
pt(220).size      = '[]';

pt(221).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(221).paramname = 'P4';
pt(221).class     = 'scalar';
pt(221).nrows     = 1;
pt(221).ncols     = 1;
pt(221).subsource = 'SS_DOUBLE';
pt(221).ndims     = '2';
pt(221).size      = '[]';

pt(222).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(222).paramname = 'P5';
pt(222).class     = 'scalar';
pt(222).nrows     = 1;
pt(222).ncols     = 1;
pt(222).subsource = 'SS_DOUBLE';
pt(222).ndims     = '2';
pt(222).size      = '[]';

pt(223).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(223).paramname = 'P6';
pt(223).class     = 'scalar';
pt(223).nrows     = 1;
pt(223).ncols     = 1;
pt(223).subsource = 'SS_DOUBLE';
pt(223).ndims     = '2';
pt(223).size      = '[]';

pt(224).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 3';
pt(224).paramname = 'P7';
pt(224).class     = 'scalar';
pt(224).nrows     = 1;
pt(224).ncols     = 1;
pt(224).subsource = 'SS_DOUBLE';
pt(224).ndims     = '2';
pt(224).size      = '[]';

pt(225).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(225).paramname = 'P1';
pt(225).class     = 'vector';
pt(225).nrows     = 1;
pt(225).ncols     = 61;
pt(225).subsource = 'SS_DOUBLE';
pt(225).ndims     = '2';
pt(225).size      = '[]';

pt(226).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(226).paramname = 'P2';
pt(226).class     = 'scalar';
pt(226).nrows     = 1;
pt(226).ncols     = 1;
pt(226).subsource = 'SS_DOUBLE';
pt(226).ndims     = '2';
pt(226).size      = '[]';

pt(227).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(227).paramname = 'P3';
pt(227).class     = 'scalar';
pt(227).nrows     = 1;
pt(227).ncols     = 1;
pt(227).subsource = 'SS_DOUBLE';
pt(227).ndims     = '2';
pt(227).size      = '[]';

pt(228).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(228).paramname = 'P4';
pt(228).class     = 'scalar';
pt(228).nrows     = 1;
pt(228).ncols     = 1;
pt(228).subsource = 'SS_DOUBLE';
pt(228).ndims     = '2';
pt(228).size      = '[]';

pt(229).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(229).paramname = 'P5';
pt(229).class     = 'scalar';
pt(229).nrows     = 1;
pt(229).ncols     = 1;
pt(229).subsource = 'SS_DOUBLE';
pt(229).ndims     = '2';
pt(229).size      = '[]';

pt(230).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(230).paramname = 'P6';
pt(230).class     = 'scalar';
pt(230).nrows     = 1;
pt(230).ncols     = 1;
pt(230).subsource = 'SS_DOUBLE';
pt(230).ndims     = '2';
pt(230).size      = '[]';

pt(231).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 4';
pt(231).paramname = 'P7';
pt(231).class     = 'scalar';
pt(231).nrows     = 1;
pt(231).ncols     = 1;
pt(231).subsource = 'SS_DOUBLE';
pt(231).ndims     = '2';
pt(231).size      = '[]';

pt(232).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(232).paramname = 'P1';
pt(232).class     = 'vector';
pt(232).nrows     = 1;
pt(232).ncols     = 67;
pt(232).subsource = 'SS_DOUBLE';
pt(232).ndims     = '2';
pt(232).size      = '[]';

pt(233).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(233).paramname = 'P2';
pt(233).class     = 'scalar';
pt(233).nrows     = 1;
pt(233).ncols     = 1;
pt(233).subsource = 'SS_DOUBLE';
pt(233).ndims     = '2';
pt(233).size      = '[]';

pt(234).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(234).paramname = 'P3';
pt(234).class     = 'scalar';
pt(234).nrows     = 1;
pt(234).ncols     = 1;
pt(234).subsource = 'SS_DOUBLE';
pt(234).ndims     = '2';
pt(234).size      = '[]';

pt(235).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(235).paramname = 'P4';
pt(235).class     = 'scalar';
pt(235).nrows     = 1;
pt(235).ncols     = 1;
pt(235).subsource = 'SS_DOUBLE';
pt(235).ndims     = '2';
pt(235).size      = '[]';

pt(236).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(236).paramname = 'P5';
pt(236).class     = 'scalar';
pt(236).nrows     = 1;
pt(236).ncols     = 1;
pt(236).subsource = 'SS_DOUBLE';
pt(236).ndims     = '2';
pt(236).size      = '[]';

pt(237).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(237).paramname = 'P6';
pt(237).class     = 'scalar';
pt(237).nrows     = 1;
pt(237).ncols     = 1;
pt(237).subsource = 'SS_DOUBLE';
pt(237).ndims     = '2';
pt(237).size      = '[]';

pt(238).blockname = 'DAQ/HipMedulla_Lat_L/EtherCAT Tx Var 5';
pt(238).paramname = 'P7';
pt(238).class     = 'scalar';
pt(238).nrows     = 1;
pt(238).ncols     = 1;
pt(238).subsource = 'SS_DOUBLE';
pt(238).ndims     = '2';
pt(238).size      = '[]';

pt(239).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(239).paramname = 'P1';
pt(239).class     = 'vector';
pt(239).nrows     = 1;
pt(239).ncols     = 74;
pt(239).subsource = 'SS_DOUBLE';
pt(239).ndims     = '2';
pt(239).size      = '[]';

pt(240).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(240).paramname = 'P2';
pt(240).class     = 'scalar';
pt(240).nrows     = 1;
pt(240).ncols     = 1;
pt(240).subsource = 'SS_DOUBLE';
pt(240).ndims     = '2';
pt(240).size      = '[]';

pt(241).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(241).paramname = 'P3';
pt(241).class     = 'scalar';
pt(241).nrows     = 1;
pt(241).ncols     = 1;
pt(241).subsource = 'SS_DOUBLE';
pt(241).ndims     = '2';
pt(241).size      = '[]';

pt(242).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(242).paramname = 'P4';
pt(242).class     = 'scalar';
pt(242).nrows     = 1;
pt(242).ncols     = 1;
pt(242).subsource = 'SS_DOUBLE';
pt(242).ndims     = '2';
pt(242).size      = '[]';

pt(243).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(243).paramname = 'P5';
pt(243).class     = 'scalar';
pt(243).nrows     = 1;
pt(243).ncols     = 1;
pt(243).subsource = 'SS_DOUBLE';
pt(243).ndims     = '2';
pt(243).size      = '[]';

pt(244).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(244).paramname = 'P6';
pt(244).class     = 'scalar';
pt(244).nrows     = 1;
pt(244).ncols     = 1;
pt(244).subsource = 'SS_DOUBLE';
pt(244).ndims     = '2';
pt(244).size      = '[]';

pt(245).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var ';
pt(245).paramname = 'P7';
pt(245).class     = 'scalar';
pt(245).nrows     = 1;
pt(245).ncols     = 1;
pt(245).subsource = 'SS_DOUBLE';
pt(245).ndims     = '2';
pt(245).size      = '[]';

pt(246).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(246).paramname = 'P1';
pt(246).class     = 'vector';
pt(246).nrows     = 1;
pt(246).ncols     = 56;
pt(246).subsource = 'SS_DOUBLE';
pt(246).ndims     = '2';
pt(246).size      = '[]';

pt(247).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(247).paramname = 'P2';
pt(247).class     = 'scalar';
pt(247).nrows     = 1;
pt(247).ncols     = 1;
pt(247).subsource = 'SS_DOUBLE';
pt(247).ndims     = '2';
pt(247).size      = '[]';

pt(248).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(248).paramname = 'P3';
pt(248).class     = 'scalar';
pt(248).nrows     = 1;
pt(248).ncols     = 1;
pt(248).subsource = 'SS_DOUBLE';
pt(248).ndims     = '2';
pt(248).size      = '[]';

pt(249).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(249).paramname = 'P4';
pt(249).class     = 'scalar';
pt(249).nrows     = 1;
pt(249).ncols     = 1;
pt(249).subsource = 'SS_DOUBLE';
pt(249).ndims     = '2';
pt(249).size      = '[]';

pt(250).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(250).paramname = 'P5';
pt(250).class     = 'scalar';
pt(250).nrows     = 1;
pt(250).ncols     = 1;
pt(250).subsource = 'SS_DOUBLE';
pt(250).ndims     = '2';
pt(250).size      = '[]';

pt(251).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(251).paramname = 'P6';
pt(251).class     = 'scalar';
pt(251).nrows     = 1;
pt(251).ncols     = 1;
pt(251).subsource = 'SS_DOUBLE';
pt(251).ndims     = '2';
pt(251).size      = '[]';

pt(252).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 1';
pt(252).paramname = 'P7';
pt(252).class     = 'scalar';
pt(252).nrows     = 1;
pt(252).ncols     = 1;
pt(252).subsource = 'SS_DOUBLE';
pt(252).ndims     = '2';
pt(252).size      = '[]';

pt(253).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(253).paramname = 'P1';
pt(253).class     = 'vector';
pt(253).nrows     = 1;
pt(253).ncols     = 61;
pt(253).subsource = 'SS_DOUBLE';
pt(253).ndims     = '2';
pt(253).size      = '[]';

pt(254).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(254).paramname = 'P2';
pt(254).class     = 'scalar';
pt(254).nrows     = 1;
pt(254).ncols     = 1;
pt(254).subsource = 'SS_DOUBLE';
pt(254).ndims     = '2';
pt(254).size      = '[]';

pt(255).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(255).paramname = 'P3';
pt(255).class     = 'scalar';
pt(255).nrows     = 1;
pt(255).ncols     = 1;
pt(255).subsource = 'SS_DOUBLE';
pt(255).ndims     = '2';
pt(255).size      = '[]';

pt(256).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(256).paramname = 'P4';
pt(256).class     = 'scalar';
pt(256).nrows     = 1;
pt(256).ncols     = 1;
pt(256).subsource = 'SS_DOUBLE';
pt(256).ndims     = '2';
pt(256).size      = '[]';

pt(257).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(257).paramname = 'P5';
pt(257).class     = 'scalar';
pt(257).nrows     = 1;
pt(257).ncols     = 1;
pt(257).subsource = 'SS_DOUBLE';
pt(257).ndims     = '2';
pt(257).size      = '[]';

pt(258).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(258).paramname = 'P6';
pt(258).class     = 'scalar';
pt(258).nrows     = 1;
pt(258).ncols     = 1;
pt(258).subsource = 'SS_DOUBLE';
pt(258).ndims     = '2';
pt(258).size      = '[]';

pt(259).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 12';
pt(259).paramname = 'P7';
pt(259).class     = 'scalar';
pt(259).nrows     = 1;
pt(259).ncols     = 1;
pt(259).subsource = 'SS_DOUBLE';
pt(259).ndims     = '2';
pt(259).size      = '[]';

pt(260).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(260).paramname = 'P1';
pt(260).class     = 'vector';
pt(260).nrows     = 1;
pt(260).ncols     = 61;
pt(260).subsource = 'SS_DOUBLE';
pt(260).ndims     = '2';
pt(260).size      = '[]';

pt(261).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(261).paramname = 'P2';
pt(261).class     = 'scalar';
pt(261).nrows     = 1;
pt(261).ncols     = 1;
pt(261).subsource = 'SS_DOUBLE';
pt(261).ndims     = '2';
pt(261).size      = '[]';

pt(262).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(262).paramname = 'P3';
pt(262).class     = 'scalar';
pt(262).nrows     = 1;
pt(262).ncols     = 1;
pt(262).subsource = 'SS_DOUBLE';
pt(262).ndims     = '2';
pt(262).size      = '[]';

pt(263).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(263).paramname = 'P4';
pt(263).class     = 'scalar';
pt(263).nrows     = 1;
pt(263).ncols     = 1;
pt(263).subsource = 'SS_DOUBLE';
pt(263).ndims     = '2';
pt(263).size      = '[]';

pt(264).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(264).paramname = 'P5';
pt(264).class     = 'scalar';
pt(264).nrows     = 1;
pt(264).ncols     = 1;
pt(264).subsource = 'SS_DOUBLE';
pt(264).ndims     = '2';
pt(264).size      = '[]';

pt(265).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(265).paramname = 'P6';
pt(265).class     = 'scalar';
pt(265).nrows     = 1;
pt(265).ncols     = 1;
pt(265).subsource = 'SS_DOUBLE';
pt(265).ndims     = '2';
pt(265).size      = '[]';

pt(266).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 13';
pt(266).paramname = 'P7';
pt(266).class     = 'scalar';
pt(266).nrows     = 1;
pt(266).ncols     = 1;
pt(266).subsource = 'SS_DOUBLE';
pt(266).ndims     = '2';
pt(266).size      = '[]';

pt(267).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(267).paramname = 'P1';
pt(267).class     = 'vector';
pt(267).nrows     = 1;
pt(267).ncols     = 61;
pt(267).subsource = 'SS_DOUBLE';
pt(267).ndims     = '2';
pt(267).size      = '[]';

pt(268).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(268).paramname = 'P2';
pt(268).class     = 'scalar';
pt(268).nrows     = 1;
pt(268).ncols     = 1;
pt(268).subsource = 'SS_DOUBLE';
pt(268).ndims     = '2';
pt(268).size      = '[]';

pt(269).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(269).paramname = 'P3';
pt(269).class     = 'scalar';
pt(269).nrows     = 1;
pt(269).ncols     = 1;
pt(269).subsource = 'SS_DOUBLE';
pt(269).ndims     = '2';
pt(269).size      = '[]';

pt(270).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(270).paramname = 'P4';
pt(270).class     = 'scalar';
pt(270).nrows     = 1;
pt(270).ncols     = 1;
pt(270).subsource = 'SS_DOUBLE';
pt(270).ndims     = '2';
pt(270).size      = '[]';

pt(271).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(271).paramname = 'P5';
pt(271).class     = 'scalar';
pt(271).nrows     = 1;
pt(271).ncols     = 1;
pt(271).subsource = 'SS_DOUBLE';
pt(271).ndims     = '2';
pt(271).size      = '[]';

pt(272).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(272).paramname = 'P6';
pt(272).class     = 'scalar';
pt(272).nrows     = 1;
pt(272).ncols     = 1;
pt(272).subsource = 'SS_DOUBLE';
pt(272).ndims     = '2';
pt(272).size      = '[]';

pt(273).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 14';
pt(273).paramname = 'P7';
pt(273).class     = 'scalar';
pt(273).nrows     = 1;
pt(273).ncols     = 1;
pt(273).subsource = 'SS_DOUBLE';
pt(273).ndims     = '2';
pt(273).size      = '[]';

pt(274).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(274).paramname = 'P1';
pt(274).class     = 'vector';
pt(274).nrows     = 1;
pt(274).ncols     = 63;
pt(274).subsource = 'SS_DOUBLE';
pt(274).ndims     = '2';
pt(274).size      = '[]';

pt(275).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(275).paramname = 'P2';
pt(275).class     = 'scalar';
pt(275).nrows     = 1;
pt(275).ncols     = 1;
pt(275).subsource = 'SS_DOUBLE';
pt(275).ndims     = '2';
pt(275).size      = '[]';

pt(276).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(276).paramname = 'P3';
pt(276).class     = 'scalar';
pt(276).nrows     = 1;
pt(276).ncols     = 1;
pt(276).subsource = 'SS_DOUBLE';
pt(276).ndims     = '2';
pt(276).size      = '[]';

pt(277).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(277).paramname = 'P4';
pt(277).class     = 'scalar';
pt(277).nrows     = 1;
pt(277).ncols     = 1;
pt(277).subsource = 'SS_DOUBLE';
pt(277).ndims     = '2';
pt(277).size      = '[]';

pt(278).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(278).paramname = 'P5';
pt(278).class     = 'scalar';
pt(278).nrows     = 1;
pt(278).ncols     = 1;
pt(278).subsource = 'SS_DOUBLE';
pt(278).ndims     = '2';
pt(278).size      = '[]';

pt(279).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(279).paramname = 'P6';
pt(279).class     = 'scalar';
pt(279).nrows     = 1;
pt(279).ncols     = 1;
pt(279).subsource = 'SS_DOUBLE';
pt(279).ndims     = '2';
pt(279).size      = '[]';

pt(280).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 15';
pt(280).paramname = 'P7';
pt(280).class     = 'scalar';
pt(280).nrows     = 1;
pt(280).ncols     = 1;
pt(280).subsource = 'SS_DOUBLE';
pt(280).ndims     = '2';
pt(280).size      = '[]';

pt(281).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(281).paramname = 'P1';
pt(281).class     = 'vector';
pt(281).nrows     = 1;
pt(281).ncols     = 67;
pt(281).subsource = 'SS_DOUBLE';
pt(281).ndims     = '2';
pt(281).size      = '[]';

pt(282).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(282).paramname = 'P2';
pt(282).class     = 'scalar';
pt(282).nrows     = 1;
pt(282).ncols     = 1;
pt(282).subsource = 'SS_DOUBLE';
pt(282).ndims     = '2';
pt(282).size      = '[]';

pt(283).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(283).paramname = 'P3';
pt(283).class     = 'scalar';
pt(283).nrows     = 1;
pt(283).ncols     = 1;
pt(283).subsource = 'SS_DOUBLE';
pt(283).ndims     = '2';
pt(283).size      = '[]';

pt(284).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(284).paramname = 'P4';
pt(284).class     = 'scalar';
pt(284).nrows     = 1;
pt(284).ncols     = 1;
pt(284).subsource = 'SS_DOUBLE';
pt(284).ndims     = '2';
pt(284).size      = '[]';

pt(285).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(285).paramname = 'P5';
pt(285).class     = 'scalar';
pt(285).nrows     = 1;
pt(285).ncols     = 1;
pt(285).subsource = 'SS_DOUBLE';
pt(285).ndims     = '2';
pt(285).size      = '[]';

pt(286).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(286).paramname = 'P6';
pt(286).class     = 'scalar';
pt(286).nrows     = 1;
pt(286).ncols     = 1;
pt(286).subsource = 'SS_DOUBLE';
pt(286).ndims     = '2';
pt(286).size      = '[]';

pt(287).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 16';
pt(287).paramname = 'P7';
pt(287).class     = 'scalar';
pt(287).nrows     = 1;
pt(287).ncols     = 1;
pt(287).subsource = 'SS_DOUBLE';
pt(287).ndims     = '2';
pt(287).size      = '[]';

pt(288).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(288).paramname = 'P1';
pt(288).class     = 'vector';
pt(288).nrows     = 1;
pt(288).ncols     = 58;
pt(288).subsource = 'SS_DOUBLE';
pt(288).ndims     = '2';
pt(288).size      = '[]';

pt(289).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(289).paramname = 'P2';
pt(289).class     = 'scalar';
pt(289).nrows     = 1;
pt(289).ncols     = 1;
pt(289).subsource = 'SS_DOUBLE';
pt(289).ndims     = '2';
pt(289).size      = '[]';

pt(290).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(290).paramname = 'P3';
pt(290).class     = 'scalar';
pt(290).nrows     = 1;
pt(290).ncols     = 1;
pt(290).subsource = 'SS_DOUBLE';
pt(290).ndims     = '2';
pt(290).size      = '[]';

pt(291).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(291).paramname = 'P4';
pt(291).class     = 'scalar';
pt(291).nrows     = 1;
pt(291).ncols     = 1;
pt(291).subsource = 'SS_DOUBLE';
pt(291).ndims     = '2';
pt(291).size      = '[]';

pt(292).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(292).paramname = 'P5';
pt(292).class     = 'scalar';
pt(292).nrows     = 1;
pt(292).ncols     = 1;
pt(292).subsource = 'SS_DOUBLE';
pt(292).ndims     = '2';
pt(292).size      = '[]';

pt(293).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(293).paramname = 'P6';
pt(293).class     = 'scalar';
pt(293).nrows     = 1;
pt(293).ncols     = 1;
pt(293).subsource = 'SS_DOUBLE';
pt(293).ndims     = '2';
pt(293).size      = '[]';

pt(294).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 17';
pt(294).paramname = 'P7';
pt(294).class     = 'scalar';
pt(294).nrows     = 1;
pt(294).ncols     = 1;
pt(294).subsource = 'SS_DOUBLE';
pt(294).ndims     = '2';
pt(294).size      = '[]';

pt(295).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(295).paramname = 'P1';
pt(295).class     = 'vector';
pt(295).nrows     = 1;
pt(295).ncols     = 68;
pt(295).subsource = 'SS_DOUBLE';
pt(295).ndims     = '2';
pt(295).size      = '[]';

pt(296).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(296).paramname = 'P2';
pt(296).class     = 'scalar';
pt(296).nrows     = 1;
pt(296).ncols     = 1;
pt(296).subsource = 'SS_DOUBLE';
pt(296).ndims     = '2';
pt(296).size      = '[]';

pt(297).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(297).paramname = 'P3';
pt(297).class     = 'scalar';
pt(297).nrows     = 1;
pt(297).ncols     = 1;
pt(297).subsource = 'SS_DOUBLE';
pt(297).ndims     = '2';
pt(297).size      = '[]';

pt(298).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(298).paramname = 'P4';
pt(298).class     = 'scalar';
pt(298).nrows     = 1;
pt(298).ncols     = 1;
pt(298).subsource = 'SS_DOUBLE';
pt(298).ndims     = '2';
pt(298).size      = '[]';

pt(299).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(299).paramname = 'P5';
pt(299).class     = 'scalar';
pt(299).nrows     = 1;
pt(299).ncols     = 1;
pt(299).subsource = 'SS_DOUBLE';
pt(299).ndims     = '2';
pt(299).size      = '[]';

pt(300).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(300).paramname = 'P6';
pt(300).class     = 'scalar';
pt(300).nrows     = 1;
pt(300).ncols     = 1;
pt(300).subsource = 'SS_DOUBLE';
pt(300).ndims     = '2';
pt(300).size      = '[]';

pt(301).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 18';
pt(301).paramname = 'P7';
pt(301).class     = 'scalar';
pt(301).nrows     = 1;
pt(301).ncols     = 1;
pt(301).subsource = 'SS_DOUBLE';
pt(301).ndims     = '2';
pt(301).size      = '[]';

pt(302).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(302).paramname = 'P1';
pt(302).class     = 'vector';
pt(302).nrows     = 1;
pt(302).ncols     = 61;
pt(302).subsource = 'SS_DOUBLE';
pt(302).ndims     = '2';
pt(302).size      = '[]';

pt(303).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(303).paramname = 'P2';
pt(303).class     = 'scalar';
pt(303).nrows     = 1;
pt(303).ncols     = 1;
pt(303).subsource = 'SS_DOUBLE';
pt(303).ndims     = '2';
pt(303).size      = '[]';

pt(304).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(304).paramname = 'P3';
pt(304).class     = 'scalar';
pt(304).nrows     = 1;
pt(304).ncols     = 1;
pt(304).subsource = 'SS_DOUBLE';
pt(304).ndims     = '2';
pt(304).size      = '[]';

pt(305).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(305).paramname = 'P4';
pt(305).class     = 'scalar';
pt(305).nrows     = 1;
pt(305).ncols     = 1;
pt(305).subsource = 'SS_DOUBLE';
pt(305).ndims     = '2';
pt(305).size      = '[]';

pt(306).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(306).paramname = 'P5';
pt(306).class     = 'scalar';
pt(306).nrows     = 1;
pt(306).ncols     = 1;
pt(306).subsource = 'SS_DOUBLE';
pt(306).ndims     = '2';
pt(306).size      = '[]';

pt(307).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(307).paramname = 'P6';
pt(307).class     = 'scalar';
pt(307).nrows     = 1;
pt(307).ncols     = 1;
pt(307).subsource = 'SS_DOUBLE';
pt(307).ndims     = '2';
pt(307).size      = '[]';

pt(308).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 19';
pt(308).paramname = 'P7';
pt(308).class     = 'scalar';
pt(308).nrows     = 1;
pt(308).ncols     = 1;
pt(308).subsource = 'SS_DOUBLE';
pt(308).ndims     = '2';
pt(308).size      = '[]';

pt(309).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(309).paramname = 'P1';
pt(309).class     = 'vector';
pt(309).nrows     = 1;
pt(309).ncols     = 76;
pt(309).subsource = 'SS_DOUBLE';
pt(309).ndims     = '2';
pt(309).size      = '[]';

pt(310).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(310).paramname = 'P2';
pt(310).class     = 'scalar';
pt(310).nrows     = 1;
pt(310).ncols     = 1;
pt(310).subsource = 'SS_DOUBLE';
pt(310).ndims     = '2';
pt(310).size      = '[]';

pt(311).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(311).paramname = 'P3';
pt(311).class     = 'scalar';
pt(311).nrows     = 1;
pt(311).ncols     = 1;
pt(311).subsource = 'SS_DOUBLE';
pt(311).ndims     = '2';
pt(311).size      = '[]';

pt(312).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(312).paramname = 'P4';
pt(312).class     = 'scalar';
pt(312).nrows     = 1;
pt(312).ncols     = 1;
pt(312).subsource = 'SS_DOUBLE';
pt(312).ndims     = '2';
pt(312).size      = '[]';

pt(313).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(313).paramname = 'P5';
pt(313).class     = 'scalar';
pt(313).nrows     = 1;
pt(313).ncols     = 1;
pt(313).subsource = 'SS_DOUBLE';
pt(313).ndims     = '2';
pt(313).size      = '[]';

pt(314).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(314).paramname = 'P6';
pt(314).class     = 'scalar';
pt(314).nrows     = 1;
pt(314).ncols     = 1;
pt(314).subsource = 'SS_DOUBLE';
pt(314).ndims     = '2';
pt(314).size      = '[]';

pt(315).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 2';
pt(315).paramname = 'P7';
pt(315).class     = 'scalar';
pt(315).nrows     = 1;
pt(315).ncols     = 1;
pt(315).subsource = 'SS_DOUBLE';
pt(315).ndims     = '2';
pt(315).size      = '[]';

pt(316).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(316).paramname = 'P1';
pt(316).class     = 'vector';
pt(316).nrows     = 1;
pt(316).ncols     = 58;
pt(316).subsource = 'SS_DOUBLE';
pt(316).ndims     = '2';
pt(316).size      = '[]';

pt(317).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(317).paramname = 'P2';
pt(317).class     = 'scalar';
pt(317).nrows     = 1;
pt(317).ncols     = 1;
pt(317).subsource = 'SS_DOUBLE';
pt(317).ndims     = '2';
pt(317).size      = '[]';

pt(318).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(318).paramname = 'P3';
pt(318).class     = 'scalar';
pt(318).nrows     = 1;
pt(318).ncols     = 1;
pt(318).subsource = 'SS_DOUBLE';
pt(318).ndims     = '2';
pt(318).size      = '[]';

pt(319).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(319).paramname = 'P4';
pt(319).class     = 'scalar';
pt(319).nrows     = 1;
pt(319).ncols     = 1;
pt(319).subsource = 'SS_DOUBLE';
pt(319).ndims     = '2';
pt(319).size      = '[]';

pt(320).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(320).paramname = 'P5';
pt(320).class     = 'scalar';
pt(320).nrows     = 1;
pt(320).ncols     = 1;
pt(320).subsource = 'SS_DOUBLE';
pt(320).ndims     = '2';
pt(320).size      = '[]';

pt(321).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(321).paramname = 'P6';
pt(321).class     = 'scalar';
pt(321).nrows     = 1;
pt(321).ncols     = 1;
pt(321).subsource = 'SS_DOUBLE';
pt(321).ndims     = '2';
pt(321).size      = '[]';

pt(322).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 3';
pt(322).paramname = 'P7';
pt(322).class     = 'scalar';
pt(322).nrows     = 1;
pt(322).ncols     = 1;
pt(322).subsource = 'SS_DOUBLE';
pt(322).ndims     = '2';
pt(322).size      = '[]';

pt(323).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(323).paramname = 'P1';
pt(323).class     = 'vector';
pt(323).nrows     = 1;
pt(323).ncols     = 56;
pt(323).subsource = 'SS_DOUBLE';
pt(323).ndims     = '2';
pt(323).size      = '[]';

pt(324).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(324).paramname = 'P2';
pt(324).class     = 'scalar';
pt(324).nrows     = 1;
pt(324).ncols     = 1;
pt(324).subsource = 'SS_DOUBLE';
pt(324).ndims     = '2';
pt(324).size      = '[]';

pt(325).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(325).paramname = 'P3';
pt(325).class     = 'scalar';
pt(325).nrows     = 1;
pt(325).ncols     = 1;
pt(325).subsource = 'SS_DOUBLE';
pt(325).ndims     = '2';
pt(325).size      = '[]';

pt(326).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(326).paramname = 'P4';
pt(326).class     = 'scalar';
pt(326).nrows     = 1;
pt(326).ncols     = 1;
pt(326).subsource = 'SS_DOUBLE';
pt(326).ndims     = '2';
pt(326).size      = '[]';

pt(327).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(327).paramname = 'P5';
pt(327).class     = 'scalar';
pt(327).nrows     = 1;
pt(327).ncols     = 1;
pt(327).subsource = 'SS_DOUBLE';
pt(327).ndims     = '2';
pt(327).size      = '[]';

pt(328).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(328).paramname = 'P6';
pt(328).class     = 'scalar';
pt(328).nrows     = 1;
pt(328).ncols     = 1;
pt(328).subsource = 'SS_DOUBLE';
pt(328).ndims     = '2';
pt(328).size      = '[]';

pt(329).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 4';
pt(329).paramname = 'P7';
pt(329).class     = 'scalar';
pt(329).nrows     = 1;
pt(329).ncols     = 1;
pt(329).subsource = 'SS_DOUBLE';
pt(329).ndims     = '2';
pt(329).size      = '[]';

pt(330).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(330).paramname = 'P1';
pt(330).class     = 'vector';
pt(330).nrows     = 1;
pt(330).ncols     = 86;
pt(330).subsource = 'SS_DOUBLE';
pt(330).ndims     = '2';
pt(330).size      = '[]';

pt(331).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(331).paramname = 'P2';
pt(331).class     = 'scalar';
pt(331).nrows     = 1;
pt(331).ncols     = 1;
pt(331).subsource = 'SS_DOUBLE';
pt(331).ndims     = '2';
pt(331).size      = '[]';

pt(332).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(332).paramname = 'P3';
pt(332).class     = 'scalar';
pt(332).nrows     = 1;
pt(332).ncols     = 1;
pt(332).subsource = 'SS_DOUBLE';
pt(332).ndims     = '2';
pt(332).size      = '[]';

pt(333).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(333).paramname = 'P4';
pt(333).class     = 'scalar';
pt(333).nrows     = 1;
pt(333).ncols     = 1;
pt(333).subsource = 'SS_DOUBLE';
pt(333).ndims     = '2';
pt(333).size      = '[]';

pt(334).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(334).paramname = 'P5';
pt(334).class     = 'scalar';
pt(334).nrows     = 1;
pt(334).ncols     = 1;
pt(334).subsource = 'SS_DOUBLE';
pt(334).ndims     = '2';
pt(334).size      = '[]';

pt(335).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(335).paramname = 'P6';
pt(335).class     = 'scalar';
pt(335).nrows     = 1;
pt(335).ncols     = 1;
pt(335).subsource = 'SS_DOUBLE';
pt(335).ndims     = '2';
pt(335).size      = '[]';

pt(336).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 5';
pt(336).paramname = 'P7';
pt(336).class     = 'scalar';
pt(336).nrows     = 1;
pt(336).ncols     = 1;
pt(336).subsource = 'SS_DOUBLE';
pt(336).ndims     = '2';
pt(336).size      = '[]';

pt(337).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(337).paramname = 'P1';
pt(337).class     = 'vector';
pt(337).nrows     = 1;
pt(337).ncols     = 56;
pt(337).subsource = 'SS_DOUBLE';
pt(337).ndims     = '2';
pt(337).size      = '[]';

pt(338).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(338).paramname = 'P2';
pt(338).class     = 'scalar';
pt(338).nrows     = 1;
pt(338).ncols     = 1;
pt(338).subsource = 'SS_DOUBLE';
pt(338).ndims     = '2';
pt(338).size      = '[]';

pt(339).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(339).paramname = 'P3';
pt(339).class     = 'scalar';
pt(339).nrows     = 1;
pt(339).ncols     = 1;
pt(339).subsource = 'SS_DOUBLE';
pt(339).ndims     = '2';
pt(339).size      = '[]';

pt(340).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(340).paramname = 'P4';
pt(340).class     = 'scalar';
pt(340).nrows     = 1;
pt(340).ncols     = 1;
pt(340).subsource = 'SS_DOUBLE';
pt(340).ndims     = '2';
pt(340).size      = '[]';

pt(341).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(341).paramname = 'P5';
pt(341).class     = 'scalar';
pt(341).nrows     = 1;
pt(341).ncols     = 1;
pt(341).subsource = 'SS_DOUBLE';
pt(341).ndims     = '2';
pt(341).size      = '[]';

pt(342).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(342).paramname = 'P6';
pt(342).class     = 'scalar';
pt(342).nrows     = 1;
pt(342).ncols     = 1;
pt(342).subsource = 'SS_DOUBLE';
pt(342).ndims     = '2';
pt(342).size      = '[]';

pt(343).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Rx Var 6';
pt(343).paramname = 'P7';
pt(343).class     = 'scalar';
pt(343).nrows     = 1;
pt(343).ncols     = 1;
pt(343).subsource = 'SS_DOUBLE';
pt(343).ndims     = '2';
pt(343).size      = '[]';

pt(344).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(344).paramname = 'P1';
pt(344).class     = 'vector';
pt(344).nrows     = 1;
pt(344).ncols     = 61;
pt(344).subsource = 'SS_DOUBLE';
pt(344).ndims     = '2';
pt(344).size      = '[]';

pt(345).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(345).paramname = 'P2';
pt(345).class     = 'scalar';
pt(345).nrows     = 1;
pt(345).ncols     = 1;
pt(345).subsource = 'SS_DOUBLE';
pt(345).ndims     = '2';
pt(345).size      = '[]';

pt(346).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(346).paramname = 'P3';
pt(346).class     = 'scalar';
pt(346).nrows     = 1;
pt(346).ncols     = 1;
pt(346).subsource = 'SS_DOUBLE';
pt(346).ndims     = '2';
pt(346).size      = '[]';

pt(347).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(347).paramname = 'P4';
pt(347).class     = 'scalar';
pt(347).nrows     = 1;
pt(347).ncols     = 1;
pt(347).subsource = 'SS_DOUBLE';
pt(347).ndims     = '2';
pt(347).size      = '[]';

pt(348).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(348).paramname = 'P5';
pt(348).class     = 'scalar';
pt(348).nrows     = 1;
pt(348).ncols     = 1;
pt(348).subsource = 'SS_DOUBLE';
pt(348).ndims     = '2';
pt(348).size      = '[]';

pt(349).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(349).paramname = 'P6';
pt(349).class     = 'scalar';
pt(349).nrows     = 1;
pt(349).ncols     = 1;
pt(349).subsource = 'SS_DOUBLE';
pt(349).ndims     = '2';
pt(349).size      = '[]';

pt(350).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 3';
pt(350).paramname = 'P7';
pt(350).class     = 'scalar';
pt(350).nrows     = 1;
pt(350).ncols     = 1;
pt(350).subsource = 'SS_DOUBLE';
pt(350).ndims     = '2';
pt(350).size      = '[]';

pt(351).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(351).paramname = 'P1';
pt(351).class     = 'vector';
pt(351).nrows     = 1;
pt(351).ncols     = 61;
pt(351).subsource = 'SS_DOUBLE';
pt(351).ndims     = '2';
pt(351).size      = '[]';

pt(352).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(352).paramname = 'P2';
pt(352).class     = 'scalar';
pt(352).nrows     = 1;
pt(352).ncols     = 1;
pt(352).subsource = 'SS_DOUBLE';
pt(352).ndims     = '2';
pt(352).size      = '[]';

pt(353).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(353).paramname = 'P3';
pt(353).class     = 'scalar';
pt(353).nrows     = 1;
pt(353).ncols     = 1;
pt(353).subsource = 'SS_DOUBLE';
pt(353).ndims     = '2';
pt(353).size      = '[]';

pt(354).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(354).paramname = 'P4';
pt(354).class     = 'scalar';
pt(354).nrows     = 1;
pt(354).ncols     = 1;
pt(354).subsource = 'SS_DOUBLE';
pt(354).ndims     = '2';
pt(354).size      = '[]';

pt(355).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(355).paramname = 'P5';
pt(355).class     = 'scalar';
pt(355).nrows     = 1;
pt(355).ncols     = 1;
pt(355).subsource = 'SS_DOUBLE';
pt(355).ndims     = '2';
pt(355).size      = '[]';

pt(356).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(356).paramname = 'P6';
pt(356).class     = 'scalar';
pt(356).nrows     = 1;
pt(356).ncols     = 1;
pt(356).subsource = 'SS_DOUBLE';
pt(356).ndims     = '2';
pt(356).size      = '[]';

pt(357).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 4';
pt(357).paramname = 'P7';
pt(357).class     = 'scalar';
pt(357).nrows     = 1;
pt(357).ncols     = 1;
pt(357).subsource = 'SS_DOUBLE';
pt(357).ndims     = '2';
pt(357).size      = '[]';

pt(358).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(358).paramname = 'P1';
pt(358).class     = 'vector';
pt(358).nrows     = 1;
pt(358).ncols     = 67;
pt(358).subsource = 'SS_DOUBLE';
pt(358).ndims     = '2';
pt(358).size      = '[]';

pt(359).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(359).paramname = 'P2';
pt(359).class     = 'scalar';
pt(359).nrows     = 1;
pt(359).ncols     = 1;
pt(359).subsource = 'SS_DOUBLE';
pt(359).ndims     = '2';
pt(359).size      = '[]';

pt(360).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(360).paramname = 'P3';
pt(360).class     = 'scalar';
pt(360).nrows     = 1;
pt(360).ncols     = 1;
pt(360).subsource = 'SS_DOUBLE';
pt(360).ndims     = '2';
pt(360).size      = '[]';

pt(361).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(361).paramname = 'P4';
pt(361).class     = 'scalar';
pt(361).nrows     = 1;
pt(361).ncols     = 1;
pt(361).subsource = 'SS_DOUBLE';
pt(361).ndims     = '2';
pt(361).size      = '[]';

pt(362).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(362).paramname = 'P5';
pt(362).class     = 'scalar';
pt(362).nrows     = 1;
pt(362).ncols     = 1;
pt(362).subsource = 'SS_DOUBLE';
pt(362).ndims     = '2';
pt(362).size      = '[]';

pt(363).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(363).paramname = 'P6';
pt(363).class     = 'scalar';
pt(363).nrows     = 1;
pt(363).ncols     = 1;
pt(363).subsource = 'SS_DOUBLE';
pt(363).ndims     = '2';
pt(363).size      = '[]';

pt(364).blockname = 'DAQ/HipMedulla_Lat_R/EtherCAT Tx Var 5';
pt(364).paramname = 'P7';
pt(364).class     = 'scalar';
pt(364).nrows     = 1;
pt(364).ncols     = 1;
pt(364).subsource = 'SS_DOUBLE';
pt(364).ndims     = '2';
pt(364).size      = '[]';

pt(365).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(365).paramname = 'P1';
pt(365).class     = 'vector';
pt(365).nrows     = 1;
pt(365).ncols     = 76;
pt(365).subsource = 'SS_DOUBLE';
pt(365).ndims     = '2';
pt(365).size      = '[]';

pt(366).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(366).paramname = 'P2';
pt(366).class     = 'scalar';
pt(366).nrows     = 1;
pt(366).ncols     = 1;
pt(366).subsource = 'SS_DOUBLE';
pt(366).ndims     = '2';
pt(366).size      = '[]';

pt(367).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(367).paramname = 'P3';
pt(367).class     = 'scalar';
pt(367).nrows     = 1;
pt(367).ncols     = 1;
pt(367).subsource = 'SS_DOUBLE';
pt(367).ndims     = '2';
pt(367).size      = '[]';

pt(368).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(368).paramname = 'P4';
pt(368).class     = 'scalar';
pt(368).nrows     = 1;
pt(368).ncols     = 1;
pt(368).subsource = 'SS_DOUBLE';
pt(368).ndims     = '2';
pt(368).size      = '[]';

pt(369).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(369).paramname = 'P5';
pt(369).class     = 'scalar';
pt(369).nrows     = 1;
pt(369).ncols     = 1;
pt(369).subsource = 'SS_DOUBLE';
pt(369).ndims     = '2';
pt(369).size      = '[]';

pt(370).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(370).paramname = 'P6';
pt(370).class     = 'scalar';
pt(370).nrows     = 1;
pt(370).ncols     = 1;
pt(370).subsource = 'SS_DOUBLE';
pt(370).ndims     = '2';
pt(370).size      = '[]';

pt(371).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var ';
pt(371).paramname = 'P7';
pt(371).class     = 'scalar';
pt(371).nrows     = 1;
pt(371).ncols     = 1;
pt(371).subsource = 'SS_DOUBLE';
pt(371).ndims     = '2';
pt(371).size      = '[]';

pt(372).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(372).paramname = 'P1';
pt(372).class     = 'vector';
pt(372).nrows     = 1;
pt(372).ncols     = 86;
pt(372).subsource = 'SS_DOUBLE';
pt(372).ndims     = '2';
pt(372).size      = '[]';

pt(373).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(373).paramname = 'P2';
pt(373).class     = 'scalar';
pt(373).nrows     = 1;
pt(373).ncols     = 1;
pt(373).subsource = 'SS_DOUBLE';
pt(373).ndims     = '2';
pt(373).size      = '[]';

pt(374).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(374).paramname = 'P3';
pt(374).class     = 'scalar';
pt(374).nrows     = 1;
pt(374).ncols     = 1;
pt(374).subsource = 'SS_DOUBLE';
pt(374).ndims     = '2';
pt(374).size      = '[]';

pt(375).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(375).paramname = 'P4';
pt(375).class     = 'scalar';
pt(375).nrows     = 1;
pt(375).ncols     = 1;
pt(375).subsource = 'SS_DOUBLE';
pt(375).ndims     = '2';
pt(375).size      = '[]';

pt(376).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(376).paramname = 'P5';
pt(376).class     = 'scalar';
pt(376).nrows     = 1;
pt(376).ncols     = 1;
pt(376).subsource = 'SS_DOUBLE';
pt(376).ndims     = '2';
pt(376).size      = '[]';

pt(377).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(377).paramname = 'P6';
pt(377).class     = 'scalar';
pt(377).nrows     = 1;
pt(377).ncols     = 1;
pt(377).subsource = 'SS_DOUBLE';
pt(377).ndims     = '2';
pt(377).size      = '[]';

pt(378).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 1';
pt(378).paramname = 'P7';
pt(378).class     = 'scalar';
pt(378).nrows     = 1;
pt(378).ncols     = 1;
pt(378).subsource = 'SS_DOUBLE';
pt(378).ndims     = '2';
pt(378).size      = '[]';

pt(379).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(379).paramname = 'P1';
pt(379).class     = 'vector';
pt(379).nrows     = 1;
pt(379).ncols     = 56;
pt(379).subsource = 'SS_DOUBLE';
pt(379).ndims     = '2';
pt(379).size      = '[]';

pt(380).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(380).paramname = 'P2';
pt(380).class     = 'scalar';
pt(380).nrows     = 1;
pt(380).ncols     = 1;
pt(380).subsource = 'SS_DOUBLE';
pt(380).ndims     = '2';
pt(380).size      = '[]';

pt(381).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(381).paramname = 'P3';
pt(381).class     = 'scalar';
pt(381).nrows     = 1;
pt(381).ncols     = 1;
pt(381).subsource = 'SS_DOUBLE';
pt(381).ndims     = '2';
pt(381).size      = '[]';

pt(382).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(382).paramname = 'P4';
pt(382).class     = 'scalar';
pt(382).nrows     = 1;
pt(382).ncols     = 1;
pt(382).subsource = 'SS_DOUBLE';
pt(382).ndims     = '2';
pt(382).size      = '[]';

pt(383).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(383).paramname = 'P5';
pt(383).class     = 'scalar';
pt(383).nrows     = 1;
pt(383).ncols     = 1;
pt(383).subsource = 'SS_DOUBLE';
pt(383).ndims     = '2';
pt(383).size      = '[]';

pt(384).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(384).paramname = 'P6';
pt(384).class     = 'scalar';
pt(384).nrows     = 1;
pt(384).ncols     = 1;
pt(384).subsource = 'SS_DOUBLE';
pt(384).ndims     = '2';
pt(384).size      = '[]';

pt(385).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 10';
pt(385).paramname = 'P7';
pt(385).class     = 'scalar';
pt(385).nrows     = 1;
pt(385).ncols     = 1;
pt(385).subsource = 'SS_DOUBLE';
pt(385).ndims     = '2';
pt(385).size      = '[]';

pt(386).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(386).paramname = 'P1';
pt(386).class     = 'vector';
pt(386).nrows     = 1;
pt(386).ncols     = 56;
pt(386).subsource = 'SS_DOUBLE';
pt(386).ndims     = '2';
pt(386).size      = '[]';

pt(387).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(387).paramname = 'P2';
pt(387).class     = 'scalar';
pt(387).nrows     = 1;
pt(387).ncols     = 1;
pt(387).subsource = 'SS_DOUBLE';
pt(387).ndims     = '2';
pt(387).size      = '[]';

pt(388).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(388).paramname = 'P3';
pt(388).class     = 'scalar';
pt(388).nrows     = 1;
pt(388).ncols     = 1;
pt(388).subsource = 'SS_DOUBLE';
pt(388).ndims     = '2';
pt(388).size      = '[]';

pt(389).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(389).paramname = 'P4';
pt(389).class     = 'scalar';
pt(389).nrows     = 1;
pt(389).ncols     = 1;
pt(389).subsource = 'SS_DOUBLE';
pt(389).ndims     = '2';
pt(389).size      = '[]';

pt(390).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(390).paramname = 'P5';
pt(390).class     = 'scalar';
pt(390).nrows     = 1;
pt(390).ncols     = 1;
pt(390).subsource = 'SS_DOUBLE';
pt(390).ndims     = '2';
pt(390).size      = '[]';

pt(391).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(391).paramname = 'P6';
pt(391).class     = 'scalar';
pt(391).nrows     = 1;
pt(391).ncols     = 1;
pt(391).subsource = 'SS_DOUBLE';
pt(391).ndims     = '2';
pt(391).size      = '[]';

pt(392).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 11';
pt(392).paramname = 'P7';
pt(392).class     = 'scalar';
pt(392).nrows     = 1;
pt(392).ncols     = 1;
pt(392).subsource = 'SS_DOUBLE';
pt(392).ndims     = '2';
pt(392).size      = '[]';

pt(393).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(393).paramname = 'P1';
pt(393).class     = 'vector';
pt(393).nrows     = 1;
pt(393).ncols     = 61;
pt(393).subsource = 'SS_DOUBLE';
pt(393).ndims     = '2';
pt(393).size      = '[]';

pt(394).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(394).paramname = 'P2';
pt(394).class     = 'scalar';
pt(394).nrows     = 1;
pt(394).ncols     = 1;
pt(394).subsource = 'SS_DOUBLE';
pt(394).ndims     = '2';
pt(394).size      = '[]';

pt(395).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(395).paramname = 'P3';
pt(395).class     = 'scalar';
pt(395).nrows     = 1;
pt(395).ncols     = 1;
pt(395).subsource = 'SS_DOUBLE';
pt(395).ndims     = '2';
pt(395).size      = '[]';

pt(396).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(396).paramname = 'P4';
pt(396).class     = 'scalar';
pt(396).nrows     = 1;
pt(396).ncols     = 1;
pt(396).subsource = 'SS_DOUBLE';
pt(396).ndims     = '2';
pt(396).size      = '[]';

pt(397).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(397).paramname = 'P5';
pt(397).class     = 'scalar';
pt(397).nrows     = 1;
pt(397).ncols     = 1;
pt(397).subsource = 'SS_DOUBLE';
pt(397).ndims     = '2';
pt(397).size      = '[]';

pt(398).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(398).paramname = 'P6';
pt(398).class     = 'scalar';
pt(398).nrows     = 1;
pt(398).ncols     = 1;
pt(398).subsource = 'SS_DOUBLE';
pt(398).ndims     = '2';
pt(398).size      = '[]';

pt(399).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 12';
pt(399).paramname = 'P7';
pt(399).class     = 'scalar';
pt(399).nrows     = 1;
pt(399).ncols     = 1;
pt(399).subsource = 'SS_DOUBLE';
pt(399).ndims     = '2';
pt(399).size      = '[]';

pt(400).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(400).paramname = 'P1';
pt(400).class     = 'vector';
pt(400).nrows     = 1;
pt(400).ncols     = 61;
pt(400).subsource = 'SS_DOUBLE';
pt(400).ndims     = '2';
pt(400).size      = '[]';

pt(401).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(401).paramname = 'P2';
pt(401).class     = 'scalar';
pt(401).nrows     = 1;
pt(401).ncols     = 1;
pt(401).subsource = 'SS_DOUBLE';
pt(401).ndims     = '2';
pt(401).size      = '[]';

pt(402).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(402).paramname = 'P3';
pt(402).class     = 'scalar';
pt(402).nrows     = 1;
pt(402).ncols     = 1;
pt(402).subsource = 'SS_DOUBLE';
pt(402).ndims     = '2';
pt(402).size      = '[]';

pt(403).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(403).paramname = 'P4';
pt(403).class     = 'scalar';
pt(403).nrows     = 1;
pt(403).ncols     = 1;
pt(403).subsource = 'SS_DOUBLE';
pt(403).ndims     = '2';
pt(403).size      = '[]';

pt(404).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(404).paramname = 'P5';
pt(404).class     = 'scalar';
pt(404).nrows     = 1;
pt(404).ncols     = 1;
pt(404).subsource = 'SS_DOUBLE';
pt(404).ndims     = '2';
pt(404).size      = '[]';

pt(405).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(405).paramname = 'P6';
pt(405).class     = 'scalar';
pt(405).nrows     = 1;
pt(405).ncols     = 1;
pt(405).subsource = 'SS_DOUBLE';
pt(405).ndims     = '2';
pt(405).size      = '[]';

pt(406).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 13';
pt(406).paramname = 'P7';
pt(406).class     = 'scalar';
pt(406).nrows     = 1;
pt(406).ncols     = 1;
pt(406).subsource = 'SS_DOUBLE';
pt(406).ndims     = '2';
pt(406).size      = '[]';

pt(407).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(407).paramname = 'P1';
pt(407).class     = 'vector';
pt(407).nrows     = 1;
pt(407).ncols     = 61;
pt(407).subsource = 'SS_DOUBLE';
pt(407).ndims     = '2';
pt(407).size      = '[]';

pt(408).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(408).paramname = 'P2';
pt(408).class     = 'scalar';
pt(408).nrows     = 1;
pt(408).ncols     = 1;
pt(408).subsource = 'SS_DOUBLE';
pt(408).ndims     = '2';
pt(408).size      = '[]';

pt(409).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(409).paramname = 'P3';
pt(409).class     = 'scalar';
pt(409).nrows     = 1;
pt(409).ncols     = 1;
pt(409).subsource = 'SS_DOUBLE';
pt(409).ndims     = '2';
pt(409).size      = '[]';

pt(410).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(410).paramname = 'P4';
pt(410).class     = 'scalar';
pt(410).nrows     = 1;
pt(410).ncols     = 1;
pt(410).subsource = 'SS_DOUBLE';
pt(410).ndims     = '2';
pt(410).size      = '[]';

pt(411).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(411).paramname = 'P5';
pt(411).class     = 'scalar';
pt(411).nrows     = 1;
pt(411).ncols     = 1;
pt(411).subsource = 'SS_DOUBLE';
pt(411).ndims     = '2';
pt(411).size      = '[]';

pt(412).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(412).paramname = 'P6';
pt(412).class     = 'scalar';
pt(412).nrows     = 1;
pt(412).ncols     = 1;
pt(412).subsource = 'SS_DOUBLE';
pt(412).ndims     = '2';
pt(412).size      = '[]';

pt(413).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 14';
pt(413).paramname = 'P7';
pt(413).class     = 'scalar';
pt(413).nrows     = 1;
pt(413).ncols     = 1;
pt(413).subsource = 'SS_DOUBLE';
pt(413).ndims     = '2';
pt(413).size      = '[]';

pt(414).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(414).paramname = 'P1';
pt(414).class     = 'vector';
pt(414).nrows     = 1;
pt(414).ncols     = 61;
pt(414).subsource = 'SS_DOUBLE';
pt(414).ndims     = '2';
pt(414).size      = '[]';

pt(415).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(415).paramname = 'P2';
pt(415).class     = 'scalar';
pt(415).nrows     = 1;
pt(415).ncols     = 1;
pt(415).subsource = 'SS_DOUBLE';
pt(415).ndims     = '2';
pt(415).size      = '[]';

pt(416).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(416).paramname = 'P3';
pt(416).class     = 'scalar';
pt(416).nrows     = 1;
pt(416).ncols     = 1;
pt(416).subsource = 'SS_DOUBLE';
pt(416).ndims     = '2';
pt(416).size      = '[]';

pt(417).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(417).paramname = 'P4';
pt(417).class     = 'scalar';
pt(417).nrows     = 1;
pt(417).ncols     = 1;
pt(417).subsource = 'SS_DOUBLE';
pt(417).ndims     = '2';
pt(417).size      = '[]';

pt(418).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(418).paramname = 'P5';
pt(418).class     = 'scalar';
pt(418).nrows     = 1;
pt(418).ncols     = 1;
pt(418).subsource = 'SS_DOUBLE';
pt(418).ndims     = '2';
pt(418).size      = '[]';

pt(419).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(419).paramname = 'P6';
pt(419).class     = 'scalar';
pt(419).nrows     = 1;
pt(419).ncols     = 1;
pt(419).subsource = 'SS_DOUBLE';
pt(419).ndims     = '2';
pt(419).size      = '[]';

pt(420).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 15';
pt(420).paramname = 'P7';
pt(420).class     = 'scalar';
pt(420).nrows     = 1;
pt(420).ncols     = 1;
pt(420).subsource = 'SS_DOUBLE';
pt(420).ndims     = '2';
pt(420).size      = '[]';

pt(421).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(421).paramname = 'P1';
pt(421).class     = 'vector';
pt(421).nrows     = 1;
pt(421).ncols     = 61;
pt(421).subsource = 'SS_DOUBLE';
pt(421).ndims     = '2';
pt(421).size      = '[]';

pt(422).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(422).paramname = 'P2';
pt(422).class     = 'scalar';
pt(422).nrows     = 1;
pt(422).ncols     = 1;
pt(422).subsource = 'SS_DOUBLE';
pt(422).ndims     = '2';
pt(422).size      = '[]';

pt(423).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(423).paramname = 'P3';
pt(423).class     = 'scalar';
pt(423).nrows     = 1;
pt(423).ncols     = 1;
pt(423).subsource = 'SS_DOUBLE';
pt(423).ndims     = '2';
pt(423).size      = '[]';

pt(424).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(424).paramname = 'P4';
pt(424).class     = 'scalar';
pt(424).nrows     = 1;
pt(424).ncols     = 1;
pt(424).subsource = 'SS_DOUBLE';
pt(424).ndims     = '2';
pt(424).size      = '[]';

pt(425).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(425).paramname = 'P5';
pt(425).class     = 'scalar';
pt(425).nrows     = 1;
pt(425).ncols     = 1;
pt(425).subsource = 'SS_DOUBLE';
pt(425).ndims     = '2';
pt(425).size      = '[]';

pt(426).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(426).paramname = 'P6';
pt(426).class     = 'scalar';
pt(426).nrows     = 1;
pt(426).ncols     = 1;
pt(426).subsource = 'SS_DOUBLE';
pt(426).ndims     = '2';
pt(426).size      = '[]';

pt(427).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 16';
pt(427).paramname = 'P7';
pt(427).class     = 'scalar';
pt(427).nrows     = 1;
pt(427).ncols     = 1;
pt(427).subsource = 'SS_DOUBLE';
pt(427).ndims     = '2';
pt(427).size      = '[]';

pt(428).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(428).paramname = 'P1';
pt(428).class     = 'vector';
pt(428).nrows     = 1;
pt(428).ncols     = 61;
pt(428).subsource = 'SS_DOUBLE';
pt(428).ndims     = '2';
pt(428).size      = '[]';

pt(429).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(429).paramname = 'P2';
pt(429).class     = 'scalar';
pt(429).nrows     = 1;
pt(429).ncols     = 1;
pt(429).subsource = 'SS_DOUBLE';
pt(429).ndims     = '2';
pt(429).size      = '[]';

pt(430).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(430).paramname = 'P3';
pt(430).class     = 'scalar';
pt(430).nrows     = 1;
pt(430).ncols     = 1;
pt(430).subsource = 'SS_DOUBLE';
pt(430).ndims     = '2';
pt(430).size      = '[]';

pt(431).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(431).paramname = 'P4';
pt(431).class     = 'scalar';
pt(431).nrows     = 1;
pt(431).ncols     = 1;
pt(431).subsource = 'SS_DOUBLE';
pt(431).ndims     = '2';
pt(431).size      = '[]';

pt(432).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(432).paramname = 'P5';
pt(432).class     = 'scalar';
pt(432).nrows     = 1;
pt(432).ncols     = 1;
pt(432).subsource = 'SS_DOUBLE';
pt(432).ndims     = '2';
pt(432).size      = '[]';

pt(433).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(433).paramname = 'P6';
pt(433).class     = 'scalar';
pt(433).nrows     = 1;
pt(433).ncols     = 1;
pt(433).subsource = 'SS_DOUBLE';
pt(433).ndims     = '2';
pt(433).size      = '[]';

pt(434).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 17';
pt(434).paramname = 'P7';
pt(434).class     = 'scalar';
pt(434).nrows     = 1;
pt(434).ncols     = 1;
pt(434).subsource = 'SS_DOUBLE';
pt(434).ndims     = '2';
pt(434).size      = '[]';

pt(435).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(435).paramname = 'P1';
pt(435).class     = 'vector';
pt(435).nrows     = 1;
pt(435).ncols     = 63;
pt(435).subsource = 'SS_DOUBLE';
pt(435).ndims     = '2';
pt(435).size      = '[]';

pt(436).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(436).paramname = 'P2';
pt(436).class     = 'scalar';
pt(436).nrows     = 1;
pt(436).ncols     = 1;
pt(436).subsource = 'SS_DOUBLE';
pt(436).ndims     = '2';
pt(436).size      = '[]';

pt(437).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(437).paramname = 'P3';
pt(437).class     = 'scalar';
pt(437).nrows     = 1;
pt(437).ncols     = 1;
pt(437).subsource = 'SS_DOUBLE';
pt(437).ndims     = '2';
pt(437).size      = '[]';

pt(438).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(438).paramname = 'P4';
pt(438).class     = 'scalar';
pt(438).nrows     = 1;
pt(438).ncols     = 1;
pt(438).subsource = 'SS_DOUBLE';
pt(438).ndims     = '2';
pt(438).size      = '[]';

pt(439).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(439).paramname = 'P5';
pt(439).class     = 'scalar';
pt(439).nrows     = 1;
pt(439).ncols     = 1;
pt(439).subsource = 'SS_DOUBLE';
pt(439).ndims     = '2';
pt(439).size      = '[]';

pt(440).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(440).paramname = 'P6';
pt(440).class     = 'scalar';
pt(440).nrows     = 1;
pt(440).ncols     = 1;
pt(440).subsource = 'SS_DOUBLE';
pt(440).ndims     = '2';
pt(440).size      = '[]';

pt(441).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 18';
pt(441).paramname = 'P7';
pt(441).class     = 'scalar';
pt(441).nrows     = 1;
pt(441).ncols     = 1;
pt(441).subsource = 'SS_DOUBLE';
pt(441).ndims     = '2';
pt(441).size      = '[]';

pt(442).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(442).paramname = 'P1';
pt(442).class     = 'vector';
pt(442).nrows     = 1;
pt(442).ncols     = 67;
pt(442).subsource = 'SS_DOUBLE';
pt(442).ndims     = '2';
pt(442).size      = '[]';

pt(443).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(443).paramname = 'P2';
pt(443).class     = 'scalar';
pt(443).nrows     = 1;
pt(443).ncols     = 1;
pt(443).subsource = 'SS_DOUBLE';
pt(443).ndims     = '2';
pt(443).size      = '[]';

pt(444).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(444).paramname = 'P3';
pt(444).class     = 'scalar';
pt(444).nrows     = 1;
pt(444).ncols     = 1;
pt(444).subsource = 'SS_DOUBLE';
pt(444).ndims     = '2';
pt(444).size      = '[]';

pt(445).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(445).paramname = 'P4';
pt(445).class     = 'scalar';
pt(445).nrows     = 1;
pt(445).ncols     = 1;
pt(445).subsource = 'SS_DOUBLE';
pt(445).ndims     = '2';
pt(445).size      = '[]';

pt(446).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(446).paramname = 'P5';
pt(446).class     = 'scalar';
pt(446).nrows     = 1;
pt(446).ncols     = 1;
pt(446).subsource = 'SS_DOUBLE';
pt(446).ndims     = '2';
pt(446).size      = '[]';

pt(447).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(447).paramname = 'P6';
pt(447).class     = 'scalar';
pt(447).nrows     = 1;
pt(447).ncols     = 1;
pt(447).subsource = 'SS_DOUBLE';
pt(447).ndims     = '2';
pt(447).size      = '[]';

pt(448).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 19';
pt(448).paramname = 'P7';
pt(448).class     = 'scalar';
pt(448).nrows     = 1;
pt(448).ncols     = 1;
pt(448).subsource = 'SS_DOUBLE';
pt(448).ndims     = '2';
pt(448).size      = '[]';

pt(449).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(449).paramname = 'P1';
pt(449).class     = 'vector';
pt(449).nrows     = 1;
pt(449).ncols     = 60;
pt(449).subsource = 'SS_DOUBLE';
pt(449).ndims     = '2';
pt(449).size      = '[]';

pt(450).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(450).paramname = 'P2';
pt(450).class     = 'scalar';
pt(450).nrows     = 1;
pt(450).ncols     = 1;
pt(450).subsource = 'SS_DOUBLE';
pt(450).ndims     = '2';
pt(450).size      = '[]';

pt(451).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(451).paramname = 'P3';
pt(451).class     = 'scalar';
pt(451).nrows     = 1;
pt(451).ncols     = 1;
pt(451).subsource = 'SS_DOUBLE';
pt(451).ndims     = '2';
pt(451).size      = '[]';

pt(452).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(452).paramname = 'P4';
pt(452).class     = 'scalar';
pt(452).nrows     = 1;
pt(452).ncols     = 1;
pt(452).subsource = 'SS_DOUBLE';
pt(452).ndims     = '2';
pt(452).size      = '[]';

pt(453).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(453).paramname = 'P5';
pt(453).class     = 'scalar';
pt(453).nrows     = 1;
pt(453).ncols     = 1;
pt(453).subsource = 'SS_DOUBLE';
pt(453).ndims     = '2';
pt(453).size      = '[]';

pt(454).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(454).paramname = 'P6';
pt(454).class     = 'scalar';
pt(454).nrows     = 1;
pt(454).ncols     = 1;
pt(454).subsource = 'SS_DOUBLE';
pt(454).ndims     = '2';
pt(454).size      = '[]';

pt(455).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 2';
pt(455).paramname = 'P7';
pt(455).class     = 'scalar';
pt(455).nrows     = 1;
pt(455).ncols     = 1;
pt(455).subsource = 'SS_DOUBLE';
pt(455).ndims     = '2';
pt(455).size      = '[]';

pt(456).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(456).paramname = 'P1';
pt(456).class     = 'vector';
pt(456).nrows     = 1;
pt(456).ncols     = 58;
pt(456).subsource = 'SS_DOUBLE';
pt(456).ndims     = '2';
pt(456).size      = '[]';

pt(457).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(457).paramname = 'P2';
pt(457).class     = 'scalar';
pt(457).nrows     = 1;
pt(457).ncols     = 1;
pt(457).subsource = 'SS_DOUBLE';
pt(457).ndims     = '2';
pt(457).size      = '[]';

pt(458).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(458).paramname = 'P3';
pt(458).class     = 'scalar';
pt(458).nrows     = 1;
pt(458).ncols     = 1;
pt(458).subsource = 'SS_DOUBLE';
pt(458).ndims     = '2';
pt(458).size      = '[]';

pt(459).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(459).paramname = 'P4';
pt(459).class     = 'scalar';
pt(459).nrows     = 1;
pt(459).ncols     = 1;
pt(459).subsource = 'SS_DOUBLE';
pt(459).ndims     = '2';
pt(459).size      = '[]';

pt(460).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(460).paramname = 'P5';
pt(460).class     = 'scalar';
pt(460).nrows     = 1;
pt(460).ncols     = 1;
pt(460).subsource = 'SS_DOUBLE';
pt(460).ndims     = '2';
pt(460).size      = '[]';

pt(461).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(461).paramname = 'P6';
pt(461).class     = 'scalar';
pt(461).nrows     = 1;
pt(461).ncols     = 1;
pt(461).subsource = 'SS_DOUBLE';
pt(461).ndims     = '2';
pt(461).size      = '[]';

pt(462).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 20';
pt(462).paramname = 'P7';
pt(462).class     = 'scalar';
pt(462).nrows     = 1;
pt(462).ncols     = 1;
pt(462).subsource = 'SS_DOUBLE';
pt(462).ndims     = '2';
pt(462).size      = '[]';

pt(463).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(463).paramname = 'P1';
pt(463).class     = 'vector';
pt(463).nrows     = 1;
pt(463).ncols     = 68;
pt(463).subsource = 'SS_DOUBLE';
pt(463).ndims     = '2';
pt(463).size      = '[]';

pt(464).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(464).paramname = 'P2';
pt(464).class     = 'scalar';
pt(464).nrows     = 1;
pt(464).ncols     = 1;
pt(464).subsource = 'SS_DOUBLE';
pt(464).ndims     = '2';
pt(464).size      = '[]';

pt(465).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(465).paramname = 'P3';
pt(465).class     = 'scalar';
pt(465).nrows     = 1;
pt(465).ncols     = 1;
pt(465).subsource = 'SS_DOUBLE';
pt(465).ndims     = '2';
pt(465).size      = '[]';

pt(466).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(466).paramname = 'P4';
pt(466).class     = 'scalar';
pt(466).nrows     = 1;
pt(466).ncols     = 1;
pt(466).subsource = 'SS_DOUBLE';
pt(466).ndims     = '2';
pt(466).size      = '[]';

pt(467).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(467).paramname = 'P5';
pt(467).class     = 'scalar';
pt(467).nrows     = 1;
pt(467).ncols     = 1;
pt(467).subsource = 'SS_DOUBLE';
pt(467).ndims     = '2';
pt(467).size      = '[]';

pt(468).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(468).paramname = 'P6';
pt(468).class     = 'scalar';
pt(468).nrows     = 1;
pt(468).ncols     = 1;
pt(468).subsource = 'SS_DOUBLE';
pt(468).ndims     = '2';
pt(468).size      = '[]';

pt(469).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 21';
pt(469).paramname = 'P7';
pt(469).class     = 'scalar';
pt(469).nrows     = 1;
pt(469).ncols     = 1;
pt(469).subsource = 'SS_DOUBLE';
pt(469).ndims     = '2';
pt(469).size      = '[]';

pt(470).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(470).paramname = 'P1';
pt(470).class     = 'vector';
pt(470).nrows     = 1;
pt(470).ncols     = 61;
pt(470).subsource = 'SS_DOUBLE';
pt(470).ndims     = '2';
pt(470).size      = '[]';

pt(471).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(471).paramname = 'P2';
pt(471).class     = 'scalar';
pt(471).nrows     = 1;
pt(471).ncols     = 1;
pt(471).subsource = 'SS_DOUBLE';
pt(471).ndims     = '2';
pt(471).size      = '[]';

pt(472).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(472).paramname = 'P3';
pt(472).class     = 'scalar';
pt(472).nrows     = 1;
pt(472).ncols     = 1;
pt(472).subsource = 'SS_DOUBLE';
pt(472).ndims     = '2';
pt(472).size      = '[]';

pt(473).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(473).paramname = 'P4';
pt(473).class     = 'scalar';
pt(473).nrows     = 1;
pt(473).ncols     = 1;
pt(473).subsource = 'SS_DOUBLE';
pt(473).ndims     = '2';
pt(473).size      = '[]';

pt(474).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(474).paramname = 'P5';
pt(474).class     = 'scalar';
pt(474).nrows     = 1;
pt(474).ncols     = 1;
pt(474).subsource = 'SS_DOUBLE';
pt(474).ndims     = '2';
pt(474).size      = '[]';

pt(475).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(475).paramname = 'P6';
pt(475).class     = 'scalar';
pt(475).nrows     = 1;
pt(475).ncols     = 1;
pt(475).subsource = 'SS_DOUBLE';
pt(475).ndims     = '2';
pt(475).size      = '[]';

pt(476).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 22';
pt(476).paramname = 'P7';
pt(476).class     = 'scalar';
pt(476).nrows     = 1;
pt(476).ncols     = 1;
pt(476).subsource = 'SS_DOUBLE';
pt(476).ndims     = '2';
pt(476).size      = '[]';

pt(477).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(477).paramname = 'P1';
pt(477).class     = 'vector';
pt(477).nrows     = 1;
pt(477).ncols     = 66;
pt(477).subsource = 'SS_DOUBLE';
pt(477).ndims     = '2';
pt(477).size      = '[]';

pt(478).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(478).paramname = 'P2';
pt(478).class     = 'scalar';
pt(478).nrows     = 1;
pt(478).ncols     = 1;
pt(478).subsource = 'SS_DOUBLE';
pt(478).ndims     = '2';
pt(478).size      = '[]';

pt(479).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(479).paramname = 'P3';
pt(479).class     = 'scalar';
pt(479).nrows     = 1;
pt(479).ncols     = 1;
pt(479).subsource = 'SS_DOUBLE';
pt(479).ndims     = '2';
pt(479).size      = '[]';

pt(480).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(480).paramname = 'P4';
pt(480).class     = 'scalar';
pt(480).nrows     = 1;
pt(480).ncols     = 1;
pt(480).subsource = 'SS_DOUBLE';
pt(480).ndims     = '2';
pt(480).size      = '[]';

pt(481).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(481).paramname = 'P5';
pt(481).class     = 'scalar';
pt(481).nrows     = 1;
pt(481).ncols     = 1;
pt(481).subsource = 'SS_DOUBLE';
pt(481).ndims     = '2';
pt(481).size      = '[]';

pt(482).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(482).paramname = 'P6';
pt(482).class     = 'scalar';
pt(482).nrows     = 1;
pt(482).ncols     = 1;
pt(482).subsource = 'SS_DOUBLE';
pt(482).ndims     = '2';
pt(482).size      = '[]';

pt(483).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 23';
pt(483).paramname = 'P7';
pt(483).class     = 'scalar';
pt(483).nrows     = 1;
pt(483).ncols     = 1;
pt(483).subsource = 'SS_DOUBLE';
pt(483).ndims     = '2';
pt(483).size      = '[]';

pt(484).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(484).paramname = 'P1';
pt(484).class     = 'vector';
pt(484).nrows     = 1;
pt(484).ncols     = 60;
pt(484).subsource = 'SS_DOUBLE';
pt(484).ndims     = '2';
pt(484).size      = '[]';

pt(485).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(485).paramname = 'P2';
pt(485).class     = 'scalar';
pt(485).nrows     = 1;
pt(485).ncols     = 1;
pt(485).subsource = 'SS_DOUBLE';
pt(485).ndims     = '2';
pt(485).size      = '[]';

pt(486).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(486).paramname = 'P3';
pt(486).class     = 'scalar';
pt(486).nrows     = 1;
pt(486).ncols     = 1;
pt(486).subsource = 'SS_DOUBLE';
pt(486).ndims     = '2';
pt(486).size      = '[]';

pt(487).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(487).paramname = 'P4';
pt(487).class     = 'scalar';
pt(487).nrows     = 1;
pt(487).ncols     = 1;
pt(487).subsource = 'SS_DOUBLE';
pt(487).ndims     = '2';
pt(487).size      = '[]';

pt(488).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(488).paramname = 'P5';
pt(488).class     = 'scalar';
pt(488).nrows     = 1;
pt(488).ncols     = 1;
pt(488).subsource = 'SS_DOUBLE';
pt(488).ndims     = '2';
pt(488).size      = '[]';

pt(489).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(489).paramname = 'P6';
pt(489).class     = 'scalar';
pt(489).nrows     = 1;
pt(489).ncols     = 1;
pt(489).subsource = 'SS_DOUBLE';
pt(489).ndims     = '2';
pt(489).size      = '[]';

pt(490).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 3';
pt(490).paramname = 'P7';
pt(490).class     = 'scalar';
pt(490).nrows     = 1;
pt(490).ncols     = 1;
pt(490).subsource = 'SS_DOUBLE';
pt(490).ndims     = '2';
pt(490).size      = '[]';

pt(491).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(491).paramname = 'P1';
pt(491).class     = 'vector';
pt(491).nrows     = 1;
pt(491).ncols     = 60;
pt(491).subsource = 'SS_DOUBLE';
pt(491).ndims     = '2';
pt(491).size      = '[]';

pt(492).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(492).paramname = 'P2';
pt(492).class     = 'scalar';
pt(492).nrows     = 1;
pt(492).ncols     = 1;
pt(492).subsource = 'SS_DOUBLE';
pt(492).ndims     = '2';
pt(492).size      = '[]';

pt(493).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(493).paramname = 'P3';
pt(493).class     = 'scalar';
pt(493).nrows     = 1;
pt(493).ncols     = 1;
pt(493).subsource = 'SS_DOUBLE';
pt(493).ndims     = '2';
pt(493).size      = '[]';

pt(494).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(494).paramname = 'P4';
pt(494).class     = 'scalar';
pt(494).nrows     = 1;
pt(494).ncols     = 1;
pt(494).subsource = 'SS_DOUBLE';
pt(494).ndims     = '2';
pt(494).size      = '[]';

pt(495).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(495).paramname = 'P5';
pt(495).class     = 'scalar';
pt(495).nrows     = 1;
pt(495).ncols     = 1;
pt(495).subsource = 'SS_DOUBLE';
pt(495).ndims     = '2';
pt(495).size      = '[]';

pt(496).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(496).paramname = 'P6';
pt(496).class     = 'scalar';
pt(496).nrows     = 1;
pt(496).ncols     = 1;
pt(496).subsource = 'SS_DOUBLE';
pt(496).ndims     = '2';
pt(496).size      = '[]';

pt(497).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 4';
pt(497).paramname = 'P7';
pt(497).class     = 'scalar';
pt(497).nrows     = 1;
pt(497).ncols     = 1;
pt(497).subsource = 'SS_DOUBLE';
pt(497).ndims     = '2';
pt(497).size      = '[]';

pt(498).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(498).paramname = 'P1';
pt(498).class     = 'vector';
pt(498).nrows     = 1;
pt(498).ncols     = 70;
pt(498).subsource = 'SS_DOUBLE';
pt(498).ndims     = '2';
pt(498).size      = '[]';

pt(499).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(499).paramname = 'P2';
pt(499).class     = 'scalar';
pt(499).nrows     = 1;
pt(499).ncols     = 1;
pt(499).subsource = 'SS_DOUBLE';
pt(499).ndims     = '2';
pt(499).size      = '[]';

pt(500).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(500).paramname = 'P3';
pt(500).class     = 'scalar';
pt(500).nrows     = 1;
pt(500).ncols     = 1;
pt(500).subsource = 'SS_DOUBLE';
pt(500).ndims     = '2';
pt(500).size      = '[]';

pt(501).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(501).paramname = 'P4';
pt(501).class     = 'scalar';
pt(501).nrows     = 1;
pt(501).ncols     = 1;
pt(501).subsource = 'SS_DOUBLE';
pt(501).ndims     = '2';
pt(501).size      = '[]';

pt(502).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(502).paramname = 'P5';
pt(502).class     = 'scalar';
pt(502).nrows     = 1;
pt(502).ncols     = 1;
pt(502).subsource = 'SS_DOUBLE';
pt(502).ndims     = '2';
pt(502).size      = '[]';

pt(503).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(503).paramname = 'P6';
pt(503).class     = 'scalar';
pt(503).nrows     = 1;
pt(503).ncols     = 1;
pt(503).subsource = 'SS_DOUBLE';
pt(503).ndims     = '2';
pt(503).size      = '[]';

pt(504).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 5';
pt(504).paramname = 'P7';
pt(504).class     = 'scalar';
pt(504).nrows     = 1;
pt(504).ncols     = 1;
pt(504).subsource = 'SS_DOUBLE';
pt(504).ndims     = '2';
pt(504).size      = '[]';

pt(505).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(505).paramname = 'P1';
pt(505).class     = 'vector';
pt(505).nrows     = 1;
pt(505).ncols     = 76;
pt(505).subsource = 'SS_DOUBLE';
pt(505).ndims     = '2';
pt(505).size      = '[]';

pt(506).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(506).paramname = 'P2';
pt(506).class     = 'scalar';
pt(506).nrows     = 1;
pt(506).ncols     = 1;
pt(506).subsource = 'SS_DOUBLE';
pt(506).ndims     = '2';
pt(506).size      = '[]';

pt(507).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(507).paramname = 'P3';
pt(507).class     = 'scalar';
pt(507).nrows     = 1;
pt(507).ncols     = 1;
pt(507).subsource = 'SS_DOUBLE';
pt(507).ndims     = '2';
pt(507).size      = '[]';

pt(508).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(508).paramname = 'P4';
pt(508).class     = 'scalar';
pt(508).nrows     = 1;
pt(508).ncols     = 1;
pt(508).subsource = 'SS_DOUBLE';
pt(508).ndims     = '2';
pt(508).size      = '[]';

pt(509).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(509).paramname = 'P5';
pt(509).class     = 'scalar';
pt(509).nrows     = 1;
pt(509).ncols     = 1;
pt(509).subsource = 'SS_DOUBLE';
pt(509).ndims     = '2';
pt(509).size      = '[]';

pt(510).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(510).paramname = 'P6';
pt(510).class     = 'scalar';
pt(510).nrows     = 1;
pt(510).ncols     = 1;
pt(510).subsource = 'SS_DOUBLE';
pt(510).ndims     = '2';
pt(510).size      = '[]';

pt(511).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 6';
pt(511).paramname = 'P7';
pt(511).class     = 'scalar';
pt(511).nrows     = 1;
pt(511).ncols     = 1;
pt(511).subsource = 'SS_DOUBLE';
pt(511).ndims     = '2';
pt(511).size      = '[]';

pt(512).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(512).paramname = 'P1';
pt(512).class     = 'vector';
pt(512).nrows     = 1;
pt(512).ncols     = 76;
pt(512).subsource = 'SS_DOUBLE';
pt(512).ndims     = '2';
pt(512).size      = '[]';

pt(513).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(513).paramname = 'P2';
pt(513).class     = 'scalar';
pt(513).nrows     = 1;
pt(513).ncols     = 1;
pt(513).subsource = 'SS_DOUBLE';
pt(513).ndims     = '2';
pt(513).size      = '[]';

pt(514).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(514).paramname = 'P3';
pt(514).class     = 'scalar';
pt(514).nrows     = 1;
pt(514).ncols     = 1;
pt(514).subsource = 'SS_DOUBLE';
pt(514).ndims     = '2';
pt(514).size      = '[]';

pt(515).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(515).paramname = 'P4';
pt(515).class     = 'scalar';
pt(515).nrows     = 1;
pt(515).ncols     = 1;
pt(515).subsource = 'SS_DOUBLE';
pt(515).ndims     = '2';
pt(515).size      = '[]';

pt(516).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(516).paramname = 'P5';
pt(516).class     = 'scalar';
pt(516).nrows     = 1;
pt(516).ncols     = 1;
pt(516).subsource = 'SS_DOUBLE';
pt(516).ndims     = '2';
pt(516).size      = '[]';

pt(517).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(517).paramname = 'P6';
pt(517).class     = 'scalar';
pt(517).nrows     = 1;
pt(517).ncols     = 1;
pt(517).subsource = 'SS_DOUBLE';
pt(517).ndims     = '2';
pt(517).size      = '[]';

pt(518).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 7';
pt(518).paramname = 'P7';
pt(518).class     = 'scalar';
pt(518).nrows     = 1;
pt(518).ncols     = 1;
pt(518).subsource = 'SS_DOUBLE';
pt(518).ndims     = '2';
pt(518).size      = '[]';

pt(519).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(519).paramname = 'P1';
pt(519).class     = 'vector';
pt(519).nrows     = 1;
pt(519).ncols     = 64;
pt(519).subsource = 'SS_DOUBLE';
pt(519).ndims     = '2';
pt(519).size      = '[]';

pt(520).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(520).paramname = 'P2';
pt(520).class     = 'scalar';
pt(520).nrows     = 1;
pt(520).ncols     = 1;
pt(520).subsource = 'SS_DOUBLE';
pt(520).ndims     = '2';
pt(520).size      = '[]';

pt(521).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(521).paramname = 'P3';
pt(521).class     = 'scalar';
pt(521).nrows     = 1;
pt(521).ncols     = 1;
pt(521).subsource = 'SS_DOUBLE';
pt(521).ndims     = '2';
pt(521).size      = '[]';

pt(522).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(522).paramname = 'P4';
pt(522).class     = 'scalar';
pt(522).nrows     = 1;
pt(522).ncols     = 1;
pt(522).subsource = 'SS_DOUBLE';
pt(522).ndims     = '2';
pt(522).size      = '[]';

pt(523).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(523).paramname = 'P5';
pt(523).class     = 'scalar';
pt(523).nrows     = 1;
pt(523).ncols     = 1;
pt(523).subsource = 'SS_DOUBLE';
pt(523).ndims     = '2';
pt(523).size      = '[]';

pt(524).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(524).paramname = 'P6';
pt(524).class     = 'scalar';
pt(524).nrows     = 1;
pt(524).ncols     = 1;
pt(524).subsource = 'SS_DOUBLE';
pt(524).ndims     = '2';
pt(524).size      = '[]';

pt(525).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 8';
pt(525).paramname = 'P7';
pt(525).class     = 'scalar';
pt(525).nrows     = 1;
pt(525).ncols     = 1;
pt(525).subsource = 'SS_DOUBLE';
pt(525).ndims     = '2';
pt(525).size      = '[]';

pt(526).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(526).paramname = 'P1';
pt(526).class     = 'vector';
pt(526).nrows     = 1;
pt(526).ncols     = 74;
pt(526).subsource = 'SS_DOUBLE';
pt(526).ndims     = '2';
pt(526).size      = '[]';

pt(527).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(527).paramname = 'P2';
pt(527).class     = 'scalar';
pt(527).nrows     = 1;
pt(527).ncols     = 1;
pt(527).subsource = 'SS_DOUBLE';
pt(527).ndims     = '2';
pt(527).size      = '[]';

pt(528).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(528).paramname = 'P3';
pt(528).class     = 'scalar';
pt(528).nrows     = 1;
pt(528).ncols     = 1;
pt(528).subsource = 'SS_DOUBLE';
pt(528).ndims     = '2';
pt(528).size      = '[]';

pt(529).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(529).paramname = 'P4';
pt(529).class     = 'scalar';
pt(529).nrows     = 1;
pt(529).ncols     = 1;
pt(529).subsource = 'SS_DOUBLE';
pt(529).ndims     = '2';
pt(529).size      = '[]';

pt(530).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(530).paramname = 'P5';
pt(530).class     = 'scalar';
pt(530).nrows     = 1;
pt(530).ncols     = 1;
pt(530).subsource = 'SS_DOUBLE';
pt(530).ndims     = '2';
pt(530).size      = '[]';

pt(531).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(531).paramname = 'P6';
pt(531).class     = 'scalar';
pt(531).nrows     = 1;
pt(531).ncols     = 1;
pt(531).subsource = 'SS_DOUBLE';
pt(531).ndims     = '2';
pt(531).size      = '[]';

pt(532).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Rx Var 9';
pt(532).paramname = 'P7';
pt(532).class     = 'scalar';
pt(532).nrows     = 1;
pt(532).ncols     = 1;
pt(532).subsource = 'SS_DOUBLE';
pt(532).ndims     = '2';
pt(532).size      = '[]';

pt(533).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(533).paramname = 'P1';
pt(533).class     = 'vector';
pt(533).nrows     = 1;
pt(533).ncols     = 61;
pt(533).subsource = 'SS_DOUBLE';
pt(533).ndims     = '2';
pt(533).size      = '[]';

pt(534).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(534).paramname = 'P2';
pt(534).class     = 'scalar';
pt(534).nrows     = 1;
pt(534).ncols     = 1;
pt(534).subsource = 'SS_DOUBLE';
pt(534).ndims     = '2';
pt(534).size      = '[]';

pt(535).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(535).paramname = 'P3';
pt(535).class     = 'scalar';
pt(535).nrows     = 1;
pt(535).ncols     = 1;
pt(535).subsource = 'SS_DOUBLE';
pt(535).ndims     = '2';
pt(535).size      = '[]';

pt(536).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(536).paramname = 'P4';
pt(536).class     = 'scalar';
pt(536).nrows     = 1;
pt(536).ncols     = 1;
pt(536).subsource = 'SS_DOUBLE';
pt(536).ndims     = '2';
pt(536).size      = '[]';

pt(537).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(537).paramname = 'P5';
pt(537).class     = 'scalar';
pt(537).nrows     = 1;
pt(537).ncols     = 1;
pt(537).subsource = 'SS_DOUBLE';
pt(537).ndims     = '2';
pt(537).size      = '[]';

pt(538).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(538).paramname = 'P6';
pt(538).class     = 'scalar';
pt(538).nrows     = 1;
pt(538).ncols     = 1;
pt(538).subsource = 'SS_DOUBLE';
pt(538).ndims     = '2';
pt(538).size      = '[]';

pt(539).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 3';
pt(539).paramname = 'P7';
pt(539).class     = 'scalar';
pt(539).nrows     = 1;
pt(539).ncols     = 1;
pt(539).subsource = 'SS_DOUBLE';
pt(539).ndims     = '2';
pt(539).size      = '[]';

pt(540).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(540).paramname = 'P1';
pt(540).class     = 'vector';
pt(540).nrows     = 1;
pt(540).ncols     = 61;
pt(540).subsource = 'SS_DOUBLE';
pt(540).ndims     = '2';
pt(540).size      = '[]';

pt(541).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(541).paramname = 'P2';
pt(541).class     = 'scalar';
pt(541).nrows     = 1;
pt(541).ncols     = 1;
pt(541).subsource = 'SS_DOUBLE';
pt(541).ndims     = '2';
pt(541).size      = '[]';

pt(542).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(542).paramname = 'P3';
pt(542).class     = 'scalar';
pt(542).nrows     = 1;
pt(542).ncols     = 1;
pt(542).subsource = 'SS_DOUBLE';
pt(542).ndims     = '2';
pt(542).size      = '[]';

pt(543).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(543).paramname = 'P4';
pt(543).class     = 'scalar';
pt(543).nrows     = 1;
pt(543).ncols     = 1;
pt(543).subsource = 'SS_DOUBLE';
pt(543).ndims     = '2';
pt(543).size      = '[]';

pt(544).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(544).paramname = 'P5';
pt(544).class     = 'scalar';
pt(544).nrows     = 1;
pt(544).ncols     = 1;
pt(544).subsource = 'SS_DOUBLE';
pt(544).ndims     = '2';
pt(544).size      = '[]';

pt(545).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(545).paramname = 'P6';
pt(545).class     = 'scalar';
pt(545).nrows     = 1;
pt(545).ncols     = 1;
pt(545).subsource = 'SS_DOUBLE';
pt(545).ndims     = '2';
pt(545).size      = '[]';

pt(546).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 4';
pt(546).paramname = 'P7';
pt(546).class     = 'scalar';
pt(546).nrows     = 1;
pt(546).ncols     = 1;
pt(546).subsource = 'SS_DOUBLE';
pt(546).ndims     = '2';
pt(546).size      = '[]';

pt(547).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(547).paramname = 'P1';
pt(547).class     = 'vector';
pt(547).nrows     = 1;
pt(547).ncols     = 67;
pt(547).subsource = 'SS_DOUBLE';
pt(547).ndims     = '2';
pt(547).size      = '[]';

pt(548).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(548).paramname = 'P2';
pt(548).class     = 'scalar';
pt(548).nrows     = 1;
pt(548).ncols     = 1;
pt(548).subsource = 'SS_DOUBLE';
pt(548).ndims     = '2';
pt(548).size      = '[]';

pt(549).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(549).paramname = 'P3';
pt(549).class     = 'scalar';
pt(549).nrows     = 1;
pt(549).ncols     = 1;
pt(549).subsource = 'SS_DOUBLE';
pt(549).ndims     = '2';
pt(549).size      = '[]';

pt(550).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(550).paramname = 'P4';
pt(550).class     = 'scalar';
pt(550).nrows     = 1;
pt(550).ncols     = 1;
pt(550).subsource = 'SS_DOUBLE';
pt(550).ndims     = '2';
pt(550).size      = '[]';

pt(551).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(551).paramname = 'P5';
pt(551).class     = 'scalar';
pt(551).nrows     = 1;
pt(551).ncols     = 1;
pt(551).subsource = 'SS_DOUBLE';
pt(551).ndims     = '2';
pt(551).size      = '[]';

pt(552).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(552).paramname = 'P6';
pt(552).class     = 'scalar';
pt(552).nrows     = 1;
pt(552).ncols     = 1;
pt(552).subsource = 'SS_DOUBLE';
pt(552).ndims     = '2';
pt(552).size      = '[]';

pt(553).blockname = 'DAQ/LegMedulla_Back_L/EtherCAT Tx Var 5';
pt(553).paramname = 'P7';
pt(553).class     = 'scalar';
pt(553).nrows     = 1;
pt(553).ncols     = 1;
pt(553).subsource = 'SS_DOUBLE';
pt(553).ndims     = '2';
pt(553).size      = '[]';

pt(554).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(554).paramname = 'P1';
pt(554).class     = 'vector';
pt(554).nrows     = 1;
pt(554).ncols     = 76;
pt(554).subsource = 'SS_DOUBLE';
pt(554).ndims     = '2';
pt(554).size      = '[]';

pt(555).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(555).paramname = 'P2';
pt(555).class     = 'scalar';
pt(555).nrows     = 1;
pt(555).ncols     = 1;
pt(555).subsource = 'SS_DOUBLE';
pt(555).ndims     = '2';
pt(555).size      = '[]';

pt(556).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(556).paramname = 'P3';
pt(556).class     = 'scalar';
pt(556).nrows     = 1;
pt(556).ncols     = 1;
pt(556).subsource = 'SS_DOUBLE';
pt(556).ndims     = '2';
pt(556).size      = '[]';

pt(557).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(557).paramname = 'P4';
pt(557).class     = 'scalar';
pt(557).nrows     = 1;
pt(557).ncols     = 1;
pt(557).subsource = 'SS_DOUBLE';
pt(557).ndims     = '2';
pt(557).size      = '[]';

pt(558).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(558).paramname = 'P5';
pt(558).class     = 'scalar';
pt(558).nrows     = 1;
pt(558).ncols     = 1;
pt(558).subsource = 'SS_DOUBLE';
pt(558).ndims     = '2';
pt(558).size      = '[]';

pt(559).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(559).paramname = 'P6';
pt(559).class     = 'scalar';
pt(559).nrows     = 1;
pt(559).ncols     = 1;
pt(559).subsource = 'SS_DOUBLE';
pt(559).ndims     = '2';
pt(559).size      = '[]';

pt(560).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var ';
pt(560).paramname = 'P7';
pt(560).class     = 'scalar';
pt(560).nrows     = 1;
pt(560).ncols     = 1;
pt(560).subsource = 'SS_DOUBLE';
pt(560).ndims     = '2';
pt(560).size      = '[]';

pt(561).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(561).paramname = 'P1';
pt(561).class     = 'vector';
pt(561).nrows     = 1;
pt(561).ncols     = 86;
pt(561).subsource = 'SS_DOUBLE';
pt(561).ndims     = '2';
pt(561).size      = '[]';

pt(562).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(562).paramname = 'P2';
pt(562).class     = 'scalar';
pt(562).nrows     = 1;
pt(562).ncols     = 1;
pt(562).subsource = 'SS_DOUBLE';
pt(562).ndims     = '2';
pt(562).size      = '[]';

pt(563).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(563).paramname = 'P3';
pt(563).class     = 'scalar';
pt(563).nrows     = 1;
pt(563).ncols     = 1;
pt(563).subsource = 'SS_DOUBLE';
pt(563).ndims     = '2';
pt(563).size      = '[]';

pt(564).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(564).paramname = 'P4';
pt(564).class     = 'scalar';
pt(564).nrows     = 1;
pt(564).ncols     = 1;
pt(564).subsource = 'SS_DOUBLE';
pt(564).ndims     = '2';
pt(564).size      = '[]';

pt(565).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(565).paramname = 'P5';
pt(565).class     = 'scalar';
pt(565).nrows     = 1;
pt(565).ncols     = 1;
pt(565).subsource = 'SS_DOUBLE';
pt(565).ndims     = '2';
pt(565).size      = '[]';

pt(566).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(566).paramname = 'P6';
pt(566).class     = 'scalar';
pt(566).nrows     = 1;
pt(566).ncols     = 1;
pt(566).subsource = 'SS_DOUBLE';
pt(566).ndims     = '2';
pt(566).size      = '[]';

pt(567).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 1';
pt(567).paramname = 'P7';
pt(567).class     = 'scalar';
pt(567).nrows     = 1;
pt(567).ncols     = 1;
pt(567).subsource = 'SS_DOUBLE';
pt(567).ndims     = '2';
pt(567).size      = '[]';

pt(568).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(568).paramname = 'P1';
pt(568).class     = 'vector';
pt(568).nrows     = 1;
pt(568).ncols     = 56;
pt(568).subsource = 'SS_DOUBLE';
pt(568).ndims     = '2';
pt(568).size      = '[]';

pt(569).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(569).paramname = 'P2';
pt(569).class     = 'scalar';
pt(569).nrows     = 1;
pt(569).ncols     = 1;
pt(569).subsource = 'SS_DOUBLE';
pt(569).ndims     = '2';
pt(569).size      = '[]';

pt(570).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(570).paramname = 'P3';
pt(570).class     = 'scalar';
pt(570).nrows     = 1;
pt(570).ncols     = 1;
pt(570).subsource = 'SS_DOUBLE';
pt(570).ndims     = '2';
pt(570).size      = '[]';

pt(571).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(571).paramname = 'P4';
pt(571).class     = 'scalar';
pt(571).nrows     = 1;
pt(571).ncols     = 1;
pt(571).subsource = 'SS_DOUBLE';
pt(571).ndims     = '2';
pt(571).size      = '[]';

pt(572).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(572).paramname = 'P5';
pt(572).class     = 'scalar';
pt(572).nrows     = 1;
pt(572).ncols     = 1;
pt(572).subsource = 'SS_DOUBLE';
pt(572).ndims     = '2';
pt(572).size      = '[]';

pt(573).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(573).paramname = 'P6';
pt(573).class     = 'scalar';
pt(573).nrows     = 1;
pt(573).ncols     = 1;
pt(573).subsource = 'SS_DOUBLE';
pt(573).ndims     = '2';
pt(573).size      = '[]';

pt(574).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 10';
pt(574).paramname = 'P7';
pt(574).class     = 'scalar';
pt(574).nrows     = 1;
pt(574).ncols     = 1;
pt(574).subsource = 'SS_DOUBLE';
pt(574).ndims     = '2';
pt(574).size      = '[]';

pt(575).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(575).paramname = 'P1';
pt(575).class     = 'vector';
pt(575).nrows     = 1;
pt(575).ncols     = 56;
pt(575).subsource = 'SS_DOUBLE';
pt(575).ndims     = '2';
pt(575).size      = '[]';

pt(576).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(576).paramname = 'P2';
pt(576).class     = 'scalar';
pt(576).nrows     = 1;
pt(576).ncols     = 1;
pt(576).subsource = 'SS_DOUBLE';
pt(576).ndims     = '2';
pt(576).size      = '[]';

pt(577).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(577).paramname = 'P3';
pt(577).class     = 'scalar';
pt(577).nrows     = 1;
pt(577).ncols     = 1;
pt(577).subsource = 'SS_DOUBLE';
pt(577).ndims     = '2';
pt(577).size      = '[]';

pt(578).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(578).paramname = 'P4';
pt(578).class     = 'scalar';
pt(578).nrows     = 1;
pt(578).ncols     = 1;
pt(578).subsource = 'SS_DOUBLE';
pt(578).ndims     = '2';
pt(578).size      = '[]';

pt(579).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(579).paramname = 'P5';
pt(579).class     = 'scalar';
pt(579).nrows     = 1;
pt(579).ncols     = 1;
pt(579).subsource = 'SS_DOUBLE';
pt(579).ndims     = '2';
pt(579).size      = '[]';

pt(580).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(580).paramname = 'P6';
pt(580).class     = 'scalar';
pt(580).nrows     = 1;
pt(580).ncols     = 1;
pt(580).subsource = 'SS_DOUBLE';
pt(580).ndims     = '2';
pt(580).size      = '[]';

pt(581).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 11';
pt(581).paramname = 'P7';
pt(581).class     = 'scalar';
pt(581).nrows     = 1;
pt(581).ncols     = 1;
pt(581).subsource = 'SS_DOUBLE';
pt(581).ndims     = '2';
pt(581).size      = '[]';

pt(582).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(582).paramname = 'P1';
pt(582).class     = 'vector';
pt(582).nrows     = 1;
pt(582).ncols     = 61;
pt(582).subsource = 'SS_DOUBLE';
pt(582).ndims     = '2';
pt(582).size      = '[]';

pt(583).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(583).paramname = 'P2';
pt(583).class     = 'scalar';
pt(583).nrows     = 1;
pt(583).ncols     = 1;
pt(583).subsource = 'SS_DOUBLE';
pt(583).ndims     = '2';
pt(583).size      = '[]';

pt(584).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(584).paramname = 'P3';
pt(584).class     = 'scalar';
pt(584).nrows     = 1;
pt(584).ncols     = 1;
pt(584).subsource = 'SS_DOUBLE';
pt(584).ndims     = '2';
pt(584).size      = '[]';

pt(585).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(585).paramname = 'P4';
pt(585).class     = 'scalar';
pt(585).nrows     = 1;
pt(585).ncols     = 1;
pt(585).subsource = 'SS_DOUBLE';
pt(585).ndims     = '2';
pt(585).size      = '[]';

pt(586).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(586).paramname = 'P5';
pt(586).class     = 'scalar';
pt(586).nrows     = 1;
pt(586).ncols     = 1;
pt(586).subsource = 'SS_DOUBLE';
pt(586).ndims     = '2';
pt(586).size      = '[]';

pt(587).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(587).paramname = 'P6';
pt(587).class     = 'scalar';
pt(587).nrows     = 1;
pt(587).ncols     = 1;
pt(587).subsource = 'SS_DOUBLE';
pt(587).ndims     = '2';
pt(587).size      = '[]';

pt(588).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 12';
pt(588).paramname = 'P7';
pt(588).class     = 'scalar';
pt(588).nrows     = 1;
pt(588).ncols     = 1;
pt(588).subsource = 'SS_DOUBLE';
pt(588).ndims     = '2';
pt(588).size      = '[]';

pt(589).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(589).paramname = 'P1';
pt(589).class     = 'vector';
pt(589).nrows     = 1;
pt(589).ncols     = 61;
pt(589).subsource = 'SS_DOUBLE';
pt(589).ndims     = '2';
pt(589).size      = '[]';

pt(590).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(590).paramname = 'P2';
pt(590).class     = 'scalar';
pt(590).nrows     = 1;
pt(590).ncols     = 1;
pt(590).subsource = 'SS_DOUBLE';
pt(590).ndims     = '2';
pt(590).size      = '[]';

pt(591).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(591).paramname = 'P3';
pt(591).class     = 'scalar';
pt(591).nrows     = 1;
pt(591).ncols     = 1;
pt(591).subsource = 'SS_DOUBLE';
pt(591).ndims     = '2';
pt(591).size      = '[]';

pt(592).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(592).paramname = 'P4';
pt(592).class     = 'scalar';
pt(592).nrows     = 1;
pt(592).ncols     = 1;
pt(592).subsource = 'SS_DOUBLE';
pt(592).ndims     = '2';
pt(592).size      = '[]';

pt(593).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(593).paramname = 'P5';
pt(593).class     = 'scalar';
pt(593).nrows     = 1;
pt(593).ncols     = 1;
pt(593).subsource = 'SS_DOUBLE';
pt(593).ndims     = '2';
pt(593).size      = '[]';

pt(594).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(594).paramname = 'P6';
pt(594).class     = 'scalar';
pt(594).nrows     = 1;
pt(594).ncols     = 1;
pt(594).subsource = 'SS_DOUBLE';
pt(594).ndims     = '2';
pt(594).size      = '[]';

pt(595).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 13';
pt(595).paramname = 'P7';
pt(595).class     = 'scalar';
pt(595).nrows     = 1;
pt(595).ncols     = 1;
pt(595).subsource = 'SS_DOUBLE';
pt(595).ndims     = '2';
pt(595).size      = '[]';

pt(596).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(596).paramname = 'P1';
pt(596).class     = 'vector';
pt(596).nrows     = 1;
pt(596).ncols     = 61;
pt(596).subsource = 'SS_DOUBLE';
pt(596).ndims     = '2';
pt(596).size      = '[]';

pt(597).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(597).paramname = 'P2';
pt(597).class     = 'scalar';
pt(597).nrows     = 1;
pt(597).ncols     = 1;
pt(597).subsource = 'SS_DOUBLE';
pt(597).ndims     = '2';
pt(597).size      = '[]';

pt(598).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(598).paramname = 'P3';
pt(598).class     = 'scalar';
pt(598).nrows     = 1;
pt(598).ncols     = 1;
pt(598).subsource = 'SS_DOUBLE';
pt(598).ndims     = '2';
pt(598).size      = '[]';

pt(599).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(599).paramname = 'P4';
pt(599).class     = 'scalar';
pt(599).nrows     = 1;
pt(599).ncols     = 1;
pt(599).subsource = 'SS_DOUBLE';
pt(599).ndims     = '2';
pt(599).size      = '[]';

pt(600).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(600).paramname = 'P5';
pt(600).class     = 'scalar';
pt(600).nrows     = 1;
pt(600).ncols     = 1;
pt(600).subsource = 'SS_DOUBLE';
pt(600).ndims     = '2';
pt(600).size      = '[]';

pt(601).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(601).paramname = 'P6';
pt(601).class     = 'scalar';
pt(601).nrows     = 1;
pt(601).ncols     = 1;
pt(601).subsource = 'SS_DOUBLE';
pt(601).ndims     = '2';
pt(601).size      = '[]';

pt(602).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 14';
pt(602).paramname = 'P7';
pt(602).class     = 'scalar';
pt(602).nrows     = 1;
pt(602).ncols     = 1;
pt(602).subsource = 'SS_DOUBLE';
pt(602).ndims     = '2';
pt(602).size      = '[]';

pt(603).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(603).paramname = 'P1';
pt(603).class     = 'vector';
pt(603).nrows     = 1;
pt(603).ncols     = 61;
pt(603).subsource = 'SS_DOUBLE';
pt(603).ndims     = '2';
pt(603).size      = '[]';

pt(604).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(604).paramname = 'P2';
pt(604).class     = 'scalar';
pt(604).nrows     = 1;
pt(604).ncols     = 1;
pt(604).subsource = 'SS_DOUBLE';
pt(604).ndims     = '2';
pt(604).size      = '[]';

pt(605).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(605).paramname = 'P3';
pt(605).class     = 'scalar';
pt(605).nrows     = 1;
pt(605).ncols     = 1;
pt(605).subsource = 'SS_DOUBLE';
pt(605).ndims     = '2';
pt(605).size      = '[]';

pt(606).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(606).paramname = 'P4';
pt(606).class     = 'scalar';
pt(606).nrows     = 1;
pt(606).ncols     = 1;
pt(606).subsource = 'SS_DOUBLE';
pt(606).ndims     = '2';
pt(606).size      = '[]';

pt(607).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(607).paramname = 'P5';
pt(607).class     = 'scalar';
pt(607).nrows     = 1;
pt(607).ncols     = 1;
pt(607).subsource = 'SS_DOUBLE';
pt(607).ndims     = '2';
pt(607).size      = '[]';

pt(608).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(608).paramname = 'P6';
pt(608).class     = 'scalar';
pt(608).nrows     = 1;
pt(608).ncols     = 1;
pt(608).subsource = 'SS_DOUBLE';
pt(608).ndims     = '2';
pt(608).size      = '[]';

pt(609).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 15';
pt(609).paramname = 'P7';
pt(609).class     = 'scalar';
pt(609).nrows     = 1;
pt(609).ncols     = 1;
pt(609).subsource = 'SS_DOUBLE';
pt(609).ndims     = '2';
pt(609).size      = '[]';

pt(610).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(610).paramname = 'P1';
pt(610).class     = 'vector';
pt(610).nrows     = 1;
pt(610).ncols     = 61;
pt(610).subsource = 'SS_DOUBLE';
pt(610).ndims     = '2';
pt(610).size      = '[]';

pt(611).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(611).paramname = 'P2';
pt(611).class     = 'scalar';
pt(611).nrows     = 1;
pt(611).ncols     = 1;
pt(611).subsource = 'SS_DOUBLE';
pt(611).ndims     = '2';
pt(611).size      = '[]';

pt(612).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(612).paramname = 'P3';
pt(612).class     = 'scalar';
pt(612).nrows     = 1;
pt(612).ncols     = 1;
pt(612).subsource = 'SS_DOUBLE';
pt(612).ndims     = '2';
pt(612).size      = '[]';

pt(613).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(613).paramname = 'P4';
pt(613).class     = 'scalar';
pt(613).nrows     = 1;
pt(613).ncols     = 1;
pt(613).subsource = 'SS_DOUBLE';
pt(613).ndims     = '2';
pt(613).size      = '[]';

pt(614).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(614).paramname = 'P5';
pt(614).class     = 'scalar';
pt(614).nrows     = 1;
pt(614).ncols     = 1;
pt(614).subsource = 'SS_DOUBLE';
pt(614).ndims     = '2';
pt(614).size      = '[]';

pt(615).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(615).paramname = 'P6';
pt(615).class     = 'scalar';
pt(615).nrows     = 1;
pt(615).ncols     = 1;
pt(615).subsource = 'SS_DOUBLE';
pt(615).ndims     = '2';
pt(615).size      = '[]';

pt(616).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 16';
pt(616).paramname = 'P7';
pt(616).class     = 'scalar';
pt(616).nrows     = 1;
pt(616).ncols     = 1;
pt(616).subsource = 'SS_DOUBLE';
pt(616).ndims     = '2';
pt(616).size      = '[]';

pt(617).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(617).paramname = 'P1';
pt(617).class     = 'vector';
pt(617).nrows     = 1;
pt(617).ncols     = 61;
pt(617).subsource = 'SS_DOUBLE';
pt(617).ndims     = '2';
pt(617).size      = '[]';

pt(618).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(618).paramname = 'P2';
pt(618).class     = 'scalar';
pt(618).nrows     = 1;
pt(618).ncols     = 1;
pt(618).subsource = 'SS_DOUBLE';
pt(618).ndims     = '2';
pt(618).size      = '[]';

pt(619).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(619).paramname = 'P3';
pt(619).class     = 'scalar';
pt(619).nrows     = 1;
pt(619).ncols     = 1;
pt(619).subsource = 'SS_DOUBLE';
pt(619).ndims     = '2';
pt(619).size      = '[]';

pt(620).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(620).paramname = 'P4';
pt(620).class     = 'scalar';
pt(620).nrows     = 1;
pt(620).ncols     = 1;
pt(620).subsource = 'SS_DOUBLE';
pt(620).ndims     = '2';
pt(620).size      = '[]';

pt(621).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(621).paramname = 'P5';
pt(621).class     = 'scalar';
pt(621).nrows     = 1;
pt(621).ncols     = 1;
pt(621).subsource = 'SS_DOUBLE';
pt(621).ndims     = '2';
pt(621).size      = '[]';

pt(622).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(622).paramname = 'P6';
pt(622).class     = 'scalar';
pt(622).nrows     = 1;
pt(622).ncols     = 1;
pt(622).subsource = 'SS_DOUBLE';
pt(622).ndims     = '2';
pt(622).size      = '[]';

pt(623).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 17';
pt(623).paramname = 'P7';
pt(623).class     = 'scalar';
pt(623).nrows     = 1;
pt(623).ncols     = 1;
pt(623).subsource = 'SS_DOUBLE';
pt(623).ndims     = '2';
pt(623).size      = '[]';

pt(624).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(624).paramname = 'P1';
pt(624).class     = 'vector';
pt(624).nrows     = 1;
pt(624).ncols     = 63;
pt(624).subsource = 'SS_DOUBLE';
pt(624).ndims     = '2';
pt(624).size      = '[]';

pt(625).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(625).paramname = 'P2';
pt(625).class     = 'scalar';
pt(625).nrows     = 1;
pt(625).ncols     = 1;
pt(625).subsource = 'SS_DOUBLE';
pt(625).ndims     = '2';
pt(625).size      = '[]';

pt(626).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(626).paramname = 'P3';
pt(626).class     = 'scalar';
pt(626).nrows     = 1;
pt(626).ncols     = 1;
pt(626).subsource = 'SS_DOUBLE';
pt(626).ndims     = '2';
pt(626).size      = '[]';

pt(627).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(627).paramname = 'P4';
pt(627).class     = 'scalar';
pt(627).nrows     = 1;
pt(627).ncols     = 1;
pt(627).subsource = 'SS_DOUBLE';
pt(627).ndims     = '2';
pt(627).size      = '[]';

pt(628).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(628).paramname = 'P5';
pt(628).class     = 'scalar';
pt(628).nrows     = 1;
pt(628).ncols     = 1;
pt(628).subsource = 'SS_DOUBLE';
pt(628).ndims     = '2';
pt(628).size      = '[]';

pt(629).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(629).paramname = 'P6';
pt(629).class     = 'scalar';
pt(629).nrows     = 1;
pt(629).ncols     = 1;
pt(629).subsource = 'SS_DOUBLE';
pt(629).ndims     = '2';
pt(629).size      = '[]';

pt(630).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 18';
pt(630).paramname = 'P7';
pt(630).class     = 'scalar';
pt(630).nrows     = 1;
pt(630).ncols     = 1;
pt(630).subsource = 'SS_DOUBLE';
pt(630).ndims     = '2';
pt(630).size      = '[]';

pt(631).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(631).paramname = 'P1';
pt(631).class     = 'vector';
pt(631).nrows     = 1;
pt(631).ncols     = 67;
pt(631).subsource = 'SS_DOUBLE';
pt(631).ndims     = '2';
pt(631).size      = '[]';

pt(632).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(632).paramname = 'P2';
pt(632).class     = 'scalar';
pt(632).nrows     = 1;
pt(632).ncols     = 1;
pt(632).subsource = 'SS_DOUBLE';
pt(632).ndims     = '2';
pt(632).size      = '[]';

pt(633).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(633).paramname = 'P3';
pt(633).class     = 'scalar';
pt(633).nrows     = 1;
pt(633).ncols     = 1;
pt(633).subsource = 'SS_DOUBLE';
pt(633).ndims     = '2';
pt(633).size      = '[]';

pt(634).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(634).paramname = 'P4';
pt(634).class     = 'scalar';
pt(634).nrows     = 1;
pt(634).ncols     = 1;
pt(634).subsource = 'SS_DOUBLE';
pt(634).ndims     = '2';
pt(634).size      = '[]';

pt(635).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(635).paramname = 'P5';
pt(635).class     = 'scalar';
pt(635).nrows     = 1;
pt(635).ncols     = 1;
pt(635).subsource = 'SS_DOUBLE';
pt(635).ndims     = '2';
pt(635).size      = '[]';

pt(636).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(636).paramname = 'P6';
pt(636).class     = 'scalar';
pt(636).nrows     = 1;
pt(636).ncols     = 1;
pt(636).subsource = 'SS_DOUBLE';
pt(636).ndims     = '2';
pt(636).size      = '[]';

pt(637).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 19';
pt(637).paramname = 'P7';
pt(637).class     = 'scalar';
pt(637).nrows     = 1;
pt(637).ncols     = 1;
pt(637).subsource = 'SS_DOUBLE';
pt(637).ndims     = '2';
pt(637).size      = '[]';

pt(638).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(638).paramname = 'P1';
pt(638).class     = 'vector';
pt(638).nrows     = 1;
pt(638).ncols     = 60;
pt(638).subsource = 'SS_DOUBLE';
pt(638).ndims     = '2';
pt(638).size      = '[]';

pt(639).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(639).paramname = 'P2';
pt(639).class     = 'scalar';
pt(639).nrows     = 1;
pt(639).ncols     = 1;
pt(639).subsource = 'SS_DOUBLE';
pt(639).ndims     = '2';
pt(639).size      = '[]';

pt(640).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(640).paramname = 'P3';
pt(640).class     = 'scalar';
pt(640).nrows     = 1;
pt(640).ncols     = 1;
pt(640).subsource = 'SS_DOUBLE';
pt(640).ndims     = '2';
pt(640).size      = '[]';

pt(641).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(641).paramname = 'P4';
pt(641).class     = 'scalar';
pt(641).nrows     = 1;
pt(641).ncols     = 1;
pt(641).subsource = 'SS_DOUBLE';
pt(641).ndims     = '2';
pt(641).size      = '[]';

pt(642).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(642).paramname = 'P5';
pt(642).class     = 'scalar';
pt(642).nrows     = 1;
pt(642).ncols     = 1;
pt(642).subsource = 'SS_DOUBLE';
pt(642).ndims     = '2';
pt(642).size      = '[]';

pt(643).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(643).paramname = 'P6';
pt(643).class     = 'scalar';
pt(643).nrows     = 1;
pt(643).ncols     = 1;
pt(643).subsource = 'SS_DOUBLE';
pt(643).ndims     = '2';
pt(643).size      = '[]';

pt(644).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 2';
pt(644).paramname = 'P7';
pt(644).class     = 'scalar';
pt(644).nrows     = 1;
pt(644).ncols     = 1;
pt(644).subsource = 'SS_DOUBLE';
pt(644).ndims     = '2';
pt(644).size      = '[]';

pt(645).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(645).paramname = 'P1';
pt(645).class     = 'vector';
pt(645).nrows     = 1;
pt(645).ncols     = 58;
pt(645).subsource = 'SS_DOUBLE';
pt(645).ndims     = '2';
pt(645).size      = '[]';

pt(646).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(646).paramname = 'P2';
pt(646).class     = 'scalar';
pt(646).nrows     = 1;
pt(646).ncols     = 1;
pt(646).subsource = 'SS_DOUBLE';
pt(646).ndims     = '2';
pt(646).size      = '[]';

pt(647).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(647).paramname = 'P3';
pt(647).class     = 'scalar';
pt(647).nrows     = 1;
pt(647).ncols     = 1;
pt(647).subsource = 'SS_DOUBLE';
pt(647).ndims     = '2';
pt(647).size      = '[]';

pt(648).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(648).paramname = 'P4';
pt(648).class     = 'scalar';
pt(648).nrows     = 1;
pt(648).ncols     = 1;
pt(648).subsource = 'SS_DOUBLE';
pt(648).ndims     = '2';
pt(648).size      = '[]';

pt(649).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(649).paramname = 'P5';
pt(649).class     = 'scalar';
pt(649).nrows     = 1;
pt(649).ncols     = 1;
pt(649).subsource = 'SS_DOUBLE';
pt(649).ndims     = '2';
pt(649).size      = '[]';

pt(650).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(650).paramname = 'P6';
pt(650).class     = 'scalar';
pt(650).nrows     = 1;
pt(650).ncols     = 1;
pt(650).subsource = 'SS_DOUBLE';
pt(650).ndims     = '2';
pt(650).size      = '[]';

pt(651).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 20';
pt(651).paramname = 'P7';
pt(651).class     = 'scalar';
pt(651).nrows     = 1;
pt(651).ncols     = 1;
pt(651).subsource = 'SS_DOUBLE';
pt(651).ndims     = '2';
pt(651).size      = '[]';

pt(652).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(652).paramname = 'P1';
pt(652).class     = 'vector';
pt(652).nrows     = 1;
pt(652).ncols     = 68;
pt(652).subsource = 'SS_DOUBLE';
pt(652).ndims     = '2';
pt(652).size      = '[]';

pt(653).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(653).paramname = 'P2';
pt(653).class     = 'scalar';
pt(653).nrows     = 1;
pt(653).ncols     = 1;
pt(653).subsource = 'SS_DOUBLE';
pt(653).ndims     = '2';
pt(653).size      = '[]';

pt(654).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(654).paramname = 'P3';
pt(654).class     = 'scalar';
pt(654).nrows     = 1;
pt(654).ncols     = 1;
pt(654).subsource = 'SS_DOUBLE';
pt(654).ndims     = '2';
pt(654).size      = '[]';

pt(655).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(655).paramname = 'P4';
pt(655).class     = 'scalar';
pt(655).nrows     = 1;
pt(655).ncols     = 1;
pt(655).subsource = 'SS_DOUBLE';
pt(655).ndims     = '2';
pt(655).size      = '[]';

pt(656).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(656).paramname = 'P5';
pt(656).class     = 'scalar';
pt(656).nrows     = 1;
pt(656).ncols     = 1;
pt(656).subsource = 'SS_DOUBLE';
pt(656).ndims     = '2';
pt(656).size      = '[]';

pt(657).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(657).paramname = 'P6';
pt(657).class     = 'scalar';
pt(657).nrows     = 1;
pt(657).ncols     = 1;
pt(657).subsource = 'SS_DOUBLE';
pt(657).ndims     = '2';
pt(657).size      = '[]';

pt(658).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 21';
pt(658).paramname = 'P7';
pt(658).class     = 'scalar';
pt(658).nrows     = 1;
pt(658).ncols     = 1;
pt(658).subsource = 'SS_DOUBLE';
pt(658).ndims     = '2';
pt(658).size      = '[]';

pt(659).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(659).paramname = 'P1';
pt(659).class     = 'vector';
pt(659).nrows     = 1;
pt(659).ncols     = 61;
pt(659).subsource = 'SS_DOUBLE';
pt(659).ndims     = '2';
pt(659).size      = '[]';

pt(660).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(660).paramname = 'P2';
pt(660).class     = 'scalar';
pt(660).nrows     = 1;
pt(660).ncols     = 1;
pt(660).subsource = 'SS_DOUBLE';
pt(660).ndims     = '2';
pt(660).size      = '[]';

pt(661).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(661).paramname = 'P3';
pt(661).class     = 'scalar';
pt(661).nrows     = 1;
pt(661).ncols     = 1;
pt(661).subsource = 'SS_DOUBLE';
pt(661).ndims     = '2';
pt(661).size      = '[]';

pt(662).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(662).paramname = 'P4';
pt(662).class     = 'scalar';
pt(662).nrows     = 1;
pt(662).ncols     = 1;
pt(662).subsource = 'SS_DOUBLE';
pt(662).ndims     = '2';
pt(662).size      = '[]';

pt(663).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(663).paramname = 'P5';
pt(663).class     = 'scalar';
pt(663).nrows     = 1;
pt(663).ncols     = 1;
pt(663).subsource = 'SS_DOUBLE';
pt(663).ndims     = '2';
pt(663).size      = '[]';

pt(664).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(664).paramname = 'P6';
pt(664).class     = 'scalar';
pt(664).nrows     = 1;
pt(664).ncols     = 1;
pt(664).subsource = 'SS_DOUBLE';
pt(664).ndims     = '2';
pt(664).size      = '[]';

pt(665).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 22';
pt(665).paramname = 'P7';
pt(665).class     = 'scalar';
pt(665).nrows     = 1;
pt(665).ncols     = 1;
pt(665).subsource = 'SS_DOUBLE';
pt(665).ndims     = '2';
pt(665).size      = '[]';

pt(666).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(666).paramname = 'P1';
pt(666).class     = 'vector';
pt(666).nrows     = 1;
pt(666).ncols     = 66;
pt(666).subsource = 'SS_DOUBLE';
pt(666).ndims     = '2';
pt(666).size      = '[]';

pt(667).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(667).paramname = 'P2';
pt(667).class     = 'scalar';
pt(667).nrows     = 1;
pt(667).ncols     = 1;
pt(667).subsource = 'SS_DOUBLE';
pt(667).ndims     = '2';
pt(667).size      = '[]';

pt(668).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(668).paramname = 'P3';
pt(668).class     = 'scalar';
pt(668).nrows     = 1;
pt(668).ncols     = 1;
pt(668).subsource = 'SS_DOUBLE';
pt(668).ndims     = '2';
pt(668).size      = '[]';

pt(669).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(669).paramname = 'P4';
pt(669).class     = 'scalar';
pt(669).nrows     = 1;
pt(669).ncols     = 1;
pt(669).subsource = 'SS_DOUBLE';
pt(669).ndims     = '2';
pt(669).size      = '[]';

pt(670).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(670).paramname = 'P5';
pt(670).class     = 'scalar';
pt(670).nrows     = 1;
pt(670).ncols     = 1;
pt(670).subsource = 'SS_DOUBLE';
pt(670).ndims     = '2';
pt(670).size      = '[]';

pt(671).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(671).paramname = 'P6';
pt(671).class     = 'scalar';
pt(671).nrows     = 1;
pt(671).ncols     = 1;
pt(671).subsource = 'SS_DOUBLE';
pt(671).ndims     = '2';
pt(671).size      = '[]';

pt(672).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 23';
pt(672).paramname = 'P7';
pt(672).class     = 'scalar';
pt(672).nrows     = 1;
pt(672).ncols     = 1;
pt(672).subsource = 'SS_DOUBLE';
pt(672).ndims     = '2';
pt(672).size      = '[]';

pt(673).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(673).paramname = 'P1';
pt(673).class     = 'vector';
pt(673).nrows     = 1;
pt(673).ncols     = 60;
pt(673).subsource = 'SS_DOUBLE';
pt(673).ndims     = '2';
pt(673).size      = '[]';

pt(674).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(674).paramname = 'P2';
pt(674).class     = 'scalar';
pt(674).nrows     = 1;
pt(674).ncols     = 1;
pt(674).subsource = 'SS_DOUBLE';
pt(674).ndims     = '2';
pt(674).size      = '[]';

pt(675).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(675).paramname = 'P3';
pt(675).class     = 'scalar';
pt(675).nrows     = 1;
pt(675).ncols     = 1;
pt(675).subsource = 'SS_DOUBLE';
pt(675).ndims     = '2';
pt(675).size      = '[]';

pt(676).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(676).paramname = 'P4';
pt(676).class     = 'scalar';
pt(676).nrows     = 1;
pt(676).ncols     = 1;
pt(676).subsource = 'SS_DOUBLE';
pt(676).ndims     = '2';
pt(676).size      = '[]';

pt(677).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(677).paramname = 'P5';
pt(677).class     = 'scalar';
pt(677).nrows     = 1;
pt(677).ncols     = 1;
pt(677).subsource = 'SS_DOUBLE';
pt(677).ndims     = '2';
pt(677).size      = '[]';

pt(678).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(678).paramname = 'P6';
pt(678).class     = 'scalar';
pt(678).nrows     = 1;
pt(678).ncols     = 1;
pt(678).subsource = 'SS_DOUBLE';
pt(678).ndims     = '2';
pt(678).size      = '[]';

pt(679).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 3';
pt(679).paramname = 'P7';
pt(679).class     = 'scalar';
pt(679).nrows     = 1;
pt(679).ncols     = 1;
pt(679).subsource = 'SS_DOUBLE';
pt(679).ndims     = '2';
pt(679).size      = '[]';

pt(680).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(680).paramname = 'P1';
pt(680).class     = 'vector';
pt(680).nrows     = 1;
pt(680).ncols     = 60;
pt(680).subsource = 'SS_DOUBLE';
pt(680).ndims     = '2';
pt(680).size      = '[]';

pt(681).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(681).paramname = 'P2';
pt(681).class     = 'scalar';
pt(681).nrows     = 1;
pt(681).ncols     = 1;
pt(681).subsource = 'SS_DOUBLE';
pt(681).ndims     = '2';
pt(681).size      = '[]';

pt(682).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(682).paramname = 'P3';
pt(682).class     = 'scalar';
pt(682).nrows     = 1;
pt(682).ncols     = 1;
pt(682).subsource = 'SS_DOUBLE';
pt(682).ndims     = '2';
pt(682).size      = '[]';

pt(683).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(683).paramname = 'P4';
pt(683).class     = 'scalar';
pt(683).nrows     = 1;
pt(683).ncols     = 1;
pt(683).subsource = 'SS_DOUBLE';
pt(683).ndims     = '2';
pt(683).size      = '[]';

pt(684).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(684).paramname = 'P5';
pt(684).class     = 'scalar';
pt(684).nrows     = 1;
pt(684).ncols     = 1;
pt(684).subsource = 'SS_DOUBLE';
pt(684).ndims     = '2';
pt(684).size      = '[]';

pt(685).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(685).paramname = 'P6';
pt(685).class     = 'scalar';
pt(685).nrows     = 1;
pt(685).ncols     = 1;
pt(685).subsource = 'SS_DOUBLE';
pt(685).ndims     = '2';
pt(685).size      = '[]';

pt(686).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 4';
pt(686).paramname = 'P7';
pt(686).class     = 'scalar';
pt(686).nrows     = 1;
pt(686).ncols     = 1;
pt(686).subsource = 'SS_DOUBLE';
pt(686).ndims     = '2';
pt(686).size      = '[]';

pt(687).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(687).paramname = 'P1';
pt(687).class     = 'vector';
pt(687).nrows     = 1;
pt(687).ncols     = 70;
pt(687).subsource = 'SS_DOUBLE';
pt(687).ndims     = '2';
pt(687).size      = '[]';

pt(688).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(688).paramname = 'P2';
pt(688).class     = 'scalar';
pt(688).nrows     = 1;
pt(688).ncols     = 1;
pt(688).subsource = 'SS_DOUBLE';
pt(688).ndims     = '2';
pt(688).size      = '[]';

pt(689).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(689).paramname = 'P3';
pt(689).class     = 'scalar';
pt(689).nrows     = 1;
pt(689).ncols     = 1;
pt(689).subsource = 'SS_DOUBLE';
pt(689).ndims     = '2';
pt(689).size      = '[]';

pt(690).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(690).paramname = 'P4';
pt(690).class     = 'scalar';
pt(690).nrows     = 1;
pt(690).ncols     = 1;
pt(690).subsource = 'SS_DOUBLE';
pt(690).ndims     = '2';
pt(690).size      = '[]';

pt(691).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(691).paramname = 'P5';
pt(691).class     = 'scalar';
pt(691).nrows     = 1;
pt(691).ncols     = 1;
pt(691).subsource = 'SS_DOUBLE';
pt(691).ndims     = '2';
pt(691).size      = '[]';

pt(692).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(692).paramname = 'P6';
pt(692).class     = 'scalar';
pt(692).nrows     = 1;
pt(692).ncols     = 1;
pt(692).subsource = 'SS_DOUBLE';
pt(692).ndims     = '2';
pt(692).size      = '[]';

pt(693).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 5';
pt(693).paramname = 'P7';
pt(693).class     = 'scalar';
pt(693).nrows     = 1;
pt(693).ncols     = 1;
pt(693).subsource = 'SS_DOUBLE';
pt(693).ndims     = '2';
pt(693).size      = '[]';

pt(694).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(694).paramname = 'P1';
pt(694).class     = 'vector';
pt(694).nrows     = 1;
pt(694).ncols     = 76;
pt(694).subsource = 'SS_DOUBLE';
pt(694).ndims     = '2';
pt(694).size      = '[]';

pt(695).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(695).paramname = 'P2';
pt(695).class     = 'scalar';
pt(695).nrows     = 1;
pt(695).ncols     = 1;
pt(695).subsource = 'SS_DOUBLE';
pt(695).ndims     = '2';
pt(695).size      = '[]';

pt(696).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(696).paramname = 'P3';
pt(696).class     = 'scalar';
pt(696).nrows     = 1;
pt(696).ncols     = 1;
pt(696).subsource = 'SS_DOUBLE';
pt(696).ndims     = '2';
pt(696).size      = '[]';

pt(697).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(697).paramname = 'P4';
pt(697).class     = 'scalar';
pt(697).nrows     = 1;
pt(697).ncols     = 1;
pt(697).subsource = 'SS_DOUBLE';
pt(697).ndims     = '2';
pt(697).size      = '[]';

pt(698).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(698).paramname = 'P5';
pt(698).class     = 'scalar';
pt(698).nrows     = 1;
pt(698).ncols     = 1;
pt(698).subsource = 'SS_DOUBLE';
pt(698).ndims     = '2';
pt(698).size      = '[]';

pt(699).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(699).paramname = 'P6';
pt(699).class     = 'scalar';
pt(699).nrows     = 1;
pt(699).ncols     = 1;
pt(699).subsource = 'SS_DOUBLE';
pt(699).ndims     = '2';
pt(699).size      = '[]';

pt(700).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 6';
pt(700).paramname = 'P7';
pt(700).class     = 'scalar';
pt(700).nrows     = 1;
pt(700).ncols     = 1;
pt(700).subsource = 'SS_DOUBLE';
pt(700).ndims     = '2';
pt(700).size      = '[]';

pt(701).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(701).paramname = 'P1';
pt(701).class     = 'vector';
pt(701).nrows     = 1;
pt(701).ncols     = 76;
pt(701).subsource = 'SS_DOUBLE';
pt(701).ndims     = '2';
pt(701).size      = '[]';

pt(702).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(702).paramname = 'P2';
pt(702).class     = 'scalar';
pt(702).nrows     = 1;
pt(702).ncols     = 1;
pt(702).subsource = 'SS_DOUBLE';
pt(702).ndims     = '2';
pt(702).size      = '[]';

pt(703).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(703).paramname = 'P3';
pt(703).class     = 'scalar';
pt(703).nrows     = 1;
pt(703).ncols     = 1;
pt(703).subsource = 'SS_DOUBLE';
pt(703).ndims     = '2';
pt(703).size      = '[]';

pt(704).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(704).paramname = 'P4';
pt(704).class     = 'scalar';
pt(704).nrows     = 1;
pt(704).ncols     = 1;
pt(704).subsource = 'SS_DOUBLE';
pt(704).ndims     = '2';
pt(704).size      = '[]';

pt(705).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(705).paramname = 'P5';
pt(705).class     = 'scalar';
pt(705).nrows     = 1;
pt(705).ncols     = 1;
pt(705).subsource = 'SS_DOUBLE';
pt(705).ndims     = '2';
pt(705).size      = '[]';

pt(706).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(706).paramname = 'P6';
pt(706).class     = 'scalar';
pt(706).nrows     = 1;
pt(706).ncols     = 1;
pt(706).subsource = 'SS_DOUBLE';
pt(706).ndims     = '2';
pt(706).size      = '[]';

pt(707).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 7';
pt(707).paramname = 'P7';
pt(707).class     = 'scalar';
pt(707).nrows     = 1;
pt(707).ncols     = 1;
pt(707).subsource = 'SS_DOUBLE';
pt(707).ndims     = '2';
pt(707).size      = '[]';

pt(708).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(708).paramname = 'P1';
pt(708).class     = 'vector';
pt(708).nrows     = 1;
pt(708).ncols     = 64;
pt(708).subsource = 'SS_DOUBLE';
pt(708).ndims     = '2';
pt(708).size      = '[]';

pt(709).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(709).paramname = 'P2';
pt(709).class     = 'scalar';
pt(709).nrows     = 1;
pt(709).ncols     = 1;
pt(709).subsource = 'SS_DOUBLE';
pt(709).ndims     = '2';
pt(709).size      = '[]';

pt(710).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(710).paramname = 'P3';
pt(710).class     = 'scalar';
pt(710).nrows     = 1;
pt(710).ncols     = 1;
pt(710).subsource = 'SS_DOUBLE';
pt(710).ndims     = '2';
pt(710).size      = '[]';

pt(711).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(711).paramname = 'P4';
pt(711).class     = 'scalar';
pt(711).nrows     = 1;
pt(711).ncols     = 1;
pt(711).subsource = 'SS_DOUBLE';
pt(711).ndims     = '2';
pt(711).size      = '[]';

pt(712).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(712).paramname = 'P5';
pt(712).class     = 'scalar';
pt(712).nrows     = 1;
pt(712).ncols     = 1;
pt(712).subsource = 'SS_DOUBLE';
pt(712).ndims     = '2';
pt(712).size      = '[]';

pt(713).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(713).paramname = 'P6';
pt(713).class     = 'scalar';
pt(713).nrows     = 1;
pt(713).ncols     = 1;
pt(713).subsource = 'SS_DOUBLE';
pt(713).ndims     = '2';
pt(713).size      = '[]';

pt(714).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 8';
pt(714).paramname = 'P7';
pt(714).class     = 'scalar';
pt(714).nrows     = 1;
pt(714).ncols     = 1;
pt(714).subsource = 'SS_DOUBLE';
pt(714).ndims     = '2';
pt(714).size      = '[]';

pt(715).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(715).paramname = 'P1';
pt(715).class     = 'vector';
pt(715).nrows     = 1;
pt(715).ncols     = 74;
pt(715).subsource = 'SS_DOUBLE';
pt(715).ndims     = '2';
pt(715).size      = '[]';

pt(716).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(716).paramname = 'P2';
pt(716).class     = 'scalar';
pt(716).nrows     = 1;
pt(716).ncols     = 1;
pt(716).subsource = 'SS_DOUBLE';
pt(716).ndims     = '2';
pt(716).size      = '[]';

pt(717).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(717).paramname = 'P3';
pt(717).class     = 'scalar';
pt(717).nrows     = 1;
pt(717).ncols     = 1;
pt(717).subsource = 'SS_DOUBLE';
pt(717).ndims     = '2';
pt(717).size      = '[]';

pt(718).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(718).paramname = 'P4';
pt(718).class     = 'scalar';
pt(718).nrows     = 1;
pt(718).ncols     = 1;
pt(718).subsource = 'SS_DOUBLE';
pt(718).ndims     = '2';
pt(718).size      = '[]';

pt(719).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(719).paramname = 'P5';
pt(719).class     = 'scalar';
pt(719).nrows     = 1;
pt(719).ncols     = 1;
pt(719).subsource = 'SS_DOUBLE';
pt(719).ndims     = '2';
pt(719).size      = '[]';

pt(720).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(720).paramname = 'P6';
pt(720).class     = 'scalar';
pt(720).nrows     = 1;
pt(720).ncols     = 1;
pt(720).subsource = 'SS_DOUBLE';
pt(720).ndims     = '2';
pt(720).size      = '[]';

pt(721).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Rx Var 9';
pt(721).paramname = 'P7';
pt(721).class     = 'scalar';
pt(721).nrows     = 1;
pt(721).ncols     = 1;
pt(721).subsource = 'SS_DOUBLE';
pt(721).ndims     = '2';
pt(721).size      = '[]';

pt(722).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(722).paramname = 'P1';
pt(722).class     = 'vector';
pt(722).nrows     = 1;
pt(722).ncols     = 61;
pt(722).subsource = 'SS_DOUBLE';
pt(722).ndims     = '2';
pt(722).size      = '[]';

pt(723).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(723).paramname = 'P2';
pt(723).class     = 'scalar';
pt(723).nrows     = 1;
pt(723).ncols     = 1;
pt(723).subsource = 'SS_DOUBLE';
pt(723).ndims     = '2';
pt(723).size      = '[]';

pt(724).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(724).paramname = 'P3';
pt(724).class     = 'scalar';
pt(724).nrows     = 1;
pt(724).ncols     = 1;
pt(724).subsource = 'SS_DOUBLE';
pt(724).ndims     = '2';
pt(724).size      = '[]';

pt(725).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(725).paramname = 'P4';
pt(725).class     = 'scalar';
pt(725).nrows     = 1;
pt(725).ncols     = 1;
pt(725).subsource = 'SS_DOUBLE';
pt(725).ndims     = '2';
pt(725).size      = '[]';

pt(726).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(726).paramname = 'P5';
pt(726).class     = 'scalar';
pt(726).nrows     = 1;
pt(726).ncols     = 1;
pt(726).subsource = 'SS_DOUBLE';
pt(726).ndims     = '2';
pt(726).size      = '[]';

pt(727).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(727).paramname = 'P6';
pt(727).class     = 'scalar';
pt(727).nrows     = 1;
pt(727).ncols     = 1;
pt(727).subsource = 'SS_DOUBLE';
pt(727).ndims     = '2';
pt(727).size      = '[]';

pt(728).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 3';
pt(728).paramname = 'P7';
pt(728).class     = 'scalar';
pt(728).nrows     = 1;
pt(728).ncols     = 1;
pt(728).subsource = 'SS_DOUBLE';
pt(728).ndims     = '2';
pt(728).size      = '[]';

pt(729).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(729).paramname = 'P1';
pt(729).class     = 'vector';
pt(729).nrows     = 1;
pt(729).ncols     = 61;
pt(729).subsource = 'SS_DOUBLE';
pt(729).ndims     = '2';
pt(729).size      = '[]';

pt(730).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(730).paramname = 'P2';
pt(730).class     = 'scalar';
pt(730).nrows     = 1;
pt(730).ncols     = 1;
pt(730).subsource = 'SS_DOUBLE';
pt(730).ndims     = '2';
pt(730).size      = '[]';

pt(731).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(731).paramname = 'P3';
pt(731).class     = 'scalar';
pt(731).nrows     = 1;
pt(731).ncols     = 1;
pt(731).subsource = 'SS_DOUBLE';
pt(731).ndims     = '2';
pt(731).size      = '[]';

pt(732).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(732).paramname = 'P4';
pt(732).class     = 'scalar';
pt(732).nrows     = 1;
pt(732).ncols     = 1;
pt(732).subsource = 'SS_DOUBLE';
pt(732).ndims     = '2';
pt(732).size      = '[]';

pt(733).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(733).paramname = 'P5';
pt(733).class     = 'scalar';
pt(733).nrows     = 1;
pt(733).ncols     = 1;
pt(733).subsource = 'SS_DOUBLE';
pt(733).ndims     = '2';
pt(733).size      = '[]';

pt(734).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(734).paramname = 'P6';
pt(734).class     = 'scalar';
pt(734).nrows     = 1;
pt(734).ncols     = 1;
pt(734).subsource = 'SS_DOUBLE';
pt(734).ndims     = '2';
pt(734).size      = '[]';

pt(735).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 4';
pt(735).paramname = 'P7';
pt(735).class     = 'scalar';
pt(735).nrows     = 1;
pt(735).ncols     = 1;
pt(735).subsource = 'SS_DOUBLE';
pt(735).ndims     = '2';
pt(735).size      = '[]';

pt(736).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(736).paramname = 'P1';
pt(736).class     = 'vector';
pt(736).nrows     = 1;
pt(736).ncols     = 67;
pt(736).subsource = 'SS_DOUBLE';
pt(736).ndims     = '2';
pt(736).size      = '[]';

pt(737).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(737).paramname = 'P2';
pt(737).class     = 'scalar';
pt(737).nrows     = 1;
pt(737).ncols     = 1;
pt(737).subsource = 'SS_DOUBLE';
pt(737).ndims     = '2';
pt(737).size      = '[]';

pt(738).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(738).paramname = 'P3';
pt(738).class     = 'scalar';
pt(738).nrows     = 1;
pt(738).ncols     = 1;
pt(738).subsource = 'SS_DOUBLE';
pt(738).ndims     = '2';
pt(738).size      = '[]';

pt(739).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(739).paramname = 'P4';
pt(739).class     = 'scalar';
pt(739).nrows     = 1;
pt(739).ncols     = 1;
pt(739).subsource = 'SS_DOUBLE';
pt(739).ndims     = '2';
pt(739).size      = '[]';

pt(740).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(740).paramname = 'P5';
pt(740).class     = 'scalar';
pt(740).nrows     = 1;
pt(740).ncols     = 1;
pt(740).subsource = 'SS_DOUBLE';
pt(740).ndims     = '2';
pt(740).size      = '[]';

pt(741).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(741).paramname = 'P6';
pt(741).class     = 'scalar';
pt(741).nrows     = 1;
pt(741).ncols     = 1;
pt(741).subsource = 'SS_DOUBLE';
pt(741).ndims     = '2';
pt(741).size      = '[]';

pt(742).blockname = 'DAQ/LegMedulla_Back_R/EtherCAT Tx Var 5';
pt(742).paramname = 'P7';
pt(742).class     = 'scalar';
pt(742).nrows     = 1;
pt(742).ncols     = 1;
pt(742).subsource = 'SS_DOUBLE';
pt(742).ndims     = '2';
pt(742).size      = '[]';

pt(743).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(743).paramname = 'P1';
pt(743).class     = 'vector';
pt(743).nrows     = 1;
pt(743).ncols     = 76;
pt(743).subsource = 'SS_DOUBLE';
pt(743).ndims     = '2';
pt(743).size      = '[]';

pt(744).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(744).paramname = 'P2';
pt(744).class     = 'scalar';
pt(744).nrows     = 1;
pt(744).ncols     = 1;
pt(744).subsource = 'SS_DOUBLE';
pt(744).ndims     = '2';
pt(744).size      = '[]';

pt(745).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(745).paramname = 'P3';
pt(745).class     = 'scalar';
pt(745).nrows     = 1;
pt(745).ncols     = 1;
pt(745).subsource = 'SS_DOUBLE';
pt(745).ndims     = '2';
pt(745).size      = '[]';

pt(746).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(746).paramname = 'P4';
pt(746).class     = 'scalar';
pt(746).nrows     = 1;
pt(746).ncols     = 1;
pt(746).subsource = 'SS_DOUBLE';
pt(746).ndims     = '2';
pt(746).size      = '[]';

pt(747).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(747).paramname = 'P5';
pt(747).class     = 'scalar';
pt(747).nrows     = 1;
pt(747).ncols     = 1;
pt(747).subsource = 'SS_DOUBLE';
pt(747).ndims     = '2';
pt(747).size      = '[]';

pt(748).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(748).paramname = 'P6';
pt(748).class     = 'scalar';
pt(748).nrows     = 1;
pt(748).ncols     = 1;
pt(748).subsource = 'SS_DOUBLE';
pt(748).ndims     = '2';
pt(748).size      = '[]';

pt(749).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var ';
pt(749).paramname = 'P7';
pt(749).class     = 'scalar';
pt(749).nrows     = 1;
pt(749).ncols     = 1;
pt(749).subsource = 'SS_DOUBLE';
pt(749).ndims     = '2';
pt(749).size      = '[]';

pt(750).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(750).paramname = 'P1';
pt(750).class     = 'vector';
pt(750).nrows     = 1;
pt(750).ncols     = 86;
pt(750).subsource = 'SS_DOUBLE';
pt(750).ndims     = '2';
pt(750).size      = '[]';

pt(751).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(751).paramname = 'P2';
pt(751).class     = 'scalar';
pt(751).nrows     = 1;
pt(751).ncols     = 1;
pt(751).subsource = 'SS_DOUBLE';
pt(751).ndims     = '2';
pt(751).size      = '[]';

pt(752).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(752).paramname = 'P3';
pt(752).class     = 'scalar';
pt(752).nrows     = 1;
pt(752).ncols     = 1;
pt(752).subsource = 'SS_DOUBLE';
pt(752).ndims     = '2';
pt(752).size      = '[]';

pt(753).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(753).paramname = 'P4';
pt(753).class     = 'scalar';
pt(753).nrows     = 1;
pt(753).ncols     = 1;
pt(753).subsource = 'SS_DOUBLE';
pt(753).ndims     = '2';
pt(753).size      = '[]';

pt(754).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(754).paramname = 'P5';
pt(754).class     = 'scalar';
pt(754).nrows     = 1;
pt(754).ncols     = 1;
pt(754).subsource = 'SS_DOUBLE';
pt(754).ndims     = '2';
pt(754).size      = '[]';

pt(755).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(755).paramname = 'P6';
pt(755).class     = 'scalar';
pt(755).nrows     = 1;
pt(755).ncols     = 1;
pt(755).subsource = 'SS_DOUBLE';
pt(755).ndims     = '2';
pt(755).size      = '[]';

pt(756).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 1';
pt(756).paramname = 'P7';
pt(756).class     = 'scalar';
pt(756).nrows     = 1;
pt(756).ncols     = 1;
pt(756).subsource = 'SS_DOUBLE';
pt(756).ndims     = '2';
pt(756).size      = '[]';

pt(757).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(757).paramname = 'P1';
pt(757).class     = 'vector';
pt(757).nrows     = 1;
pt(757).ncols     = 56;
pt(757).subsource = 'SS_DOUBLE';
pt(757).ndims     = '2';
pt(757).size      = '[]';

pt(758).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(758).paramname = 'P2';
pt(758).class     = 'scalar';
pt(758).nrows     = 1;
pt(758).ncols     = 1;
pt(758).subsource = 'SS_DOUBLE';
pt(758).ndims     = '2';
pt(758).size      = '[]';

pt(759).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(759).paramname = 'P3';
pt(759).class     = 'scalar';
pt(759).nrows     = 1;
pt(759).ncols     = 1;
pt(759).subsource = 'SS_DOUBLE';
pt(759).ndims     = '2';
pt(759).size      = '[]';

pt(760).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(760).paramname = 'P4';
pt(760).class     = 'scalar';
pt(760).nrows     = 1;
pt(760).ncols     = 1;
pt(760).subsource = 'SS_DOUBLE';
pt(760).ndims     = '2';
pt(760).size      = '[]';

pt(761).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(761).paramname = 'P5';
pt(761).class     = 'scalar';
pt(761).nrows     = 1;
pt(761).ncols     = 1;
pt(761).subsource = 'SS_DOUBLE';
pt(761).ndims     = '2';
pt(761).size      = '[]';

pt(762).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(762).paramname = 'P6';
pt(762).class     = 'scalar';
pt(762).nrows     = 1;
pt(762).ncols     = 1;
pt(762).subsource = 'SS_DOUBLE';
pt(762).ndims     = '2';
pt(762).size      = '[]';

pt(763).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 10';
pt(763).paramname = 'P7';
pt(763).class     = 'scalar';
pt(763).nrows     = 1;
pt(763).ncols     = 1;
pt(763).subsource = 'SS_DOUBLE';
pt(763).ndims     = '2';
pt(763).size      = '[]';

pt(764).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(764).paramname = 'P1';
pt(764).class     = 'vector';
pt(764).nrows     = 1;
pt(764).ncols     = 56;
pt(764).subsource = 'SS_DOUBLE';
pt(764).ndims     = '2';
pt(764).size      = '[]';

pt(765).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(765).paramname = 'P2';
pt(765).class     = 'scalar';
pt(765).nrows     = 1;
pt(765).ncols     = 1;
pt(765).subsource = 'SS_DOUBLE';
pt(765).ndims     = '2';
pt(765).size      = '[]';

pt(766).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(766).paramname = 'P3';
pt(766).class     = 'scalar';
pt(766).nrows     = 1;
pt(766).ncols     = 1;
pt(766).subsource = 'SS_DOUBLE';
pt(766).ndims     = '2';
pt(766).size      = '[]';

pt(767).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(767).paramname = 'P4';
pt(767).class     = 'scalar';
pt(767).nrows     = 1;
pt(767).ncols     = 1;
pt(767).subsource = 'SS_DOUBLE';
pt(767).ndims     = '2';
pt(767).size      = '[]';

pt(768).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(768).paramname = 'P5';
pt(768).class     = 'scalar';
pt(768).nrows     = 1;
pt(768).ncols     = 1;
pt(768).subsource = 'SS_DOUBLE';
pt(768).ndims     = '2';
pt(768).size      = '[]';

pt(769).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(769).paramname = 'P6';
pt(769).class     = 'scalar';
pt(769).nrows     = 1;
pt(769).ncols     = 1;
pt(769).subsource = 'SS_DOUBLE';
pt(769).ndims     = '2';
pt(769).size      = '[]';

pt(770).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 11';
pt(770).paramname = 'P7';
pt(770).class     = 'scalar';
pt(770).nrows     = 1;
pt(770).ncols     = 1;
pt(770).subsource = 'SS_DOUBLE';
pt(770).ndims     = '2';
pt(770).size      = '[]';

pt(771).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(771).paramname = 'P1';
pt(771).class     = 'vector';
pt(771).nrows     = 1;
pt(771).ncols     = 61;
pt(771).subsource = 'SS_DOUBLE';
pt(771).ndims     = '2';
pt(771).size      = '[]';

pt(772).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(772).paramname = 'P2';
pt(772).class     = 'scalar';
pt(772).nrows     = 1;
pt(772).ncols     = 1;
pt(772).subsource = 'SS_DOUBLE';
pt(772).ndims     = '2';
pt(772).size      = '[]';

pt(773).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(773).paramname = 'P3';
pt(773).class     = 'scalar';
pt(773).nrows     = 1;
pt(773).ncols     = 1;
pt(773).subsource = 'SS_DOUBLE';
pt(773).ndims     = '2';
pt(773).size      = '[]';

pt(774).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(774).paramname = 'P4';
pt(774).class     = 'scalar';
pt(774).nrows     = 1;
pt(774).ncols     = 1;
pt(774).subsource = 'SS_DOUBLE';
pt(774).ndims     = '2';
pt(774).size      = '[]';

pt(775).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(775).paramname = 'P5';
pt(775).class     = 'scalar';
pt(775).nrows     = 1;
pt(775).ncols     = 1;
pt(775).subsource = 'SS_DOUBLE';
pt(775).ndims     = '2';
pt(775).size      = '[]';

pt(776).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(776).paramname = 'P6';
pt(776).class     = 'scalar';
pt(776).nrows     = 1;
pt(776).ncols     = 1;
pt(776).subsource = 'SS_DOUBLE';
pt(776).ndims     = '2';
pt(776).size      = '[]';

pt(777).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 12';
pt(777).paramname = 'P7';
pt(777).class     = 'scalar';
pt(777).nrows     = 1;
pt(777).ncols     = 1;
pt(777).subsource = 'SS_DOUBLE';
pt(777).ndims     = '2';
pt(777).size      = '[]';

pt(778).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(778).paramname = 'P1';
pt(778).class     = 'vector';
pt(778).nrows     = 1;
pt(778).ncols     = 61;
pt(778).subsource = 'SS_DOUBLE';
pt(778).ndims     = '2';
pt(778).size      = '[]';

pt(779).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(779).paramname = 'P2';
pt(779).class     = 'scalar';
pt(779).nrows     = 1;
pt(779).ncols     = 1;
pt(779).subsource = 'SS_DOUBLE';
pt(779).ndims     = '2';
pt(779).size      = '[]';

pt(780).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(780).paramname = 'P3';
pt(780).class     = 'scalar';
pt(780).nrows     = 1;
pt(780).ncols     = 1;
pt(780).subsource = 'SS_DOUBLE';
pt(780).ndims     = '2';
pt(780).size      = '[]';

pt(781).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(781).paramname = 'P4';
pt(781).class     = 'scalar';
pt(781).nrows     = 1;
pt(781).ncols     = 1;
pt(781).subsource = 'SS_DOUBLE';
pt(781).ndims     = '2';
pt(781).size      = '[]';

pt(782).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(782).paramname = 'P5';
pt(782).class     = 'scalar';
pt(782).nrows     = 1;
pt(782).ncols     = 1;
pt(782).subsource = 'SS_DOUBLE';
pt(782).ndims     = '2';
pt(782).size      = '[]';

pt(783).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(783).paramname = 'P6';
pt(783).class     = 'scalar';
pt(783).nrows     = 1;
pt(783).ncols     = 1;
pt(783).subsource = 'SS_DOUBLE';
pt(783).ndims     = '2';
pt(783).size      = '[]';

pt(784).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 13';
pt(784).paramname = 'P7';
pt(784).class     = 'scalar';
pt(784).nrows     = 1;
pt(784).ncols     = 1;
pt(784).subsource = 'SS_DOUBLE';
pt(784).ndims     = '2';
pt(784).size      = '[]';

pt(785).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(785).paramname = 'P1';
pt(785).class     = 'vector';
pt(785).nrows     = 1;
pt(785).ncols     = 61;
pt(785).subsource = 'SS_DOUBLE';
pt(785).ndims     = '2';
pt(785).size      = '[]';

pt(786).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(786).paramname = 'P2';
pt(786).class     = 'scalar';
pt(786).nrows     = 1;
pt(786).ncols     = 1;
pt(786).subsource = 'SS_DOUBLE';
pt(786).ndims     = '2';
pt(786).size      = '[]';

pt(787).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(787).paramname = 'P3';
pt(787).class     = 'scalar';
pt(787).nrows     = 1;
pt(787).ncols     = 1;
pt(787).subsource = 'SS_DOUBLE';
pt(787).ndims     = '2';
pt(787).size      = '[]';

pt(788).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(788).paramname = 'P4';
pt(788).class     = 'scalar';
pt(788).nrows     = 1;
pt(788).ncols     = 1;
pt(788).subsource = 'SS_DOUBLE';
pt(788).ndims     = '2';
pt(788).size      = '[]';

pt(789).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(789).paramname = 'P5';
pt(789).class     = 'scalar';
pt(789).nrows     = 1;
pt(789).ncols     = 1;
pt(789).subsource = 'SS_DOUBLE';
pt(789).ndims     = '2';
pt(789).size      = '[]';

pt(790).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(790).paramname = 'P6';
pt(790).class     = 'scalar';
pt(790).nrows     = 1;
pt(790).ncols     = 1;
pt(790).subsource = 'SS_DOUBLE';
pt(790).ndims     = '2';
pt(790).size      = '[]';

pt(791).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 14';
pt(791).paramname = 'P7';
pt(791).class     = 'scalar';
pt(791).nrows     = 1;
pt(791).ncols     = 1;
pt(791).subsource = 'SS_DOUBLE';
pt(791).ndims     = '2';
pt(791).size      = '[]';

pt(792).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(792).paramname = 'P1';
pt(792).class     = 'vector';
pt(792).nrows     = 1;
pt(792).ncols     = 61;
pt(792).subsource = 'SS_DOUBLE';
pt(792).ndims     = '2';
pt(792).size      = '[]';

pt(793).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(793).paramname = 'P2';
pt(793).class     = 'scalar';
pt(793).nrows     = 1;
pt(793).ncols     = 1;
pt(793).subsource = 'SS_DOUBLE';
pt(793).ndims     = '2';
pt(793).size      = '[]';

pt(794).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(794).paramname = 'P3';
pt(794).class     = 'scalar';
pt(794).nrows     = 1;
pt(794).ncols     = 1;
pt(794).subsource = 'SS_DOUBLE';
pt(794).ndims     = '2';
pt(794).size      = '[]';

pt(795).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(795).paramname = 'P4';
pt(795).class     = 'scalar';
pt(795).nrows     = 1;
pt(795).ncols     = 1;
pt(795).subsource = 'SS_DOUBLE';
pt(795).ndims     = '2';
pt(795).size      = '[]';

pt(796).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(796).paramname = 'P5';
pt(796).class     = 'scalar';
pt(796).nrows     = 1;
pt(796).ncols     = 1;
pt(796).subsource = 'SS_DOUBLE';
pt(796).ndims     = '2';
pt(796).size      = '[]';

pt(797).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(797).paramname = 'P6';
pt(797).class     = 'scalar';
pt(797).nrows     = 1;
pt(797).ncols     = 1;
pt(797).subsource = 'SS_DOUBLE';
pt(797).ndims     = '2';
pt(797).size      = '[]';

pt(798).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 15';
pt(798).paramname = 'P7';
pt(798).class     = 'scalar';
pt(798).nrows     = 1;
pt(798).ncols     = 1;
pt(798).subsource = 'SS_DOUBLE';
pt(798).ndims     = '2';
pt(798).size      = '[]';

pt(799).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(799).paramname = 'P1';
pt(799).class     = 'vector';
pt(799).nrows     = 1;
pt(799).ncols     = 61;
pt(799).subsource = 'SS_DOUBLE';
pt(799).ndims     = '2';
pt(799).size      = '[]';

pt(800).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(800).paramname = 'P2';
pt(800).class     = 'scalar';
pt(800).nrows     = 1;
pt(800).ncols     = 1;
pt(800).subsource = 'SS_DOUBLE';
pt(800).ndims     = '2';
pt(800).size      = '[]';

pt(801).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(801).paramname = 'P3';
pt(801).class     = 'scalar';
pt(801).nrows     = 1;
pt(801).ncols     = 1;
pt(801).subsource = 'SS_DOUBLE';
pt(801).ndims     = '2';
pt(801).size      = '[]';

pt(802).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(802).paramname = 'P4';
pt(802).class     = 'scalar';
pt(802).nrows     = 1;
pt(802).ncols     = 1;
pt(802).subsource = 'SS_DOUBLE';
pt(802).ndims     = '2';
pt(802).size      = '[]';

pt(803).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(803).paramname = 'P5';
pt(803).class     = 'scalar';
pt(803).nrows     = 1;
pt(803).ncols     = 1;
pt(803).subsource = 'SS_DOUBLE';
pt(803).ndims     = '2';
pt(803).size      = '[]';

pt(804).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(804).paramname = 'P6';
pt(804).class     = 'scalar';
pt(804).nrows     = 1;
pt(804).ncols     = 1;
pt(804).subsource = 'SS_DOUBLE';
pt(804).ndims     = '2';
pt(804).size      = '[]';

pt(805).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 16';
pt(805).paramname = 'P7';
pt(805).class     = 'scalar';
pt(805).nrows     = 1;
pt(805).ncols     = 1;
pt(805).subsource = 'SS_DOUBLE';
pt(805).ndims     = '2';
pt(805).size      = '[]';

pt(806).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(806).paramname = 'P1';
pt(806).class     = 'vector';
pt(806).nrows     = 1;
pt(806).ncols     = 61;
pt(806).subsource = 'SS_DOUBLE';
pt(806).ndims     = '2';
pt(806).size      = '[]';

pt(807).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(807).paramname = 'P2';
pt(807).class     = 'scalar';
pt(807).nrows     = 1;
pt(807).ncols     = 1;
pt(807).subsource = 'SS_DOUBLE';
pt(807).ndims     = '2';
pt(807).size      = '[]';

pt(808).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(808).paramname = 'P3';
pt(808).class     = 'scalar';
pt(808).nrows     = 1;
pt(808).ncols     = 1;
pt(808).subsource = 'SS_DOUBLE';
pt(808).ndims     = '2';
pt(808).size      = '[]';

pt(809).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(809).paramname = 'P4';
pt(809).class     = 'scalar';
pt(809).nrows     = 1;
pt(809).ncols     = 1;
pt(809).subsource = 'SS_DOUBLE';
pt(809).ndims     = '2';
pt(809).size      = '[]';

pt(810).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(810).paramname = 'P5';
pt(810).class     = 'scalar';
pt(810).nrows     = 1;
pt(810).ncols     = 1;
pt(810).subsource = 'SS_DOUBLE';
pt(810).ndims     = '2';
pt(810).size      = '[]';

pt(811).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(811).paramname = 'P6';
pt(811).class     = 'scalar';
pt(811).nrows     = 1;
pt(811).ncols     = 1;
pt(811).subsource = 'SS_DOUBLE';
pt(811).ndims     = '2';
pt(811).size      = '[]';

pt(812).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 17';
pt(812).paramname = 'P7';
pt(812).class     = 'scalar';
pt(812).nrows     = 1;
pt(812).ncols     = 1;
pt(812).subsource = 'SS_DOUBLE';
pt(812).ndims     = '2';
pt(812).size      = '[]';

pt(813).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(813).paramname = 'P1';
pt(813).class     = 'vector';
pt(813).nrows     = 1;
pt(813).ncols     = 63;
pt(813).subsource = 'SS_DOUBLE';
pt(813).ndims     = '2';
pt(813).size      = '[]';

pt(814).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(814).paramname = 'P2';
pt(814).class     = 'scalar';
pt(814).nrows     = 1;
pt(814).ncols     = 1;
pt(814).subsource = 'SS_DOUBLE';
pt(814).ndims     = '2';
pt(814).size      = '[]';

pt(815).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(815).paramname = 'P3';
pt(815).class     = 'scalar';
pt(815).nrows     = 1;
pt(815).ncols     = 1;
pt(815).subsource = 'SS_DOUBLE';
pt(815).ndims     = '2';
pt(815).size      = '[]';

pt(816).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(816).paramname = 'P4';
pt(816).class     = 'scalar';
pt(816).nrows     = 1;
pt(816).ncols     = 1;
pt(816).subsource = 'SS_DOUBLE';
pt(816).ndims     = '2';
pt(816).size      = '[]';

pt(817).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(817).paramname = 'P5';
pt(817).class     = 'scalar';
pt(817).nrows     = 1;
pt(817).ncols     = 1;
pt(817).subsource = 'SS_DOUBLE';
pt(817).ndims     = '2';
pt(817).size      = '[]';

pt(818).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(818).paramname = 'P6';
pt(818).class     = 'scalar';
pt(818).nrows     = 1;
pt(818).ncols     = 1;
pt(818).subsource = 'SS_DOUBLE';
pt(818).ndims     = '2';
pt(818).size      = '[]';

pt(819).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 18';
pt(819).paramname = 'P7';
pt(819).class     = 'scalar';
pt(819).nrows     = 1;
pt(819).ncols     = 1;
pt(819).subsource = 'SS_DOUBLE';
pt(819).ndims     = '2';
pt(819).size      = '[]';

pt(820).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(820).paramname = 'P1';
pt(820).class     = 'vector';
pt(820).nrows     = 1;
pt(820).ncols     = 67;
pt(820).subsource = 'SS_DOUBLE';
pt(820).ndims     = '2';
pt(820).size      = '[]';

pt(821).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(821).paramname = 'P2';
pt(821).class     = 'scalar';
pt(821).nrows     = 1;
pt(821).ncols     = 1;
pt(821).subsource = 'SS_DOUBLE';
pt(821).ndims     = '2';
pt(821).size      = '[]';

pt(822).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(822).paramname = 'P3';
pt(822).class     = 'scalar';
pt(822).nrows     = 1;
pt(822).ncols     = 1;
pt(822).subsource = 'SS_DOUBLE';
pt(822).ndims     = '2';
pt(822).size      = '[]';

pt(823).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(823).paramname = 'P4';
pt(823).class     = 'scalar';
pt(823).nrows     = 1;
pt(823).ncols     = 1;
pt(823).subsource = 'SS_DOUBLE';
pt(823).ndims     = '2';
pt(823).size      = '[]';

pt(824).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(824).paramname = 'P5';
pt(824).class     = 'scalar';
pt(824).nrows     = 1;
pt(824).ncols     = 1;
pt(824).subsource = 'SS_DOUBLE';
pt(824).ndims     = '2';
pt(824).size      = '[]';

pt(825).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(825).paramname = 'P6';
pt(825).class     = 'scalar';
pt(825).nrows     = 1;
pt(825).ncols     = 1;
pt(825).subsource = 'SS_DOUBLE';
pt(825).ndims     = '2';
pt(825).size      = '[]';

pt(826).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 19';
pt(826).paramname = 'P7';
pt(826).class     = 'scalar';
pt(826).nrows     = 1;
pt(826).ncols     = 1;
pt(826).subsource = 'SS_DOUBLE';
pt(826).ndims     = '2';
pt(826).size      = '[]';

pt(827).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(827).paramname = 'P1';
pt(827).class     = 'vector';
pt(827).nrows     = 1;
pt(827).ncols     = 60;
pt(827).subsource = 'SS_DOUBLE';
pt(827).ndims     = '2';
pt(827).size      = '[]';

pt(828).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(828).paramname = 'P2';
pt(828).class     = 'scalar';
pt(828).nrows     = 1;
pt(828).ncols     = 1;
pt(828).subsource = 'SS_DOUBLE';
pt(828).ndims     = '2';
pt(828).size      = '[]';

pt(829).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(829).paramname = 'P3';
pt(829).class     = 'scalar';
pt(829).nrows     = 1;
pt(829).ncols     = 1;
pt(829).subsource = 'SS_DOUBLE';
pt(829).ndims     = '2';
pt(829).size      = '[]';

pt(830).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(830).paramname = 'P4';
pt(830).class     = 'scalar';
pt(830).nrows     = 1;
pt(830).ncols     = 1;
pt(830).subsource = 'SS_DOUBLE';
pt(830).ndims     = '2';
pt(830).size      = '[]';

pt(831).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(831).paramname = 'P5';
pt(831).class     = 'scalar';
pt(831).nrows     = 1;
pt(831).ncols     = 1;
pt(831).subsource = 'SS_DOUBLE';
pt(831).ndims     = '2';
pt(831).size      = '[]';

pt(832).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(832).paramname = 'P6';
pt(832).class     = 'scalar';
pt(832).nrows     = 1;
pt(832).ncols     = 1;
pt(832).subsource = 'SS_DOUBLE';
pt(832).ndims     = '2';
pt(832).size      = '[]';

pt(833).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 2';
pt(833).paramname = 'P7';
pt(833).class     = 'scalar';
pt(833).nrows     = 1;
pt(833).ncols     = 1;
pt(833).subsource = 'SS_DOUBLE';
pt(833).ndims     = '2';
pt(833).size      = '[]';

pt(834).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(834).paramname = 'P1';
pt(834).class     = 'vector';
pt(834).nrows     = 1;
pt(834).ncols     = 58;
pt(834).subsource = 'SS_DOUBLE';
pt(834).ndims     = '2';
pt(834).size      = '[]';

pt(835).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(835).paramname = 'P2';
pt(835).class     = 'scalar';
pt(835).nrows     = 1;
pt(835).ncols     = 1;
pt(835).subsource = 'SS_DOUBLE';
pt(835).ndims     = '2';
pt(835).size      = '[]';

pt(836).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(836).paramname = 'P3';
pt(836).class     = 'scalar';
pt(836).nrows     = 1;
pt(836).ncols     = 1;
pt(836).subsource = 'SS_DOUBLE';
pt(836).ndims     = '2';
pt(836).size      = '[]';

pt(837).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(837).paramname = 'P4';
pt(837).class     = 'scalar';
pt(837).nrows     = 1;
pt(837).ncols     = 1;
pt(837).subsource = 'SS_DOUBLE';
pt(837).ndims     = '2';
pt(837).size      = '[]';

pt(838).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(838).paramname = 'P5';
pt(838).class     = 'scalar';
pt(838).nrows     = 1;
pt(838).ncols     = 1;
pt(838).subsource = 'SS_DOUBLE';
pt(838).ndims     = '2';
pt(838).size      = '[]';

pt(839).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(839).paramname = 'P6';
pt(839).class     = 'scalar';
pt(839).nrows     = 1;
pt(839).ncols     = 1;
pt(839).subsource = 'SS_DOUBLE';
pt(839).ndims     = '2';
pt(839).size      = '[]';

pt(840).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 20';
pt(840).paramname = 'P7';
pt(840).class     = 'scalar';
pt(840).nrows     = 1;
pt(840).ncols     = 1;
pt(840).subsource = 'SS_DOUBLE';
pt(840).ndims     = '2';
pt(840).size      = '[]';

pt(841).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(841).paramname = 'P1';
pt(841).class     = 'vector';
pt(841).nrows     = 1;
pt(841).ncols     = 68;
pt(841).subsource = 'SS_DOUBLE';
pt(841).ndims     = '2';
pt(841).size      = '[]';

pt(842).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(842).paramname = 'P2';
pt(842).class     = 'scalar';
pt(842).nrows     = 1;
pt(842).ncols     = 1;
pt(842).subsource = 'SS_DOUBLE';
pt(842).ndims     = '2';
pt(842).size      = '[]';

pt(843).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(843).paramname = 'P3';
pt(843).class     = 'scalar';
pt(843).nrows     = 1;
pt(843).ncols     = 1;
pt(843).subsource = 'SS_DOUBLE';
pt(843).ndims     = '2';
pt(843).size      = '[]';

pt(844).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(844).paramname = 'P4';
pt(844).class     = 'scalar';
pt(844).nrows     = 1;
pt(844).ncols     = 1;
pt(844).subsource = 'SS_DOUBLE';
pt(844).ndims     = '2';
pt(844).size      = '[]';

pt(845).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(845).paramname = 'P5';
pt(845).class     = 'scalar';
pt(845).nrows     = 1;
pt(845).ncols     = 1;
pt(845).subsource = 'SS_DOUBLE';
pt(845).ndims     = '2';
pt(845).size      = '[]';

pt(846).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(846).paramname = 'P6';
pt(846).class     = 'scalar';
pt(846).nrows     = 1;
pt(846).ncols     = 1;
pt(846).subsource = 'SS_DOUBLE';
pt(846).ndims     = '2';
pt(846).size      = '[]';

pt(847).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 21';
pt(847).paramname = 'P7';
pt(847).class     = 'scalar';
pt(847).nrows     = 1;
pt(847).ncols     = 1;
pt(847).subsource = 'SS_DOUBLE';
pt(847).ndims     = '2';
pt(847).size      = '[]';

pt(848).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(848).paramname = 'P1';
pt(848).class     = 'vector';
pt(848).nrows     = 1;
pt(848).ncols     = 61;
pt(848).subsource = 'SS_DOUBLE';
pt(848).ndims     = '2';
pt(848).size      = '[]';

pt(849).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(849).paramname = 'P2';
pt(849).class     = 'scalar';
pt(849).nrows     = 1;
pt(849).ncols     = 1;
pt(849).subsource = 'SS_DOUBLE';
pt(849).ndims     = '2';
pt(849).size      = '[]';

pt(850).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(850).paramname = 'P3';
pt(850).class     = 'scalar';
pt(850).nrows     = 1;
pt(850).ncols     = 1;
pt(850).subsource = 'SS_DOUBLE';
pt(850).ndims     = '2';
pt(850).size      = '[]';

pt(851).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(851).paramname = 'P4';
pt(851).class     = 'scalar';
pt(851).nrows     = 1;
pt(851).ncols     = 1;
pt(851).subsource = 'SS_DOUBLE';
pt(851).ndims     = '2';
pt(851).size      = '[]';

pt(852).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(852).paramname = 'P5';
pt(852).class     = 'scalar';
pt(852).nrows     = 1;
pt(852).ncols     = 1;
pt(852).subsource = 'SS_DOUBLE';
pt(852).ndims     = '2';
pt(852).size      = '[]';

pt(853).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(853).paramname = 'P6';
pt(853).class     = 'scalar';
pt(853).nrows     = 1;
pt(853).ncols     = 1;
pt(853).subsource = 'SS_DOUBLE';
pt(853).ndims     = '2';
pt(853).size      = '[]';

pt(854).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 22';
pt(854).paramname = 'P7';
pt(854).class     = 'scalar';
pt(854).nrows     = 1;
pt(854).ncols     = 1;
pt(854).subsource = 'SS_DOUBLE';
pt(854).ndims     = '2';
pt(854).size      = '[]';

pt(855).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(855).paramname = 'P1';
pt(855).class     = 'vector';
pt(855).nrows     = 1;
pt(855).ncols     = 66;
pt(855).subsource = 'SS_DOUBLE';
pt(855).ndims     = '2';
pt(855).size      = '[]';

pt(856).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(856).paramname = 'P2';
pt(856).class     = 'scalar';
pt(856).nrows     = 1;
pt(856).ncols     = 1;
pt(856).subsource = 'SS_DOUBLE';
pt(856).ndims     = '2';
pt(856).size      = '[]';

pt(857).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(857).paramname = 'P3';
pt(857).class     = 'scalar';
pt(857).nrows     = 1;
pt(857).ncols     = 1;
pt(857).subsource = 'SS_DOUBLE';
pt(857).ndims     = '2';
pt(857).size      = '[]';

pt(858).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(858).paramname = 'P4';
pt(858).class     = 'scalar';
pt(858).nrows     = 1;
pt(858).ncols     = 1;
pt(858).subsource = 'SS_DOUBLE';
pt(858).ndims     = '2';
pt(858).size      = '[]';

pt(859).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(859).paramname = 'P5';
pt(859).class     = 'scalar';
pt(859).nrows     = 1;
pt(859).ncols     = 1;
pt(859).subsource = 'SS_DOUBLE';
pt(859).ndims     = '2';
pt(859).size      = '[]';

pt(860).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(860).paramname = 'P6';
pt(860).class     = 'scalar';
pt(860).nrows     = 1;
pt(860).ncols     = 1;
pt(860).subsource = 'SS_DOUBLE';
pt(860).ndims     = '2';
pt(860).size      = '[]';

pt(861).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 23';
pt(861).paramname = 'P7';
pt(861).class     = 'scalar';
pt(861).nrows     = 1;
pt(861).ncols     = 1;
pt(861).subsource = 'SS_DOUBLE';
pt(861).ndims     = '2';
pt(861).size      = '[]';

pt(862).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(862).paramname = 'P1';
pt(862).class     = 'vector';
pt(862).nrows     = 1;
pt(862).ncols     = 60;
pt(862).subsource = 'SS_DOUBLE';
pt(862).ndims     = '2';
pt(862).size      = '[]';

pt(863).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(863).paramname = 'P2';
pt(863).class     = 'scalar';
pt(863).nrows     = 1;
pt(863).ncols     = 1;
pt(863).subsource = 'SS_DOUBLE';
pt(863).ndims     = '2';
pt(863).size      = '[]';

pt(864).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(864).paramname = 'P3';
pt(864).class     = 'scalar';
pt(864).nrows     = 1;
pt(864).ncols     = 1;
pt(864).subsource = 'SS_DOUBLE';
pt(864).ndims     = '2';
pt(864).size      = '[]';

pt(865).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(865).paramname = 'P4';
pt(865).class     = 'scalar';
pt(865).nrows     = 1;
pt(865).ncols     = 1;
pt(865).subsource = 'SS_DOUBLE';
pt(865).ndims     = '2';
pt(865).size      = '[]';

pt(866).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(866).paramname = 'P5';
pt(866).class     = 'scalar';
pt(866).nrows     = 1;
pt(866).ncols     = 1;
pt(866).subsource = 'SS_DOUBLE';
pt(866).ndims     = '2';
pt(866).size      = '[]';

pt(867).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(867).paramname = 'P6';
pt(867).class     = 'scalar';
pt(867).nrows     = 1;
pt(867).ncols     = 1;
pt(867).subsource = 'SS_DOUBLE';
pt(867).ndims     = '2';
pt(867).size      = '[]';

pt(868).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 3';
pt(868).paramname = 'P7';
pt(868).class     = 'scalar';
pt(868).nrows     = 1;
pt(868).ncols     = 1;
pt(868).subsource = 'SS_DOUBLE';
pt(868).ndims     = '2';
pt(868).size      = '[]';

pt(869).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(869).paramname = 'P1';
pt(869).class     = 'vector';
pt(869).nrows     = 1;
pt(869).ncols     = 60;
pt(869).subsource = 'SS_DOUBLE';
pt(869).ndims     = '2';
pt(869).size      = '[]';

pt(870).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(870).paramname = 'P2';
pt(870).class     = 'scalar';
pt(870).nrows     = 1;
pt(870).ncols     = 1;
pt(870).subsource = 'SS_DOUBLE';
pt(870).ndims     = '2';
pt(870).size      = '[]';

pt(871).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(871).paramname = 'P3';
pt(871).class     = 'scalar';
pt(871).nrows     = 1;
pt(871).ncols     = 1;
pt(871).subsource = 'SS_DOUBLE';
pt(871).ndims     = '2';
pt(871).size      = '[]';

pt(872).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(872).paramname = 'P4';
pt(872).class     = 'scalar';
pt(872).nrows     = 1;
pt(872).ncols     = 1;
pt(872).subsource = 'SS_DOUBLE';
pt(872).ndims     = '2';
pt(872).size      = '[]';

pt(873).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(873).paramname = 'P5';
pt(873).class     = 'scalar';
pt(873).nrows     = 1;
pt(873).ncols     = 1;
pt(873).subsource = 'SS_DOUBLE';
pt(873).ndims     = '2';
pt(873).size      = '[]';

pt(874).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(874).paramname = 'P6';
pt(874).class     = 'scalar';
pt(874).nrows     = 1;
pt(874).ncols     = 1;
pt(874).subsource = 'SS_DOUBLE';
pt(874).ndims     = '2';
pt(874).size      = '[]';

pt(875).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 4';
pt(875).paramname = 'P7';
pt(875).class     = 'scalar';
pt(875).nrows     = 1;
pt(875).ncols     = 1;
pt(875).subsource = 'SS_DOUBLE';
pt(875).ndims     = '2';
pt(875).size      = '[]';

pt(876).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(876).paramname = 'P1';
pt(876).class     = 'vector';
pt(876).nrows     = 1;
pt(876).ncols     = 70;
pt(876).subsource = 'SS_DOUBLE';
pt(876).ndims     = '2';
pt(876).size      = '[]';

pt(877).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(877).paramname = 'P2';
pt(877).class     = 'scalar';
pt(877).nrows     = 1;
pt(877).ncols     = 1;
pt(877).subsource = 'SS_DOUBLE';
pt(877).ndims     = '2';
pt(877).size      = '[]';

pt(878).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(878).paramname = 'P3';
pt(878).class     = 'scalar';
pt(878).nrows     = 1;
pt(878).ncols     = 1;
pt(878).subsource = 'SS_DOUBLE';
pt(878).ndims     = '2';
pt(878).size      = '[]';

pt(879).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(879).paramname = 'P4';
pt(879).class     = 'scalar';
pt(879).nrows     = 1;
pt(879).ncols     = 1;
pt(879).subsource = 'SS_DOUBLE';
pt(879).ndims     = '2';
pt(879).size      = '[]';

pt(880).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(880).paramname = 'P5';
pt(880).class     = 'scalar';
pt(880).nrows     = 1;
pt(880).ncols     = 1;
pt(880).subsource = 'SS_DOUBLE';
pt(880).ndims     = '2';
pt(880).size      = '[]';

pt(881).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(881).paramname = 'P6';
pt(881).class     = 'scalar';
pt(881).nrows     = 1;
pt(881).ncols     = 1;
pt(881).subsource = 'SS_DOUBLE';
pt(881).ndims     = '2';
pt(881).size      = '[]';

pt(882).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 5';
pt(882).paramname = 'P7';
pt(882).class     = 'scalar';
pt(882).nrows     = 1;
pt(882).ncols     = 1;
pt(882).subsource = 'SS_DOUBLE';
pt(882).ndims     = '2';
pt(882).size      = '[]';

pt(883).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(883).paramname = 'P1';
pt(883).class     = 'vector';
pt(883).nrows     = 1;
pt(883).ncols     = 76;
pt(883).subsource = 'SS_DOUBLE';
pt(883).ndims     = '2';
pt(883).size      = '[]';

pt(884).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(884).paramname = 'P2';
pt(884).class     = 'scalar';
pt(884).nrows     = 1;
pt(884).ncols     = 1;
pt(884).subsource = 'SS_DOUBLE';
pt(884).ndims     = '2';
pt(884).size      = '[]';

pt(885).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(885).paramname = 'P3';
pt(885).class     = 'scalar';
pt(885).nrows     = 1;
pt(885).ncols     = 1;
pt(885).subsource = 'SS_DOUBLE';
pt(885).ndims     = '2';
pt(885).size      = '[]';

pt(886).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(886).paramname = 'P4';
pt(886).class     = 'scalar';
pt(886).nrows     = 1;
pt(886).ncols     = 1;
pt(886).subsource = 'SS_DOUBLE';
pt(886).ndims     = '2';
pt(886).size      = '[]';

pt(887).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(887).paramname = 'P5';
pt(887).class     = 'scalar';
pt(887).nrows     = 1;
pt(887).ncols     = 1;
pt(887).subsource = 'SS_DOUBLE';
pt(887).ndims     = '2';
pt(887).size      = '[]';

pt(888).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(888).paramname = 'P6';
pt(888).class     = 'scalar';
pt(888).nrows     = 1;
pt(888).ncols     = 1;
pt(888).subsource = 'SS_DOUBLE';
pt(888).ndims     = '2';
pt(888).size      = '[]';

pt(889).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 6';
pt(889).paramname = 'P7';
pt(889).class     = 'scalar';
pt(889).nrows     = 1;
pt(889).ncols     = 1;
pt(889).subsource = 'SS_DOUBLE';
pt(889).ndims     = '2';
pt(889).size      = '[]';

pt(890).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(890).paramname = 'P1';
pt(890).class     = 'vector';
pt(890).nrows     = 1;
pt(890).ncols     = 76;
pt(890).subsource = 'SS_DOUBLE';
pt(890).ndims     = '2';
pt(890).size      = '[]';

pt(891).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(891).paramname = 'P2';
pt(891).class     = 'scalar';
pt(891).nrows     = 1;
pt(891).ncols     = 1;
pt(891).subsource = 'SS_DOUBLE';
pt(891).ndims     = '2';
pt(891).size      = '[]';

pt(892).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(892).paramname = 'P3';
pt(892).class     = 'scalar';
pt(892).nrows     = 1;
pt(892).ncols     = 1;
pt(892).subsource = 'SS_DOUBLE';
pt(892).ndims     = '2';
pt(892).size      = '[]';

pt(893).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(893).paramname = 'P4';
pt(893).class     = 'scalar';
pt(893).nrows     = 1;
pt(893).ncols     = 1;
pt(893).subsource = 'SS_DOUBLE';
pt(893).ndims     = '2';
pt(893).size      = '[]';

pt(894).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(894).paramname = 'P5';
pt(894).class     = 'scalar';
pt(894).nrows     = 1;
pt(894).ncols     = 1;
pt(894).subsource = 'SS_DOUBLE';
pt(894).ndims     = '2';
pt(894).size      = '[]';

pt(895).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(895).paramname = 'P6';
pt(895).class     = 'scalar';
pt(895).nrows     = 1;
pt(895).ncols     = 1;
pt(895).subsource = 'SS_DOUBLE';
pt(895).ndims     = '2';
pt(895).size      = '[]';

pt(896).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 7';
pt(896).paramname = 'P7';
pt(896).class     = 'scalar';
pt(896).nrows     = 1;
pt(896).ncols     = 1;
pt(896).subsource = 'SS_DOUBLE';
pt(896).ndims     = '2';
pt(896).size      = '[]';

pt(897).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(897).paramname = 'P1';
pt(897).class     = 'vector';
pt(897).nrows     = 1;
pt(897).ncols     = 64;
pt(897).subsource = 'SS_DOUBLE';
pt(897).ndims     = '2';
pt(897).size      = '[]';

pt(898).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(898).paramname = 'P2';
pt(898).class     = 'scalar';
pt(898).nrows     = 1;
pt(898).ncols     = 1;
pt(898).subsource = 'SS_DOUBLE';
pt(898).ndims     = '2';
pt(898).size      = '[]';

pt(899).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(899).paramname = 'P3';
pt(899).class     = 'scalar';
pt(899).nrows     = 1;
pt(899).ncols     = 1;
pt(899).subsource = 'SS_DOUBLE';
pt(899).ndims     = '2';
pt(899).size      = '[]';

pt(900).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(900).paramname = 'P4';
pt(900).class     = 'scalar';
pt(900).nrows     = 1;
pt(900).ncols     = 1;
pt(900).subsource = 'SS_DOUBLE';
pt(900).ndims     = '2';
pt(900).size      = '[]';

pt(901).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(901).paramname = 'P5';
pt(901).class     = 'scalar';
pt(901).nrows     = 1;
pt(901).ncols     = 1;
pt(901).subsource = 'SS_DOUBLE';
pt(901).ndims     = '2';
pt(901).size      = '[]';

pt(902).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(902).paramname = 'P6';
pt(902).class     = 'scalar';
pt(902).nrows     = 1;
pt(902).ncols     = 1;
pt(902).subsource = 'SS_DOUBLE';
pt(902).ndims     = '2';
pt(902).size      = '[]';

pt(903).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 8';
pt(903).paramname = 'P7';
pt(903).class     = 'scalar';
pt(903).nrows     = 1;
pt(903).ncols     = 1;
pt(903).subsource = 'SS_DOUBLE';
pt(903).ndims     = '2';
pt(903).size      = '[]';

pt(904).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(904).paramname = 'P1';
pt(904).class     = 'vector';
pt(904).nrows     = 1;
pt(904).ncols     = 74;
pt(904).subsource = 'SS_DOUBLE';
pt(904).ndims     = '2';
pt(904).size      = '[]';

pt(905).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(905).paramname = 'P2';
pt(905).class     = 'scalar';
pt(905).nrows     = 1;
pt(905).ncols     = 1;
pt(905).subsource = 'SS_DOUBLE';
pt(905).ndims     = '2';
pt(905).size      = '[]';

pt(906).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(906).paramname = 'P3';
pt(906).class     = 'scalar';
pt(906).nrows     = 1;
pt(906).ncols     = 1;
pt(906).subsource = 'SS_DOUBLE';
pt(906).ndims     = '2';
pt(906).size      = '[]';

pt(907).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(907).paramname = 'P4';
pt(907).class     = 'scalar';
pt(907).nrows     = 1;
pt(907).ncols     = 1;
pt(907).subsource = 'SS_DOUBLE';
pt(907).ndims     = '2';
pt(907).size      = '[]';

pt(908).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(908).paramname = 'P5';
pt(908).class     = 'scalar';
pt(908).nrows     = 1;
pt(908).ncols     = 1;
pt(908).subsource = 'SS_DOUBLE';
pt(908).ndims     = '2';
pt(908).size      = '[]';

pt(909).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(909).paramname = 'P6';
pt(909).class     = 'scalar';
pt(909).nrows     = 1;
pt(909).ncols     = 1;
pt(909).subsource = 'SS_DOUBLE';
pt(909).ndims     = '2';
pt(909).size      = '[]';

pt(910).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Rx Var 9';
pt(910).paramname = 'P7';
pt(910).class     = 'scalar';
pt(910).nrows     = 1;
pt(910).ncols     = 1;
pt(910).subsource = 'SS_DOUBLE';
pt(910).ndims     = '2';
pt(910).size      = '[]';

pt(911).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(911).paramname = 'P1';
pt(911).class     = 'vector';
pt(911).nrows     = 1;
pt(911).ncols     = 61;
pt(911).subsource = 'SS_DOUBLE';
pt(911).ndims     = '2';
pt(911).size      = '[]';

pt(912).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(912).paramname = 'P2';
pt(912).class     = 'scalar';
pt(912).nrows     = 1;
pt(912).ncols     = 1;
pt(912).subsource = 'SS_DOUBLE';
pt(912).ndims     = '2';
pt(912).size      = '[]';

pt(913).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(913).paramname = 'P3';
pt(913).class     = 'scalar';
pt(913).nrows     = 1;
pt(913).ncols     = 1;
pt(913).subsource = 'SS_DOUBLE';
pt(913).ndims     = '2';
pt(913).size      = '[]';

pt(914).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(914).paramname = 'P4';
pt(914).class     = 'scalar';
pt(914).nrows     = 1;
pt(914).ncols     = 1;
pt(914).subsource = 'SS_DOUBLE';
pt(914).ndims     = '2';
pt(914).size      = '[]';

pt(915).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(915).paramname = 'P5';
pt(915).class     = 'scalar';
pt(915).nrows     = 1;
pt(915).ncols     = 1;
pt(915).subsource = 'SS_DOUBLE';
pt(915).ndims     = '2';
pt(915).size      = '[]';

pt(916).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(916).paramname = 'P6';
pt(916).class     = 'scalar';
pt(916).nrows     = 1;
pt(916).ncols     = 1;
pt(916).subsource = 'SS_DOUBLE';
pt(916).ndims     = '2';
pt(916).size      = '[]';

pt(917).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 3';
pt(917).paramname = 'P7';
pt(917).class     = 'scalar';
pt(917).nrows     = 1;
pt(917).ncols     = 1;
pt(917).subsource = 'SS_DOUBLE';
pt(917).ndims     = '2';
pt(917).size      = '[]';

pt(918).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(918).paramname = 'P1';
pt(918).class     = 'vector';
pt(918).nrows     = 1;
pt(918).ncols     = 61;
pt(918).subsource = 'SS_DOUBLE';
pt(918).ndims     = '2';
pt(918).size      = '[]';

pt(919).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(919).paramname = 'P2';
pt(919).class     = 'scalar';
pt(919).nrows     = 1;
pt(919).ncols     = 1;
pt(919).subsource = 'SS_DOUBLE';
pt(919).ndims     = '2';
pt(919).size      = '[]';

pt(920).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(920).paramname = 'P3';
pt(920).class     = 'scalar';
pt(920).nrows     = 1;
pt(920).ncols     = 1;
pt(920).subsource = 'SS_DOUBLE';
pt(920).ndims     = '2';
pt(920).size      = '[]';

pt(921).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(921).paramname = 'P4';
pt(921).class     = 'scalar';
pt(921).nrows     = 1;
pt(921).ncols     = 1;
pt(921).subsource = 'SS_DOUBLE';
pt(921).ndims     = '2';
pt(921).size      = '[]';

pt(922).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(922).paramname = 'P5';
pt(922).class     = 'scalar';
pt(922).nrows     = 1;
pt(922).ncols     = 1;
pt(922).subsource = 'SS_DOUBLE';
pt(922).ndims     = '2';
pt(922).size      = '[]';

pt(923).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(923).paramname = 'P6';
pt(923).class     = 'scalar';
pt(923).nrows     = 1;
pt(923).ncols     = 1;
pt(923).subsource = 'SS_DOUBLE';
pt(923).ndims     = '2';
pt(923).size      = '[]';

pt(924).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 4';
pt(924).paramname = 'P7';
pt(924).class     = 'scalar';
pt(924).nrows     = 1;
pt(924).ncols     = 1;
pt(924).subsource = 'SS_DOUBLE';
pt(924).ndims     = '2';
pt(924).size      = '[]';

pt(925).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(925).paramname = 'P1';
pt(925).class     = 'vector';
pt(925).nrows     = 1;
pt(925).ncols     = 67;
pt(925).subsource = 'SS_DOUBLE';
pt(925).ndims     = '2';
pt(925).size      = '[]';

pt(926).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(926).paramname = 'P2';
pt(926).class     = 'scalar';
pt(926).nrows     = 1;
pt(926).ncols     = 1;
pt(926).subsource = 'SS_DOUBLE';
pt(926).ndims     = '2';
pt(926).size      = '[]';

pt(927).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(927).paramname = 'P3';
pt(927).class     = 'scalar';
pt(927).nrows     = 1;
pt(927).ncols     = 1;
pt(927).subsource = 'SS_DOUBLE';
pt(927).ndims     = '2';
pt(927).size      = '[]';

pt(928).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(928).paramname = 'P4';
pt(928).class     = 'scalar';
pt(928).nrows     = 1;
pt(928).ncols     = 1;
pt(928).subsource = 'SS_DOUBLE';
pt(928).ndims     = '2';
pt(928).size      = '[]';

pt(929).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(929).paramname = 'P5';
pt(929).class     = 'scalar';
pt(929).nrows     = 1;
pt(929).ncols     = 1;
pt(929).subsource = 'SS_DOUBLE';
pt(929).ndims     = '2';
pt(929).size      = '[]';

pt(930).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(930).paramname = 'P6';
pt(930).class     = 'scalar';
pt(930).nrows     = 1;
pt(930).ncols     = 1;
pt(930).subsource = 'SS_DOUBLE';
pt(930).ndims     = '2';
pt(930).size      = '[]';

pt(931).blockname = 'DAQ/LegMedulla_Front_L/EtherCAT Tx Var 5';
pt(931).paramname = 'P7';
pt(931).class     = 'scalar';
pt(931).nrows     = 1;
pt(931).ncols     = 1;
pt(931).subsource = 'SS_DOUBLE';
pt(931).ndims     = '2';
pt(931).size      = '[]';

pt(932).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(932).paramname = 'P1';
pt(932).class     = 'vector';
pt(932).nrows     = 1;
pt(932).ncols     = 76;
pt(932).subsource = 'SS_DOUBLE';
pt(932).ndims     = '2';
pt(932).size      = '[]';

pt(933).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(933).paramname = 'P2';
pt(933).class     = 'scalar';
pt(933).nrows     = 1;
pt(933).ncols     = 1;
pt(933).subsource = 'SS_DOUBLE';
pt(933).ndims     = '2';
pt(933).size      = '[]';

pt(934).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(934).paramname = 'P3';
pt(934).class     = 'scalar';
pt(934).nrows     = 1;
pt(934).ncols     = 1;
pt(934).subsource = 'SS_DOUBLE';
pt(934).ndims     = '2';
pt(934).size      = '[]';

pt(935).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(935).paramname = 'P4';
pt(935).class     = 'scalar';
pt(935).nrows     = 1;
pt(935).ncols     = 1;
pt(935).subsource = 'SS_DOUBLE';
pt(935).ndims     = '2';
pt(935).size      = '[]';

pt(936).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(936).paramname = 'P5';
pt(936).class     = 'scalar';
pt(936).nrows     = 1;
pt(936).ncols     = 1;
pt(936).subsource = 'SS_DOUBLE';
pt(936).ndims     = '2';
pt(936).size      = '[]';

pt(937).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(937).paramname = 'P6';
pt(937).class     = 'scalar';
pt(937).nrows     = 1;
pt(937).ncols     = 1;
pt(937).subsource = 'SS_DOUBLE';
pt(937).ndims     = '2';
pt(937).size      = '[]';

pt(938).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var ';
pt(938).paramname = 'P7';
pt(938).class     = 'scalar';
pt(938).nrows     = 1;
pt(938).ncols     = 1;
pt(938).subsource = 'SS_DOUBLE';
pt(938).ndims     = '2';
pt(938).size      = '[]';

pt(939).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(939).paramname = 'P1';
pt(939).class     = 'vector';
pt(939).nrows     = 1;
pt(939).ncols     = 86;
pt(939).subsource = 'SS_DOUBLE';
pt(939).ndims     = '2';
pt(939).size      = '[]';

pt(940).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(940).paramname = 'P2';
pt(940).class     = 'scalar';
pt(940).nrows     = 1;
pt(940).ncols     = 1;
pt(940).subsource = 'SS_DOUBLE';
pt(940).ndims     = '2';
pt(940).size      = '[]';

pt(941).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(941).paramname = 'P3';
pt(941).class     = 'scalar';
pt(941).nrows     = 1;
pt(941).ncols     = 1;
pt(941).subsource = 'SS_DOUBLE';
pt(941).ndims     = '2';
pt(941).size      = '[]';

pt(942).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(942).paramname = 'P4';
pt(942).class     = 'scalar';
pt(942).nrows     = 1;
pt(942).ncols     = 1;
pt(942).subsource = 'SS_DOUBLE';
pt(942).ndims     = '2';
pt(942).size      = '[]';

pt(943).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(943).paramname = 'P5';
pt(943).class     = 'scalar';
pt(943).nrows     = 1;
pt(943).ncols     = 1;
pt(943).subsource = 'SS_DOUBLE';
pt(943).ndims     = '2';
pt(943).size      = '[]';

pt(944).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(944).paramname = 'P6';
pt(944).class     = 'scalar';
pt(944).nrows     = 1;
pt(944).ncols     = 1;
pt(944).subsource = 'SS_DOUBLE';
pt(944).ndims     = '2';
pt(944).size      = '[]';

pt(945).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 1';
pt(945).paramname = 'P7';
pt(945).class     = 'scalar';
pt(945).nrows     = 1;
pt(945).ncols     = 1;
pt(945).subsource = 'SS_DOUBLE';
pt(945).ndims     = '2';
pt(945).size      = '[]';

pt(946).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(946).paramname = 'P1';
pt(946).class     = 'vector';
pt(946).nrows     = 1;
pt(946).ncols     = 56;
pt(946).subsource = 'SS_DOUBLE';
pt(946).ndims     = '2';
pt(946).size      = '[]';

pt(947).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(947).paramname = 'P2';
pt(947).class     = 'scalar';
pt(947).nrows     = 1;
pt(947).ncols     = 1;
pt(947).subsource = 'SS_DOUBLE';
pt(947).ndims     = '2';
pt(947).size      = '[]';

pt(948).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(948).paramname = 'P3';
pt(948).class     = 'scalar';
pt(948).nrows     = 1;
pt(948).ncols     = 1;
pt(948).subsource = 'SS_DOUBLE';
pt(948).ndims     = '2';
pt(948).size      = '[]';

pt(949).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(949).paramname = 'P4';
pt(949).class     = 'scalar';
pt(949).nrows     = 1;
pt(949).ncols     = 1;
pt(949).subsource = 'SS_DOUBLE';
pt(949).ndims     = '2';
pt(949).size      = '[]';

pt(950).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(950).paramname = 'P5';
pt(950).class     = 'scalar';
pt(950).nrows     = 1;
pt(950).ncols     = 1;
pt(950).subsource = 'SS_DOUBLE';
pt(950).ndims     = '2';
pt(950).size      = '[]';

pt(951).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(951).paramname = 'P6';
pt(951).class     = 'scalar';
pt(951).nrows     = 1;
pt(951).ncols     = 1;
pt(951).subsource = 'SS_DOUBLE';
pt(951).ndims     = '2';
pt(951).size      = '[]';

pt(952).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 10';
pt(952).paramname = 'P7';
pt(952).class     = 'scalar';
pt(952).nrows     = 1;
pt(952).ncols     = 1;
pt(952).subsource = 'SS_DOUBLE';
pt(952).ndims     = '2';
pt(952).size      = '[]';

pt(953).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(953).paramname = 'P1';
pt(953).class     = 'vector';
pt(953).nrows     = 1;
pt(953).ncols     = 56;
pt(953).subsource = 'SS_DOUBLE';
pt(953).ndims     = '2';
pt(953).size      = '[]';

pt(954).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(954).paramname = 'P2';
pt(954).class     = 'scalar';
pt(954).nrows     = 1;
pt(954).ncols     = 1;
pt(954).subsource = 'SS_DOUBLE';
pt(954).ndims     = '2';
pt(954).size      = '[]';

pt(955).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(955).paramname = 'P3';
pt(955).class     = 'scalar';
pt(955).nrows     = 1;
pt(955).ncols     = 1;
pt(955).subsource = 'SS_DOUBLE';
pt(955).ndims     = '2';
pt(955).size      = '[]';

pt(956).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(956).paramname = 'P4';
pt(956).class     = 'scalar';
pt(956).nrows     = 1;
pt(956).ncols     = 1;
pt(956).subsource = 'SS_DOUBLE';
pt(956).ndims     = '2';
pt(956).size      = '[]';

pt(957).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(957).paramname = 'P5';
pt(957).class     = 'scalar';
pt(957).nrows     = 1;
pt(957).ncols     = 1;
pt(957).subsource = 'SS_DOUBLE';
pt(957).ndims     = '2';
pt(957).size      = '[]';

pt(958).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(958).paramname = 'P6';
pt(958).class     = 'scalar';
pt(958).nrows     = 1;
pt(958).ncols     = 1;
pt(958).subsource = 'SS_DOUBLE';
pt(958).ndims     = '2';
pt(958).size      = '[]';

pt(959).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 11';
pt(959).paramname = 'P7';
pt(959).class     = 'scalar';
pt(959).nrows     = 1;
pt(959).ncols     = 1;
pt(959).subsource = 'SS_DOUBLE';
pt(959).ndims     = '2';
pt(959).size      = '[]';

pt(960).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(960).paramname = 'P1';
pt(960).class     = 'vector';
pt(960).nrows     = 1;
pt(960).ncols     = 61;
pt(960).subsource = 'SS_DOUBLE';
pt(960).ndims     = '2';
pt(960).size      = '[]';

pt(961).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(961).paramname = 'P2';
pt(961).class     = 'scalar';
pt(961).nrows     = 1;
pt(961).ncols     = 1;
pt(961).subsource = 'SS_DOUBLE';
pt(961).ndims     = '2';
pt(961).size      = '[]';

pt(962).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(962).paramname = 'P3';
pt(962).class     = 'scalar';
pt(962).nrows     = 1;
pt(962).ncols     = 1;
pt(962).subsource = 'SS_DOUBLE';
pt(962).ndims     = '2';
pt(962).size      = '[]';

pt(963).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(963).paramname = 'P4';
pt(963).class     = 'scalar';
pt(963).nrows     = 1;
pt(963).ncols     = 1;
pt(963).subsource = 'SS_DOUBLE';
pt(963).ndims     = '2';
pt(963).size      = '[]';

pt(964).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(964).paramname = 'P5';
pt(964).class     = 'scalar';
pt(964).nrows     = 1;
pt(964).ncols     = 1;
pt(964).subsource = 'SS_DOUBLE';
pt(964).ndims     = '2';
pt(964).size      = '[]';

pt(965).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(965).paramname = 'P6';
pt(965).class     = 'scalar';
pt(965).nrows     = 1;
pt(965).ncols     = 1;
pt(965).subsource = 'SS_DOUBLE';
pt(965).ndims     = '2';
pt(965).size      = '[]';

pt(966).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 12';
pt(966).paramname = 'P7';
pt(966).class     = 'scalar';
pt(966).nrows     = 1;
pt(966).ncols     = 1;
pt(966).subsource = 'SS_DOUBLE';
pt(966).ndims     = '2';
pt(966).size      = '[]';

pt(967).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(967).paramname = 'P1';
pt(967).class     = 'vector';
pt(967).nrows     = 1;
pt(967).ncols     = 61;
pt(967).subsource = 'SS_DOUBLE';
pt(967).ndims     = '2';
pt(967).size      = '[]';

pt(968).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(968).paramname = 'P2';
pt(968).class     = 'scalar';
pt(968).nrows     = 1;
pt(968).ncols     = 1;
pt(968).subsource = 'SS_DOUBLE';
pt(968).ndims     = '2';
pt(968).size      = '[]';

pt(969).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(969).paramname = 'P3';
pt(969).class     = 'scalar';
pt(969).nrows     = 1;
pt(969).ncols     = 1;
pt(969).subsource = 'SS_DOUBLE';
pt(969).ndims     = '2';
pt(969).size      = '[]';

pt(970).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(970).paramname = 'P4';
pt(970).class     = 'scalar';
pt(970).nrows     = 1;
pt(970).ncols     = 1;
pt(970).subsource = 'SS_DOUBLE';
pt(970).ndims     = '2';
pt(970).size      = '[]';

pt(971).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(971).paramname = 'P5';
pt(971).class     = 'scalar';
pt(971).nrows     = 1;
pt(971).ncols     = 1;
pt(971).subsource = 'SS_DOUBLE';
pt(971).ndims     = '2';
pt(971).size      = '[]';

pt(972).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(972).paramname = 'P6';
pt(972).class     = 'scalar';
pt(972).nrows     = 1;
pt(972).ncols     = 1;
pt(972).subsource = 'SS_DOUBLE';
pt(972).ndims     = '2';
pt(972).size      = '[]';

pt(973).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 13';
pt(973).paramname = 'P7';
pt(973).class     = 'scalar';
pt(973).nrows     = 1;
pt(973).ncols     = 1;
pt(973).subsource = 'SS_DOUBLE';
pt(973).ndims     = '2';
pt(973).size      = '[]';

pt(974).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(974).paramname = 'P1';
pt(974).class     = 'vector';
pt(974).nrows     = 1;
pt(974).ncols     = 61;
pt(974).subsource = 'SS_DOUBLE';
pt(974).ndims     = '2';
pt(974).size      = '[]';

pt(975).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(975).paramname = 'P2';
pt(975).class     = 'scalar';
pt(975).nrows     = 1;
pt(975).ncols     = 1;
pt(975).subsource = 'SS_DOUBLE';
pt(975).ndims     = '2';
pt(975).size      = '[]';

pt(976).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(976).paramname = 'P3';
pt(976).class     = 'scalar';
pt(976).nrows     = 1;
pt(976).ncols     = 1;
pt(976).subsource = 'SS_DOUBLE';
pt(976).ndims     = '2';
pt(976).size      = '[]';

pt(977).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(977).paramname = 'P4';
pt(977).class     = 'scalar';
pt(977).nrows     = 1;
pt(977).ncols     = 1;
pt(977).subsource = 'SS_DOUBLE';
pt(977).ndims     = '2';
pt(977).size      = '[]';

pt(978).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(978).paramname = 'P5';
pt(978).class     = 'scalar';
pt(978).nrows     = 1;
pt(978).ncols     = 1;
pt(978).subsource = 'SS_DOUBLE';
pt(978).ndims     = '2';
pt(978).size      = '[]';

pt(979).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(979).paramname = 'P6';
pt(979).class     = 'scalar';
pt(979).nrows     = 1;
pt(979).ncols     = 1;
pt(979).subsource = 'SS_DOUBLE';
pt(979).ndims     = '2';
pt(979).size      = '[]';

pt(980).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 14';
pt(980).paramname = 'P7';
pt(980).class     = 'scalar';
pt(980).nrows     = 1;
pt(980).ncols     = 1;
pt(980).subsource = 'SS_DOUBLE';
pt(980).ndims     = '2';
pt(980).size      = '[]';

pt(981).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(981).paramname = 'P1';
pt(981).class     = 'vector';
pt(981).nrows     = 1;
pt(981).ncols     = 61;
pt(981).subsource = 'SS_DOUBLE';
pt(981).ndims     = '2';
pt(981).size      = '[]';

pt(982).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(982).paramname = 'P2';
pt(982).class     = 'scalar';
pt(982).nrows     = 1;
pt(982).ncols     = 1;
pt(982).subsource = 'SS_DOUBLE';
pt(982).ndims     = '2';
pt(982).size      = '[]';

pt(983).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(983).paramname = 'P3';
pt(983).class     = 'scalar';
pt(983).nrows     = 1;
pt(983).ncols     = 1;
pt(983).subsource = 'SS_DOUBLE';
pt(983).ndims     = '2';
pt(983).size      = '[]';

pt(984).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(984).paramname = 'P4';
pt(984).class     = 'scalar';
pt(984).nrows     = 1;
pt(984).ncols     = 1;
pt(984).subsource = 'SS_DOUBLE';
pt(984).ndims     = '2';
pt(984).size      = '[]';

pt(985).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(985).paramname = 'P5';
pt(985).class     = 'scalar';
pt(985).nrows     = 1;
pt(985).ncols     = 1;
pt(985).subsource = 'SS_DOUBLE';
pt(985).ndims     = '2';
pt(985).size      = '[]';

pt(986).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(986).paramname = 'P6';
pt(986).class     = 'scalar';
pt(986).nrows     = 1;
pt(986).ncols     = 1;
pt(986).subsource = 'SS_DOUBLE';
pt(986).ndims     = '2';
pt(986).size      = '[]';

pt(987).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 15';
pt(987).paramname = 'P7';
pt(987).class     = 'scalar';
pt(987).nrows     = 1;
pt(987).ncols     = 1;
pt(987).subsource = 'SS_DOUBLE';
pt(987).ndims     = '2';
pt(987).size      = '[]';

pt(988).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(988).paramname = 'P1';
pt(988).class     = 'vector';
pt(988).nrows     = 1;
pt(988).ncols     = 61;
pt(988).subsource = 'SS_DOUBLE';
pt(988).ndims     = '2';
pt(988).size      = '[]';

pt(989).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(989).paramname = 'P2';
pt(989).class     = 'scalar';
pt(989).nrows     = 1;
pt(989).ncols     = 1;
pt(989).subsource = 'SS_DOUBLE';
pt(989).ndims     = '2';
pt(989).size      = '[]';

pt(990).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(990).paramname = 'P3';
pt(990).class     = 'scalar';
pt(990).nrows     = 1;
pt(990).ncols     = 1;
pt(990).subsource = 'SS_DOUBLE';
pt(990).ndims     = '2';
pt(990).size      = '[]';

pt(991).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(991).paramname = 'P4';
pt(991).class     = 'scalar';
pt(991).nrows     = 1;
pt(991).ncols     = 1;
pt(991).subsource = 'SS_DOUBLE';
pt(991).ndims     = '2';
pt(991).size      = '[]';

pt(992).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(992).paramname = 'P5';
pt(992).class     = 'scalar';
pt(992).nrows     = 1;
pt(992).ncols     = 1;
pt(992).subsource = 'SS_DOUBLE';
pt(992).ndims     = '2';
pt(992).size      = '[]';

pt(993).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(993).paramname = 'P6';
pt(993).class     = 'scalar';
pt(993).nrows     = 1;
pt(993).ncols     = 1;
pt(993).subsource = 'SS_DOUBLE';
pt(993).ndims     = '2';
pt(993).size      = '[]';

pt(994).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 16';
pt(994).paramname = 'P7';
pt(994).class     = 'scalar';
pt(994).nrows     = 1;
pt(994).ncols     = 1;
pt(994).subsource = 'SS_DOUBLE';
pt(994).ndims     = '2';
pt(994).size      = '[]';

pt(995).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(995).paramname = 'P1';
pt(995).class     = 'vector';
pt(995).nrows     = 1;
pt(995).ncols     = 61;
pt(995).subsource = 'SS_DOUBLE';
pt(995).ndims     = '2';
pt(995).size      = '[]';

pt(996).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(996).paramname = 'P2';
pt(996).class     = 'scalar';
pt(996).nrows     = 1;
pt(996).ncols     = 1;
pt(996).subsource = 'SS_DOUBLE';
pt(996).ndims     = '2';
pt(996).size      = '[]';

pt(997).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(997).paramname = 'P3';
pt(997).class     = 'scalar';
pt(997).nrows     = 1;
pt(997).ncols     = 1;
pt(997).subsource = 'SS_DOUBLE';
pt(997).ndims     = '2';
pt(997).size      = '[]';

pt(998).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(998).paramname = 'P4';
pt(998).class     = 'scalar';
pt(998).nrows     = 1;
pt(998).ncols     = 1;
pt(998).subsource = 'SS_DOUBLE';
pt(998).ndims     = '2';
pt(998).size      = '[]';

pt(999).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(999).paramname = 'P5';
pt(999).class     = 'scalar';
pt(999).nrows     = 1;
pt(999).ncols     = 1;
pt(999).subsource = 'SS_DOUBLE';
pt(999).ndims     = '2';
pt(999).size      = '[]';

pt(1000).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(1000).paramname = 'P6';
pt(1000).class     = 'scalar';
pt(1000).nrows     = 1;
pt(1000).ncols     = 1;
pt(1000).subsource = 'SS_DOUBLE';
pt(1000).ndims     = '2';
pt(1000).size      = '[]';

pt(1001).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 17';
pt(1001).paramname = 'P7';
pt(1001).class     = 'scalar';
pt(1001).nrows     = 1;
pt(1001).ncols     = 1;
pt(1001).subsource = 'SS_DOUBLE';
pt(1001).ndims     = '2';
pt(1001).size      = '[]';

pt(1002).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1002).paramname = 'P1';
pt(1002).class     = 'vector';
pt(1002).nrows     = 1;
pt(1002).ncols     = 63;
pt(1002).subsource = 'SS_DOUBLE';
pt(1002).ndims     = '2';
pt(1002).size      = '[]';

pt(1003).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1003).paramname = 'P2';
pt(1003).class     = 'scalar';
pt(1003).nrows     = 1;
pt(1003).ncols     = 1;
pt(1003).subsource = 'SS_DOUBLE';
pt(1003).ndims     = '2';
pt(1003).size      = '[]';

pt(1004).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1004).paramname = 'P3';
pt(1004).class     = 'scalar';
pt(1004).nrows     = 1;
pt(1004).ncols     = 1;
pt(1004).subsource = 'SS_DOUBLE';
pt(1004).ndims     = '2';
pt(1004).size      = '[]';

pt(1005).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1005).paramname = 'P4';
pt(1005).class     = 'scalar';
pt(1005).nrows     = 1;
pt(1005).ncols     = 1;
pt(1005).subsource = 'SS_DOUBLE';
pt(1005).ndims     = '2';
pt(1005).size      = '[]';

pt(1006).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1006).paramname = 'P5';
pt(1006).class     = 'scalar';
pt(1006).nrows     = 1;
pt(1006).ncols     = 1;
pt(1006).subsource = 'SS_DOUBLE';
pt(1006).ndims     = '2';
pt(1006).size      = '[]';

pt(1007).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1007).paramname = 'P6';
pt(1007).class     = 'scalar';
pt(1007).nrows     = 1;
pt(1007).ncols     = 1;
pt(1007).subsource = 'SS_DOUBLE';
pt(1007).ndims     = '2';
pt(1007).size      = '[]';

pt(1008).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 18';
pt(1008).paramname = 'P7';
pt(1008).class     = 'scalar';
pt(1008).nrows     = 1;
pt(1008).ncols     = 1;
pt(1008).subsource = 'SS_DOUBLE';
pt(1008).ndims     = '2';
pt(1008).size      = '[]';

pt(1009).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1009).paramname = 'P1';
pt(1009).class     = 'vector';
pt(1009).nrows     = 1;
pt(1009).ncols     = 67;
pt(1009).subsource = 'SS_DOUBLE';
pt(1009).ndims     = '2';
pt(1009).size      = '[]';

pt(1010).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1010).paramname = 'P2';
pt(1010).class     = 'scalar';
pt(1010).nrows     = 1;
pt(1010).ncols     = 1;
pt(1010).subsource = 'SS_DOUBLE';
pt(1010).ndims     = '2';
pt(1010).size      = '[]';

pt(1011).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1011).paramname = 'P3';
pt(1011).class     = 'scalar';
pt(1011).nrows     = 1;
pt(1011).ncols     = 1;
pt(1011).subsource = 'SS_DOUBLE';
pt(1011).ndims     = '2';
pt(1011).size      = '[]';

pt(1012).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1012).paramname = 'P4';
pt(1012).class     = 'scalar';
pt(1012).nrows     = 1;
pt(1012).ncols     = 1;
pt(1012).subsource = 'SS_DOUBLE';
pt(1012).ndims     = '2';
pt(1012).size      = '[]';

pt(1013).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1013).paramname = 'P5';
pt(1013).class     = 'scalar';
pt(1013).nrows     = 1;
pt(1013).ncols     = 1;
pt(1013).subsource = 'SS_DOUBLE';
pt(1013).ndims     = '2';
pt(1013).size      = '[]';

pt(1014).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1014).paramname = 'P6';
pt(1014).class     = 'scalar';
pt(1014).nrows     = 1;
pt(1014).ncols     = 1;
pt(1014).subsource = 'SS_DOUBLE';
pt(1014).ndims     = '2';
pt(1014).size      = '[]';

pt(1015).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 19';
pt(1015).paramname = 'P7';
pt(1015).class     = 'scalar';
pt(1015).nrows     = 1;
pt(1015).ncols     = 1;
pt(1015).subsource = 'SS_DOUBLE';
pt(1015).ndims     = '2';
pt(1015).size      = '[]';

pt(1016).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1016).paramname = 'P1';
pt(1016).class     = 'vector';
pt(1016).nrows     = 1;
pt(1016).ncols     = 60;
pt(1016).subsource = 'SS_DOUBLE';
pt(1016).ndims     = '2';
pt(1016).size      = '[]';

pt(1017).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1017).paramname = 'P2';
pt(1017).class     = 'scalar';
pt(1017).nrows     = 1;
pt(1017).ncols     = 1;
pt(1017).subsource = 'SS_DOUBLE';
pt(1017).ndims     = '2';
pt(1017).size      = '[]';

pt(1018).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1018).paramname = 'P3';
pt(1018).class     = 'scalar';
pt(1018).nrows     = 1;
pt(1018).ncols     = 1;
pt(1018).subsource = 'SS_DOUBLE';
pt(1018).ndims     = '2';
pt(1018).size      = '[]';

pt(1019).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1019).paramname = 'P4';
pt(1019).class     = 'scalar';
pt(1019).nrows     = 1;
pt(1019).ncols     = 1;
pt(1019).subsource = 'SS_DOUBLE';
pt(1019).ndims     = '2';
pt(1019).size      = '[]';

pt(1020).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1020).paramname = 'P5';
pt(1020).class     = 'scalar';
pt(1020).nrows     = 1;
pt(1020).ncols     = 1;
pt(1020).subsource = 'SS_DOUBLE';
pt(1020).ndims     = '2';
pt(1020).size      = '[]';

pt(1021).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1021).paramname = 'P6';
pt(1021).class     = 'scalar';
pt(1021).nrows     = 1;
pt(1021).ncols     = 1;
pt(1021).subsource = 'SS_DOUBLE';
pt(1021).ndims     = '2';
pt(1021).size      = '[]';

pt(1022).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 2';
pt(1022).paramname = 'P7';
pt(1022).class     = 'scalar';
pt(1022).nrows     = 1;
pt(1022).ncols     = 1;
pt(1022).subsource = 'SS_DOUBLE';
pt(1022).ndims     = '2';
pt(1022).size      = '[]';

pt(1023).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1023).paramname = 'P1';
pt(1023).class     = 'vector';
pt(1023).nrows     = 1;
pt(1023).ncols     = 58;
pt(1023).subsource = 'SS_DOUBLE';
pt(1023).ndims     = '2';
pt(1023).size      = '[]';

pt(1024).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1024).paramname = 'P2';
pt(1024).class     = 'scalar';
pt(1024).nrows     = 1;
pt(1024).ncols     = 1;
pt(1024).subsource = 'SS_DOUBLE';
pt(1024).ndims     = '2';
pt(1024).size      = '[]';

pt(1025).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1025).paramname = 'P3';
pt(1025).class     = 'scalar';
pt(1025).nrows     = 1;
pt(1025).ncols     = 1;
pt(1025).subsource = 'SS_DOUBLE';
pt(1025).ndims     = '2';
pt(1025).size      = '[]';

pt(1026).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1026).paramname = 'P4';
pt(1026).class     = 'scalar';
pt(1026).nrows     = 1;
pt(1026).ncols     = 1;
pt(1026).subsource = 'SS_DOUBLE';
pt(1026).ndims     = '2';
pt(1026).size      = '[]';

pt(1027).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1027).paramname = 'P5';
pt(1027).class     = 'scalar';
pt(1027).nrows     = 1;
pt(1027).ncols     = 1;
pt(1027).subsource = 'SS_DOUBLE';
pt(1027).ndims     = '2';
pt(1027).size      = '[]';

pt(1028).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1028).paramname = 'P6';
pt(1028).class     = 'scalar';
pt(1028).nrows     = 1;
pt(1028).ncols     = 1;
pt(1028).subsource = 'SS_DOUBLE';
pt(1028).ndims     = '2';
pt(1028).size      = '[]';

pt(1029).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 20';
pt(1029).paramname = 'P7';
pt(1029).class     = 'scalar';
pt(1029).nrows     = 1;
pt(1029).ncols     = 1;
pt(1029).subsource = 'SS_DOUBLE';
pt(1029).ndims     = '2';
pt(1029).size      = '[]';

pt(1030).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1030).paramname = 'P1';
pt(1030).class     = 'vector';
pt(1030).nrows     = 1;
pt(1030).ncols     = 68;
pt(1030).subsource = 'SS_DOUBLE';
pt(1030).ndims     = '2';
pt(1030).size      = '[]';

pt(1031).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1031).paramname = 'P2';
pt(1031).class     = 'scalar';
pt(1031).nrows     = 1;
pt(1031).ncols     = 1;
pt(1031).subsource = 'SS_DOUBLE';
pt(1031).ndims     = '2';
pt(1031).size      = '[]';

pt(1032).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1032).paramname = 'P3';
pt(1032).class     = 'scalar';
pt(1032).nrows     = 1;
pt(1032).ncols     = 1;
pt(1032).subsource = 'SS_DOUBLE';
pt(1032).ndims     = '2';
pt(1032).size      = '[]';

pt(1033).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1033).paramname = 'P4';
pt(1033).class     = 'scalar';
pt(1033).nrows     = 1;
pt(1033).ncols     = 1;
pt(1033).subsource = 'SS_DOUBLE';
pt(1033).ndims     = '2';
pt(1033).size      = '[]';

pt(1034).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1034).paramname = 'P5';
pt(1034).class     = 'scalar';
pt(1034).nrows     = 1;
pt(1034).ncols     = 1;
pt(1034).subsource = 'SS_DOUBLE';
pt(1034).ndims     = '2';
pt(1034).size      = '[]';

pt(1035).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1035).paramname = 'P6';
pt(1035).class     = 'scalar';
pt(1035).nrows     = 1;
pt(1035).ncols     = 1;
pt(1035).subsource = 'SS_DOUBLE';
pt(1035).ndims     = '2';
pt(1035).size      = '[]';

pt(1036).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 21';
pt(1036).paramname = 'P7';
pt(1036).class     = 'scalar';
pt(1036).nrows     = 1;
pt(1036).ncols     = 1;
pt(1036).subsource = 'SS_DOUBLE';
pt(1036).ndims     = '2';
pt(1036).size      = '[]';

pt(1037).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1037).paramname = 'P1';
pt(1037).class     = 'vector';
pt(1037).nrows     = 1;
pt(1037).ncols     = 61;
pt(1037).subsource = 'SS_DOUBLE';
pt(1037).ndims     = '2';
pt(1037).size      = '[]';

pt(1038).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1038).paramname = 'P2';
pt(1038).class     = 'scalar';
pt(1038).nrows     = 1;
pt(1038).ncols     = 1;
pt(1038).subsource = 'SS_DOUBLE';
pt(1038).ndims     = '2';
pt(1038).size      = '[]';

pt(1039).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1039).paramname = 'P3';
pt(1039).class     = 'scalar';
pt(1039).nrows     = 1;
pt(1039).ncols     = 1;
pt(1039).subsource = 'SS_DOUBLE';
pt(1039).ndims     = '2';
pt(1039).size      = '[]';

pt(1040).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1040).paramname = 'P4';
pt(1040).class     = 'scalar';
pt(1040).nrows     = 1;
pt(1040).ncols     = 1;
pt(1040).subsource = 'SS_DOUBLE';
pt(1040).ndims     = '2';
pt(1040).size      = '[]';

pt(1041).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1041).paramname = 'P5';
pt(1041).class     = 'scalar';
pt(1041).nrows     = 1;
pt(1041).ncols     = 1;
pt(1041).subsource = 'SS_DOUBLE';
pt(1041).ndims     = '2';
pt(1041).size      = '[]';

pt(1042).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1042).paramname = 'P6';
pt(1042).class     = 'scalar';
pt(1042).nrows     = 1;
pt(1042).ncols     = 1;
pt(1042).subsource = 'SS_DOUBLE';
pt(1042).ndims     = '2';
pt(1042).size      = '[]';

pt(1043).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 22';
pt(1043).paramname = 'P7';
pt(1043).class     = 'scalar';
pt(1043).nrows     = 1;
pt(1043).ncols     = 1;
pt(1043).subsource = 'SS_DOUBLE';
pt(1043).ndims     = '2';
pt(1043).size      = '[]';

pt(1044).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1044).paramname = 'P1';
pt(1044).class     = 'vector';
pt(1044).nrows     = 1;
pt(1044).ncols     = 66;
pt(1044).subsource = 'SS_DOUBLE';
pt(1044).ndims     = '2';
pt(1044).size      = '[]';

pt(1045).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1045).paramname = 'P2';
pt(1045).class     = 'scalar';
pt(1045).nrows     = 1;
pt(1045).ncols     = 1;
pt(1045).subsource = 'SS_DOUBLE';
pt(1045).ndims     = '2';
pt(1045).size      = '[]';

pt(1046).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1046).paramname = 'P3';
pt(1046).class     = 'scalar';
pt(1046).nrows     = 1;
pt(1046).ncols     = 1;
pt(1046).subsource = 'SS_DOUBLE';
pt(1046).ndims     = '2';
pt(1046).size      = '[]';

pt(1047).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1047).paramname = 'P4';
pt(1047).class     = 'scalar';
pt(1047).nrows     = 1;
pt(1047).ncols     = 1;
pt(1047).subsource = 'SS_DOUBLE';
pt(1047).ndims     = '2';
pt(1047).size      = '[]';

pt(1048).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1048).paramname = 'P5';
pt(1048).class     = 'scalar';
pt(1048).nrows     = 1;
pt(1048).ncols     = 1;
pt(1048).subsource = 'SS_DOUBLE';
pt(1048).ndims     = '2';
pt(1048).size      = '[]';

pt(1049).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1049).paramname = 'P6';
pt(1049).class     = 'scalar';
pt(1049).nrows     = 1;
pt(1049).ncols     = 1;
pt(1049).subsource = 'SS_DOUBLE';
pt(1049).ndims     = '2';
pt(1049).size      = '[]';

pt(1050).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 23';
pt(1050).paramname = 'P7';
pt(1050).class     = 'scalar';
pt(1050).nrows     = 1;
pt(1050).ncols     = 1;
pt(1050).subsource = 'SS_DOUBLE';
pt(1050).ndims     = '2';
pt(1050).size      = '[]';

pt(1051).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1051).paramname = 'P1';
pt(1051).class     = 'vector';
pt(1051).nrows     = 1;
pt(1051).ncols     = 60;
pt(1051).subsource = 'SS_DOUBLE';
pt(1051).ndims     = '2';
pt(1051).size      = '[]';

pt(1052).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1052).paramname = 'P2';
pt(1052).class     = 'scalar';
pt(1052).nrows     = 1;
pt(1052).ncols     = 1;
pt(1052).subsource = 'SS_DOUBLE';
pt(1052).ndims     = '2';
pt(1052).size      = '[]';

pt(1053).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1053).paramname = 'P3';
pt(1053).class     = 'scalar';
pt(1053).nrows     = 1;
pt(1053).ncols     = 1;
pt(1053).subsource = 'SS_DOUBLE';
pt(1053).ndims     = '2';
pt(1053).size      = '[]';

pt(1054).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1054).paramname = 'P4';
pt(1054).class     = 'scalar';
pt(1054).nrows     = 1;
pt(1054).ncols     = 1;
pt(1054).subsource = 'SS_DOUBLE';
pt(1054).ndims     = '2';
pt(1054).size      = '[]';

pt(1055).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1055).paramname = 'P5';
pt(1055).class     = 'scalar';
pt(1055).nrows     = 1;
pt(1055).ncols     = 1;
pt(1055).subsource = 'SS_DOUBLE';
pt(1055).ndims     = '2';
pt(1055).size      = '[]';

pt(1056).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1056).paramname = 'P6';
pt(1056).class     = 'scalar';
pt(1056).nrows     = 1;
pt(1056).ncols     = 1;
pt(1056).subsource = 'SS_DOUBLE';
pt(1056).ndims     = '2';
pt(1056).size      = '[]';

pt(1057).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 3';
pt(1057).paramname = 'P7';
pt(1057).class     = 'scalar';
pt(1057).nrows     = 1;
pt(1057).ncols     = 1;
pt(1057).subsource = 'SS_DOUBLE';
pt(1057).ndims     = '2';
pt(1057).size      = '[]';

pt(1058).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1058).paramname = 'P1';
pt(1058).class     = 'vector';
pt(1058).nrows     = 1;
pt(1058).ncols     = 60;
pt(1058).subsource = 'SS_DOUBLE';
pt(1058).ndims     = '2';
pt(1058).size      = '[]';

pt(1059).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1059).paramname = 'P2';
pt(1059).class     = 'scalar';
pt(1059).nrows     = 1;
pt(1059).ncols     = 1;
pt(1059).subsource = 'SS_DOUBLE';
pt(1059).ndims     = '2';
pt(1059).size      = '[]';

pt(1060).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1060).paramname = 'P3';
pt(1060).class     = 'scalar';
pt(1060).nrows     = 1;
pt(1060).ncols     = 1;
pt(1060).subsource = 'SS_DOUBLE';
pt(1060).ndims     = '2';
pt(1060).size      = '[]';

pt(1061).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1061).paramname = 'P4';
pt(1061).class     = 'scalar';
pt(1061).nrows     = 1;
pt(1061).ncols     = 1;
pt(1061).subsource = 'SS_DOUBLE';
pt(1061).ndims     = '2';
pt(1061).size      = '[]';

pt(1062).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1062).paramname = 'P5';
pt(1062).class     = 'scalar';
pt(1062).nrows     = 1;
pt(1062).ncols     = 1;
pt(1062).subsource = 'SS_DOUBLE';
pt(1062).ndims     = '2';
pt(1062).size      = '[]';

pt(1063).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1063).paramname = 'P6';
pt(1063).class     = 'scalar';
pt(1063).nrows     = 1;
pt(1063).ncols     = 1;
pt(1063).subsource = 'SS_DOUBLE';
pt(1063).ndims     = '2';
pt(1063).size      = '[]';

pt(1064).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 4';
pt(1064).paramname = 'P7';
pt(1064).class     = 'scalar';
pt(1064).nrows     = 1;
pt(1064).ncols     = 1;
pt(1064).subsource = 'SS_DOUBLE';
pt(1064).ndims     = '2';
pt(1064).size      = '[]';

pt(1065).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1065).paramname = 'P1';
pt(1065).class     = 'vector';
pt(1065).nrows     = 1;
pt(1065).ncols     = 70;
pt(1065).subsource = 'SS_DOUBLE';
pt(1065).ndims     = '2';
pt(1065).size      = '[]';

pt(1066).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1066).paramname = 'P2';
pt(1066).class     = 'scalar';
pt(1066).nrows     = 1;
pt(1066).ncols     = 1;
pt(1066).subsource = 'SS_DOUBLE';
pt(1066).ndims     = '2';
pt(1066).size      = '[]';

pt(1067).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1067).paramname = 'P3';
pt(1067).class     = 'scalar';
pt(1067).nrows     = 1;
pt(1067).ncols     = 1;
pt(1067).subsource = 'SS_DOUBLE';
pt(1067).ndims     = '2';
pt(1067).size      = '[]';

pt(1068).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1068).paramname = 'P4';
pt(1068).class     = 'scalar';
pt(1068).nrows     = 1;
pt(1068).ncols     = 1;
pt(1068).subsource = 'SS_DOUBLE';
pt(1068).ndims     = '2';
pt(1068).size      = '[]';

pt(1069).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1069).paramname = 'P5';
pt(1069).class     = 'scalar';
pt(1069).nrows     = 1;
pt(1069).ncols     = 1;
pt(1069).subsource = 'SS_DOUBLE';
pt(1069).ndims     = '2';
pt(1069).size      = '[]';

pt(1070).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1070).paramname = 'P6';
pt(1070).class     = 'scalar';
pt(1070).nrows     = 1;
pt(1070).ncols     = 1;
pt(1070).subsource = 'SS_DOUBLE';
pt(1070).ndims     = '2';
pt(1070).size      = '[]';

pt(1071).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 5';
pt(1071).paramname = 'P7';
pt(1071).class     = 'scalar';
pt(1071).nrows     = 1;
pt(1071).ncols     = 1;
pt(1071).subsource = 'SS_DOUBLE';
pt(1071).ndims     = '2';
pt(1071).size      = '[]';

pt(1072).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1072).paramname = 'P1';
pt(1072).class     = 'vector';
pt(1072).nrows     = 1;
pt(1072).ncols     = 76;
pt(1072).subsource = 'SS_DOUBLE';
pt(1072).ndims     = '2';
pt(1072).size      = '[]';

pt(1073).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1073).paramname = 'P2';
pt(1073).class     = 'scalar';
pt(1073).nrows     = 1;
pt(1073).ncols     = 1;
pt(1073).subsource = 'SS_DOUBLE';
pt(1073).ndims     = '2';
pt(1073).size      = '[]';

pt(1074).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1074).paramname = 'P3';
pt(1074).class     = 'scalar';
pt(1074).nrows     = 1;
pt(1074).ncols     = 1;
pt(1074).subsource = 'SS_DOUBLE';
pt(1074).ndims     = '2';
pt(1074).size      = '[]';

pt(1075).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1075).paramname = 'P4';
pt(1075).class     = 'scalar';
pt(1075).nrows     = 1;
pt(1075).ncols     = 1;
pt(1075).subsource = 'SS_DOUBLE';
pt(1075).ndims     = '2';
pt(1075).size      = '[]';

pt(1076).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1076).paramname = 'P5';
pt(1076).class     = 'scalar';
pt(1076).nrows     = 1;
pt(1076).ncols     = 1;
pt(1076).subsource = 'SS_DOUBLE';
pt(1076).ndims     = '2';
pt(1076).size      = '[]';

pt(1077).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1077).paramname = 'P6';
pt(1077).class     = 'scalar';
pt(1077).nrows     = 1;
pt(1077).ncols     = 1;
pt(1077).subsource = 'SS_DOUBLE';
pt(1077).ndims     = '2';
pt(1077).size      = '[]';

pt(1078).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 6';
pt(1078).paramname = 'P7';
pt(1078).class     = 'scalar';
pt(1078).nrows     = 1;
pt(1078).ncols     = 1;
pt(1078).subsource = 'SS_DOUBLE';
pt(1078).ndims     = '2';
pt(1078).size      = '[]';

pt(1079).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1079).paramname = 'P1';
pt(1079).class     = 'vector';
pt(1079).nrows     = 1;
pt(1079).ncols     = 76;
pt(1079).subsource = 'SS_DOUBLE';
pt(1079).ndims     = '2';
pt(1079).size      = '[]';

pt(1080).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1080).paramname = 'P2';
pt(1080).class     = 'scalar';
pt(1080).nrows     = 1;
pt(1080).ncols     = 1;
pt(1080).subsource = 'SS_DOUBLE';
pt(1080).ndims     = '2';
pt(1080).size      = '[]';

pt(1081).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1081).paramname = 'P3';
pt(1081).class     = 'scalar';
pt(1081).nrows     = 1;
pt(1081).ncols     = 1;
pt(1081).subsource = 'SS_DOUBLE';
pt(1081).ndims     = '2';
pt(1081).size      = '[]';

pt(1082).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1082).paramname = 'P4';
pt(1082).class     = 'scalar';
pt(1082).nrows     = 1;
pt(1082).ncols     = 1;
pt(1082).subsource = 'SS_DOUBLE';
pt(1082).ndims     = '2';
pt(1082).size      = '[]';

pt(1083).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1083).paramname = 'P5';
pt(1083).class     = 'scalar';
pt(1083).nrows     = 1;
pt(1083).ncols     = 1;
pt(1083).subsource = 'SS_DOUBLE';
pt(1083).ndims     = '2';
pt(1083).size      = '[]';

pt(1084).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1084).paramname = 'P6';
pt(1084).class     = 'scalar';
pt(1084).nrows     = 1;
pt(1084).ncols     = 1;
pt(1084).subsource = 'SS_DOUBLE';
pt(1084).ndims     = '2';
pt(1084).size      = '[]';

pt(1085).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 7';
pt(1085).paramname = 'P7';
pt(1085).class     = 'scalar';
pt(1085).nrows     = 1;
pt(1085).ncols     = 1;
pt(1085).subsource = 'SS_DOUBLE';
pt(1085).ndims     = '2';
pt(1085).size      = '[]';

pt(1086).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1086).paramname = 'P1';
pt(1086).class     = 'vector';
pt(1086).nrows     = 1;
pt(1086).ncols     = 64;
pt(1086).subsource = 'SS_DOUBLE';
pt(1086).ndims     = '2';
pt(1086).size      = '[]';

pt(1087).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1087).paramname = 'P2';
pt(1087).class     = 'scalar';
pt(1087).nrows     = 1;
pt(1087).ncols     = 1;
pt(1087).subsource = 'SS_DOUBLE';
pt(1087).ndims     = '2';
pt(1087).size      = '[]';

pt(1088).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1088).paramname = 'P3';
pt(1088).class     = 'scalar';
pt(1088).nrows     = 1;
pt(1088).ncols     = 1;
pt(1088).subsource = 'SS_DOUBLE';
pt(1088).ndims     = '2';
pt(1088).size      = '[]';

pt(1089).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1089).paramname = 'P4';
pt(1089).class     = 'scalar';
pt(1089).nrows     = 1;
pt(1089).ncols     = 1;
pt(1089).subsource = 'SS_DOUBLE';
pt(1089).ndims     = '2';
pt(1089).size      = '[]';

pt(1090).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1090).paramname = 'P5';
pt(1090).class     = 'scalar';
pt(1090).nrows     = 1;
pt(1090).ncols     = 1;
pt(1090).subsource = 'SS_DOUBLE';
pt(1090).ndims     = '2';
pt(1090).size      = '[]';

pt(1091).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1091).paramname = 'P6';
pt(1091).class     = 'scalar';
pt(1091).nrows     = 1;
pt(1091).ncols     = 1;
pt(1091).subsource = 'SS_DOUBLE';
pt(1091).ndims     = '2';
pt(1091).size      = '[]';

pt(1092).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 8';
pt(1092).paramname = 'P7';
pt(1092).class     = 'scalar';
pt(1092).nrows     = 1;
pt(1092).ncols     = 1;
pt(1092).subsource = 'SS_DOUBLE';
pt(1092).ndims     = '2';
pt(1092).size      = '[]';

pt(1093).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1093).paramname = 'P1';
pt(1093).class     = 'vector';
pt(1093).nrows     = 1;
pt(1093).ncols     = 74;
pt(1093).subsource = 'SS_DOUBLE';
pt(1093).ndims     = '2';
pt(1093).size      = '[]';

pt(1094).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1094).paramname = 'P2';
pt(1094).class     = 'scalar';
pt(1094).nrows     = 1;
pt(1094).ncols     = 1;
pt(1094).subsource = 'SS_DOUBLE';
pt(1094).ndims     = '2';
pt(1094).size      = '[]';

pt(1095).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1095).paramname = 'P3';
pt(1095).class     = 'scalar';
pt(1095).nrows     = 1;
pt(1095).ncols     = 1;
pt(1095).subsource = 'SS_DOUBLE';
pt(1095).ndims     = '2';
pt(1095).size      = '[]';

pt(1096).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1096).paramname = 'P4';
pt(1096).class     = 'scalar';
pt(1096).nrows     = 1;
pt(1096).ncols     = 1;
pt(1096).subsource = 'SS_DOUBLE';
pt(1096).ndims     = '2';
pt(1096).size      = '[]';

pt(1097).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1097).paramname = 'P5';
pt(1097).class     = 'scalar';
pt(1097).nrows     = 1;
pt(1097).ncols     = 1;
pt(1097).subsource = 'SS_DOUBLE';
pt(1097).ndims     = '2';
pt(1097).size      = '[]';

pt(1098).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1098).paramname = 'P6';
pt(1098).class     = 'scalar';
pt(1098).nrows     = 1;
pt(1098).ncols     = 1;
pt(1098).subsource = 'SS_DOUBLE';
pt(1098).ndims     = '2';
pt(1098).size      = '[]';

pt(1099).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Rx Var 9';
pt(1099).paramname = 'P7';
pt(1099).class     = 'scalar';
pt(1099).nrows     = 1;
pt(1099).ncols     = 1;
pt(1099).subsource = 'SS_DOUBLE';
pt(1099).ndims     = '2';
pt(1099).size      = '[]';

pt(1100).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1100).paramname = 'P1';
pt(1100).class     = 'vector';
pt(1100).nrows     = 1;
pt(1100).ncols     = 61;
pt(1100).subsource = 'SS_DOUBLE';
pt(1100).ndims     = '2';
pt(1100).size      = '[]';

pt(1101).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1101).paramname = 'P2';
pt(1101).class     = 'scalar';
pt(1101).nrows     = 1;
pt(1101).ncols     = 1;
pt(1101).subsource = 'SS_DOUBLE';
pt(1101).ndims     = '2';
pt(1101).size      = '[]';

pt(1102).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1102).paramname = 'P3';
pt(1102).class     = 'scalar';
pt(1102).nrows     = 1;
pt(1102).ncols     = 1;
pt(1102).subsource = 'SS_DOUBLE';
pt(1102).ndims     = '2';
pt(1102).size      = '[]';

pt(1103).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1103).paramname = 'P4';
pt(1103).class     = 'scalar';
pt(1103).nrows     = 1;
pt(1103).ncols     = 1;
pt(1103).subsource = 'SS_DOUBLE';
pt(1103).ndims     = '2';
pt(1103).size      = '[]';

pt(1104).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1104).paramname = 'P5';
pt(1104).class     = 'scalar';
pt(1104).nrows     = 1;
pt(1104).ncols     = 1;
pt(1104).subsource = 'SS_DOUBLE';
pt(1104).ndims     = '2';
pt(1104).size      = '[]';

pt(1105).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1105).paramname = 'P6';
pt(1105).class     = 'scalar';
pt(1105).nrows     = 1;
pt(1105).ncols     = 1;
pt(1105).subsource = 'SS_DOUBLE';
pt(1105).ndims     = '2';
pt(1105).size      = '[]';

pt(1106).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 3';
pt(1106).paramname = 'P7';
pt(1106).class     = 'scalar';
pt(1106).nrows     = 1;
pt(1106).ncols     = 1;
pt(1106).subsource = 'SS_DOUBLE';
pt(1106).ndims     = '2';
pt(1106).size      = '[]';

pt(1107).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1107).paramname = 'P1';
pt(1107).class     = 'vector';
pt(1107).nrows     = 1;
pt(1107).ncols     = 61;
pt(1107).subsource = 'SS_DOUBLE';
pt(1107).ndims     = '2';
pt(1107).size      = '[]';

pt(1108).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1108).paramname = 'P2';
pt(1108).class     = 'scalar';
pt(1108).nrows     = 1;
pt(1108).ncols     = 1;
pt(1108).subsource = 'SS_DOUBLE';
pt(1108).ndims     = '2';
pt(1108).size      = '[]';

pt(1109).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1109).paramname = 'P3';
pt(1109).class     = 'scalar';
pt(1109).nrows     = 1;
pt(1109).ncols     = 1;
pt(1109).subsource = 'SS_DOUBLE';
pt(1109).ndims     = '2';
pt(1109).size      = '[]';

pt(1110).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1110).paramname = 'P4';
pt(1110).class     = 'scalar';
pt(1110).nrows     = 1;
pt(1110).ncols     = 1;
pt(1110).subsource = 'SS_DOUBLE';
pt(1110).ndims     = '2';
pt(1110).size      = '[]';

pt(1111).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1111).paramname = 'P5';
pt(1111).class     = 'scalar';
pt(1111).nrows     = 1;
pt(1111).ncols     = 1;
pt(1111).subsource = 'SS_DOUBLE';
pt(1111).ndims     = '2';
pt(1111).size      = '[]';

pt(1112).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1112).paramname = 'P6';
pt(1112).class     = 'scalar';
pt(1112).nrows     = 1;
pt(1112).ncols     = 1;
pt(1112).subsource = 'SS_DOUBLE';
pt(1112).ndims     = '2';
pt(1112).size      = '[]';

pt(1113).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 4';
pt(1113).paramname = 'P7';
pt(1113).class     = 'scalar';
pt(1113).nrows     = 1;
pt(1113).ncols     = 1;
pt(1113).subsource = 'SS_DOUBLE';
pt(1113).ndims     = '2';
pt(1113).size      = '[]';

pt(1114).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1114).paramname = 'P1';
pt(1114).class     = 'vector';
pt(1114).nrows     = 1;
pt(1114).ncols     = 67;
pt(1114).subsource = 'SS_DOUBLE';
pt(1114).ndims     = '2';
pt(1114).size      = '[]';

pt(1115).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1115).paramname = 'P2';
pt(1115).class     = 'scalar';
pt(1115).nrows     = 1;
pt(1115).ncols     = 1;
pt(1115).subsource = 'SS_DOUBLE';
pt(1115).ndims     = '2';
pt(1115).size      = '[]';

pt(1116).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1116).paramname = 'P3';
pt(1116).class     = 'scalar';
pt(1116).nrows     = 1;
pt(1116).ncols     = 1;
pt(1116).subsource = 'SS_DOUBLE';
pt(1116).ndims     = '2';
pt(1116).size      = '[]';

pt(1117).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1117).paramname = 'P4';
pt(1117).class     = 'scalar';
pt(1117).nrows     = 1;
pt(1117).ncols     = 1;
pt(1117).subsource = 'SS_DOUBLE';
pt(1117).ndims     = '2';
pt(1117).size      = '[]';

pt(1118).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1118).paramname = 'P5';
pt(1118).class     = 'scalar';
pt(1118).nrows     = 1;
pt(1118).ncols     = 1;
pt(1118).subsource = 'SS_DOUBLE';
pt(1118).ndims     = '2';
pt(1118).size      = '[]';

pt(1119).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1119).paramname = 'P6';
pt(1119).class     = 'scalar';
pt(1119).nrows     = 1;
pt(1119).ncols     = 1;
pt(1119).subsource = 'SS_DOUBLE';
pt(1119).ndims     = '2';
pt(1119).size      = '[]';

pt(1120).blockname = 'DAQ/LegMedulla_Front_R/EtherCAT Tx Var 5';
pt(1120).paramname = 'P7';
pt(1120).class     = 'scalar';
pt(1120).nrows     = 1;
pt(1120).ncols     = 1;
pt(1120).subsource = 'SS_DOUBLE';
pt(1120).ndims     = '2';
pt(1120).size      = '[]';

pt(1121).blockname = 'DAQ/OSU_to_CMU/Constant';
pt(1121).paramname = 'Value';
pt(1121).class     = 'scalar';
pt(1121).nrows     = 1;
pt(1121).ncols     = 1;
pt(1121).subsource = 'SS_DOUBLE';
pt(1121).ndims     = '2';
pt(1121).size      = '[]';

pt(1122).blockname = 'DAQ/OSU_to_CMU/Constant1';
pt(1122).paramname = 'Value';
pt(1122).class     = 'scalar';
pt(1122).nrows     = 1;
pt(1122).ncols     = 1;
pt(1122).subsource = 'SS_DOUBLE';
pt(1122).ndims     = '2';
pt(1122).size      = '[]';

pt(1123).blockname = 'DAQ/OSU_to_CMU/Constant2';
pt(1123).paramname = 'Value';
pt(1123).class     = 'scalar';
pt(1123).nrows     = 1;
pt(1123).ncols     = 1;
pt(1123).subsource = 'SS_DOUBLE';
pt(1123).ndims     = '2';
pt(1123).size      = '[]';

pt(1124).blockname = 'DAQ/OSU_to_CMU/signal';
pt(1124).paramname = 'Gain';
pt(1124).class     = 'scalar';
pt(1124).nrows     = 1;
pt(1124).ncols     = 1;
pt(1124).subsource = 'SS_DOUBLE';
pt(1124).ndims     = '2';
pt(1124).size      = '[]';

pt(1125).blockname = 'DAQ/calibrate_and_convert_to_rad/Constant';
pt(1125).paramname = 'Value';
pt(1125).class     = 'scalar';
pt(1125).nrows     = 1;
pt(1125).ncols     = 1;
pt(1125).subsource = 'SS_DOUBLE';
pt(1125).ndims     = '2';
pt(1125).size      = '[]';

pt(1126).blockname = 'DAQ/calibrate_and_convert_to_rad/Constant1';
pt(1126).paramname = 'Value';
pt(1126).class     = 'scalar';
pt(1126).nrows     = 1;
pt(1126).ncols     = 1;
pt(1126).subsource = 'SS_DOUBLE';
pt(1126).ndims     = '2';
pt(1126).size      = '[]';

pt(1127).blockname = 'DAQ/calibrate_and_convert_to_rad/Constant2';
pt(1127).paramname = 'Value';
pt(1127).class     = 'scalar';
pt(1127).nrows     = 1;
pt(1127).ncols     = 1;
pt(1127).subsource = 'SS_DOUBLE';
pt(1127).ndims     = '2';
pt(1127).size      = '[]';

pt(1128).blockname = 'DAQ/low_pass_derivative/Gain1';
pt(1128).paramname = 'Gain';
pt(1128).class     = 'scalar';
pt(1128).nrows     = 1;
pt(1128).ncols     = 1;
pt(1128).subsource = 'SS_DOUBLE';
pt(1128).ndims     = '2';
pt(1128).size      = '[]';

pt(1129).blockname = 'DAQ/low_pass_derivative/single_pole_filter';
pt(1129).paramname = 'Numerator';
pt(1129).class     = 'vector';
pt(1129).nrows     = 1;
pt(1129).ncols     = 2;
pt(1129).subsource = 'SS_DOUBLE';
pt(1129).ndims     = '2';
pt(1129).size      = '[]';

pt(1130).blockname = 'DAQ/low_pass_derivative/single_pole_filter';
pt(1130).paramname = 'Denominator';
pt(1130).class     = 'vector';
pt(1130).nrows     = 1;
pt(1130).ncols     = 2;
pt(1130).subsource = 'SS_DOUBLE';
pt(1130).ndims     = '2';
pt(1130).size      = '[]';

pt(1131).blockname = 'DAQ/low_pass_derivative/single_pole_filter';
pt(1131).paramname = 'InitialStates';
pt(1131).class     = 'scalar';
pt(1131).nrows     = 1;
pt(1131).ncols     = 1;
pt(1131).subsource = 'SS_DOUBLE';
pt(1131).ndims     = '2';
pt(1131).size      = '[]';

pt(1132).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant';
pt(1132).paramname = 'Value';
pt(1132).class     = 'scalar';
pt(1132).nrows     = 1;
pt(1132).ncols     = 1;
pt(1132).subsource = 'SS_DOUBLE';
pt(1132).ndims     = '2';
pt(1132).size      = '[]';

pt(1133).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant1';
pt(1133).paramname = 'Value';
pt(1133).class     = 'scalar';
pt(1133).nrows     = 1;
pt(1133).ncols     = 1;
pt(1133).subsource = 'SS_DOUBLE';
pt(1133).ndims     = '2';
pt(1133).size      = '[]';

pt(1134).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant2';
pt(1134).paramname = 'Value';
pt(1134).class     = 'scalar';
pt(1134).nrows     = 1;
pt(1134).ncols     = 1;
pt(1134).subsource = 'SS_DOUBLE';
pt(1134).ndims     = '2';
pt(1134).size      = '[]';

pt(1135).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant3';
pt(1135).paramname = 'Value';
pt(1135).class     = 'scalar';
pt(1135).nrows     = 1;
pt(1135).ncols     = 1;
pt(1135).subsource = 'SS_DOUBLE';
pt(1135).ndims     = '2';
pt(1135).size      = '[]';

pt(1136).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant4';
pt(1136).paramname = 'Value';
pt(1136).class     = 'scalar';
pt(1136).nrows     = 1;
pt(1136).ncols     = 1;
pt(1136).subsource = 'SS_DOUBLE';
pt(1136).ndims     = '2';
pt(1136).size      = '[]';

pt(1137).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant5';
pt(1137).paramname = 'Value';
pt(1137).class     = 'scalar';
pt(1137).nrows     = 1;
pt(1137).ncols     = 1;
pt(1137).subsource = 'SS_DOUBLE';
pt(1137).ndims     = '2';
pt(1137).size      = '[]';

pt(1138).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant6';
pt(1138).paramname = 'Value';
pt(1138).class     = 'scalar';
pt(1138).nrows     = 1;
pt(1138).ncols     = 1;
pt(1138).subsource = 'SS_DOUBLE';
pt(1138).ndims     = '2';
pt(1138).size      = '[]';

pt(1139).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant7';
pt(1139).paramname = 'Value';
pt(1139).class     = 'scalar';
pt(1139).nrows     = 1;
pt(1139).ncols     = 1;
pt(1139).subsource = 'SS_DOUBLE';
pt(1139).ndims     = '2';
pt(1139).size      = '[]';

pt(1140).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant8';
pt(1140).paramname = 'Value';
pt(1140).class     = 'scalar';
pt(1140).nrows     = 1;
pt(1140).ncols     = 1;
pt(1140).subsource = 'SS_DOUBLE';
pt(1140).ndims     = '2';
pt(1140).size      = '[]';

pt(1141).blockname = 'DAQ/mtr_current_cmd_to_pwm/Constant9';
pt(1141).paramname = 'Value';
pt(1141).class     = 'scalar';
pt(1141).nrows     = 1;
pt(1141).ncols     = 1;
pt(1141).subsource = 'SS_DOUBLE';
pt(1141).ndims     = '2';
pt(1141).size      = '[]';

pt(1142).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Constant1';
pt(1142).paramname = 'Value';
pt(1142).class     = 'scalar';
pt(1142).nrows     = 1;
pt(1142).ncols     = 1;
pt(1142).subsource = 'SS_DOUBLE';
pt(1142).ndims     = '2';
pt(1142).size      = '[]';

pt(1143).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/qLatSignal';
pt(1143).paramname = 'Gain';
pt(1143).class     = 'scalar';
pt(1143).nrows     = 1;
pt(1143).ncols     = 1;
pt(1143).subsource = 'SS_DOUBLE';
pt(1143).ndims     = '2';
pt(1143).size      = '[]';

pt(1144).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Left Theta Desired';
pt(1144).paramname = 'Amplitude';
pt(1144).class     = 'scalar';
pt(1144).nrows     = 1;
pt(1144).ncols     = 1;
pt(1144).subsource = 'SS_DOUBLE';
pt(1144).ndims     = '2';
pt(1144).size      = '[]';

pt(1145).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Left Theta Desired';
pt(1145).paramname = 'Bias';
pt(1145).class     = 'scalar';
pt(1145).nrows     = 1;
pt(1145).ncols     = 1;
pt(1145).subsource = 'SS_DOUBLE';
pt(1145).ndims     = '2';
pt(1145).size      = '[]';

pt(1146).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Left Theta Desired';
pt(1146).paramname = 'Frequency';
pt(1146).class     = 'scalar';
pt(1146).nrows     = 1;
pt(1146).ncols     = 1;
pt(1146).subsource = 'SS_DOUBLE';
pt(1146).ndims     = '2';
pt(1146).size      = '[]';

pt(1147).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Left Theta Desired';
pt(1147).paramname = 'Phase';
pt(1147).class     = 'scalar';
pt(1147).nrows     = 1;
pt(1147).ncols     = 1;
pt(1147).subsource = 'SS_DOUBLE';
pt(1147).ndims     = '2';
pt(1147).size      = '[]';

pt(1148).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/dTheta Desired';
pt(1148).paramname = 'Amplitude';
pt(1148).class     = 'scalar';
pt(1148).nrows     = 1;
pt(1148).ncols     = 1;
pt(1148).subsource = 'SS_DOUBLE';
pt(1148).ndims     = '2';
pt(1148).size      = '[]';

pt(1149).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/dTheta Desired';
pt(1149).paramname = 'Bias';
pt(1149).class     = 'scalar';
pt(1149).nrows     = 1;
pt(1149).ncols     = 1;
pt(1149).subsource = 'SS_DOUBLE';
pt(1149).ndims     = '2';
pt(1149).size      = '[]';

pt(1150).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/dTheta Desired';
pt(1150).paramname = 'Frequency';
pt(1150).class     = 'scalar';
pt(1150).nrows     = 1;
pt(1150).ncols     = 1;
pt(1150).subsource = 'SS_DOUBLE';
pt(1150).ndims     = '2';
pt(1150).size      = '[]';

pt(1151).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/dTheta Desired';
pt(1151).paramname = 'Phase';
pt(1151).class     = 'scalar';
pt(1151).nrows     = 1;
pt(1151).ncols     = 1;
pt(1151).subsource = 'SS_DOUBLE';
pt(1151).ndims     = '2';
pt(1151).size      = '[]';

pt(1152).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Manual Switch';
pt(1152).paramname = 'CurrentSetting';
pt(1152).class     = 'scalar';
pt(1152).nrows     = 1;
pt(1152).ncols     = 1;
pt(1152).subsource = 'SS_UINT8';
pt(1152).ndims     = '2';
pt(1152).size      = '[]';

pt(1153).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/constant1';
pt(1153).paramname = 'Value';
pt(1153).class     = 'scalar';
pt(1153).nrows     = 1;
pt(1153).ncols     = 1;
pt(1153).subsource = 'SS_DOUBLE';
pt(1153).ndims     = '2';
pt(1153).size      = '[]';

pt(1154).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Gain';
pt(1154).paramname = 'Gain';
pt(1154).class     = 'scalar';
pt(1154).nrows     = 1;
pt(1154).ncols     = 1;
pt(1154).subsource = 'SS_DOUBLE';
pt(1154).ndims     = '2';
pt(1154).size      = '[]';

pt(1155).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Gain1';
pt(1155).paramname = 'Gain';
pt(1155).class     = 'scalar';
pt(1155).nrows     = 1;
pt(1155).ncols     = 1;
pt(1155).subsource = 'SS_DOUBLE';
pt(1155).ndims     = '2';
pt(1155).size      = '[]';

pt(1156).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/HipL';
pt(1156).paramname = 'Gain';
pt(1156).class     = 'scalar';
pt(1156).nrows     = 1;
pt(1156).ncols     = 1;
pt(1156).subsource = 'SS_DOUBLE';
pt(1156).ndims     = '2';
pt(1156).size      = '[]';

pt(1157).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired';
pt(1157).paramname = 'Amplitude';
pt(1157).class     = 'scalar';
pt(1157).nrows     = 1;
pt(1157).ncols     = 1;
pt(1157).subsource = 'SS_DOUBLE';
pt(1157).ndims     = '2';
pt(1157).size      = '[]';

pt(1158).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired';
pt(1158).paramname = 'Bias';
pt(1158).class     = 'scalar';
pt(1158).nrows     = 1;
pt(1158).ncols     = 1;
pt(1158).subsource = 'SS_DOUBLE';
pt(1158).ndims     = '2';
pt(1158).size      = '[]';

pt(1159).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired';
pt(1159).paramname = 'Frequency';
pt(1159).class     = 'scalar';
pt(1159).nrows     = 1;
pt(1159).ncols     = 1;
pt(1159).subsource = 'SS_DOUBLE';
pt(1159).ndims     = '2';
pt(1159).size      = '[]';

pt(1160).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Desired';
pt(1160).paramname = 'Phase';
pt(1160).class     = 'scalar';
pt(1160).nrows     = 1;
pt(1160).ncols     = 1;
pt(1160).subsource = 'SS_DOUBLE';
pt(1160).ndims     = '2';
pt(1160).size      = '[]';

pt(1161).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Dot Desired';
pt(1161).paramname = 'Amplitude';
pt(1161).class     = 'scalar';
pt(1161).nrows     = 1;
pt(1161).ncols     = 1;
pt(1161).subsource = 'SS_DOUBLE';
pt(1161).ndims     = '2';
pt(1161).size      = '[]';

pt(1162).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Dot Desired';
pt(1162).paramname = 'Bias';
pt(1162).class     = 'scalar';
pt(1162).nrows     = 1;
pt(1162).ncols     = 1;
pt(1162).subsource = 'SS_DOUBLE';
pt(1162).ndims     = '2';
pt(1162).size      = '[]';

pt(1163).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Dot Desired';
pt(1163).paramname = 'Frequency';
pt(1163).class     = 'scalar';
pt(1163).nrows     = 1;
pt(1163).ncols     = 1;
pt(1163).subsource = 'SS_DOUBLE';
pt(1163).ndims     = '2';
pt(1163).size      = '[]';

pt(1164).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Hip Theta Dot Desired';
pt(1164).paramname = 'Phase';
pt(1164).class     = 'scalar';
pt(1164).nrows     = 1;
pt(1164).ncols     = 1;
pt(1164).subsource = 'SS_DOUBLE';
pt(1164).ndims     = '2';
pt(1164).size      = '[]';

pt(1165).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired';
pt(1165).paramname = 'Amplitude';
pt(1165).class     = 'scalar';
pt(1165).nrows     = 1;
pt(1165).ncols     = 1;
pt(1165).subsource = 'SS_DOUBLE';
pt(1165).ndims     = '2';
pt(1165).size      = '[]';

pt(1166).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired';
pt(1166).paramname = 'Bias';
pt(1166).class     = 'scalar';
pt(1166).nrows     = 1;
pt(1166).ncols     = 1;
pt(1166).subsource = 'SS_DOUBLE';
pt(1166).ndims     = '2';
pt(1166).size      = '[]';

pt(1167).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired';
pt(1167).paramname = 'Frequency';
pt(1167).class     = 'scalar';
pt(1167).nrows     = 1;
pt(1167).ncols     = 1;
pt(1167).subsource = 'SS_DOUBLE';
pt(1167).ndims     = '2';
pt(1167).size      = '[]';

pt(1168).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Desired';
pt(1168).paramname = 'Phase';
pt(1168).class     = 'scalar';
pt(1168).nrows     = 1;
pt(1168).ncols     = 1;
pt(1168).subsource = 'SS_DOUBLE';
pt(1168).ndims     = '2';
pt(1168).size      = '[]';

pt(1169).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Dot Desired';
pt(1169).paramname = 'Amplitude';
pt(1169).class     = 'scalar';
pt(1169).nrows     = 1;
pt(1169).ncols     = 1;
pt(1169).subsource = 'SS_DOUBLE';
pt(1169).ndims     = '2';
pt(1169).size      = '[]';

pt(1170).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Dot Desired';
pt(1170).paramname = 'Bias';
pt(1170).class     = 'scalar';
pt(1170).nrows     = 1;
pt(1170).ncols     = 1;
pt(1170).subsource = 'SS_DOUBLE';
pt(1170).ndims     = '2';
pt(1170).size      = '[]';

pt(1171).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Dot Desired';
pt(1171).paramname = 'Frequency';
pt(1171).class     = 'scalar';
pt(1171).nrows     = 1;
pt(1171).ncols     = 1;
pt(1171).subsource = 'SS_DOUBLE';
pt(1171).ndims     = '2';
pt(1171).size      = '[]';

pt(1172).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/L Knee Theta Dot Desired';
pt(1172).paramname = 'Phase';
pt(1172).class     = 'scalar';
pt(1172).nrows     = 1;
pt(1172).ncols     = 1;
pt(1172).subsource = 'SS_DOUBLE';
pt(1172).ndims     = '2';
pt(1172).size      = '[]';

pt(1173).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Constant1';
pt(1173).paramname = 'Value';
pt(1173).class     = 'scalar';
pt(1173).nrows     = 1;
pt(1173).ncols     = 1;
pt(1173).subsource = 'SS_DOUBLE';
pt(1173).ndims     = '2';
pt(1173).size      = '[]';

pt(1174).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/qLatSignal';
pt(1174).paramname = 'Gain';
pt(1174).class     = 'scalar';
pt(1174).nrows     = 1;
pt(1174).ncols     = 1;
pt(1174).subsource = 'SS_DOUBLE';
pt(1174).ndims     = '2';
pt(1174).size      = '[]';

pt(1175).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Right Theta Desired';
pt(1175).paramname = 'Amplitude';
pt(1175).class     = 'scalar';
pt(1175).nrows     = 1;
pt(1175).ncols     = 1;
pt(1175).subsource = 'SS_DOUBLE';
pt(1175).ndims     = '2';
pt(1175).size      = '[]';

pt(1176).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Right Theta Desired';
pt(1176).paramname = 'Bias';
pt(1176).class     = 'scalar';
pt(1176).nrows     = 1;
pt(1176).ncols     = 1;
pt(1176).subsource = 'SS_DOUBLE';
pt(1176).ndims     = '2';
pt(1176).size      = '[]';

pt(1177).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Right Theta Desired';
pt(1177).paramname = 'Frequency';
pt(1177).class     = 'scalar';
pt(1177).nrows     = 1;
pt(1177).ncols     = 1;
pt(1177).subsource = 'SS_DOUBLE';
pt(1177).ndims     = '2';
pt(1177).size      = '[]';

pt(1178).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Right Theta Desired';
pt(1178).paramname = 'Phase';
pt(1178).class     = 'scalar';
pt(1178).nrows     = 1;
pt(1178).ncols     = 1;
pt(1178).subsource = 'SS_DOUBLE';
pt(1178).ndims     = '2';
pt(1178).size      = '[]';

pt(1179).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/dTheta Desired';
pt(1179).paramname = 'Amplitude';
pt(1179).class     = 'scalar';
pt(1179).nrows     = 1;
pt(1179).ncols     = 1;
pt(1179).subsource = 'SS_DOUBLE';
pt(1179).ndims     = '2';
pt(1179).size      = '[]';

pt(1180).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/dTheta Desired';
pt(1180).paramname = 'Bias';
pt(1180).class     = 'scalar';
pt(1180).nrows     = 1;
pt(1180).ncols     = 1;
pt(1180).subsource = 'SS_DOUBLE';
pt(1180).ndims     = '2';
pt(1180).size      = '[]';

pt(1181).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/dTheta Desired';
pt(1181).paramname = 'Frequency';
pt(1181).class     = 'scalar';
pt(1181).nrows     = 1;
pt(1181).ncols     = 1;
pt(1181).subsource = 'SS_DOUBLE';
pt(1181).ndims     = '2';
pt(1181).size      = '[]';

pt(1182).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/dTheta Desired';
pt(1182).paramname = 'Phase';
pt(1182).class     = 'scalar';
pt(1182).nrows     = 1;
pt(1182).ncols     = 1;
pt(1182).subsource = 'SS_DOUBLE';
pt(1182).ndims     = '2';
pt(1182).size      = '[]';

pt(1183).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/constant1';
pt(1183).paramname = 'Value';
pt(1183).class     = 'scalar';
pt(1183).nrows     = 1;
pt(1183).ncols     = 1;
pt(1183).subsource = 'SS_DOUBLE';
pt(1183).ndims     = '2';
pt(1183).size      = '[]';

pt(1184).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Gain';
pt(1184).paramname = 'Gain';
pt(1184).class     = 'scalar';
pt(1184).nrows     = 1;
pt(1184).ncols     = 1;
pt(1184).subsource = 'SS_DOUBLE';
pt(1184).ndims     = '2';
pt(1184).size      = '[]';

pt(1185).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Gain1';
pt(1185).paramname = 'Gain';
pt(1185).class     = 'scalar';
pt(1185).nrows     = 1;
pt(1185).ncols     = 1;
pt(1185).subsource = 'SS_DOUBLE';
pt(1185).ndims     = '2';
pt(1185).size      = '[]';

pt(1186).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/HipR';
pt(1186).paramname = 'Gain';
pt(1186).class     = 'scalar';
pt(1186).nrows     = 1;
pt(1186).ncols     = 1;
pt(1186).subsource = 'SS_DOUBLE';
pt(1186).ndims     = '2';
pt(1186).size      = '[]';

pt(1187).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired';
pt(1187).paramname = 'Amplitude';
pt(1187).class     = 'scalar';
pt(1187).nrows     = 1;
pt(1187).ncols     = 1;
pt(1187).subsource = 'SS_DOUBLE';
pt(1187).ndims     = '2';
pt(1187).size      = '[]';

pt(1188).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired';
pt(1188).paramname = 'Bias';
pt(1188).class     = 'scalar';
pt(1188).nrows     = 1;
pt(1188).ncols     = 1;
pt(1188).subsource = 'SS_DOUBLE';
pt(1188).ndims     = '2';
pt(1188).size      = '[]';

pt(1189).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired';
pt(1189).paramname = 'Frequency';
pt(1189).class     = 'scalar';
pt(1189).nrows     = 1;
pt(1189).ncols     = 1;
pt(1189).subsource = 'SS_DOUBLE';
pt(1189).ndims     = '2';
pt(1189).size      = '[]';

pt(1190).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Desired';
pt(1190).paramname = 'Phase';
pt(1190).class     = 'scalar';
pt(1190).nrows     = 1;
pt(1190).ncols     = 1;
pt(1190).subsource = 'SS_DOUBLE';
pt(1190).ndims     = '2';
pt(1190).size      = '[]';

pt(1191).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Dot Desired';
pt(1191).paramname = 'Amplitude';
pt(1191).class     = 'scalar';
pt(1191).nrows     = 1;
pt(1191).ncols     = 1;
pt(1191).subsource = 'SS_DOUBLE';
pt(1191).ndims     = '2';
pt(1191).size      = '[]';

pt(1192).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Dot Desired';
pt(1192).paramname = 'Bias';
pt(1192).class     = 'scalar';
pt(1192).nrows     = 1;
pt(1192).ncols     = 1;
pt(1192).subsource = 'SS_DOUBLE';
pt(1192).ndims     = '2';
pt(1192).size      = '[]';

pt(1193).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Dot Desired';
pt(1193).paramname = 'Frequency';
pt(1193).class     = 'scalar';
pt(1193).nrows     = 1;
pt(1193).ncols     = 1;
pt(1193).subsource = 'SS_DOUBLE';
pt(1193).ndims     = '2';
pt(1193).size      = '[]';

pt(1194).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Hip Theta Dot Desired';
pt(1194).paramname = 'Phase';
pt(1194).class     = 'scalar';
pt(1194).nrows     = 1;
pt(1194).ncols     = 1;
pt(1194).subsource = 'SS_DOUBLE';
pt(1194).ndims     = '2';
pt(1194).size      = '[]';

pt(1195).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired';
pt(1195).paramname = 'Amplitude';
pt(1195).class     = 'scalar';
pt(1195).nrows     = 1;
pt(1195).ncols     = 1;
pt(1195).subsource = 'SS_DOUBLE';
pt(1195).ndims     = '2';
pt(1195).size      = '[]';

pt(1196).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired';
pt(1196).paramname = 'Bias';
pt(1196).class     = 'scalar';
pt(1196).nrows     = 1;
pt(1196).ncols     = 1;
pt(1196).subsource = 'SS_DOUBLE';
pt(1196).ndims     = '2';
pt(1196).size      = '[]';

pt(1197).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired';
pt(1197).paramname = 'Frequency';
pt(1197).class     = 'scalar';
pt(1197).nrows     = 1;
pt(1197).ncols     = 1;
pt(1197).subsource = 'SS_DOUBLE';
pt(1197).ndims     = '2';
pt(1197).size      = '[]';

pt(1198).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Desired';
pt(1198).paramname = 'Phase';
pt(1198).class     = 'scalar';
pt(1198).nrows     = 1;
pt(1198).ncols     = 1;
pt(1198).subsource = 'SS_DOUBLE';
pt(1198).ndims     = '2';
pt(1198).size      = '[]';

pt(1199).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Dot Desired';
pt(1199).paramname = 'Amplitude';
pt(1199).class     = 'scalar';
pt(1199).nrows     = 1;
pt(1199).ncols     = 1;
pt(1199).subsource = 'SS_DOUBLE';
pt(1199).ndims     = '2';
pt(1199).size      = '[]';

pt(1200).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Dot Desired';
pt(1200).paramname = 'Bias';
pt(1200).class     = 'scalar';
pt(1200).nrows     = 1;
pt(1200).ncols     = 1;
pt(1200).subsource = 'SS_DOUBLE';
pt(1200).ndims     = '2';
pt(1200).size      = '[]';

pt(1201).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Dot Desired';
pt(1201).paramname = 'Frequency';
pt(1201).class     = 'scalar';
pt(1201).nrows     = 1;
pt(1201).ncols     = 1;
pt(1201).subsource = 'SS_DOUBLE';
pt(1201).ndims     = '2';
pt(1201).size      = '[]';

pt(1202).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/R Knee Theta Dot Desired';
pt(1202).paramname = 'Phase';
pt(1202).class     = 'scalar';
pt(1202).nrows     = 1;
pt(1202).ncols     = 1;
pt(1202).subsource = 'SS_DOUBLE';
pt(1202).ndims     = '2';
pt(1202).size      = '[]';

pt(1203).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant1';
pt(1203).paramname = 'Value';
pt(1203).class     = 'scalar';
pt(1203).nrows     = 1;
pt(1203).ncols     = 1;
pt(1203).subsource = 'SS_DOUBLE';
pt(1203).ndims     = '2';
pt(1203).size      = '[]';

pt(1204).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant10';
pt(1204).paramname = 'Value';
pt(1204).class     = 'scalar';
pt(1204).nrows     = 1;
pt(1204).ncols     = 1;
pt(1204).subsource = 'SS_DOUBLE';
pt(1204).ndims     = '2';
pt(1204).size      = '[]';

pt(1205).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant11';
pt(1205).paramname = 'Value';
pt(1205).class     = 'scalar';
pt(1205).nrows     = 1;
pt(1205).ncols     = 1;
pt(1205).subsource = 'SS_DOUBLE';
pt(1205).ndims     = '2';
pt(1205).size      = '[]';

pt(1206).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant12';
pt(1206).paramname = 'Value';
pt(1206).class     = 'scalar';
pt(1206).nrows     = 1;
pt(1206).ncols     = 1;
pt(1206).subsource = 'SS_DOUBLE';
pt(1206).ndims     = '2';
pt(1206).size      = '[]';

pt(1207).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant2';
pt(1207).paramname = 'Value';
pt(1207).class     = 'scalar';
pt(1207).nrows     = 1;
pt(1207).ncols     = 1;
pt(1207).subsource = 'SS_DOUBLE';
pt(1207).ndims     = '2';
pt(1207).size      = '[]';

pt(1208).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant3';
pt(1208).paramname = 'Value';
pt(1208).class     = 'scalar';
pt(1208).nrows     = 1;
pt(1208).ncols     = 1;
pt(1208).subsource = 'SS_DOUBLE';
pt(1208).ndims     = '2';
pt(1208).size      = '[]';

pt(1209).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant4';
pt(1209).paramname = 'Value';
pt(1209).class     = 'scalar';
pt(1209).nrows     = 1;
pt(1209).ncols     = 1;
pt(1209).subsource = 'SS_DOUBLE';
pt(1209).ndims     = '2';
pt(1209).size      = '[]';

pt(1210).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant5';
pt(1210).paramname = 'Value';
pt(1210).class     = 'scalar';
pt(1210).nrows     = 1;
pt(1210).ncols     = 1;
pt(1210).subsource = 'SS_DOUBLE';
pt(1210).ndims     = '2';
pt(1210).size      = '[]';

pt(1211).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant6';
pt(1211).paramname = 'Value';
pt(1211).class     = 'scalar';
pt(1211).nrows     = 1;
pt(1211).ncols     = 1;
pt(1211).subsource = 'SS_DOUBLE';
pt(1211).ndims     = '2';
pt(1211).size      = '[]';

pt(1212).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant7';
pt(1212).paramname = 'Value';
pt(1212).class     = 'scalar';
pt(1212).nrows     = 1;
pt(1212).ncols     = 1;
pt(1212).subsource = 'SS_DOUBLE';
pt(1212).ndims     = '2';
pt(1212).size      = '[]';

pt(1213).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant8';
pt(1213).paramname = 'Value';
pt(1213).class     = 'scalar';
pt(1213).nrows     = 1;
pt(1213).ncols     = 1;
pt(1213).subsource = 'SS_DOUBLE';
pt(1213).ndims     = '2';
pt(1213).size      = '[]';

pt(1214).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_radians/Constant9';
pt(1214).paramname = 'Value';
pt(1214).class     = 'scalar';
pt(1214).nrows     = 1;
pt(1214).ncols     = 1;
pt(1214).subsource = 'SS_DOUBLE';
pt(1214).ndims     = '2';
pt(1214).size      = '[]';

pt(1215).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant1';
pt(1215).paramname = 'Value';
pt(1215).class     = 'scalar';
pt(1215).nrows     = 1;
pt(1215).ncols     = 1;
pt(1215).subsource = 'SS_DOUBLE';
pt(1215).ndims     = '2';
pt(1215).size      = '[]';

pt(1216).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant10';
pt(1216).paramname = 'Value';
pt(1216).class     = 'scalar';
pt(1216).nrows     = 1;
pt(1216).ncols     = 1;
pt(1216).subsource = 'SS_DOUBLE';
pt(1216).ndims     = '2';
pt(1216).size      = '[]';

pt(1217).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant11';
pt(1217).paramname = 'Value';
pt(1217).class     = 'scalar';
pt(1217).nrows     = 1;
pt(1217).ncols     = 1;
pt(1217).subsource = 'SS_DOUBLE';
pt(1217).ndims     = '2';
pt(1217).size      = '[]';

pt(1218).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant12';
pt(1218).paramname = 'Value';
pt(1218).class     = 'scalar';
pt(1218).nrows     = 1;
pt(1218).ncols     = 1;
pt(1218).subsource = 'SS_DOUBLE';
pt(1218).ndims     = '2';
pt(1218).size      = '[]';

pt(1219).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant2';
pt(1219).paramname = 'Value';
pt(1219).class     = 'scalar';
pt(1219).nrows     = 1;
pt(1219).ncols     = 1;
pt(1219).subsource = 'SS_DOUBLE';
pt(1219).ndims     = '2';
pt(1219).size      = '[]';

pt(1220).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant3';
pt(1220).paramname = 'Value';
pt(1220).class     = 'scalar';
pt(1220).nrows     = 1;
pt(1220).ncols     = 1;
pt(1220).subsource = 'SS_DOUBLE';
pt(1220).ndims     = '2';
pt(1220).size      = '[]';

pt(1221).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant4';
pt(1221).paramname = 'Value';
pt(1221).class     = 'scalar';
pt(1221).nrows     = 1;
pt(1221).ncols     = 1;
pt(1221).subsource = 'SS_DOUBLE';
pt(1221).ndims     = '2';
pt(1221).size      = '[]';

pt(1222).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant5';
pt(1222).paramname = 'Value';
pt(1222).class     = 'scalar';
pt(1222).nrows     = 1;
pt(1222).ncols     = 1;
pt(1222).subsource = 'SS_DOUBLE';
pt(1222).ndims     = '2';
pt(1222).size      = '[]';

pt(1223).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant6';
pt(1223).paramname = 'Value';
pt(1223).class     = 'scalar';
pt(1223).nrows     = 1;
pt(1223).ncols     = 1;
pt(1223).subsource = 'SS_DOUBLE';
pt(1223).ndims     = '2';
pt(1223).size      = '[]';

pt(1224).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant7';
pt(1224).paramname = 'Value';
pt(1224).class     = 'scalar';
pt(1224).nrows     = 1;
pt(1224).ncols     = 1;
pt(1224).subsource = 'SS_DOUBLE';
pt(1224).ndims     = '2';
pt(1224).size      = '[]';

pt(1225).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant8';
pt(1225).paramname = 'Value';
pt(1225).class     = 'scalar';
pt(1225).nrows     = 1;
pt(1225).ncols     = 1;
pt(1225).subsource = 'SS_DOUBLE';
pt(1225).ndims     = '2';
pt(1225).size      = '[]';

pt(1226).blockname = 'DAQ/calibrate_and_convert_to_rad/calibration_pt_ticks/Constant9';
pt(1226).paramname = 'Value';
pt(1226).class     = 'scalar';
pt(1226).nrows     = 1;
pt(1226).ncols     = 1;
pt(1226).subsource = 'SS_DOUBLE';
pt(1226).ndims     = '2';
pt(1226).size      = '[]';

pt(1227).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant1';
pt(1227).paramname = 'Value';
pt(1227).class     = 'scalar';
pt(1227).nrows     = 1;
pt(1227).ncols     = 1;
pt(1227).subsource = 'SS_DOUBLE';
pt(1227).ndims     = '2';
pt(1227).size      = '[]';

pt(1228).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant10';
pt(1228).paramname = 'Value';
pt(1228).class     = 'scalar';
pt(1228).nrows     = 1;
pt(1228).ncols     = 1;
pt(1228).subsource = 'SS_DOUBLE';
pt(1228).ndims     = '2';
pt(1228).size      = '[]';

pt(1229).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant11';
pt(1229).paramname = 'Value';
pt(1229).class     = 'scalar';
pt(1229).nrows     = 1;
pt(1229).ncols     = 1;
pt(1229).subsource = 'SS_DOUBLE';
pt(1229).ndims     = '2';
pt(1229).size      = '[]';

pt(1230).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant12';
pt(1230).paramname = 'Value';
pt(1230).class     = 'scalar';
pt(1230).nrows     = 1;
pt(1230).ncols     = 1;
pt(1230).subsource = 'SS_DOUBLE';
pt(1230).ndims     = '2';
pt(1230).size      = '[]';

pt(1231).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant2';
pt(1231).paramname = 'Value';
pt(1231).class     = 'scalar';
pt(1231).nrows     = 1;
pt(1231).ncols     = 1;
pt(1231).subsource = 'SS_DOUBLE';
pt(1231).ndims     = '2';
pt(1231).size      = '[]';

pt(1232).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant3';
pt(1232).paramname = 'Value';
pt(1232).class     = 'scalar';
pt(1232).nrows     = 1;
pt(1232).ncols     = 1;
pt(1232).subsource = 'SS_DOUBLE';
pt(1232).ndims     = '2';
pt(1232).size      = '[]';

pt(1233).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant4';
pt(1233).paramname = 'Value';
pt(1233).class     = 'scalar';
pt(1233).nrows     = 1;
pt(1233).ncols     = 1;
pt(1233).subsource = 'SS_DOUBLE';
pt(1233).ndims     = '2';
pt(1233).size      = '[]';

pt(1234).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant5';
pt(1234).paramname = 'Value';
pt(1234).class     = 'scalar';
pt(1234).nrows     = 1;
pt(1234).ncols     = 1;
pt(1234).subsource = 'SS_DOUBLE';
pt(1234).ndims     = '2';
pt(1234).size      = '[]';

pt(1235).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant6';
pt(1235).paramname = 'Value';
pt(1235).class     = 'scalar';
pt(1235).nrows     = 1;
pt(1235).ncols     = 1;
pt(1235).subsource = 'SS_DOUBLE';
pt(1235).ndims     = '2';
pt(1235).size      = '[]';

pt(1236).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant7';
pt(1236).paramname = 'Value';
pt(1236).class     = 'scalar';
pt(1236).nrows     = 1;
pt(1236).ncols     = 1;
pt(1236).subsource = 'SS_DOUBLE';
pt(1236).ndims     = '2';
pt(1236).size      = '[]';

pt(1237).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant8';
pt(1237).paramname = 'Value';
pt(1237).class     = 'scalar';
pt(1237).nrows     = 1;
pt(1237).ncols     = 1;
pt(1237).subsource = 'SS_DOUBLE';
pt(1237).ndims     = '2';
pt(1237).size      = '[]';

pt(1238).blockname = 'DAQ/calibrate_and_convert_to_rad/ticks_to_radians_constants/Constant9';
pt(1238).paramname = 'Value';
pt(1238).class     = 'scalar';
pt(1238).nrows     = 1;
pt(1238).ncols     = 1;
pt(1238).subsource = 'SS_DOUBLE';
pt(1238).ndims     = '2';
pt(1238).size      = '[]';

pt(1239).blockname = 'DAQ/hold_initial_lateral_angles/Compare to const/Constant';
pt(1239).paramname = 'Value';
pt(1239).class     = 'scalar';
pt(1239).nrows     = 1;
pt(1239).ncols     = 1;
pt(1239).subsource = 'SS_DOUBLE';
pt(1239).ndims     = '2';
pt(1239).size      = '[]';

pt(1240).blockname = 'DAQ/low_pass_derivative/difference/UD';
pt(1240).paramname = 'InitialCondition';
pt(1240).class     = 'scalar';
pt(1240).nrows     = 1;
pt(1240).ncols     = 1;
pt(1240).subsource = 'SS_DOUBLE';
pt(1240).ndims     = '2';
pt(1240).size      = '[]';

pt(1241).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/const';
pt(1241).paramname = 'Value';
pt(1241).class     = 'scalar';
pt(1241).nrows     = 1;
pt(1241).ncols     = 1;
pt(1241).subsource = 'SS_DOUBLE';
pt(1241).ndims     = '2';
pt(1241).size      = '[]';

pt(1242).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/no';
pt(1242).paramname = 'Value';
pt(1242).class     = 'scalar';
pt(1242).nrows     = 1;
pt(1242).ncols     = 1;
pt(1242).subsource = 'SS_DOUBLE';
pt(1242).ndims     = '2';
pt(1242).size      = '[]';

pt(1243).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/yes';
pt(1243).paramname = 'Value';
pt(1243).class     = 'scalar';
pt(1243).nrows     = 1;
pt(1243).ncols     = 1;
pt(1243).subsource = 'SS_DOUBLE';
pt(1243).ndims     = '2';
pt(1243).size      = '[]';

pt(1244).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/1//BOOM_MAX_ENCODER_TICKS';
pt(1244).paramname = 'Gain';
pt(1244).class     = 'scalar';
pt(1244).nrows     = 1;
pt(1244).ncols     = 1;
pt(1244).subsource = 'SS_DOUBLE';
pt(1244).ndims     = '2';
pt(1244).size      = '[]';

pt(1245).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/BOOM_MAX_ENCODER_TICKS';
pt(1245).paramname = 'Gain';
pt(1245).class     = 'scalar';
pt(1245).nrows     = 1;
pt(1245).ncols     = 1;
pt(1245).subsource = 'SS_DOUBLE';
pt(1245).ndims     = '2';
pt(1245).size      = '[]';

pt(1246).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Gain2';
pt(1246).paramname = 'Gain';
pt(1246).class     = 'scalar';
pt(1246).nrows     = 1;
pt(1246).ncols     = 1;
pt(1246).subsource = 'SS_DOUBLE';
pt(1246).ndims     = '2';
pt(1246).size      = '[]';

pt(1247).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Discrete Single Pole Lowpass Filter';
pt(1247).paramname = 'Numerator';
pt(1247).class     = 'vector';
pt(1247).nrows     = 1;
pt(1247).ncols     = 2;
pt(1247).subsource = 'SS_DOUBLE';
pt(1247).ndims     = '2';
pt(1247).size      = '[]';

pt(1248).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Discrete Single Pole Lowpass Filter';
pt(1248).paramname = 'Denominator';
pt(1248).class     = 'vector';
pt(1248).nrows     = 1;
pt(1248).ncols     = 2;
pt(1248).subsource = 'SS_DOUBLE';
pt(1248).ndims     = '2';
pt(1248).size      = '[]';

pt(1249).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Discrete Single Pole Lowpass Filter';
pt(1249).paramname = 'InitialStates';
pt(1249).class     = 'scalar';
pt(1249).nrows     = 1;
pt(1249).ncols     = 1;
pt(1249).subsource = 'SS_DOUBLE';
pt(1249).ndims     = '2';
pt(1249).size      = '[]';

pt(1250).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-1)';
pt(1250).paramname = 'InitialCondition';
pt(1250).class     = 'scalar';
pt(1250).nrows     = 1;
pt(1250).ncols     = 1;
pt(1250).subsource = 'SS_DOUBLE';
pt(1250).ndims     = '2';
pt(1250).size      = '[]';

pt(1251).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Unit Delay phi_(n-2)';
pt(1251).paramname = 'InitialCondition';
pt(1251).class     = 'scalar';
pt(1251).nrows     = 1;
pt(1251).ncols     = 1;
pt(1251).subsource = 'SS_DOUBLE';
pt(1251).ndims     = '2';
pt(1251).size      = '[]';

pt(1252).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/const';
pt(1252).paramname = 'Value';
pt(1252).class     = 'scalar';
pt(1252).nrows     = 1;
pt(1252).ncols     = 1;
pt(1252).subsource = 'SS_DOUBLE';
pt(1252).ndims     = '2';
pt(1252).size      = '[]';

pt(1253).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/no';
pt(1253).paramname = 'Value';
pt(1253).class     = 'scalar';
pt(1253).nrows     = 1;
pt(1253).ncols     = 1;
pt(1253).subsource = 'SS_DOUBLE';
pt(1253).ndims     = '2';
pt(1253).size      = '[]';

pt(1254).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/yes';
pt(1254).paramname = 'Value';
pt(1254).class     = 'scalar';
pt(1254).nrows     = 1;
pt(1254).ncols     = 1;
pt(1254).subsource = 'SS_DOUBLE';
pt(1254).ndims     = '2';
pt(1254).size      = '[]';

pt(1255).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/1//HIP_INC_MAX_ENCODER_TICKS';
pt(1255).paramname = 'Gain';
pt(1255).class     = 'scalar';
pt(1255).nrows     = 1;
pt(1255).ncols     = 1;
pt(1255).subsource = 'SS_DOUBLE';
pt(1255).ndims     = '2';
pt(1255).size      = '[]';

pt(1256).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Gain2';
pt(1256).paramname = 'Gain';
pt(1256).class     = 'scalar';
pt(1256).nrows     = 1;
pt(1256).ncols     = 1;
pt(1256).subsource = 'SS_DOUBLE';
pt(1256).ndims     = '2';
pt(1256).size      = '[]';

pt(1257).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/HIP_INC_MAX_ENCODER_TICKS';
pt(1257).paramname = 'Gain';
pt(1257).class     = 'scalar';
pt(1257).nrows     = 1;
pt(1257).ncols     = 1;
pt(1257).subsource = 'SS_DOUBLE';
pt(1257).ndims     = '2';
pt(1257).size      = '[]';

pt(1258).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Discrete Single Pole Lowpass Filter';
pt(1258).paramname = 'Numerator';
pt(1258).class     = 'vector';
pt(1258).nrows     = 1;
pt(1258).ncols     = 2;
pt(1258).subsource = 'SS_DOUBLE';
pt(1258).ndims     = '2';
pt(1258).size      = '[]';

pt(1259).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Discrete Single Pole Lowpass Filter';
pt(1259).paramname = 'Denominator';
pt(1259).class     = 'vector';
pt(1259).nrows     = 1;
pt(1259).ncols     = 2;
pt(1259).subsource = 'SS_DOUBLE';
pt(1259).ndims     = '2';
pt(1259).size      = '[]';

pt(1260).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Discrete Single Pole Lowpass Filter';
pt(1260).paramname = 'InitialStates';
pt(1260).class     = 'scalar';
pt(1260).nrows     = 1;
pt(1260).ncols     = 1;
pt(1260).subsource = 'SS_DOUBLE';
pt(1260).ndims     = '2';
pt(1260).size      = '[]';

pt(1261).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-1)';
pt(1261).paramname = 'InitialCondition';
pt(1261).class     = 'scalar';
pt(1261).nrows     = 1;
pt(1261).ncols     = 1;
pt(1261).subsource = 'SS_DOUBLE';
pt(1261).ndims     = '2';
pt(1261).size      = '[]';

pt(1262).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Unit Delay phi_(n-2)';
pt(1262).paramname = 'InitialCondition';
pt(1262).class     = 'scalar';
pt(1262).nrows     = 1;
pt(1262).ncols     = 1;
pt(1262).subsource = 'SS_DOUBLE';
pt(1262).ndims     = '2';
pt(1262).size      = '[]';

pt(1263).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/const';
pt(1263).paramname = 'Value';
pt(1263).class     = 'scalar';
pt(1263).nrows     = 1;
pt(1263).ncols     = 1;
pt(1263).subsource = 'SS_DOUBLE';
pt(1263).ndims     = '2';
pt(1263).size      = '[]';

pt(1264).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/no';
pt(1264).paramname = 'Value';
pt(1264).class     = 'scalar';
pt(1264).nrows     = 1;
pt(1264).ncols     = 1;
pt(1264).subsource = 'SS_DOUBLE';
pt(1264).ndims     = '2';
pt(1264).size      = '[]';

pt(1265).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/yes';
pt(1265).paramname = 'Value';
pt(1265).class     = 'scalar';
pt(1265).nrows     = 1;
pt(1265).ncols     = 1;
pt(1265).subsource = 'SS_DOUBLE';
pt(1265).ndims     = '2';
pt(1265).size      = '[]';

pt(1266).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/1//HIP_INC_MAX_ENCODER_TICKS';
pt(1266).paramname = 'Gain';
pt(1266).class     = 'scalar';
pt(1266).nrows     = 1;
pt(1266).ncols     = 1;
pt(1266).subsource = 'SS_DOUBLE';
pt(1266).ndims     = '2';
pt(1266).size      = '[]';

pt(1267).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Gain2';
pt(1267).paramname = 'Gain';
pt(1267).class     = 'scalar';
pt(1267).nrows     = 1;
pt(1267).ncols     = 1;
pt(1267).subsource = 'SS_DOUBLE';
pt(1267).ndims     = '2';
pt(1267).size      = '[]';

pt(1268).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/HIP_INC_MAX_ENCODER_TICKS';
pt(1268).paramname = 'Gain';
pt(1268).class     = 'scalar';
pt(1268).nrows     = 1;
pt(1268).ncols     = 1;
pt(1268).subsource = 'SS_DOUBLE';
pt(1268).ndims     = '2';
pt(1268).size      = '[]';

pt(1269).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Discrete Single Pole Lowpass Filter';
pt(1269).paramname = 'Numerator';
pt(1269).class     = 'vector';
pt(1269).nrows     = 1;
pt(1269).ncols     = 2;
pt(1269).subsource = 'SS_DOUBLE';
pt(1269).ndims     = '2';
pt(1269).size      = '[]';

pt(1270).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Discrete Single Pole Lowpass Filter';
pt(1270).paramname = 'Denominator';
pt(1270).class     = 'vector';
pt(1270).nrows     = 1;
pt(1270).ncols     = 2;
pt(1270).subsource = 'SS_DOUBLE';
pt(1270).ndims     = '2';
pt(1270).size      = '[]';

pt(1271).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Discrete Single Pole Lowpass Filter';
pt(1271).paramname = 'InitialStates';
pt(1271).class     = 'scalar';
pt(1271).nrows     = 1;
pt(1271).ncols     = 1;
pt(1271).subsource = 'SS_DOUBLE';
pt(1271).ndims     = '2';
pt(1271).size      = '[]';

pt(1272).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-1)';
pt(1272).paramname = 'InitialCondition';
pt(1272).class     = 'scalar';
pt(1272).nrows     = 1;
pt(1272).ncols     = 1;
pt(1272).subsource = 'SS_DOUBLE';
pt(1272).ndims     = '2';
pt(1272).size      = '[]';

pt(1273).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Unit Delay phi_(n-2)';
pt(1273).paramname = 'InitialCondition';
pt(1273).class     = 'scalar';
pt(1273).nrows     = 1;
pt(1273).ncols     = 1;
pt(1273).subsource = 'SS_DOUBLE';
pt(1273).ndims     = '2';
pt(1273).size      = '[]';

pt(1274).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Position Saturation';
pt(1274).paramname = 'UpperLimit';
pt(1274).class     = 'scalar';
pt(1274).nrows     = 1;
pt(1274).ncols     = 1;
pt(1274).subsource = 'SS_DOUBLE';
pt(1274).ndims     = '2';
pt(1274).size      = '[]';

pt(1275).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Position Saturation';
pt(1275).paramname = 'LowerLimit';
pt(1275).class     = 'scalar';
pt(1275).nrows     = 1;
pt(1275).ncols     = 1;
pt(1275).subsource = 'SS_DOUBLE';
pt(1275).ndims     = '2';
pt(1275).size      = '[]';

pt(1276).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Switch';
pt(1276).paramname = 'Threshold';
pt(1276).class     = 'scalar';
pt(1276).nrows     = 1;
pt(1276).ncols     = 1;
pt(1276).subsource = 'SS_DOUBLE';
pt(1276).ndims     = '2';
pt(1276).size      = '[]';

pt(1277).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Gain4';
pt(1277).paramname = 'Gain';
pt(1277).class     = 'scalar';
pt(1277).nrows     = 1;
pt(1277).ncols     = 1;
pt(1277).subsource = 'SS_DOUBLE';
pt(1277).ndims     = '2';
pt(1277).size      = '[]';

pt(1278).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Hip Roll PD/Gain5';
pt(1278).paramname = 'Gain';
pt(1278).class     = 'scalar';
pt(1278).nrows     = 1;
pt(1278).ncols     = 1;
pt(1278).subsource = 'SS_DOUBLE';
pt(1278).ndims     = '2';
pt(1278).size      = '[]';

pt(1279).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Gain4';
pt(1279).paramname = 'Gain';
pt(1279).class     = 'scalar';
pt(1279).nrows     = 1;
pt(1279).ncols     = 1;
pt(1279).subsource = 'SS_DOUBLE';
pt(1279).ndims     = '2';
pt(1279).size      = '[]';

pt(1280).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Hip PD Torque Control/Gain5';
pt(1280).paramname = 'Gain';
pt(1280).class     = 'scalar';
pt(1280).nrows     = 1;
pt(1280).ncols     = 1;
pt(1280).subsource = 'SS_DOUBLE';
pt(1280).ndims     = '2';
pt(1280).size      = '[]';

pt(1281).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Gain6';
pt(1281).paramname = 'Gain';
pt(1281).class     = 'scalar';
pt(1281).nrows     = 1;
pt(1281).ncols     = 1;
pt(1281).subsource = 'SS_DOUBLE';
pt(1281).ndims     = '2';
pt(1281).size      = '[]';

pt(1282).blockname = 'Simple Sinusoidal Motion/Left Leg Sagittal Sine Wave/Knee PD Torque Control/Gain7';
pt(1282).paramname = 'Gain';
pt(1282).class     = 'scalar';
pt(1282).nrows     = 1;
pt(1282).ncols     = 1;
pt(1282).subsource = 'SS_DOUBLE';
pt(1282).ndims     = '2';
pt(1282).size      = '[]';

pt(1283).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Position Saturation';
pt(1283).paramname = 'UpperLimit';
pt(1283).class     = 'scalar';
pt(1283).nrows     = 1;
pt(1283).ncols     = 1;
pt(1283).subsource = 'SS_DOUBLE';
pt(1283).ndims     = '2';
pt(1283).size      = '[]';

pt(1284).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Position Saturation';
pt(1284).paramname = 'LowerLimit';
pt(1284).class     = 'scalar';
pt(1284).nrows     = 1;
pt(1284).ncols     = 1;
pt(1284).subsource = 'SS_DOUBLE';
pt(1284).ndims     = '2';
pt(1284).size      = '[]';

pt(1285).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Switch';
pt(1285).paramname = 'Threshold';
pt(1285).class     = 'scalar';
pt(1285).nrows     = 1;
pt(1285).ncols     = 1;
pt(1285).subsource = 'SS_DOUBLE';
pt(1285).ndims     = '2';
pt(1285).size      = '[]';

pt(1286).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Gain4';
pt(1286).paramname = 'Gain';
pt(1286).class     = 'scalar';
pt(1286).nrows     = 1;
pt(1286).ncols     = 1;
pt(1286).subsource = 'SS_DOUBLE';
pt(1286).ndims     = '2';
pt(1286).size      = '[]';

pt(1287).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Hip Roll PD/Gain5';
pt(1287).paramname = 'Gain';
pt(1287).class     = 'scalar';
pt(1287).nrows     = 1;
pt(1287).ncols     = 1;
pt(1287).subsource = 'SS_DOUBLE';
pt(1287).ndims     = '2';
pt(1287).size      = '[]';

pt(1288).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Gain4';
pt(1288).paramname = 'Gain';
pt(1288).class     = 'scalar';
pt(1288).nrows     = 1;
pt(1288).ncols     = 1;
pt(1288).subsource = 'SS_DOUBLE';
pt(1288).ndims     = '2';
pt(1288).size      = '[]';

pt(1289).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Hip PD Torque Control/Gain5';
pt(1289).paramname = 'Gain';
pt(1289).class     = 'scalar';
pt(1289).nrows     = 1;
pt(1289).ncols     = 1;
pt(1289).subsource = 'SS_DOUBLE';
pt(1289).ndims     = '2';
pt(1289).size      = '[]';

pt(1290).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Gain6';
pt(1290).paramname = 'Gain';
pt(1290).class     = 'scalar';
pt(1290).nrows     = 1;
pt(1290).ncols     = 1;
pt(1290).subsource = 'SS_DOUBLE';
pt(1290).ndims     = '2';
pt(1290).size      = '[]';

pt(1291).blockname = 'Simple Sinusoidal Motion/Right Leg Sagittal Sine Wave/Knee PD Torque Control/Gain7';
pt(1291).paramname = 'Gain';
pt(1291).class     = 'scalar';
pt(1291).nrows     = 1;
pt(1291).ncols     = 1;
pt(1291).subsource = 'SS_DOUBLE';
pt(1291).ndims     = '2';
pt(1291).size      = '[]';

pt(1292).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Gain2';
pt(1292).paramname = 'Gain';
pt(1292).class     = 'scalar';
pt(1292).nrows     = 1;
pt(1292).ncols     = 1;
pt(1292).subsource = 'SS_DOUBLE';
pt(1292).ndims     = '2';
pt(1292).size      = '[]';

pt(1293).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Spring Stiffness';
pt(1293).paramname = 'Gain';
pt(1293).class     = 'scalar';
pt(1293).nrows     = 1;
pt(1293).ncols     = 1;
pt(1293).subsource = 'SS_DOUBLE';
pt(1293).ndims     = '2';
pt(1293).size      = '[]';

pt(1294).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
pt(1294).paramname = 'UpperLimit';
pt(1294).class     = 'scalar';
pt(1294).nrows     = 1;
pt(1294).ncols     = 1;
pt(1294).subsource = 'SS_DOUBLE';
pt(1294).ndims     = '2';
pt(1294).size      = '[]';

pt(1295).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
pt(1295).paramname = 'LowerLimit';
pt(1295).class     = 'scalar';
pt(1295).nrows     = 1;
pt(1295).ncols     = 1;
pt(1295).subsource = 'SS_DOUBLE';
pt(1295).ndims     = '2';
pt(1295).size      = '[]';

pt(1296).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Gain2';
pt(1296).paramname = 'Gain';
pt(1296).class     = 'scalar';
pt(1296).nrows     = 1;
pt(1296).ncols     = 1;
pt(1296).subsource = 'SS_DOUBLE';
pt(1296).ndims     = '2';
pt(1296).size      = '[]';

pt(1297).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Spring Stiffness';
pt(1297).paramname = 'Gain';
pt(1297).class     = 'scalar';
pt(1297).nrows     = 1;
pt(1297).ncols     = 1;
pt(1297).subsource = 'SS_DOUBLE';
pt(1297).ndims     = '2';
pt(1297).size      = '[]';

pt(1298).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
pt(1298).paramname = 'UpperLimit';
pt(1298).class     = 'scalar';
pt(1298).nrows     = 1;
pt(1298).ncols     = 1;
pt(1298).subsource = 'SS_DOUBLE';
pt(1298).ndims     = '2';
pt(1298).size      = '[]';

pt(1299).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
pt(1299).paramname = 'LowerLimit';
pt(1299).class     = 'scalar';
pt(1299).nrows     = 1;
pt(1299).ncols     = 1;
pt(1299).subsource = 'SS_DOUBLE';
pt(1299).ndims     = '2';
pt(1299).size      = '[]';

pt(1300).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Gain2';
pt(1300).paramname = 'Gain';
pt(1300).class     = 'scalar';
pt(1300).nrows     = 1;
pt(1300).ncols     = 1;
pt(1300).subsource = 'SS_DOUBLE';
pt(1300).ndims     = '2';
pt(1300).size      = '[]';

pt(1301).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Spring Stiffness';
pt(1301).paramname = 'Gain';
pt(1301).class     = 'scalar';
pt(1301).nrows     = 1;
pt(1301).ncols     = 1;
pt(1301).subsource = 'SS_DOUBLE';
pt(1301).ndims     = '2';
pt(1301).size      = '[]';

pt(1302).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
pt(1302).paramname = 'UpperLimit';
pt(1302).class     = 'scalar';
pt(1302).nrows     = 1;
pt(1302).ncols     = 1;
pt(1302).subsource = 'SS_DOUBLE';
pt(1302).ndims     = '2';
pt(1302).size      = '[]';

pt(1303).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Torque  Limiter (outside) ';
pt(1303).paramname = 'LowerLimit';
pt(1303).class     = 'scalar';
pt(1303).nrows     = 1;
pt(1303).ncols     = 1;
pt(1303).subsource = 'SS_DOUBLE';
pt(1303).ndims     = '2';
pt(1303).size      = '[]';

pt(1304).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Gain2';
pt(1304).paramname = 'Gain';
pt(1304).class     = 'scalar';
pt(1304).nrows     = 1;
pt(1304).ncols     = 1;
pt(1304).subsource = 'SS_DOUBLE';
pt(1304).ndims     = '2';
pt(1304).size      = '[]';

pt(1305).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Spring Stiffness';
pt(1305).paramname = 'Gain';
pt(1305).class     = 'scalar';
pt(1305).nrows     = 1;
pt(1305).ncols     = 1;
pt(1305).subsource = 'SS_DOUBLE';
pt(1305).ndims     = '2';
pt(1305).size      = '[]';

pt(1306).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
pt(1306).paramname = 'UpperLimit';
pt(1306).class     = 'scalar';
pt(1306).nrows     = 1;
pt(1306).ncols     = 1;
pt(1306).subsource = 'SS_DOUBLE';
pt(1306).ndims     = '2';
pt(1306).size      = '[]';

pt(1307).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Torque  Limiter (outside) ';
pt(1307).paramname = 'LowerLimit';
pt(1307).class     = 'scalar';
pt(1307).nrows     = 1;
pt(1307).ncols     = 1;
pt(1307).subsource = 'SS_DOUBLE';
pt(1307).ndims     = '2';
pt(1307).size      = '[]';

pt(1308).blockname = 'DAQ/unwrap_encoders/unwrap_boom_yaw_encoder/Compare To Zero/Constant';
pt(1308).paramname = 'Value';
pt(1308).class     = 'scalar';
pt(1308).nrows     = 1;
pt(1308).ncols     = 1;
pt(1308).subsource = 'SS_DOUBLE';
pt(1308).ndims     = '2';
pt(1308).size      = '[]';

pt(1309).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Left/Compare To Zero/Constant';
pt(1309).paramname = 'Value';
pt(1309).class     = 'scalar';
pt(1309).nrows     = 1;
pt(1309).ncols     = 1;
pt(1309).subsource = 'SS_DOUBLE';
pt(1309).ndims     = '2';
pt(1309).size      = '[]';

pt(1310).blockname = 'DAQ/unwrap_encoders/unwrap_lateral_incremental_encoders Right/Compare To Zero/Constant';
pt(1310).paramname = 'Value';
pt(1310).class     = 'scalar';
pt(1310).nrows     = 1;
pt(1310).ncols     = 1;
pt(1310).subsource = 'SS_DOUBLE';
pt(1310).ndims     = '2';
pt(1310).size      = '[]';

pt(1311).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Constant';
pt(1311).paramname = 'Value';
pt(1311).class     = 'scalar';
pt(1311).nrows     = 1;
pt(1311).ncols     = 1;
pt(1311).subsource = 'SS_DOUBLE';
pt(1311).ndims     = '2';
pt(1311).size      = '[]';

pt(1312).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Constant1';
pt(1312).paramname = 'Value';
pt(1312).class     = 'scalar';
pt(1312).nrows     = 1;
pt(1312).ncols     = 1;
pt(1312).subsource = 'SS_DOUBLE';
pt(1312).ndims     = '2';
pt(1312).size      = '[]';

pt(1313).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Step';
pt(1313).paramname = 'Time';
pt(1313).class     = 'scalar';
pt(1313).nrows     = 1;
pt(1313).ncols     = 1;
pt(1313).subsource = 'SS_DOUBLE';
pt(1313).ndims     = '2';
pt(1313).size      = '[]';

pt(1314).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Step';
pt(1314).paramname = 'Before';
pt(1314).class     = 'scalar';
pt(1314).nrows     = 1;
pt(1314).ncols     = 1;
pt(1314).subsource = 'SS_DOUBLE';
pt(1314).ndims     = '2';
pt(1314).size      = '[]';

pt(1315).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp/Step';
pt(1315).paramname = 'After';
pt(1315).class     = 'scalar';
pt(1315).nrows     = 1;
pt(1315).ncols     = 1;
pt(1315).subsource = 'SS_DOUBLE';
pt(1315).ndims     = '2';
pt(1315).size      = '[]';

pt(1316).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Constant';
pt(1316).paramname = 'Value';
pt(1316).class     = 'scalar';
pt(1316).nrows     = 1;
pt(1316).ncols     = 1;
pt(1316).subsource = 'SS_DOUBLE';
pt(1316).ndims     = '2';
pt(1316).size      = '[]';

pt(1317).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Constant1';
pt(1317).paramname = 'Value';
pt(1317).class     = 'scalar';
pt(1317).nrows     = 1;
pt(1317).ncols     = 1;
pt(1317).subsource = 'SS_DOUBLE';
pt(1317).ndims     = '2';
pt(1317).size      = '[]';

pt(1318).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1318).paramname = 'Time';
pt(1318).class     = 'scalar';
pt(1318).nrows     = 1;
pt(1318).ncols     = 1;
pt(1318).subsource = 'SS_DOUBLE';
pt(1318).ndims     = '2';
pt(1318).size      = '[]';

pt(1319).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1319).paramname = 'Before';
pt(1319).class     = 'scalar';
pt(1319).nrows     = 1;
pt(1319).ncols     = 1;
pt(1319).subsource = 'SS_DOUBLE';
pt(1319).ndims     = '2';
pt(1319).size      = '[]';

pt(1320).blockname = 'Simple Sinusoidal Motion/Left Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1320).paramname = 'After';
pt(1320).class     = 'scalar';
pt(1320).nrows     = 1;
pt(1320).ncols     = 1;
pt(1320).subsource = 'SS_DOUBLE';
pt(1320).ndims     = '2';
pt(1320).size      = '[]';

pt(1321).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Constant';
pt(1321).paramname = 'Value';
pt(1321).class     = 'scalar';
pt(1321).nrows     = 1;
pt(1321).ncols     = 1;
pt(1321).subsource = 'SS_DOUBLE';
pt(1321).ndims     = '2';
pt(1321).size      = '[]';

pt(1322).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Constant1';
pt(1322).paramname = 'Value';
pt(1322).class     = 'scalar';
pt(1322).nrows     = 1;
pt(1322).ncols     = 1;
pt(1322).subsource = 'SS_DOUBLE';
pt(1322).ndims     = '2';
pt(1322).size      = '[]';

pt(1323).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Step';
pt(1323).paramname = 'Time';
pt(1323).class     = 'scalar';
pt(1323).nrows     = 1;
pt(1323).ncols     = 1;
pt(1323).subsource = 'SS_DOUBLE';
pt(1323).ndims     = '2';
pt(1323).size      = '[]';

pt(1324).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Step';
pt(1324).paramname = 'Before';
pt(1324).class     = 'scalar';
pt(1324).nrows     = 1;
pt(1324).ncols     = 1;
pt(1324).subsource = 'SS_DOUBLE';
pt(1324).ndims     = '2';
pt(1324).size      = '[]';

pt(1325).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp/Step';
pt(1325).paramname = 'After';
pt(1325).class     = 'scalar';
pt(1325).nrows     = 1;
pt(1325).ncols     = 1;
pt(1325).subsource = 'SS_DOUBLE';
pt(1325).ndims     = '2';
pt(1325).size      = '[]';

pt(1326).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Constant';
pt(1326).paramname = 'Value';
pt(1326).class     = 'scalar';
pt(1326).nrows     = 1;
pt(1326).ncols     = 1;
pt(1326).subsource = 'SS_DOUBLE';
pt(1326).ndims     = '2';
pt(1326).size      = '[]';

pt(1327).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Constant1';
pt(1327).paramname = 'Value';
pt(1327).class     = 'scalar';
pt(1327).nrows     = 1;
pt(1327).ncols     = 1;
pt(1327).subsource = 'SS_DOUBLE';
pt(1327).ndims     = '2';
pt(1327).size      = '[]';

pt(1328).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1328).paramname = 'Time';
pt(1328).class     = 'scalar';
pt(1328).nrows     = 1;
pt(1328).ncols     = 1;
pt(1328).subsource = 'SS_DOUBLE';
pt(1328).ndims     = '2';
pt(1328).size      = '[]';

pt(1329).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1329).paramname = 'Before';
pt(1329).class     = 'scalar';
pt(1329).nrows     = 1;
pt(1329).ncols     = 1;
pt(1329).subsource = 'SS_DOUBLE';
pt(1329).ndims     = '2';
pt(1329).size      = '[]';

pt(1330).blockname = 'Simple Sinusoidal Motion/Right Lateral Sine Wave/Diminish/Ramp1/Step';
pt(1330).paramname = 'After';
pt(1330).class     = 'scalar';
pt(1330).nrows     = 1;
pt(1330).ncols     = 1;
pt(1330).subsource = 'SS_DOUBLE';
pt(1330).ndims     = '2';
pt(1330).size      = '[]';

pt(1331).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/Proportional Gain';
pt(1331).paramname = 'Gain';
pt(1331).class     = 'scalar';
pt(1331).nrows     = 1;
pt(1331).ncols     = 1;
pt(1331).subsource = 'SS_DOUBLE';
pt(1331).ndims     = '2';
pt(1331).size      = '[]';

pt(1332).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/Proportional Gain1';
pt(1332).paramname = 'Gain';
pt(1332).class     = 'scalar';
pt(1332).nrows     = 1;
pt(1332).ncols     = 1;
pt(1332).subsource = 'SS_DOUBLE';
pt(1332).ndims     = '2';
pt(1332).size      = '[]';

pt(1333).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Torque PD/Proportional Gain';
pt(1333).paramname = 'Gain';
pt(1333).class     = 'scalar';
pt(1333).nrows     = 1;
pt(1333).ncols     = 1;
pt(1333).subsource = 'SS_DOUBLE';
pt(1333).ndims     = '2';
pt(1333).size      = '[]';

pt(1334).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/Proportional Gain';
pt(1334).paramname = 'Gain';
pt(1334).class     = 'scalar';
pt(1334).nrows     = 1;
pt(1334).ncols     = 1;
pt(1334).subsource = 'SS_DOUBLE';
pt(1334).ndims     = '2';
pt(1334).size      = '[]';

pt(1335).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/Proportional Gain1';
pt(1335).paramname = 'Gain';
pt(1335).class     = 'scalar';
pt(1335).nrows     = 1;
pt(1335).ncols     = 1;
pt(1335).subsource = 'SS_DOUBLE';
pt(1335).ndims     = '2';
pt(1335).size      = '[]';

pt(1336).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Torque PD/Proportional Gain';
pt(1336).paramname = 'Gain';
pt(1336).class     = 'scalar';
pt(1336).nrows     = 1;
pt(1336).ncols     = 1;
pt(1336).subsource = 'SS_DOUBLE';
pt(1336).ndims     = '2';
pt(1336).size      = '[]';

pt(1337).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/Proportional Gain';
pt(1337).paramname = 'Gain';
pt(1337).class     = 'scalar';
pt(1337).nrows     = 1;
pt(1337).ncols     = 1;
pt(1337).subsource = 'SS_DOUBLE';
pt(1337).ndims     = '2';
pt(1337).size      = '[]';

pt(1338).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/Proportional Gain1';
pt(1338).paramname = 'Gain';
pt(1338).class     = 'scalar';
pt(1338).nrows     = 1;
pt(1338).ncols     = 1;
pt(1338).subsource = 'SS_DOUBLE';
pt(1338).ndims     = '2';
pt(1338).size      = '[]';

pt(1339).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Torque PD/Proportional Gain';
pt(1339).paramname = 'Gain';
pt(1339).class     = 'scalar';
pt(1339).nrows     = 1;
pt(1339).ncols     = 1;
pt(1339).subsource = 'SS_DOUBLE';
pt(1339).ndims     = '2';
pt(1339).size      = '[]';

pt(1340).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/Proportional Gain';
pt(1340).paramname = 'Gain';
pt(1340).class     = 'scalar';
pt(1340).nrows     = 1;
pt(1340).ncols     = 1;
pt(1340).subsource = 'SS_DOUBLE';
pt(1340).ndims     = '2';
pt(1340).size      = '[]';

pt(1341).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/Proportional Gain1';
pt(1341).paramname = 'Gain';
pt(1341).class     = 'scalar';
pt(1341).nrows     = 1;
pt(1341).ncols     = 1;
pt(1341).subsource = 'SS_DOUBLE';
pt(1341).ndims     = '2';
pt(1341).size      = '[]';

pt(1342).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Torque PD/Proportional Gain';
pt(1342).paramname = 'Gain';
pt(1342).class     = 'scalar';
pt(1342).nrows     = 1;
pt(1342).ncols     = 1;
pt(1342).subsource = 'SS_DOUBLE';
pt(1342).ndims     = '2';
pt(1342).size      = '[]';

pt(1343).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/Gain1';
pt(1343).paramname = 'Gain';
pt(1343).class     = 'scalar';
pt(1343).nrows     = 1;
pt(1343).ncols     = 1;
pt(1343).subsource = 'SS_DOUBLE';
pt(1343).ndims     = '2';
pt(1343).size      = '[]';

pt(1344).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1344).paramname = 'Numerator';
pt(1344).class     = 'vector';
pt(1344).nrows     = 1;
pt(1344).ncols     = 2;
pt(1344).subsource = 'SS_DOUBLE';
pt(1344).ndims     = '2';
pt(1344).size      = '[]';

pt(1345).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1345).paramname = 'Denominator';
pt(1345).class     = 'vector';
pt(1345).nrows     = 1;
pt(1345).ncols     = 2;
pt(1345).subsource = 'SS_DOUBLE';
pt(1345).ndims     = '2';
pt(1345).size      = '[]';

pt(1346).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1346).paramname = 'InitialStates';
pt(1346).class     = 'scalar';
pt(1346).nrows     = 1;
pt(1346).ncols     = 1;
pt(1346).subsource = 'SS_DOUBLE';
pt(1346).ndims     = '2';
pt(1346).size      = '[]';

pt(1347).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/Gain1';
pt(1347).paramname = 'Gain';
pt(1347).class     = 'scalar';
pt(1347).nrows     = 1;
pt(1347).ncols     = 1;
pt(1347).subsource = 'SS_DOUBLE';
pt(1347).ndims     = '2';
pt(1347).size      = '[]';

pt(1348).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1348).paramname = 'Numerator';
pt(1348).class     = 'vector';
pt(1348).nrows     = 1;
pt(1348).ncols     = 2;
pt(1348).subsource = 'SS_DOUBLE';
pt(1348).ndims     = '2';
pt(1348).size      = '[]';

pt(1349).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1349).paramname = 'Denominator';
pt(1349).class     = 'vector';
pt(1349).nrows     = 1;
pt(1349).ncols     = 2;
pt(1349).subsource = 'SS_DOUBLE';
pt(1349).ndims     = '2';
pt(1349).size      = '[]';

pt(1350).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1350).paramname = 'InitialStates';
pt(1350).class     = 'scalar';
pt(1350).nrows     = 1;
pt(1350).ncols     = 1;
pt(1350).subsource = 'SS_DOUBLE';
pt(1350).ndims     = '2';
pt(1350).size      = '[]';

pt(1351).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/Gain1';
pt(1351).paramname = 'Gain';
pt(1351).class     = 'scalar';
pt(1351).nrows     = 1;
pt(1351).ncols     = 1;
pt(1351).subsource = 'SS_DOUBLE';
pt(1351).ndims     = '2';
pt(1351).size      = '[]';

pt(1352).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1352).paramname = 'Numerator';
pt(1352).class     = 'vector';
pt(1352).nrows     = 1;
pt(1352).ncols     = 2;
pt(1352).subsource = 'SS_DOUBLE';
pt(1352).ndims     = '2';
pt(1352).size      = '[]';

pt(1353).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1353).paramname = 'Denominator';
pt(1353).class     = 'vector';
pt(1353).nrows     = 1;
pt(1353).ncols     = 2;
pt(1353).subsource = 'SS_DOUBLE';
pt(1353).ndims     = '2';
pt(1353).size      = '[]';

pt(1354).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/single_pole_filter';
pt(1354).paramname = 'InitialStates';
pt(1354).class     = 'scalar';
pt(1354).nrows     = 1;
pt(1354).ncols     = 1;
pt(1354).subsource = 'SS_DOUBLE';
pt(1354).ndims     = '2';
pt(1354).size      = '[]';

pt(1355).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/Gain1';
pt(1355).paramname = 'Gain';
pt(1355).class     = 'scalar';
pt(1355).nrows     = 1;
pt(1355).ncols     = 1;
pt(1355).subsource = 'SS_DOUBLE';
pt(1355).ndims     = '2';
pt(1355).size      = '[]';

pt(1356).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1356).paramname = 'Numerator';
pt(1356).class     = 'vector';
pt(1356).nrows     = 1;
pt(1356).ncols     = 2;
pt(1356).subsource = 'SS_DOUBLE';
pt(1356).ndims     = '2';
pt(1356).size      = '[]';

pt(1357).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1357).paramname = 'Denominator';
pt(1357).class     = 'vector';
pt(1357).nrows     = 1;
pt(1357).ncols     = 2;
pt(1357).subsource = 'SS_DOUBLE';
pt(1357).ndims     = '2';
pt(1357).size      = '[]';

pt(1358).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/single_pole_filter';
pt(1358).paramname = 'InitialStates';
pt(1358).class     = 'scalar';
pt(1358).nrows     = 1;
pt(1358).ncols     = 1;
pt(1358).subsource = 'SS_DOUBLE';
pt(1358).ndims     = '2';
pt(1358).size      = '[]';

pt(1359).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/UD';
pt(1359).paramname = 'InitialCondition';
pt(1359).class     = 'scalar';
pt(1359).nrows     = 1;
pt(1359).ncols     = 1;
pt(1359).subsource = 'SS_DOUBLE';
pt(1359).ndims     = '2';
pt(1359).size      = '[]';

pt(1360).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Left Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/UD';
pt(1360).paramname = 'InitialCondition';
pt(1360).class     = 'scalar';
pt(1360).nrows     = 1;
pt(1360).ncols     = 1;
pt(1360).subsource = 'SS_DOUBLE';
pt(1360).ndims     = '2';
pt(1360).size      = '[]';

pt(1361).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) back/Position PD/filtered_derivative/difference/UD';
pt(1361).paramname = 'InitialCondition';
pt(1361).class     = 'scalar';
pt(1361).nrows     = 1;
pt(1361).ncols     = 1;
pt(1361).subsource = 'SS_DOUBLE';
pt(1361).ndims     = '2';
pt(1361).size      = '[]';

pt(1362).blockname = 'Simple Sinusoidal Motion/SEA Controllers (Right Leg)/SEA Controller (Position) front/Position PD/filtered_derivative/difference/UD';
pt(1362).paramname = 'InitialCondition';
pt(1362).class     = 'scalar';
pt(1362).nrows     = 1;
pt(1362).ncols     = 1;
pt(1362).subsource = 'SS_DOUBLE';
pt(1362).ndims     = '2';
pt(1362).size      = '[]';

function len = getlenPT
len = 1362;

