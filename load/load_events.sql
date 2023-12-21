load data infile "../data/parsed/all${year}.csv" into table events_bck fields terminated by ',' optionally enclosed by '"'lines terminated by '\r\n'(GAME_ID,AWAY_TEAM_ID,INN_CT,BAT_HOME_ID,OUTS_CT,BALLS_CT,STRIKES_CT,PITCH_SEQ_TX,AWAY_SCORE_CT,HOME_SCORE_CT,BAT_ID,BAT_HAND_CD,RESP_BAT_ID,RESP_BAT_HAND_CD,PIT_ID,PIT_HAND_CD,RES_PIT_ID,RES_PIT_HAND_CD,POS2_FLD_ID,POS3_FLD_ID,POS4_FLD_ID,POS5_FLD_ID,POS6_FLD_ID,POS7_FLD_ID,POS8_FLD_ID,POS9_FLD_ID,BASE1_RUN_ID,BASE2_RUN_ID,BASE3_RUN_ID,EVENT_TX,LEADOFF_FL,PH_FL,BAT_FLD_CD,BAT_LINEUP_ID,EVENT_CD,BAT_EVENT_FL,AB_FL,H_CD,SH_FL,SF_FL,EVENT_OUTS_CT,DP_FL,TP_FL,RBI_CT,WP_FL,PB_FL,FLD_CD,BATTEDBALL_CD,BUNT_FL,FOUL_FL,BATTEDBALL_LOC_TX,ERR_CT,ERR1_FLD_CD,ERR1_CD,ERR2_FLD_CD,ERR2_CD,ERR3_FLD_CD,ERR3_CD,BAT_DEST_ID,RUN1_DEST_ID,RUN2_DEST_ID,RUN3_DEST_ID,BAT_PLAY_TX,RUN1_PLAY_TX,RUN2_PLAY_TX,RUN3_PLAY_TX,RUN1_SB_FL,RUN2_SB_FL,RUN3_SB_FL,RUN1_CS_FL,RUN2_CS_FL,RUN3_CS_FL,RUN1_PK_FL,RUN2_PK_FL,RUN3_PK_FL,RUN1_RESP_PIT_ID,RUN2_RESP_PIT_ID,RUN3_RESP_PIT_ID,GAME_NEW_FL,GAME_END_FL,PR_RUN1_FL,PR_RUN2_FL,PR_RUN3_FL,REMOVED_FOR_PR_RUN1_ID,REMOVED_FOR_PR_RUN2_ID,REMOVED_FOR_PR_RUN3_ID,REMOVED_FOR_PH_BAT_ID,REMOVED_FOR_PH_BAT_FLD_CD,PO1_FLD_CD,PO2_FLD_CD,PO3_FLD_CD,ASS1_FLD_CD,ASS2_FLD_CD,ASS3_FLD_CD,ASS4_FLD_CD,ASS5_FLD_CD,EVENT_ID,HOME_TEAM_ID,BAT_TEAM_ID,FLD_TEAM_ID,BAT_LAST_ID,INN_NEW_FL,INN_END_FL,START_BAT_SCORE_CT,START_FLD_SCORE_CT,INN_RUNS_CT,GAME_PA_CT,INN_PA_CT,PA_NEW_FL,PA_TRUNC_FL,START_BASES_CD,END_BASES_CD,BAT_START_FL,RESP_BAT_START_FL,PIT_START_FL,RESP_PIT_START_FL,RUN1_FLD_CD,RUN1_LINEUP_ID,RUN1_ORIGIN_EVENT_ID,RUN2_FLD_CD,RUN2_LINEUP_ID,RUN2_ORIGIN_EVENT_ID,RUN3_FLD_CD,RUN3_LINEUP_ID,RUN3_ORIGIN_EVENT_ID,RUN1_RESP_CATCH_ID,RUN2_RESP_CATCH_ID,RUN3_RESP_CATCH_ID,PA_BALL_CT,PA_CALLED_BALL_CT,PA_INTENT_BALL_CT,PA_PITCHOUT_BALL_CT,PA_HIT_BALL_CT,PA_OTHER_BALL_CT,PA_STRIKE_CT,PA_CALLED_STRIKE_CT,PA_SWINGMISS_STRIKE_CT,PA_FOUL_STRIKE_CT,PA_BIP_STRIKE_CT,PA_OTHER_STRIKE_CT,EVENT_RUNS_CT,FLD_ID,BASE2_FORCE_FL,BASE3_FORCE_FL,BASE4_FORCE_FL,BAT_SAFE_ERR_FL,BAT_FATE_ID,RUN1_FATE_ID,RUN2_FATE_ID,RUN3_FATE_ID,FATE_RUNS_CT,ASS6_FLD_CD,ASS7_FLD_CD,ASS8_FLD_CD,ASS9_FLD_CD,ASS10_FLD_CD,UNKNOWN_OUT_EXC_FL,UNCERTAIN_PLAY_EXC_FL);
