.class Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;
.super Ljava/lang/Object;
.source "SpeedtestConfig.java"


# static fields
.field public static final DISTANCE_KM:Ljava/lang/String; = "km"

.field public static final DISTANCE_MILES:Ljava/lang/String; = "mi"

.field public static final DISTANCE_NO:Ljava/lang/String; = "no"

.field public static final ONERROR_ATTEMPT_RESTART:Ljava/lang/String; = "attempt-restart"

.field public static final ONERROR_FAIL:Ljava/lang/String; = "fail"

.field public static final ONERROR_MUST_RESTART:Ljava/lang/String; = "must-restart"


# instance fields
.field private count_ping:I

.field private dl_ckSize:I

.field private dl_connectTimeout:I

.field private dl_graceTime:D

.field private dl_parallelStreams:I

.field private dl_recvBuffer:I

.field private dl_sendBuffer:I

.field private dl_soTimeout:I

.field private dl_streamDelay:I

.field private errorHandlingMode:Ljava/lang/String;

.field private getIP_distance:Ljava/lang/String;

.field private getIP_isp:Z

.field private overheadCompensationFactor:D

.field private ping_connectTimeout:I

.field private ping_recvBuffer:I

.field private ping_sendBuffer:I

.field private ping_soTimeout:I

.field private telemetry_extra:Ljava/lang/String;

.field private test_order:Ljava/lang/String;

.field private time_auto:Z

.field private time_dl_max:I

.field private time_ul_max:I

.field private ul_ckSize:I

.field private ul_connectTimeout:I

.field private ul_graceTime:D

.field private ul_parallelStreams:I

.field private ul_recvBuffer:I

.field private ul_sendBuffer:I

.field private ul_soTimeout:I

.field private ul_streamDelay:I

.field private useMebibits:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    const/16 v0, 0x12c

    .line 9
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 10
    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    iput-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    const/16 v0, 0x1388

    .line 11
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    const/16 v1, 0x4000

    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    const-string v0, "attempt-restart"

    .line 13
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    const/16 v0, 0xf

    .line 15
    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    iput v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    const/16 v1, 0xa

    .line 17
    iput v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    const-string v1, ""

    .line 18
    iput-object v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    const-wide v1, 0x3ff0f5c28f5c28f6L    # 1.06

    .line 19
    iput-wide v1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    .line 20
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    const-string v0, "km"

    .line 21
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    const-string v0, "IP_D_U"

    .line 24
    iput-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->check()V

    return-void
.end method

.method public constructor <init>(IIIIIIDDIIIIIIIIIIIILjava/lang/String;IIZILjava/lang/String;DZLjava/lang/String;ZLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 51
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    move v1, p2

    .line 52
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    move v1, p3

    .line 53
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    move v1, p4

    .line 54
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    move v1, p5

    .line 55
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    move v1, p6

    .line 56
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    move-wide v1, p7

    .line 57
    iput-wide v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    move-wide v1, p9

    .line 58
    iput-wide v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    move v1, p11

    .line 59
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    move v1, p12

    .line 60
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    move/from16 v1, p13

    .line 61
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    move/from16 v1, p14

    .line 62
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    move/from16 v1, p15

    .line 63
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    move/from16 v1, p16

    .line 64
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    move/from16 v1, p17

    .line 65
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    move/from16 v1, p18

    .line 66
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    move/from16 v1, p19

    .line 67
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    move/from16 v1, p20

    .line 68
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    move/from16 v1, p21

    .line 69
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    move/from16 v1, p22

    .line 70
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    move-object/from16 v1, p23

    .line 71
    iput-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    move/from16 v1, p24

    .line 72
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    move/from16 v1, p25

    .line 73
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    move/from16 v1, p26

    .line 74
    iput-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    move/from16 v1, p27

    .line 75
    iput v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    move-object/from16 v1, p28

    .line 76
    iput-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    move-wide/from16 v1, p29

    .line 77
    iput-wide v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    move/from16 v1, p31

    .line 78
    iput-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    move-object/from16 v1, p32

    .line 79
    iput-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    move/from16 v1, p33

    .line 80
    iput-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    move-object/from16 v1, p34

    .line 81
    iput-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->check()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ping_soTimeout"

    const-string v3, "ul_soTimeout"

    const-string v4, "dl_soTimeout"

    const-string v5, "ping_connectTimeout"

    const-string v6, "ul_connectTimeout"

    const-string v7, "dl_connectTimeout"

    const-string v8, "ul_graceTime"

    const-string v9, "dl_graceTime"

    const-string v10, "ul_streamDelay"

    const-string v11, "dl_streamDelay"

    const-string v12, "ul_parallelStreams"

    const-string v13, "dl_parallelStreams"

    const-string v14, "ul_ckSize"

    const-string v15, "dl_ckSize"

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v2

    const/16 v2, 0x64

    .line 7
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    const/16 v2, 0x14

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    const/4 v2, 0x3

    .line 8
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    const/16 v2, 0x12c

    .line 9
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    move-object/from16 v17, v3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 10
    iput-wide v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    iput-wide v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    const/16 v2, 0x1388

    .line 11
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    const/16 v3, 0x2710

    iput v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    iput v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    const/16 v3, 0x7d0

    iput v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    const/4 v2, -0x1

    .line 12
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    const/16 v3, 0x4000

    iput v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    const-string v2, "attempt-restart"

    .line 13
    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    const/16 v2, 0xf

    .line 15
    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    const/16 v3, 0xa

    .line 17
    iput v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    const-string v3, ""

    .line 18
    iput-object v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    move-object/from16 v18, v4

    const-wide v3, 0x3ff0f5c28f5c28f6L    # 1.06

    .line 19
    iput-wide v3, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    .line 20
    iput-boolean v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    const-string v2, "km"

    .line 21
    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    const-string v2, "IP_D_U"

    .line 24
    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    .line 87
    :try_start_0
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    .line 88
    :cond_0
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    .line 89
    :cond_1
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    .line 91
    :cond_2
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    .line 93
    :cond_3
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    .line 94
    :cond_4
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    .line 95
    :cond_5
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    .line 96
    :cond_6
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    .line 97
    :cond_7
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 98
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    .line 99
    :cond_8
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 100
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    .line 101
    :cond_9
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 102
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    :cond_a
    move-object/from16 v2, v18

    .line 103
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    :cond_b
    move-object/from16 v2, v17

    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    :cond_c
    move-object/from16 v2, v16

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    :cond_d
    const-string v2, "dl_recvBuffer"

    .line 106
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "dl_recvBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    :cond_e
    const-string v2, "ul_recvBuffer"

    .line 107
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "ul_recvBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    :cond_f
    const-string v2, "ping_recvBuffer"

    .line 108
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ping_recvBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    :cond_10
    const-string v2, "dl_sendBuffer"

    .line 109
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "dl_sendBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    :cond_11
    const-string v2, "ul_sendBuffer"

    .line 110
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "ul_sendBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    :cond_12
    const-string v2, "ping_sendBuffer"

    .line 111
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "ping_sendBuffer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    :cond_13
    const-string v2, "errorHandlingMode"

    .line 112
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "errorHandlingMode"

    .line 113
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    :cond_14
    const-string v2, "time_dl_max"

    .line 114
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "time_dl_max"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    :cond_15
    const-string v2, "time_ul_max"

    .line 115
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "time_ul_max"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    :cond_16
    const-string v2, "count_ping"

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "count_ping"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    :cond_17
    const-string v2, "telemetry_extra"

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "telemetry_extra"

    .line 118
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    :cond_18
    const-string v2, "overheadCompensationFactor"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "overheadCompensationFactor"

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    :cond_19
    const-string v2, "getIP_isp"

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "getIP_isp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    :cond_1a
    const-string v2, "getIP_distance"

    .line 122
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "getIP_distance"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    :cond_1b
    const-string v2, "test_order"

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "test_order"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    :cond_1c
    const-string v2, "useMebibits"

    .line 124
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "useMebibits"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    .line 125
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->check()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 127
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid JSON ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private check()V
    .locals 6

    .line 27
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12

    .line 28
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    if-lt v0, v1, :cond_11

    .line 29
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    if-lt v0, v1, :cond_10

    .line 30
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    if-lt v0, v1, :cond_f

    .line 31
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    if-ltz v0, :cond_e

    .line 32
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    if-ltz v0, :cond_d

    .line 33
    iget-wide v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_c

    .line 34
    iget-wide v2, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_b

    .line 35
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    const-string v2, "attempt-restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    const-string v2, "must-restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorHandlingMode must be fail, attempt-restart, or must-restart"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    if-lt v0, v1, :cond_a

    .line 37
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    if-lt v0, v1, :cond_9

    .line 38
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    if-lt v0, v1, :cond_8

    .line 39
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_7

    .line 40
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getIP_distance must be no, km or miles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-char v3, v0, v2

    const/16 v4, 0x49

    if-eq v3, v4, :cond_5

    const/16 v4, 0x50

    if-eq v3, v4, :cond_5

    const/16 v4, 0x44

    if-eq v3, v4, :cond_5

    const/16 v4, 0x55

    if-eq v3, v4, :cond_5

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_4

    goto :goto_3

    .line 42
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "test_order can only contain characters I, P, D, U, _"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 39
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "overheadCompensationFactor must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count_ping must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time_ul_max must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time_dl_max must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ul_graceTime must be at least 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dl_graceTime must be at least 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ul_streamDelay must be at least 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dl_streamDelay must be at least 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ul_parallelStreams must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dl_parallelStreams must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ul_ckSize must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dl_ckSize must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;
    .locals 39

    move-object/from16 v0, p0

    .line 413
    new-instance v36, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    move-object/from16 v1, v36

    iget v2, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    iget v3, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    iget v4, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    iget v5, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    iget v6, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    iget v7, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    iget-wide v8, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    iget-wide v10, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    iget v12, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    iget v13, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    iget v14, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    iget v15, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    move-object/from16 v37, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    move/from16 v16, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    move/from16 v17, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    move/from16 v18, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    move/from16 v19, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    move/from16 v20, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    move/from16 v21, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    move/from16 v22, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    move-object/from16 v24, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    move/from16 v25, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    move/from16 v27, v1

    iget v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    move-object/from16 v29, v1

    move/from16 v38, v2

    iget-wide v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    move-wide/from16 v30, v1

    iget-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    move/from16 v32, v1

    iget-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-boolean v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    move/from16 v34, v1

    iget-object v1, v0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    move-object/from16 v35, v1

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-direct/range {v1 .. v35}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;-><init>(IIIIIIDDIIIIIIIIIIIILjava/lang/String;IIZILjava/lang/String;DZLjava/lang/String;ZLjava/lang/String;)V

    return-object v36
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->clone()Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCount_ping()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    return v0
.end method

.method public getDl_ckSize()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    return v0
.end method

.method public getDl_connectTimeout()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    return v0
.end method

.method public getDl_graceTime()D
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    return-wide v0
.end method

.method public getDl_parallelStreams()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    return v0
.end method

.method public getDl_recvBuffer()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    return v0
.end method

.method public getDl_sendBuffer()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    return v0
.end method

.method public getDl_soTimeout()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    return v0
.end method

.method public getDl_streamDelay()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    return v0
.end method

.method public getErrorHandlingMode()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    return-object v0
.end method

.method public getGetIP_distance()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    return-object v0
.end method

.method public getGetIP_isp()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    return v0
.end method

.method public getOverheadCompensationFactor()D
    .locals 2

    .line 236
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    return-wide v0
.end method

.method public getPing_connectTimeout()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    return v0
.end method

.method public getPing_recvBuffer()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    return v0
.end method

.method public getPing_sendBuffer()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    return v0
.end method

.method public getPing_soTimeout()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    return v0
.end method

.method public getTelemetry_extra()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    return-object v0
.end method

.method public getTest_order()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    return-object v0
.end method

.method public getTime_auto()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    return v0
.end method

.method public getTime_dl_max()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    return v0
.end method

.method public getTime_ul_max()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    return v0
.end method

.method public getUl_ckSize()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    return v0
.end method

.method public getUl_connectTimeout()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    return v0
.end method

.method public getUl_graceTime()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    return-wide v0
.end method

.method public getUl_parallelStreams()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    return v0
.end method

.method public getUl_recvBuffer()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    return v0
.end method

.method public getUl_sendBuffer()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    return v0
.end method

.method public getUl_soTimeout()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    return v0
.end method

.method public getUl_streamDelay()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    return v0
.end method

.method public getUseMebibits()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    return v0
.end method

.method public setCount_ping(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 377
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->count_ping:I

    return-void

    .line 376
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "count_ping must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDl_ckSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 257
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_ckSize:I

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dl_ckSize must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDl_connectTimeout(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_connectTimeout:I

    return-void
.end method

.method public setDl_graceTime(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 287
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_graceTime:D

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dl_graceTime must be at least 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDl_parallelStreams(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 267
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_parallelStreams:I

    return-void

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dl_parallelStreams must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDl_recvBuffer(I)V
    .locals 0

    .line 327
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_recvBuffer:I

    return-void
.end method

.method public setDl_sendBuffer(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_sendBuffer:I

    return-void
.end method

.method public setDl_soTimeout(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_soTimeout:I

    return-void
.end method

.method public setDl_streamDelay(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 277
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->dl_streamDelay:I

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dl_streamDelay must be at least 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorHandlingMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fail"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "attempt-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "must-restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "errorHandlingMode must be fail, attempt-restart, or must-restart"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->errorHandlingMode:Ljava/lang/String;

    return-void
.end method

.method public setGetIP_distance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "no"

    .line 396
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "km"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getIP_distance must be no, km or miles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_distance:Ljava/lang/String;

    return-void
.end method

.method public setGetIP_isp(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->getIP_isp:Z

    return-void
.end method

.method public setOverheadCompensationFactor(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 387
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->overheadCompensationFactor:D

    return-void

    .line 386
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "overheadCompensationFactor must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPing_connectTimeout(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_connectTimeout:I

    return-void
.end method

.method public setPing_recvBuffer(I)V
    .locals 0

    .line 347
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_recvBuffer:I

    return-void
.end method

.method public setPing_sendBuffer(I)V
    .locals 0

    .line 352
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_sendBuffer:I

    return-void
.end method

.method public setPing_soTimeout(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ping_soTimeout:I

    return-void
.end method

.method public setTelemetry_extra(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->telemetry_extra:Ljava/lang/String;

    return-void
.end method

.method public setTest_order(Ljava/lang/String;)V
    .locals 5

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, v0, v2

    const/16 v4, 0x49

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1

    const/16 v4, 0x44

    if-eq v3, v4, :cond_1

    const/16 v4, 0x55

    if-eq v3, v4, :cond_1

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 407
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "test_order can only contain characters I, P, D, U, _"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_2
    iput-object p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->test_order:Ljava/lang/String;

    return-void
.end method

.method public setTime_auto(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_auto:Z

    return-void
.end method

.method public setTime_dl_max(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 362
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_dl_max:I

    return-void

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "time_dl_max must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTime_ul_max(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 367
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->time_ul_max:I

    return-void

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "time_ul_max must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUl_ckSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 262
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_ckSize:I

    return-void

    .line 261
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ul_ckSize must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUl_connectTimeout(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_connectTimeout:I

    return-void
.end method

.method public setUl_graceTime(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 292
    iput-wide p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_graceTime:D

    return-void

    .line 291
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ul_graceTime must be at least 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUl_parallelStreams(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 272
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_parallelStreams:I

    return-void

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ul_parallelStreams must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUl_recvBuffer(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_recvBuffer:I

    return-void
.end method

.method public setUl_sendBuffer(I)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_sendBuffer:I

    return-void
.end method

.method public setUl_soTimeout(I)V
    .locals 0

    .line 312
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_soTimeout:I

    return-void
.end method

.method public setUl_streamDelay(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 282
    iput p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->ul_streamDelay:I

    return-void

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ul_streamDelay must be at least 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseMebibits(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/speedtest/SpeedtestConfig;->useMebibits:Z

    return-void
.end method
