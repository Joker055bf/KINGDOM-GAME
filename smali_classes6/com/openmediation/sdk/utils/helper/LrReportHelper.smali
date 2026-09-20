.class public final Lcom/openmediation/sdk/utils/helper/LrReportHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIII)V
    .locals 7

    const/4 v1, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIIII)V

    return-void
.end method

.method public static report(Lcom/openmediation/sdk/utils/model/BaseInstance;IIIIII)V
    .locals 12

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getId()I

    move-result v6

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v7

    const-string v0, ""

    const/4 v1, -0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V

    return-void
.end method

.method private static report(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V
    .locals 14

    new-instance v13, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p6

    move/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/openmediation/sdk/utils/helper/LrReportHelper$1;-><init>(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V

    invoke-static {v13}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static report(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .locals 12

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v5, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/openmediation/sdk/utils/helper/LrReportHelper;->report(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;IIIIIIII)V

    return-void
.end method
