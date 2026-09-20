.class public final Lcom/crosspromotion/sdk/utils/PUtils;
.super Lcom/openmediation/sdk/utils/PlacementUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/PlacementUtils;-><init>()V

    return-void
.end method

.method public static doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 2

    const-string v0, "market://details?id="

    :try_start_0
    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crosspromotion/sdk/utils/PUtils;->saveClickPackage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crosspromotion/sdk/utils/GpUtil;->goGp(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Lcom/crosspromotion/sdk/utils/PUtils$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/crosspromotion/sdk/utils/PUtils$1;-><init>(Landroid/content/Context;Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/HandlerUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/crosspromotion/sdk/ActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "adBean"

    invoke-static {p2}, Lcom/crosspromotion/sdk/bean/AdBean;->toJsonString(Lcom/crosspromotion/sdk/bean/AdBean;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "placementId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AdReport"

    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static saveClInfo(Lcom/crosspromotion/sdk/bean/AdBean;Ljava/lang/String;)V
    .locals 10

    const-string v0, "ImpRecord"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/PlacementUtils;->parseFromJson(Ljava/lang/String;)Lcom/openmediation/sdk/utils/model/ImpRecord;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/openmediation/sdk/utils/model/ImpRecord;

    invoke-direct {v2}, Lcom/openmediation/sdk/utils/model/ImpRecord;-><init>()V

    :cond_0
    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/ImpRecord;->getImpMap()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_imp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-virtual {v8}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->getPkgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPlacmentId(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setTime(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->getImpCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setImpCount(I)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPkgName(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setLashImpTime(J)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-interface {v5, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v6, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-direct {v6}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;-><init>()V

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPlacmentId(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setTime(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->getImpCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setImpCount(I)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPkgName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setLashImpTime(J)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;

    invoke-direct {v6}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;-><init>()V

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPlacmentId(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setTime(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->getImpCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$DayImp;->setImpCount(I)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setPkgName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/openmediation/sdk/utils/model/ImpRecord$Imp;->setLashImpTime(J)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getPkgName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    :goto_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/ImpRecord;->setImpMap(Ljava/util/Map;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object p0

    invoke-static {v2}, Lcom/openmediation/sdk/utils/PlacementUtils;->transformToString(Lcom/openmediation/sdk/utils/model/ImpRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    const-string p1, "PlacementUtils"

    invoke-static {p1, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private static saveClickPackage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/openmediation/sdk/utils/cache/DataCache;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "PlacementUtils"

    invoke-static {v0, p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
