.class public Lcom/tgs/aics/diagnose/impl/AppBaseDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "AppBaseDiagnose.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnose;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/tgs/aics/diagnose/impl/AppBaseDiagnose;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getExecuteOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "App info"

    if-eqz v0, :cond_1

    .line 70
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 71
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public getTotal()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 9

    const-string p2, "versionCode"

    const-string p3, "versionName"

    .line 19
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const-string v1, "appBase"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const-string v1, "Application"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const-string p2, "Android context invalid."

    invoke-virtual {p1, p2}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 28
    new-instance v3, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v3}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v4, ""

    if-eqz p1, :cond_2

    .line 31
    :try_start_1
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    if-eqz p1, :cond_3

    .line 32
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v6

    goto :goto_2

    :cond_3
    const-wide/16 v6, -0x1

    :goto_2
    const-string v8, "packageName"

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v4

    .line 33
    :goto_3
    invoke-virtual {v3, v8, v2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    if-eqz v5, :cond_5

    move-object v4, v5

    .line 34
    :cond_5
    invoke-virtual {v3, p3, v4}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 35
    invoke-virtual {v0, p3, v5}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    const-string p3, "firstInstallTime"

    .line 36
    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p3, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    const-string p1, "androidVerInt"

    .line 39
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "systemVersion"

    .line 40
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    const-string p1, "deviceBrand"

    .line 41
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "Brand"

    .line 42
    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    const-string p1, "deviceValue"

    .line 43
    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "deviceCpuABI"

    .line 44
    sget-object p2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "deviceCpuABI2"

    .line 45
    sget-object p2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "deviceModel"

    .line 46
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string p1, "deviceProduct"

    .line 47
    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const/4 p1, 0x1

    .line 49
    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 51
    :goto_4
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Exception load app base data.e="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    .line 54
    :goto_5
    invoke-interface {p4, v0}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method
