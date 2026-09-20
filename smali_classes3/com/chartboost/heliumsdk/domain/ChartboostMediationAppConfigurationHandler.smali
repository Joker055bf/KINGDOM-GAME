.class public final Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;
.super Ljava/lang/Object;
.source "ChartboostMediationAppConfigurationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationAppConfigurationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationAppConfigurationHandler.kt\ncom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,143:1\n1179#2,2:144\n1253#2,4:146\n361#3,7:150\n314#4,11:157\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationAppConfigurationHandler.kt\ncom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler\n*L\n77#1:144,2\n77#1:146,4\n88#1:150,7\n105#1:157,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0002J\u0014\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0002J\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012JE\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0015H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "chartboostMediationInitializationOptions",
        "Lcom/chartboost/heliumsdk/HeliumInitializationOptions;",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;)V",
        "addReferenceAdapterIfNeeded",
        "",
        "partnerConfigMap",
        "",
        "",
        "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
        "buildPartnerConfigMap",
        "handleConfigurationChange",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "partnerController",
        "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
        "(Lcom/chartboost/heliumsdk/controllers/PartnerController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setUpPartnerAdapters",
        "skippedPartnerIds",
        "",
        "(Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateServerLogLevelOverride",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final chartboostMediationInitializationOptions:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/heliumsdk/HeliumInitializationOptions;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->chartboostMediationInitializationOptions:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

    return-void
.end method

.method public static final synthetic access$setUpPartnerAdapters(Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->setUpPartnerAdapters(Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addReferenceAdapterIfNeeded(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reference"

    .line 150
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;-><init>(Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final buildPartnerConfigMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getPartners()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 144
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 145
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 147
    check-cast v1, Lcom/chartboost/heliumsdk/domain/Partner;

    .line 77
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Partner;->component1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/Partner;->component2()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    .line 78
    new-instance v4, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;

    invoke-direct {v4, v1}, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;-><init>(Lkotlinx/serialization/json/JsonObject;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final setUpPartnerAdapters(Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 158
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 164
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 165
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 108
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 112
    sget-object v3, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getAdapterClassPaths()Ljava/util/Set;

    move-result-object v7

    .line 109
    new-instance v3, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;

    invoke-direct {v3, v2, v1}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler$setUpPartnerAdapters$2$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/chartboost/heliumsdk/controllers/PartnerController;->setUpAdapters(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    .line 166
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 157
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final updateServerLogLevelOverride(Landroid/content/Context;)V
    .locals 4

    const-string v0, "CBM_INTERNAL"

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 133
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getServerLogLevelOverride()Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;

    move-result-object v0

    const-string v1, "cbm_internal_server_log_level_override"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 134
    sget-object v3, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    invoke-virtual {v3, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->setServerLogLevelOverride$Helium_release(Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;)V

    .line 135
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;

    .line 138
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    invoke-virtual {v0, v2}, Lcom/chartboost/heliumsdk/utils/LogController;->setServerLogLevelOverride$Helium_release(Lcom/chartboost/heliumsdk/utils/LogController$LogLevel;)V

    .line 139
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleConfigurationChange(Lcom/chartboost/heliumsdk/controllers/PartnerController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/controllers/PartnerController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 38
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getParsingError()Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getValidCachedConfigExists()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;

    invoke-direct {v1, v0}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;)V

    .line 57
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_INVALID_APP_CONFIG:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-object v11, v0

    .line 58
    sget-object v7, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    const/4 v8, 0x0

    .line 60
    sget-object v9, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->INITIALIZATION:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    const/4 v10, 0x0

    .line 63
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 65
    move-object/from16 v18, v1

    check-cast v18, Lcom/chartboost/heliumsdk/domain/EventResult;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x39e0

    const/16 v23, 0x0

    .line 58
    invoke-static/range {v7 .. v23}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0

    .line 43
    :cond_1
    :goto_0
    iget-object v2, v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->context:Landroid/content/Context;

    if-nez v2, :cond_2

    move-object v0, v6

    check-cast v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;

    .line 44
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v1, "Failed to initialize mediation partners. Context is null."

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/utils/LogController;->e(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_ABORTED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    return-object v0

    .line 47
    :cond_2
    invoke-direct {v6, v2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->updateServerLogLevelOverride(Landroid/content/Context;)V

    .line 49
    iget-object v0, v6, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->chartboostMediationInitializationOptions:Lcom/chartboost/heliumsdk/HeliumInitializationOptions;

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/HeliumInitializationOptions;->getSkippedPartnerIds()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->buildPartnerConfigMap()Ljava/util/Map;

    move-result-object v3

    .line 53
    invoke-direct {v6, v3}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->addReferenceAdapterIfNeeded(Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAppConfigurationHandler;->setUpPartnerAdapters(Lcom/chartboost/heliumsdk/controllers/PartnerController;Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
