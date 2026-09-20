.class public Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;
.super Lcom/tgs/aics/diagnose/KeyValuesDiagnose;
.source "UrlPingDiagnose.java"


# instance fields
.field private mContentLoad:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/diagnose/KeyValue;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->mContentLoad:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/tgs/aics/diagnose/KeyValuesDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Services"

    :goto_0
    return-object v0
.end method

.method synthetic lambda$onExecute$0$com-tgs-aics-diagnose-impl-UrlPingDiagnose(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/diagnose/KeyValue;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, ""

    const-string v0, "No address associated with hostname"

    const-string v4, " GET message="

    const-string v5, "Executed url ping diagnose."

    const/4 v6, 0x1

    .line 56
    invoke-virtual {v1, v6}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x0

    .line 60
    :try_start_0
    invoke-virtual {v1, v7, v8}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    const-string v11, "GET"

    move-object/from16 v12, p2

    .line 64
    invoke-virtual {v12, v11, v2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0xc8

    const/4 v14, -0x1

    if-eqz v12, :cond_1

    .line 69
    invoke-static/range {p4 .. p4}, Lcom/tgs/aics/utils/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    move v11, v14

    goto :goto_0

    :cond_0
    move v11, v13

    :goto_0
    move-object v12, v3

    goto :goto_5

    :cond_1
    if-eqz v11, :cond_2

    .line 73
    new-instance v0, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {v0, v11}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/RequestResponse;->getMessage()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 75
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/RequestResponse;->getDataAsText()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v0}, Lcom/tgs/aics/diagnose/RequestResponse;->getHttpCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :cond_5
    move v0, v10

    :goto_4
    move-object/from16 v17, v11

    move v11, v0

    move-object/from16 v0, v17

    .line 78
    :goto_5
    :try_start_1
    new-instance v15, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v15}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    const-string v6, "httpCode"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v6, v9}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v6

    const-string v9, "contentLength"

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_6

    :cond_6
    move v15, v14

    :goto_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v9, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v11, v13, :cond_8

    const/16 v9, 0x12e

    if-ne v11, v9, :cond_7

    goto :goto_7

    :cond_7
    move v9, v10

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v9, 0x1

    .line 80
    :goto_8
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    :cond_9
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v9}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v4, p0

    .line 82
    :try_start_3
    iget-boolean v0, v4, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->mContentLoad:Z

    if-eqz v0, :cond_b

    const-string v0, "content"

    if-eqz v12, :cond_a

    .line 83
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v13, 0x64

    if-le v5, v13, :cond_a

    invoke-virtual {v12, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_a
    invoke-virtual {v6, v0, v12}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    move v9, v10

    :goto_9
    move v10, v11

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    move v9, v10

    .line 86
    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception execute url ping diagnose.e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception. e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v11, v10

    :cond_b
    :goto_b
    if-eqz p5, :cond_c

    .line 91
    invoke-virtual/range {p5 .. p5}, Lcom/tgs/aics/diagnose/KeyValue;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    if-eqz v1, :cond_d

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/tgs/aics/diagnose/Result;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_d

    :cond_d
    const/16 v16, 0x0

    .line 93
    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v0, :cond_e

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_e

    goto :goto_e

    :cond_e
    move-object v0, v2

    :goto_e
    if-eqz v9, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v7, v5, v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_f
    if-eqz v16, :cond_10

    move-object/from16 v3, v16

    :cond_10
    :goto_f
    invoke-virtual {v1, v0, v3}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 96
    invoke-virtual {v1, v5, v6}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 10

    .line 32
    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->getKeyValues()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fail execute url ping diagnose while count empty."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 36
    invoke-interface {p4, v1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 40
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tgs/aics/diagnose/KeyValue;

    if-eqz v8, :cond_2

    .line 41
    invoke-virtual {v8}, Lcom/tgs/aics/diagnose/KeyValue;->getValueText()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 42
    :goto_2
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    invoke-virtual {v0, v6}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const-string v2, "pingUrl"

    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v4

    if-eqz v8, :cond_5

    .line 44
    invoke-virtual {v8}, Lcom/tgs/aics/diagnose/KeyValue;->length()I

    move-result v0

    if-gtz v0, :cond_3

    goto :goto_3

    :cond_3
    if-nez p3, :cond_4

    const-string v0, "DiagnoseManager is null."

    .line 50
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiagnoseManager is null.url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 52
    invoke-interface {p4, v4}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    goto :goto_1

    .line 55
    :cond_4
    new-instance v0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p3

    move-object v7, p1

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/diagnose/DiagnoseManager;Ljava/lang/String;Landroid/content/Context;Lcom/tgs/aics/diagnose/KeyValue;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V

    invoke-virtual {p3, v0}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    :goto_3
    const-string v0, "Url is empty,Not need url ping diagnose."

    .line 45
    invoke-static {v0}, Lcom/tgs/aics/diagnose/utils/D;->D(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, v2}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Url is empty,Not need ping.url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 47
    invoke-interface {p4, v4}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public setContentLoad(Z)Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/tgs/aics/diagnose/impl/UrlPingDiagnose;->mContentLoad:Z

    return-object p0
.end method
