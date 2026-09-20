.class public final Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;
.super Ljava/lang/Object;
.source "PerfSampleUploaderLite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPerfSampleUploaderLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PerfSampleUploaderLite.kt\nru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,153:1\n1477#2:154\n1502#2,3:155\n1505#2,3:165\n359#3,7:158\n1#4:168\n*S KotlinDebug\n*F\n+ 1 PerfSampleUploaderLite.kt\nru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite\n*L\n45#1:154\n45#1:155,3\n45#1:165,3\n45#1:158,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0010\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00010\u0013H\u0002J \u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0013H\u0002J\u0016\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0014\u0010\u001b\u001a\u00020\u001c2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018J\u0016\u0010\u001d\u001a\u00020\u001c2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;",
        "",
        "tracer",
        "Lru/ok/tracer/lite/TracerLite;",
        "(Lru/ok/tracer/lite/TracerLite;)V",
        "commandHandler",
        "Lru/ok/tracer/base/commands/CommandsHandler;",
        "httpClientHolder",
        "Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;",
        "limits",
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "packageName",
        "",
        "versionCode",
        "",
        "versionName",
        "attributesToJson",
        "Lorg/json/JSONObject;",
        "attributes",
        "",
        "nullableAttributesToJson",
        "toJson",
        "Lorg/json/JSONArray;",
        "samples",
        "",
        "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
        "sample",
        "upload",
        "",
        "uploadSingleSession",
        "tracer-lite-performance-metrics_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

.field private final httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

.field private final limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

.field private final packageName:Ljava/lang/String;

.field private final tracer:Lru/ok/tracer/lite/TracerLite;

.field private final versionCode:J

.field private final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/ok/tracer/lite/TracerLite;)V
    .locals 3

    const-string v0, "tracer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    .line 30
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "context.packageManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.packageName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lru/ok/tracer/base/compat/PackageManagerCompat;->getPackageInfoCompat(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 32
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "packageInfo.versionName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->versionName:Ljava/lang/String;

    .line 33
    invoke-static {v0}, Lru/ok/tracer/base/compat/PackageInfoCompat;->getLongVersionCodeCompat(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->versionCode:J

    .line 34
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "packageInfo.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->packageName:Ljava/lang/String;

    .line 37
    sget-object v0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->Companion:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    .line 38
    sget-object v0, Lru/ok/tracer/lite/limits/TracerLiteLimits;->Companion:Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;

    invoke-virtual {v0, p1}, Lru/ok/tracer/lite/limits/TracerLiteLimits$Companion;->get(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/lite/limits/TracerLiteLimits;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    .line 39
    new-instance v0, Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    invoke-direct {v0}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;-><init>()V

    .line 40
    check-cast p1, Lru/ok/tracer/base/limits/TracerFeatureLimits;

    invoke-virtual {v0, p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->setLimitsHandler(Lru/ok/tracer/base/limits/TracerFeatureLimits;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    move-result-object p1

    const-string v0, "PERFORMANCE_METRICS"

    .line 41
    invoke-virtual {p1, v0}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->setFeatureName(Ljava/lang/String;)Lru/ok/tracer/base/commands/CommandsHandler$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lru/ok/tracer/base/commands/CommandsHandler$Builder;->build()Lru/ok/tracer/base/commands/CommandsHandler;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

    return-void
.end method

.method private final attributesToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 134
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 137
    :cond_0
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 138
    :cond_1
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 139
    :cond_2
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 142
    :cond_3
    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 143
    :cond_4
    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 144
    :cond_5
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 145
    :cond_6
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 148
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method private final nullableAttributesToJson(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->attributesToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final toJson(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    .line 113
    invoke-direct {p0, v1}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->toJson(Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final toJson(Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;)Lorg/json/JSONObject;
    .locals 4

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timeUnixNano"

    .line 118
    invoke-virtual {p1}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getTimeUnixNano()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 119
    invoke-virtual {p1}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 120
    invoke-virtual {p1}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "unit"

    .line 121
    invoke-virtual {p1}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p1}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->nullableAttributesToJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "attributes"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final uploadSingleSession(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "No lib token"

    const-string v1, "HTTP "

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v2, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v2}, Lru/ok/tracer/lite/TracerLite;->getLibToken()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    .line 60
    iget-object v0, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v0}, Lru/ok/tracer/lite/TracerLite;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lru/ok/tracer/base/apptoken/AppTokenUtils;->getHostAppToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v3, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v3}, Lru/ok/tracer/lite/TracerLite;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 64
    iget-object v3, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {v3}, Lru/ok/tracer/lite/TracerLite;->getLibraryInfo()Lru/ok/tracer/lite/TracerLibraryInfo;

    move-result-object v5

    .line 65
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    invoke-virtual {v3}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getSessionUuid()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    .line 62
    invoke-static/range {v4 .. v11}, Lru/ok/tracer/lite/upload/UploadBeanUtilsLite;->composeLibUploadBean$default(Landroid/content/Context;Lru/ok/tracer/lite/TracerLibraryInfo;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "clientTimeUnixNano"

    .line 67
    invoke-static {}, Lru/ok/tracer/base/time/PrecisionClock;->currentTimeNanos()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "samples"

    .line 68
    invoke-direct {p0, p1}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object p1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->tracer:Lru/ok/tracer/lite/TracerLite;

    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite;->getConfiguration()Lru/ok/tracer/lite/TracerLite$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration;->getApiUrl()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "api/perf/upload"

    .line 73
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "crashToken"

    .line 74
    invoke-virtual {p1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz v0, :cond_1

    const-string v2, "crashHostAppToken"

    .line 77
    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tracer.configuration.api\u2026}\n            .toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lru/ok/tracer/base/http/HttpRequest;

    .line 84
    sget-object v4, Lru/ok/tracer/base/http/HttpRequestBody;->Companion:Lru/ok/tracer/base/http/HttpRequestBody$Companion;

    const-string v5, "application/json; charset=utf-8"

    .line 86
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "bodyJsonObject.toString()"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 84
    invoke-static/range {v4 .. v9}, Lru/ok/tracer/base/http/HttpRequestBody$Companion;->fromString$default(Lru/ok/tracer/base/http/HttpRequestBody$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Lru/ok/tracer/base/http/HttpRequestBody;

    move-result-object v2

    .line 82
    invoke-direct {v0, p1, v2}, Lru/ok/tracer/base/http/HttpRequest;-><init>(Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V

    .line 91
    :try_start_1
    iget-object p1, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    invoke-virtual {p1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->getHttpClient()Lru/ok/tracer/base/http/HttpClient;

    move-result-object p1

    invoke-interface {p1, v0}, Lru/ok/tracer/base/http/HttpClient;->execute(Lru/ok/tracer/base/http/HttpRequest;)Lru/ok/tracer/base/http/HttpResponse;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v0, p1

    check-cast v0, Lru/ok/tracer/base/http/HttpResponse;

    .line 92
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getStatusCode()I

    move-result v2

    .line 93
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getBody()Lru/ok/tracer/base/http/HttpResponseBody;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lru/ok/tracer/base/http/HttpResponseBody;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 95
    :goto_0
    invoke-virtual {v0}, Lru/ok/tracer/base/http/HttpResponse;->getBody()Lru/ok/tracer/base/http/HttpResponseBody;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lru/ok/tracer/base/http/HttpResponseBody;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v5

    .line 97
    :goto_1
    iget-object v6, p0, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->commandHandler:Lru/ok/tracer/base/commands/CommandsHandler;

    invoke-virtual {v6, v4, v0}, Lru/ok/tracer/base/commands/CommandsHandler;->handleResponse(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_4

    .line 105
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-static {p1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 103
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 91
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Tracer crash report failed"

    .line 107
    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "ru.ok.tracer"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 55
    :cond_5
    :try_start_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    const-string p1, "Tracer"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final upload(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;",
            ">;)V"
        }
    .end annotation

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Ljava/lang/Iterable;

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 156
    move-object v2, v1

    check-cast v2, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;

    .line 45
    invoke-virtual {v2}, Lru/ok/tracer/lite/performance/metrics/PerfSampleLite;->getSessionUuid()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 161
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 165
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    invoke-direct {p0, v0}, Lru/ok/tracer/lite/performance/metrics/upload/PerfSampleUploaderLite;->uploadSingleSession(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method
