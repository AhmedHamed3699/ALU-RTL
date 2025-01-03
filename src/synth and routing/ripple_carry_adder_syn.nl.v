/* Generated by Yosys 0.46 (git sha1 e97731b9dda91fa5fa53ed87df7c34163ba59a41, clang++ 17.0.6 -fPIC -O3) */

module ripple_carry_adder(a, b, sum, overflow);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire \FA0.p1 ;
  input [31:0] a;
  wire [31:0] a;
  input [31:0] b;
  wire [31:0] b;
  output overflow;
  wire overflow;
  wire \ripple[10].FA.sum ;
  wire \ripple[11].FA.sum ;
  wire \ripple[12].FA.sum ;
  wire \ripple[13].FA.sum ;
  wire \ripple[14].FA.sum ;
  wire \ripple[15].FA.sum ;
  wire \ripple[16].FA.sum ;
  wire \ripple[17].FA.sum ;
  wire \ripple[18].FA.sum ;
  wire \ripple[19].FA.sum ;
  wire \ripple[1].FA.sum ;
  wire \ripple[20].FA.sum ;
  wire \ripple[21].FA.sum ;
  wire \ripple[22].FA.sum ;
  wire \ripple[23].FA.sum ;
  wire \ripple[24].FA.sum ;
  wire \ripple[25].FA.sum ;
  wire \ripple[26].FA.sum ;
  wire \ripple[27].FA.sum ;
  wire \ripple[28].FA.sum ;
  wire \ripple[29].FA.sum ;
  wire \ripple[2].FA.sum ;
  wire \ripple[30].FA.sum ;
  wire \ripple[31].FA.sum ;
  wire \ripple[3].FA.sum ;
  wire \ripple[4].FA.sum ;
  wire \ripple[5].FA.sum ;
  wire \ripple[6].FA.sum ;
  wire \ripple[7].FA.sum ;
  wire \ripple[8].FA.sum ;
  wire \ripple[9].FA.sum ;
  output [31:0] sum;
  wire [31:0] sum;
  sky130_fd_sc_hd__nor2_2 _133_ (
    .A(b[31]),
    .B(a[31]),
    .Y(_131_)
  );
  sky130_fd_sc_hd__or2_2 _134_ (
    .A(b[31]),
    .B(a[31]),
    .X(_132_)
  );
  sky130_fd_sc_hd__and2_2 _135_ (
    .A(b[31]),
    .B(a[31]),
    .X(_000_)
  );
  sky130_fd_sc_hd__nand2_2 _136_ (
    .A(b[31]),
    .B(a[31]),
    .Y(_001_)
  );
  sky130_fd_sc_hd__and2_2 _137_ (
    .A(b[30]),
    .B(a[30]),
    .X(_002_)
  );
  sky130_fd_sc_hd__nand2_2 _138_ (
    .A(b[30]),
    .B(a[30]),
    .Y(_003_)
  );
  sky130_fd_sc_hd__and2_2 _139_ (
    .A(b[29]),
    .B(a[29]),
    .X(_004_)
  );
  sky130_fd_sc_hd__nor2_2 _140_ (
    .A(b[29]),
    .B(a[29]),
    .Y(_005_)
  );
  sky130_fd_sc_hd__nor2_2 _141_ (
    .A(_004_),
    .B(_005_),
    .Y(_006_)
  );
  sky130_fd_sc_hd__and2_2 _142_ (
    .A(b[28]),
    .B(a[28]),
    .X(_007_)
  );
  sky130_fd_sc_hd__and2_2 _143_ (
    .A(b[27]),
    .B(a[27]),
    .X(_008_)
  );
  sky130_fd_sc_hd__nor2_2 _144_ (
    .A(b[27]),
    .B(a[27]),
    .Y(_009_)
  );
  sky130_fd_sc_hd__nor2_2 _145_ (
    .A(_008_),
    .B(_009_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__and2_2 _146_ (
    .A(b[26]),
    .B(a[26]),
    .X(_011_)
  );
  sky130_fd_sc_hd__and2_2 _147_ (
    .A(b[25]),
    .B(a[25]),
    .X(_012_)
  );
  sky130_fd_sc_hd__nor2_2 _148_ (
    .A(b[25]),
    .B(a[25]),
    .Y(_013_)
  );
  sky130_fd_sc_hd__nor2_2 _149_ (
    .A(_012_),
    .B(_013_),
    .Y(_014_)
  );
  sky130_fd_sc_hd__and2_2 _150_ (
    .A(b[24]),
    .B(a[24]),
    .X(_015_)
  );
  sky130_fd_sc_hd__and2_2 _151_ (
    .A(b[23]),
    .B(a[23]),
    .X(_016_)
  );
  sky130_fd_sc_hd__nor2_2 _152_ (
    .A(b[23]),
    .B(a[23]),
    .Y(_017_)
  );
  sky130_fd_sc_hd__nor2_2 _153_ (
    .A(_016_),
    .B(_017_),
    .Y(_018_)
  );
  sky130_fd_sc_hd__and2_2 _154_ (
    .A(b[22]),
    .B(a[22]),
    .X(_019_)
  );
  sky130_fd_sc_hd__and2_2 _155_ (
    .A(b[21]),
    .B(a[21]),
    .X(_020_)
  );
  sky130_fd_sc_hd__nor2_2 _156_ (
    .A(b[21]),
    .B(a[21]),
    .Y(_021_)
  );
  sky130_fd_sc_hd__nor2_2 _157_ (
    .A(_020_),
    .B(_021_),
    .Y(_022_)
  );
  sky130_fd_sc_hd__and2_2 _158_ (
    .A(b[20]),
    .B(a[20]),
    .X(_023_)
  );
  sky130_fd_sc_hd__and2_2 _159_ (
    .A(b[19]),
    .B(a[19]),
    .X(_024_)
  );
  sky130_fd_sc_hd__nor2_2 _160_ (
    .A(b[19]),
    .B(a[19]),
    .Y(_025_)
  );
  sky130_fd_sc_hd__nor2_2 _161_ (
    .A(_024_),
    .B(_025_),
    .Y(_026_)
  );
  sky130_fd_sc_hd__and2_2 _162_ (
    .A(b[18]),
    .B(a[18]),
    .X(_027_)
  );
  sky130_fd_sc_hd__and2_2 _163_ (
    .A(b[17]),
    .B(a[17]),
    .X(_028_)
  );
  sky130_fd_sc_hd__nor2_2 _164_ (
    .A(b[17]),
    .B(a[17]),
    .Y(_029_)
  );
  sky130_fd_sc_hd__nor2_2 _165_ (
    .A(_028_),
    .B(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__and2_2 _166_ (
    .A(b[16]),
    .B(a[16]),
    .X(_031_)
  );
  sky130_fd_sc_hd__and2_2 _167_ (
    .A(b[15]),
    .B(a[15]),
    .X(_032_)
  );
  sky130_fd_sc_hd__nor2_2 _168_ (
    .A(b[15]),
    .B(a[15]),
    .Y(_033_)
  );
  sky130_fd_sc_hd__nor2_2 _169_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__and2_2 _170_ (
    .A(b[14]),
    .B(a[14]),
    .X(_035_)
  );
  sky130_fd_sc_hd__and2_2 _171_ (
    .A(b[13]),
    .B(a[13]),
    .X(_036_)
  );
  sky130_fd_sc_hd__nor2_2 _172_ (
    .A(b[13]),
    .B(a[13]),
    .Y(_037_)
  );
  sky130_fd_sc_hd__nor2_2 _173_ (
    .A(_036_),
    .B(_037_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__and2_2 _174_ (
    .A(b[12]),
    .B(a[12]),
    .X(_039_)
  );
  sky130_fd_sc_hd__and2_2 _175_ (
    .A(b[11]),
    .B(a[11]),
    .X(_040_)
  );
  sky130_fd_sc_hd__nor2_2 _176_ (
    .A(b[11]),
    .B(a[11]),
    .Y(_041_)
  );
  sky130_fd_sc_hd__nor2_2 _177_ (
    .A(_040_),
    .B(_041_),
    .Y(_042_)
  );
  sky130_fd_sc_hd__and2_2 _178_ (
    .A(b[10]),
    .B(a[10]),
    .X(_043_)
  );
  sky130_fd_sc_hd__and2_2 _179_ (
    .A(b[9]),
    .B(a[9]),
    .X(_044_)
  );
  sky130_fd_sc_hd__nor2_2 _180_ (
    .A(b[9]),
    .B(a[9]),
    .Y(_045_)
  );
  sky130_fd_sc_hd__nor2_2 _181_ (
    .A(_044_),
    .B(_045_),
    .Y(_046_)
  );
  sky130_fd_sc_hd__and2_2 _182_ (
    .A(b[8]),
    .B(a[8]),
    .X(_047_)
  );
  sky130_fd_sc_hd__and2_2 _183_ (
    .A(b[7]),
    .B(a[7]),
    .X(_048_)
  );
  sky130_fd_sc_hd__nor2_2 _184_ (
    .A(b[7]),
    .B(a[7]),
    .Y(_049_)
  );
  sky130_fd_sc_hd__nor2_2 _185_ (
    .A(_048_),
    .B(_049_),
    .Y(_050_)
  );
  sky130_fd_sc_hd__and2_2 _186_ (
    .A(b[6]),
    .B(a[6]),
    .X(_051_)
  );
  sky130_fd_sc_hd__and2_2 _187_ (
    .A(b[5]),
    .B(a[5]),
    .X(_052_)
  );
  sky130_fd_sc_hd__nor2_2 _188_ (
    .A(b[5]),
    .B(a[5]),
    .Y(_053_)
  );
  sky130_fd_sc_hd__nor2_2 _189_ (
    .A(_052_),
    .B(_053_),
    .Y(_054_)
  );
  sky130_fd_sc_hd__and2_2 _190_ (
    .A(b[4]),
    .B(a[4]),
    .X(_055_)
  );
  sky130_fd_sc_hd__and2_2 _191_ (
    .A(b[3]),
    .B(a[3]),
    .X(_056_)
  );
  sky130_fd_sc_hd__nand2_2 _192_ (
    .A(b[3]),
    .B(a[3]),
    .Y(_057_)
  );
  sky130_fd_sc_hd__or2_2 _193_ (
    .A(b[3]),
    .B(a[3]),
    .X(_058_)
  );
  sky130_fd_sc_hd__or2_2 _194_ (
    .A(b[2]),
    .B(a[2]),
    .X(_059_)
  );
  sky130_fd_sc_hd__nand2_2 _195_ (
    .A(b[2]),
    .B(a[2]),
    .Y(_060_)
  );
  sky130_fd_sc_hd__or2_2 _196_ (
    .A(b[1]),
    .B(a[1]),
    .X(_061_)
  );
  sky130_fd_sc_hd__nand2_2 _197_ (
    .A(b[1]),
    .B(a[1]),
    .Y(_062_)
  );
  sky130_fd_sc_hd__o211ai_2 _198_ (
    .A1(b[1]),
    .A2(a[1]),
    .B1(b[0]),
    .C1(a[0]),
    .Y(_063_)
  );
  sky130_fd_sc_hd__and2_2 _199_ (
    .A(_062_),
    .B(_063_),
    .X(_064_)
  );
  sky130_fd_sc_hd__nand3_2 _200_ (
    .A(_060_),
    .B(_062_),
    .C(_063_),
    .Y(_065_)
  );
  sky130_fd_sc_hd__o2111ai_2 _201_ (
    .A1(b[2]),
    .A2(a[2]),
    .B1(_057_),
    .C1(_058_),
    .D1(_065_),
    .Y(_066_)
  );
  sky130_fd_sc_hd__a31oi_2 _202_ (
    .A1(_058_),
    .A2(_059_),
    .A3(_065_),
    .B1(_056_),
    .Y(_067_)
  );
  sky130_fd_sc_hd__nor2_2 _203_ (
    .A(b[4]),
    .B(a[4]),
    .Y(_068_)
  );
  sky130_fd_sc_hd__or2_2 _204_ (
    .A(_055_),
    .B(_068_),
    .X(_069_)
  );
  sky130_fd_sc_hd__o21bai_2 _205_ (
    .A1(_069_),
    .A2(_067_),
    .B1_N(_055_),
    .Y(_070_)
  );
  sky130_fd_sc_hd__a21oi_2 _206_ (
    .A1(_070_),
    .A2(_054_),
    .B1(_052_),
    .Y(_071_)
  );
  sky130_fd_sc_hd__nor2_2 _207_ (
    .A(b[6]),
    .B(a[6]),
    .Y(_072_)
  );
  sky130_fd_sc_hd__or2_2 _208_ (
    .A(_051_),
    .B(_072_),
    .X(_073_)
  );
  sky130_fd_sc_hd__o21bai_2 _209_ (
    .A1(_073_),
    .A2(_071_),
    .B1_N(_051_),
    .Y(_074_)
  );
  sky130_fd_sc_hd__a21oi_2 _210_ (
    .A1(_074_),
    .A2(_050_),
    .B1(_048_),
    .Y(_075_)
  );
  sky130_fd_sc_hd__nor2_2 _211_ (
    .A(b[8]),
    .B(a[8]),
    .Y(_076_)
  );
  sky130_fd_sc_hd__or2_2 _212_ (
    .A(_047_),
    .B(_076_),
    .X(_077_)
  );
  sky130_fd_sc_hd__o21bai_2 _213_ (
    .A1(_077_),
    .A2(_075_),
    .B1_N(_047_),
    .Y(_078_)
  );
  sky130_fd_sc_hd__a21oi_2 _214_ (
    .A1(_078_),
    .A2(_046_),
    .B1(_044_),
    .Y(_079_)
  );
  sky130_fd_sc_hd__nor2_2 _215_ (
    .A(b[10]),
    .B(a[10]),
    .Y(_080_)
  );
  sky130_fd_sc_hd__or2_2 _216_ (
    .A(_043_),
    .B(_080_),
    .X(_081_)
  );
  sky130_fd_sc_hd__o21bai_2 _217_ (
    .A1(_081_),
    .A2(_079_),
    .B1_N(_043_),
    .Y(_082_)
  );
  sky130_fd_sc_hd__a21oi_2 _218_ (
    .A1(_082_),
    .A2(_042_),
    .B1(_040_),
    .Y(_083_)
  );
  sky130_fd_sc_hd__nor2_2 _219_ (
    .A(b[12]),
    .B(a[12]),
    .Y(_084_)
  );
  sky130_fd_sc_hd__or2_2 _220_ (
    .A(_039_),
    .B(_084_),
    .X(_085_)
  );
  sky130_fd_sc_hd__o21bai_2 _221_ (
    .A1(_085_),
    .A2(_083_),
    .B1_N(_039_),
    .Y(_086_)
  );
  sky130_fd_sc_hd__a21oi_2 _222_ (
    .A1(_086_),
    .A2(_038_),
    .B1(_036_),
    .Y(_087_)
  );
  sky130_fd_sc_hd__nor2_2 _223_ (
    .A(b[14]),
    .B(a[14]),
    .Y(_088_)
  );
  sky130_fd_sc_hd__or2_2 _224_ (
    .A(_035_),
    .B(_088_),
    .X(_089_)
  );
  sky130_fd_sc_hd__o21bai_2 _225_ (
    .A1(_089_),
    .A2(_087_),
    .B1_N(_035_),
    .Y(_090_)
  );
  sky130_fd_sc_hd__a21oi_2 _226_ (
    .A1(_090_),
    .A2(_034_),
    .B1(_032_),
    .Y(_091_)
  );
  sky130_fd_sc_hd__nor2_2 _227_ (
    .A(b[16]),
    .B(a[16]),
    .Y(_092_)
  );
  sky130_fd_sc_hd__or2_2 _228_ (
    .A(_031_),
    .B(_092_),
    .X(_093_)
  );
  sky130_fd_sc_hd__o21bai_2 _229_ (
    .A1(_093_),
    .A2(_091_),
    .B1_N(_031_),
    .Y(_094_)
  );
  sky130_fd_sc_hd__a21oi_2 _230_ (
    .A1(_094_),
    .A2(_030_),
    .B1(_028_),
    .Y(_095_)
  );
  sky130_fd_sc_hd__nor2_2 _231_ (
    .A(b[18]),
    .B(a[18]),
    .Y(_096_)
  );
  sky130_fd_sc_hd__or2_2 _232_ (
    .A(_027_),
    .B(_096_),
    .X(_097_)
  );
  sky130_fd_sc_hd__o21bai_2 _233_ (
    .A1(_097_),
    .A2(_095_),
    .B1_N(_027_),
    .Y(_098_)
  );
  sky130_fd_sc_hd__a21oi_2 _234_ (
    .A1(_098_),
    .A2(_026_),
    .B1(_024_),
    .Y(_099_)
  );
  sky130_fd_sc_hd__nor2_2 _235_ (
    .A(b[20]),
    .B(a[20]),
    .Y(_100_)
  );
  sky130_fd_sc_hd__or2_2 _236_ (
    .A(_023_),
    .B(_100_),
    .X(_101_)
  );
  sky130_fd_sc_hd__o21bai_2 _237_ (
    .A1(_101_),
    .A2(_099_),
    .B1_N(_023_),
    .Y(_102_)
  );
  sky130_fd_sc_hd__a21oi_2 _238_ (
    .A1(_102_),
    .A2(_022_),
    .B1(_020_),
    .Y(_103_)
  );
  sky130_fd_sc_hd__nor2_2 _239_ (
    .A(b[22]),
    .B(a[22]),
    .Y(_104_)
  );
  sky130_fd_sc_hd__or2_2 _240_ (
    .A(_019_),
    .B(_104_),
    .X(_105_)
  );
  sky130_fd_sc_hd__o21bai_2 _241_ (
    .A1(_105_),
    .A2(_103_),
    .B1_N(_019_),
    .Y(_106_)
  );
  sky130_fd_sc_hd__a21oi_2 _242_ (
    .A1(_106_),
    .A2(_018_),
    .B1(_016_),
    .Y(_107_)
  );
  sky130_fd_sc_hd__nor2_2 _243_ (
    .A(b[24]),
    .B(a[24]),
    .Y(_108_)
  );
  sky130_fd_sc_hd__or2_2 _244_ (
    .A(_015_),
    .B(_108_),
    .X(_109_)
  );
  sky130_fd_sc_hd__o21bai_2 _245_ (
    .A1(_109_),
    .A2(_107_),
    .B1_N(_015_),
    .Y(_110_)
  );
  sky130_fd_sc_hd__a21oi_2 _246_ (
    .A1(_110_),
    .A2(_014_),
    .B1(_012_),
    .Y(_111_)
  );
  sky130_fd_sc_hd__nor2_2 _247_ (
    .A(b[26]),
    .B(a[26]),
    .Y(_112_)
  );
  sky130_fd_sc_hd__or2_2 _248_ (
    .A(_011_),
    .B(_112_),
    .X(_113_)
  );
  sky130_fd_sc_hd__o21bai_2 _249_ (
    .A1(_113_),
    .A2(_111_),
    .B1_N(_011_),
    .Y(_114_)
  );
  sky130_fd_sc_hd__a21oi_2 _250_ (
    .A1(_114_),
    .A2(_010_),
    .B1(_008_),
    .Y(_115_)
  );
  sky130_fd_sc_hd__nor2_2 _251_ (
    .A(b[28]),
    .B(a[28]),
    .Y(_116_)
  );
  sky130_fd_sc_hd__or2_2 _252_ (
    .A(_007_),
    .B(_116_),
    .X(_117_)
  );
  sky130_fd_sc_hd__o21bai_2 _253_ (
    .A1(_117_),
    .A2(_115_),
    .B1_N(_007_),
    .Y(_118_)
  );
  sky130_fd_sc_hd__a21oi_2 _254_ (
    .A1(_118_),
    .A2(_006_),
    .B1(_004_),
    .Y(_119_)
  );
  sky130_fd_sc_hd__or2_2 _255_ (
    .A(b[30]),
    .B(a[30]),
    .X(_120_)
  );
  sky130_fd_sc_hd__nand2_2 _256_ (
    .A(_003_),
    .B(_120_),
    .Y(_121_)
  );
  sky130_fd_sc_hd__o21bai_2 _257_ (
    .A1(_121_),
    .A2(_119_),
    .B1_N(_002_),
    .Y(_122_)
  );
  sky130_fd_sc_hd__o2111ai_2 _258_ (
    .A1(_121_),
    .A2(_119_),
    .B1(_001_),
    .C1(_132_),
    .D1(_003_),
    .Y(_123_)
  );
  sky130_fd_sc_hd__o21ai_2 _259_ (
    .A1(_131_),
    .A2(_000_),
    .B1(_122_),
    .Y(_124_)
  );
  sky130_fd_sc_hd__nand2_2 _260_ (
    .A(_123_),
    .B(_124_),
    .Y(\ripple[31].FA.sum )
  );
  sky130_fd_sc_hd__nand2_2 _261_ (
    .A(_122_),
    .B(_131_),
    .Y(_125_)
  );
  sky130_fd_sc_hd__o21ai_2 _262_ (
    .A1(_001_),
    .A2(_122_),
    .B1(_125_),
    .Y(overflow)
  );
  sky130_fd_sc_hd__xor2_2 _263_ (
    .A(b[0]),
    .B(a[0]),
    .X(\FA0.p1 )
  );
  sky130_fd_sc_hd__a22o_2 _264_ (
    .A1(b[0]),
    .A2(a[0]),
    .B1(_061_),
    .B2(_062_),
    .X(_126_)
  );
  sky130_fd_sc_hd__nand4_2 _265_ (
    .A(_061_),
    .B(_062_),
    .C(b[0]),
    .D(a[0]),
    .Y(_127_)
  );
  sky130_fd_sc_hd__and2_2 _266_ (
    .A(_126_),
    .B(_127_),
    .X(\ripple[1].FA.sum )
  );
  sky130_fd_sc_hd__a21oi_2 _267_ (
    .A1(_059_),
    .A2(_060_),
    .B1(_064_),
    .Y(_128_)
  );
  sky130_fd_sc_hd__and3_2 _268_ (
    .A(_059_),
    .B(_060_),
    .C(_064_),
    .X(_129_)
  );
  sky130_fd_sc_hd__or2_2 _269_ (
    .A(_128_),
    .B(_129_),
    .X(\ripple[2].FA.sum )
  );
  sky130_fd_sc_hd__a22o_2 _270_ (
    .A1(_057_),
    .A2(_058_),
    .B1(_059_),
    .B2(_065_),
    .X(_130_)
  );
  sky130_fd_sc_hd__and2_2 _271_ (
    .A(_066_),
    .B(_130_),
    .X(\ripple[3].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _272_ (
    .A(_067_),
    .B(_069_),
    .X(\ripple[4].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _273_ (
    .A(_054_),
    .B(_070_),
    .X(\ripple[5].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _274_ (
    .A(_071_),
    .B(_073_),
    .X(\ripple[6].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _275_ (
    .A(_050_),
    .B(_074_),
    .X(\ripple[7].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _276_ (
    .A(_075_),
    .B(_077_),
    .X(\ripple[8].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _277_ (
    .A(_046_),
    .B(_078_),
    .X(\ripple[9].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _278_ (
    .A(_079_),
    .B(_081_),
    .X(\ripple[10].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _279_ (
    .A(_042_),
    .B(_082_),
    .X(\ripple[11].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _280_ (
    .A(_083_),
    .B(_085_),
    .X(\ripple[12].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _281_ (
    .A(_038_),
    .B(_086_),
    .X(\ripple[13].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _282_ (
    .A(_087_),
    .B(_089_),
    .X(\ripple[14].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _283_ (
    .A(_034_),
    .B(_090_),
    .X(\ripple[15].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _284_ (
    .A(_091_),
    .B(_093_),
    .X(\ripple[16].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _285_ (
    .A(_030_),
    .B(_094_),
    .X(\ripple[17].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _286_ (
    .A(_095_),
    .B(_097_),
    .X(\ripple[18].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _287_ (
    .A(_026_),
    .B(_098_),
    .X(\ripple[19].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _288_ (
    .A(_099_),
    .B(_101_),
    .X(\ripple[20].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _289_ (
    .A(_022_),
    .B(_102_),
    .X(\ripple[21].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _290_ (
    .A(_103_),
    .B(_105_),
    .X(\ripple[22].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _291_ (
    .A(_018_),
    .B(_106_),
    .X(\ripple[23].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _292_ (
    .A(_107_),
    .B(_109_),
    .X(\ripple[24].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _293_ (
    .A(_014_),
    .B(_110_),
    .X(\ripple[25].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _294_ (
    .A(_111_),
    .B(_113_),
    .X(\ripple[26].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _295_ (
    .A(_010_),
    .B(_114_),
    .X(\ripple[27].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _296_ (
    .A(_115_),
    .B(_117_),
    .X(\ripple[28].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _297_ (
    .A(_006_),
    .B(_118_),
    .X(\ripple[29].FA.sum )
  );
  sky130_fd_sc_hd__xor2_2 _298_ (
    .A(_119_),
    .B(_121_),
    .X(\ripple[30].FA.sum )
  );
  sky130_fd_sc_hd__buf_2 _299_ (
    .A(\FA0.p1 ),
    .X(sum[0])
  );
  sky130_fd_sc_hd__buf_2 _300_ (
    .A(\ripple[1].FA.sum ),
    .X(sum[1])
  );
  sky130_fd_sc_hd__buf_2 _301_ (
    .A(\ripple[2].FA.sum ),
    .X(sum[2])
  );
  sky130_fd_sc_hd__buf_2 _302_ (
    .A(\ripple[3].FA.sum ),
    .X(sum[3])
  );
  sky130_fd_sc_hd__buf_2 _303_ (
    .A(\ripple[4].FA.sum ),
    .X(sum[4])
  );
  sky130_fd_sc_hd__buf_2 _304_ (
    .A(\ripple[5].FA.sum ),
    .X(sum[5])
  );
  sky130_fd_sc_hd__buf_2 _305_ (
    .A(\ripple[6].FA.sum ),
    .X(sum[6])
  );
  sky130_fd_sc_hd__buf_2 _306_ (
    .A(\ripple[7].FA.sum ),
    .X(sum[7])
  );
  sky130_fd_sc_hd__buf_2 _307_ (
    .A(\ripple[8].FA.sum ),
    .X(sum[8])
  );
  sky130_fd_sc_hd__buf_2 _308_ (
    .A(\ripple[9].FA.sum ),
    .X(sum[9])
  );
  sky130_fd_sc_hd__buf_2 _309_ (
    .A(\ripple[10].FA.sum ),
    .X(sum[10])
  );
  sky130_fd_sc_hd__buf_2 _310_ (
    .A(\ripple[11].FA.sum ),
    .X(sum[11])
  );
  sky130_fd_sc_hd__buf_2 _311_ (
    .A(\ripple[12].FA.sum ),
    .X(sum[12])
  );
  sky130_fd_sc_hd__buf_2 _312_ (
    .A(\ripple[13].FA.sum ),
    .X(sum[13])
  );
  sky130_fd_sc_hd__buf_2 _313_ (
    .A(\ripple[14].FA.sum ),
    .X(sum[14])
  );
  sky130_fd_sc_hd__buf_2 _314_ (
    .A(\ripple[15].FA.sum ),
    .X(sum[15])
  );
  sky130_fd_sc_hd__buf_2 _315_ (
    .A(\ripple[16].FA.sum ),
    .X(sum[16])
  );
  sky130_fd_sc_hd__buf_2 _316_ (
    .A(\ripple[17].FA.sum ),
    .X(sum[17])
  );
  sky130_fd_sc_hd__buf_2 _317_ (
    .A(\ripple[18].FA.sum ),
    .X(sum[18])
  );
  sky130_fd_sc_hd__buf_2 _318_ (
    .A(\ripple[19].FA.sum ),
    .X(sum[19])
  );
  sky130_fd_sc_hd__buf_2 _319_ (
    .A(\ripple[20].FA.sum ),
    .X(sum[20])
  );
  sky130_fd_sc_hd__buf_2 _320_ (
    .A(\ripple[21].FA.sum ),
    .X(sum[21])
  );
  sky130_fd_sc_hd__buf_2 _321_ (
    .A(\ripple[22].FA.sum ),
    .X(sum[22])
  );
  sky130_fd_sc_hd__buf_2 _322_ (
    .A(\ripple[23].FA.sum ),
    .X(sum[23])
  );
  sky130_fd_sc_hd__buf_2 _323_ (
    .A(\ripple[24].FA.sum ),
    .X(sum[24])
  );
  sky130_fd_sc_hd__buf_2 _324_ (
    .A(\ripple[25].FA.sum ),
    .X(sum[25])
  );
  sky130_fd_sc_hd__buf_2 _325_ (
    .A(\ripple[26].FA.sum ),
    .X(sum[26])
  );
  sky130_fd_sc_hd__buf_2 _326_ (
    .A(\ripple[27].FA.sum ),
    .X(sum[27])
  );
  sky130_fd_sc_hd__buf_2 _327_ (
    .A(\ripple[28].FA.sum ),
    .X(sum[28])
  );
  sky130_fd_sc_hd__buf_2 _328_ (
    .A(\ripple[29].FA.sum ),
    .X(sum[29])
  );
  sky130_fd_sc_hd__buf_2 _329_ (
    .A(\ripple[30].FA.sum ),
    .X(sum[30])
  );
  sky130_fd_sc_hd__buf_2 _330_ (
    .A(\ripple[31].FA.sum ),
    .X(sum[31])
  );
endmodule
