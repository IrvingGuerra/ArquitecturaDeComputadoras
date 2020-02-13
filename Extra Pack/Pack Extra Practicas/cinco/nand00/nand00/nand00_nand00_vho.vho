
-- VHDL netlist produced by program ldbanno, Version Diamond Version 3.9.0.99.2

-- ldbanno -n VHDL -o nand00_nand00_vho.vho -w -neg -gui -msgset C:/Users/Diego EG/Desktop/ArqPracticas/cinco/nand00/promote.xml nand00_nand00.ncd 
-- Netlist created on Fri Sep 08 00:51:57 2017
-- Netlist written on Fri Sep 08 00:53:28 2017
-- Design is for device LCMXO2-7000HE
-- Design is for package TQFP144
-- Design is for performance grade 5

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"33FF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_0: lut4
      port map (A=>GNDI, B=>B0_ipd, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3F3F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_7: lut40001
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"5F5F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_6: lut40002
      port map (A=>A0_ipd, B=>GNDI, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"33FF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_3";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_5: lut40003
      port map (A=>GNDI, B=>B0_ipd, C=>GNDI, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"3F3F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_4";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_4: lut40004
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0FFF")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_5";

      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_5 : ENTITY IS TRUE;

  end SLICE_5;

  architecture Structure of SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_3: lut40005
      port map (A=>GNDI, B=>GNDI, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
    END BLOCK;

    VitalBehavior : PROCESS (D0_ipd, C0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7777")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_6";

      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_2: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B0_ipd, A0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7";

      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    Yna_pad_RNO_1: lut40004
      port map (A=>GNDI, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
    END BLOCK;

    VitalBehavior : PROCESS (C0_ipd, B0_ipd, F0_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity Yna_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_0_B : ENTITY IS TRUE;

  end Yna_0_B;

  architecture Structure of Yna_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna0_out)
    VARIABLE Yna0_zd         	: std_logic := 'X';
    VARIABLE Yna0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna0_zd 	:= Yna0_out;

    VitalPathDelay01 (
      OutSignal => Yna0, OutSignalName => "Yna0", OutTemp => Yna0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna0,
                           PathCondition => TRUE)),
      GlitchData => Yna0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0007 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0007 : ENTITY IS TRUE;

  end xo2iobuf0007;

  architecture Structure of xo2iobuf0007 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity Ana_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_0_B";

      tipd_Ana0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana0 	: VitalDelayType := 0 ns;
      tpw_Ana0_posedge	: VitalDelayType := 0 ns;
      tpw_Ana0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_0_B : ENTITY IS TRUE;

  end Ana_0_B;

  architecture Structure of Ana_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana0_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_0: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana0_ipd, Ana0, tipd_Ana0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana0_Ana0          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana0_ipd,
        TestSignalName => "Ana0",
        Period => tperiod_Ana0,
        PulseWidthHigh => tpw_Ana0_posedge,
        PulseWidthLow => tpw_Ana0_negedge,
        PeriodData => periodcheckinfo_Ana0,
        Violation => tviol_Ana0_Ana0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana0_ipd'last_event,
                           PathDelay => tpd_Ana0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_7_B : ENTITY IS TRUE;

  end Yna_7_B;

  architecture Structure of Yna_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna7_out)
    VARIABLE Yna7_zd         	: std_logic := 'X';
    VARIABLE Yna7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna7_zd 	:= Yna7_out;

    VitalPathDelay01 (
      OutSignal => Yna7, OutSignalName => "Yna7", OutTemp => Yna7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna7,
                           PathCondition => TRUE)),
      GlitchData => Yna7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_6_B : ENTITY IS TRUE;

  end Yna_6_B;

  architecture Structure of Yna_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna6_out)
    VARIABLE Yna6_zd         	: std_logic := 'X';
    VARIABLE Yna6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna6_zd 	:= Yna6_out;

    VitalPathDelay01 (
      OutSignal => Yna6, OutSignalName => "Yna6", OutTemp => Yna6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna6,
                           PathCondition => TRUE)),
      GlitchData => Yna6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_5_B : ENTITY IS TRUE;

  end Yna_5_B;

  architecture Structure of Yna_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna5_out)
    VARIABLE Yna5_zd         	: std_logic := 'X';
    VARIABLE Yna5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna5_zd 	:= Yna5_out;

    VitalPathDelay01 (
      OutSignal => Yna5, OutSignalName => "Yna5", OutTemp => Yna5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna5,
                           PathCondition => TRUE)),
      GlitchData => Yna5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_4_B : ENTITY IS TRUE;

  end Yna_4_B;

  architecture Structure of Yna_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna4_out)
    VARIABLE Yna4_zd         	: std_logic := 'X';
    VARIABLE Yna4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna4_zd 	:= Yna4_out;

    VitalPathDelay01 (
      OutSignal => Yna4, OutSignalName => "Yna4", OutTemp => Yna4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna4,
                           PathCondition => TRUE)),
      GlitchData => Yna4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_3_B : ENTITY IS TRUE;

  end Yna_3_B;

  architecture Structure of Yna_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna3_out)
    VARIABLE Yna3_zd         	: std_logic := 'X';
    VARIABLE Yna3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna3_zd 	:= Yna3_out;

    VitalPathDelay01 (
      OutSignal => Yna3, OutSignalName => "Yna3", OutTemp => Yna3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna3,
                           PathCondition => TRUE)),
      GlitchData => Yna3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_2_B : ENTITY IS TRUE;

  end Yna_2_B;

  architecture Structure of Yna_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna2_out)
    VARIABLE Yna2_zd         	: std_logic := 'X';
    VARIABLE Yna2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna2_zd 	:= Yna2_out;

    VitalPathDelay01 (
      OutSignal => Yna2, OutSignalName => "Yna2", OutTemp => Yna2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna2,
                           PathCondition => TRUE)),
      GlitchData => Yna2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Yna_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Yna_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Yna_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_Yna1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; Yna1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF Yna_1_B : ENTITY IS TRUE;

  end Yna_1_B;

  architecture Structure of Yna_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal Yna1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    Yna_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>Yna1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, Yna1_out)
    VARIABLE Yna1_zd         	: std_logic := 'X';
    VARIABLE Yna1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    Yna1_zd 	:= Yna1_out;

    VitalPathDelay01 (
      OutSignal => Yna1, OutSignalName => "Yna1", OutTemp => Yna1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_Yna1,
                           PathCondition => TRUE)),
      GlitchData => Yna1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_7_B";

      tipd_Bna7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna7 	: VitalDelayType := 0 ns;
      tpw_Bna7_posedge	: VitalDelayType := 0 ns;
      tpw_Bna7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_7_B : ENTITY IS TRUE;

  end Bna_7_B;

  architecture Structure of Bna_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna7_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_7: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna7_ipd, Bna7, tipd_Bna7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna7_Bna7          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna7_ipd,
        TestSignalName => "Bna7",
        Period => tperiod_Bna7,
        PulseWidthHigh => tpw_Bna7_posedge,
        PulseWidthLow => tpw_Bna7_negedge,
        PeriodData => periodcheckinfo_Bna7,
        Violation => tviol_Bna7_Bna7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna7_ipd'last_event,
                           PathDelay => tpd_Bna7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_6_B";

      tipd_Bna6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna6 	: VitalDelayType := 0 ns;
      tpw_Bna6_posedge	: VitalDelayType := 0 ns;
      tpw_Bna6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_6_B : ENTITY IS TRUE;

  end Bna_6_B;

  architecture Structure of Bna_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna6_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_6: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna6_ipd, Bna6, tipd_Bna6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna6_Bna6          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna6_ipd,
        TestSignalName => "Bna6",
        Period => tperiod_Bna6,
        PulseWidthHigh => tpw_Bna6_posedge,
        PulseWidthLow => tpw_Bna6_negedge,
        PeriodData => periodcheckinfo_Bna6,
        Violation => tviol_Bna6_Bna6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna6_ipd'last_event,
                           PathDelay => tpd_Bna6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_5_B";

      tipd_Bna5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna5 	: VitalDelayType := 0 ns;
      tpw_Bna5_posedge	: VitalDelayType := 0 ns;
      tpw_Bna5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_5_B : ENTITY IS TRUE;

  end Bna_5_B;

  architecture Structure of Bna_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna5_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_5: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna5_ipd, Bna5, tipd_Bna5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna5_Bna5          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna5_ipd,
        TestSignalName => "Bna5",
        Period => tperiod_Bna5,
        PulseWidthHigh => tpw_Bna5_posedge,
        PulseWidthLow => tpw_Bna5_negedge,
        PeriodData => periodcheckinfo_Bna5,
        Violation => tviol_Bna5_Bna5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna5_ipd'last_event,
                           PathDelay => tpd_Bna5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_4_B";

      tipd_Bna4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna4 	: VitalDelayType := 0 ns;
      tpw_Bna4_posedge	: VitalDelayType := 0 ns;
      tpw_Bna4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_4_B : ENTITY IS TRUE;

  end Bna_4_B;

  architecture Structure of Bna_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna4_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_4: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna4_ipd, Bna4, tipd_Bna4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna4_Bna4          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna4_ipd,
        TestSignalName => "Bna4",
        Period => tperiod_Bna4,
        PulseWidthHigh => tpw_Bna4_posedge,
        PulseWidthLow => tpw_Bna4_negedge,
        PeriodData => periodcheckinfo_Bna4,
        Violation => tviol_Bna4_Bna4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna4_ipd'last_event,
                           PathDelay => tpd_Bna4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_3_B";

      tipd_Bna3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna3 	: VitalDelayType := 0 ns;
      tpw_Bna3_posedge	: VitalDelayType := 0 ns;
      tpw_Bna3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_3_B : ENTITY IS TRUE;

  end Bna_3_B;

  architecture Structure of Bna_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna3_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_3: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna3_ipd, Bna3, tipd_Bna3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna3_Bna3          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna3_ipd,
        TestSignalName => "Bna3",
        Period => tperiod_Bna3,
        PulseWidthHigh => tpw_Bna3_posedge,
        PulseWidthLow => tpw_Bna3_negedge,
        PeriodData => periodcheckinfo_Bna3,
        Violation => tviol_Bna3_Bna3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna3_ipd'last_event,
                           PathDelay => tpd_Bna3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_2_B";

      tipd_Bna2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna2 	: VitalDelayType := 0 ns;
      tpw_Bna2_posedge	: VitalDelayType := 0 ns;
      tpw_Bna2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_2_B : ENTITY IS TRUE;

  end Bna_2_B;

  architecture Structure of Bna_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna2_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_2: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna2_ipd, Bna2, tipd_Bna2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna2_Bna2          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna2_ipd,
        TestSignalName => "Bna2",
        Period => tperiod_Bna2,
        PulseWidthHigh => tpw_Bna2_posedge,
        PulseWidthLow => tpw_Bna2_negedge,
        PeriodData => periodcheckinfo_Bna2,
        Violation => tviol_Bna2_Bna2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna2_ipd'last_event,
                           PathDelay => tpd_Bna2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_1_B";

      tipd_Bna1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna1 	: VitalDelayType := 0 ns;
      tpw_Bna1_posedge	: VitalDelayType := 0 ns;
      tpw_Bna1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_1_B : ENTITY IS TRUE;

  end Bna_1_B;

  architecture Structure of Bna_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna1_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_1: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna1_ipd, Bna1, tipd_Bna1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna1_Bna1          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna1_ipd,
        TestSignalName => "Bna1",
        Period => tperiod_Bna1,
        PulseWidthHigh => tpw_Bna1_posedge,
        PulseWidthLow => tpw_Bna1_negedge,
        PeriodData => periodcheckinfo_Bna1,
        Violation => tviol_Bna1_Bna1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna1_ipd'last_event,
                           PathDelay => tpd_Bna1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Bna_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Bna_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Bna_0_B";

      tipd_Bna0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Bna0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Bna0 	: VitalDelayType := 0 ns;
      tpw_Bna0_posedge	: VitalDelayType := 0 ns;
      tpw_Bna0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Bna0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Bna_0_B : ENTITY IS TRUE;

  end Bna_0_B;

  architecture Structure of Bna_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Bna0_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Bna_pad_0: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Bna0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Bna0_ipd, Bna0, tipd_Bna0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Bna0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Bna0_Bna0          	: x01 := '0';
    VARIABLE periodcheckinfo_Bna0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Bna0_ipd,
        TestSignalName => "Bna0",
        Period => tperiod_Bna0,
        PulseWidthHigh => tpw_Bna0_posedge,
        PulseWidthLow => tpw_Bna0_negedge,
        PeriodData => periodcheckinfo_Bna0,
        Violation => tviol_Bna0_Bna0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Bna0_ipd'last_event,
                           PathDelay => tpd_Bna0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_7_B";

      tipd_Ana7  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana7_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana7 	: VitalDelayType := 0 ns;
      tpw_Ana7_posedge	: VitalDelayType := 0 ns;
      tpw_Ana7_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana7: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_7_B : ENTITY IS TRUE;

  end Ana_7_B;

  architecture Structure of Ana_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana7_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_7: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana7_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana7_ipd, Ana7, tipd_Ana7);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana7_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana7_Ana7          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana7	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana7_ipd,
        TestSignalName => "Ana7",
        Period => tperiod_Ana7,
        PulseWidthHigh => tpw_Ana7_posedge,
        PulseWidthLow => tpw_Ana7_negedge,
        PeriodData => periodcheckinfo_Ana7,
        Violation => tviol_Ana7_Ana7,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana7_ipd'last_event,
                           PathDelay => tpd_Ana7_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_6_B";

      tipd_Ana6  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana6_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana6 	: VitalDelayType := 0 ns;
      tpw_Ana6_posedge	: VitalDelayType := 0 ns;
      tpw_Ana6_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana6: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_6_B : ENTITY IS TRUE;

  end Ana_6_B;

  architecture Structure of Ana_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana6_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_6: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana6_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana6_ipd, Ana6, tipd_Ana6);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana6_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana6_Ana6          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana6	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana6_ipd,
        TestSignalName => "Ana6",
        Period => tperiod_Ana6,
        PulseWidthHigh => tpw_Ana6_posedge,
        PulseWidthLow => tpw_Ana6_negedge,
        PeriodData => periodcheckinfo_Ana6,
        Violation => tviol_Ana6_Ana6,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana6_ipd'last_event,
                           PathDelay => tpd_Ana6_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_5_B";

      tipd_Ana5  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana5_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana5 	: VitalDelayType := 0 ns;
      tpw_Ana5_posedge	: VitalDelayType := 0 ns;
      tpw_Ana5_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana5: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_5_B : ENTITY IS TRUE;

  end Ana_5_B;

  architecture Structure of Ana_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana5_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_5: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana5_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana5_ipd, Ana5, tipd_Ana5);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana5_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana5_Ana5          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana5	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana5_ipd,
        TestSignalName => "Ana5",
        Period => tperiod_Ana5,
        PulseWidthHigh => tpw_Ana5_posedge,
        PulseWidthLow => tpw_Ana5_negedge,
        PeriodData => periodcheckinfo_Ana5,
        Violation => tviol_Ana5_Ana5,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana5_ipd'last_event,
                           PathDelay => tpd_Ana5_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_4_B";

      tipd_Ana4  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana4_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana4 	: VitalDelayType := 0 ns;
      tpw_Ana4_posedge	: VitalDelayType := 0 ns;
      tpw_Ana4_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana4: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_4_B : ENTITY IS TRUE;

  end Ana_4_B;

  architecture Structure of Ana_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana4_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_4: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana4_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana4_ipd, Ana4, tipd_Ana4);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana4_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana4_Ana4          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana4	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana4_ipd,
        TestSignalName => "Ana4",
        Period => tperiod_Ana4,
        PulseWidthHigh => tpw_Ana4_posedge,
        PulseWidthLow => tpw_Ana4_negedge,
        PeriodData => periodcheckinfo_Ana4,
        Violation => tviol_Ana4_Ana4,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana4_ipd'last_event,
                           PathDelay => tpd_Ana4_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_3_B";

      tipd_Ana3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana3 	: VitalDelayType := 0 ns;
      tpw_Ana3_posedge	: VitalDelayType := 0 ns;
      tpw_Ana3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_3_B : ENTITY IS TRUE;

  end Ana_3_B;

  architecture Structure of Ana_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana3_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_3: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana3_ipd, Ana3, tipd_Ana3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana3_Ana3          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana3_ipd,
        TestSignalName => "Ana3",
        Period => tperiod_Ana3,
        PulseWidthHigh => tpw_Ana3_posedge,
        PulseWidthLow => tpw_Ana3_negedge,
        PeriodData => periodcheckinfo_Ana3,
        Violation => tviol_Ana3_Ana3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana3_ipd'last_event,
                           PathDelay => tpd_Ana3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_2_B";

      tipd_Ana2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana2 	: VitalDelayType := 0 ns;
      tpw_Ana2_posedge	: VitalDelayType := 0 ns;
      tpw_Ana2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_2_B : ENTITY IS TRUE;

  end Ana_2_B;

  architecture Structure of Ana_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana2_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_2: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana2_ipd, Ana2, tipd_Ana2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana2_Ana2          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana2_ipd,
        TestSignalName => "Ana2",
        Period => tperiod_Ana2,
        PulseWidthHigh => tpw_Ana2_posedge,
        PulseWidthLow => tpw_Ana2_negedge,
        PeriodData => periodcheckinfo_Ana2,
        Violation => tviol_Ana2_Ana2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana2_ipd'last_event,
                           PathDelay => tpd_Ana2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity Ana_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity Ana_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "Ana_1_B";

      tipd_Ana1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_Ana1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_Ana1 	: VitalDelayType := 0 ns;
      tpw_Ana1_posedge	: VitalDelayType := 0 ns;
      tpw_Ana1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; Ana1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF Ana_1_B : ENTITY IS TRUE;

  end Ana_1_B;

  architecture Structure of Ana_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal Ana1_ipd 	: std_logic := 'X';

    component xo2iobuf0007
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    Ana_pad_1: xo2iobuf0007
      port map (Z=>PADDI_out, PAD=>Ana1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(Ana1_ipd, Ana1, tipd_Ana1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, Ana1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_Ana1_Ana1          	: x01 := '0';
    VARIABLE periodcheckinfo_Ana1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => Ana1_ipd,
        TestSignalName => "Ana1",
        Period => tperiod_Ana1,
        PulseWidthHigh => tpw_Ana1_posedge,
        PulseWidthLow => tpw_Ana1_negedge,
        PeriodData => periodcheckinfo_Ana1,
        Violation => tviol_Ana1_Ana1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => Ana1_ipd'last_event,
                           PathDelay => tpd_Ana1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity nand00
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity nand00 is
    port (Ana: in Std_logic_vector (7 downto 0); 
          Bna: in Std_logic_vector (7 downto 0); 
          Yna: out Std_logic_vector (7 downto 0));



  end nand00;

  architecture Structure of nand00 is
    signal Ana_c_0: Std_logic;
    signal Bna_c_0: Std_logic;
    signal Yna_c_0: Std_logic;
    signal Ana_c_7: Std_logic;
    signal Bna_c_7: Std_logic;
    signal Yna_c_7: Std_logic;
    signal Bna_c_6: Std_logic;
    signal Ana_c_6: Std_logic;
    signal Yna_c_6: Std_logic;
    signal Bna_c_5: Std_logic;
    signal Ana_c_5: Std_logic;
    signal Yna_c_5: Std_logic;
    signal Bna_c_4: Std_logic;
    signal Ana_c_4: Std_logic;
    signal Yna_c_4: Std_logic;
    signal Ana_c_3: Std_logic;
    signal Bna_c_3: Std_logic;
    signal Yna_c_3: Std_logic;
    signal Ana_c_2: Std_logic;
    signal Bna_c_2: Std_logic;
    signal Yna_c_2: Std_logic;
    signal Bna_c_1: Std_logic;
    signal Ana_c_1: Std_logic;
    signal Yna_c_1: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (D0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_1
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_2
      port (C0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_3
      port (D0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_4
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_5
      port (D0: in Std_logic; C0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_6
      port (B0: in Std_logic; A0: in Std_logic; F0: out Std_logic);
    end component;
    component SLICE_7
      port (C0: in Std_logic; B0: in Std_logic; F0: out Std_logic);
    end component;
    component Yna_0_B
      port (PADDO: in Std_logic; Yna0: out Std_logic);
    end component;
    component Ana_0_B
      port (PADDI: out Std_logic; Ana0: in Std_logic);
    end component;
    component Yna_7_B
      port (PADDO: in Std_logic; Yna7: out Std_logic);
    end component;
    component Yna_6_B
      port (PADDO: in Std_logic; Yna6: out Std_logic);
    end component;
    component Yna_5_B
      port (PADDO: in Std_logic; Yna5: out Std_logic);
    end component;
    component Yna_4_B
      port (PADDO: in Std_logic; Yna4: out Std_logic);
    end component;
    component Yna_3_B
      port (PADDO: in Std_logic; Yna3: out Std_logic);
    end component;
    component Yna_2_B
      port (PADDO: in Std_logic; Yna2: out Std_logic);
    end component;
    component Yna_1_B
      port (PADDO: in Std_logic; Yna1: out Std_logic);
    end component;
    component Bna_7_B
      port (PADDI: out Std_logic; Bna7: in Std_logic);
    end component;
    component Bna_6_B
      port (PADDI: out Std_logic; Bna6: in Std_logic);
    end component;
    component Bna_5_B
      port (PADDI: out Std_logic; Bna5: in Std_logic);
    end component;
    component Bna_4_B
      port (PADDI: out Std_logic; Bna4: in Std_logic);
    end component;
    component Bna_3_B
      port (PADDI: out Std_logic; Bna3: in Std_logic);
    end component;
    component Bna_2_B
      port (PADDI: out Std_logic; Bna2: in Std_logic);
    end component;
    component Bna_1_B
      port (PADDI: out Std_logic; Bna1: in Std_logic);
    end component;
    component Bna_0_B
      port (PADDI: out Std_logic; Bna0: in Std_logic);
    end component;
    component Ana_7_B
      port (PADDI: out Std_logic; Ana7: in Std_logic);
    end component;
    component Ana_6_B
      port (PADDI: out Std_logic; Ana6: in Std_logic);
    end component;
    component Ana_5_B
      port (PADDI: out Std_logic; Ana5: in Std_logic);
    end component;
    component Ana_4_B
      port (PADDI: out Std_logic; Ana4: in Std_logic);
    end component;
    component Ana_3_B
      port (PADDI: out Std_logic; Ana3: in Std_logic);
    end component;
    component Ana_2_B
      port (PADDI: out Std_logic; Ana2: in Std_logic);
    end component;
    component Ana_1_B
      port (PADDI: out Std_logic; Ana1: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (D0=>Ana_c_0, B0=>Bna_c_0, F0=>Yna_c_0);
    SLICE_1I: SLICE_1
      port map (C0=>Ana_c_7, B0=>Bna_c_7, F0=>Yna_c_7);
    SLICE_2I: SLICE_2
      port map (C0=>Bna_c_6, A0=>Ana_c_6, F0=>Yna_c_6);
    SLICE_3I: SLICE_3
      port map (D0=>Bna_c_5, B0=>Ana_c_5, F0=>Yna_c_5);
    SLICE_4I: SLICE_4
      port map (C0=>Bna_c_4, B0=>Ana_c_4, F0=>Yna_c_4);
    SLICE_5I: SLICE_5
      port map (D0=>Ana_c_3, C0=>Bna_c_3, F0=>Yna_c_3);
    SLICE_6I: SLICE_6
      port map (B0=>Ana_c_2, A0=>Bna_c_2, F0=>Yna_c_2);
    SLICE_7I: SLICE_7
      port map (C0=>Bna_c_1, B0=>Ana_c_1, F0=>Yna_c_1);
    Yna_0_I: Yna_0_B
      port map (PADDO=>Yna_c_0, Yna0=>Yna(0));
    Ana_0_I: Ana_0_B
      port map (PADDI=>Ana_c_0, Ana0=>Ana(0));
    Yna_7_I: Yna_7_B
      port map (PADDO=>Yna_c_7, Yna7=>Yna(7));
    Yna_6_I: Yna_6_B
      port map (PADDO=>Yna_c_6, Yna6=>Yna(6));
    Yna_5_I: Yna_5_B
      port map (PADDO=>Yna_c_5, Yna5=>Yna(5));
    Yna_4_I: Yna_4_B
      port map (PADDO=>Yna_c_4, Yna4=>Yna(4));
    Yna_3_I: Yna_3_B
      port map (PADDO=>Yna_c_3, Yna3=>Yna(3));
    Yna_2_I: Yna_2_B
      port map (PADDO=>Yna_c_2, Yna2=>Yna(2));
    Yna_1_I: Yna_1_B
      port map (PADDO=>Yna_c_1, Yna1=>Yna(1));
    Bna_7_I: Bna_7_B
      port map (PADDI=>Bna_c_7, Bna7=>Bna(7));
    Bna_6_I: Bna_6_B
      port map (PADDI=>Bna_c_6, Bna6=>Bna(6));
    Bna_5_I: Bna_5_B
      port map (PADDI=>Bna_c_5, Bna5=>Bna(5));
    Bna_4_I: Bna_4_B
      port map (PADDI=>Bna_c_4, Bna4=>Bna(4));
    Bna_3_I: Bna_3_B
      port map (PADDI=>Bna_c_3, Bna3=>Bna(3));
    Bna_2_I: Bna_2_B
      port map (PADDI=>Bna_c_2, Bna2=>Bna(2));
    Bna_1_I: Bna_1_B
      port map (PADDI=>Bna_c_1, Bna1=>Bna(1));
    Bna_0_I: Bna_0_B
      port map (PADDI=>Bna_c_0, Bna0=>Bna(0));
    Ana_7_I: Ana_7_B
      port map (PADDI=>Ana_c_7, Ana7=>Ana(7));
    Ana_6_I: Ana_6_B
      port map (PADDI=>Ana_c_6, Ana6=>Ana(6));
    Ana_5_I: Ana_5_B
      port map (PADDI=>Ana_c_5, Ana5=>Ana(5));
    Ana_4_I: Ana_4_B
      port map (PADDI=>Ana_c_4, Ana4=>Ana(4));
    Ana_3_I: Ana_3_B
      port map (PADDI=>Ana_c_3, Ana3=>Ana(3));
    Ana_2_I: Ana_2_B
      port map (PADDI=>Ana_c_2, Ana2=>Ana(2));
    Ana_1_I: Ana_1_B
      port map (PADDI=>Ana_c_1, Ana1=>Ana(1));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of nand00 is
    for Structure
    end for;
  end Structure_CON;


