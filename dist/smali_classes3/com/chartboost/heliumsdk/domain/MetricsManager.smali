.class public final Lcom/chartboost/heliumsdk/domain/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/domain/MetricsManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetricsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsManager.kt\ncom/chartboost/heliumsdk/domain/MetricsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n1549#2:433\n1620#2,3:434\n1549#2:437\n1620#2,3:438\n1549#2:441\n1620#2,3:442\n1549#2:445\n1620#2,3:446\n1549#2:449\n1620#2,3:450\n1549#2:453\n1620#2,3:454\n1726#2,3:457\n*S KotlinDebug\n*F\n+ 1 MetricsManager.kt\ncom/chartboost/heliumsdk/domain/MetricsManager\n*L\n300#1:433\n300#1:434,3\n307#1:437\n307#1:438,3\n322#1:441\n322#1:442,3\n338#1:445\n338#1:446,3\n365#1:449\n365#1:450,3\n388#1:453\n388#1:454,3\n403#1:457,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Je\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\"\u0010\u000f\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0017\u001a\u00020\u0005J\u0016\u0010\u001f\u001a\u00020\u00192\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0016\u0010 \u001a\u00020\u00192\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002JU\u0010!\u001a\u00020\u00162\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010%J\u00a5\u0001\u0010&\u001a\u00020\u00162\u0008\u0010\'\u001a\u0004\u0018\u00010\u00052\u0006\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u00052\u0006\u0010+\u001a\u00020\u001b2\u0008\u0010,\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u00103J\u0010\u00104\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)H\u0002J\u0016\u0010\r\u001a\u00020\u00052\u0006\u00105\u001a\u0002062\u0006\u0010\'\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/domain/MetricsManager;",
        "",
        "()V",
        "eventsInProgress",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Lcom/chartboost/heliumsdk/domain/MetricsEvent;",
        "buildMetricsDataRequestBody",
        "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
        "data",
        "",
        "Lcom/chartboost/heliumsdk/domain/Metrics;",
        "queueId",
        "start",
        "",
        "end",
        "duration",
        "backgroundDuration",
        "eventResult",
        "Lcom/chartboost/heliumsdk/domain/EventResult;",
        "buildMetricsDataRequestBody$Helium_release",
        "(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;",
        "",
        "id",
        "isSuccess",
        "",
        "error",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "getBannerAdDimensions",
        "Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;",
        "getEventInProgress",
        "metricsDataBelongsToSameEvent",
        "metricsDataIsValid",
        "postMetricsData",
        "loadId",
        "loadStart",
        "backgroundDurationMs",
        "(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)V",
        "postMetricsDataForFailedEvent",
        "partner",
        "event",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        "auctionIdentifier",
        "chartboostMediationError",
        "chartboostMediationErrorMessage",
        "placementType",
        "size",
        "Landroid/util/Size;",
        "networkType",
        "lineItemId",
        "partnerPlacement",
        "(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "shouldPostMetricsData",
        "eventType",
        "Lcom/chartboost/heliumsdk/domain/MetricsEvent$EventType;",
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


# static fields
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

.field private static final eventsInProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/domain/MetricsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/heliumsdk/domain/MetricsManager;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/domain/MetricsManager;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/MetricsManager;->INSTANCE:Lcom/chartboost/heliumsdk/domain/MetricsManager;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/MetricsManager;->eventsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic buildMetricsDataRequestBody$Helium_release$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    move-object/from16 p9, v2

    .line 286
    invoke-virtual/range {p2 .. p9}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->buildMetricsDataRequestBody$Helium_release(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic end$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;ZLcom/chartboost/heliumsdk/domain/ChartboostMediationError;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->end(Ljava/lang/String;ZLcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    return-void
.end method

.method private final getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;)",
            "Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;"
        }
    .end annotation

    .line 428
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/Metrics;->getSize()Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 429
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    invoke-direct {v0, p1}, Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;-><init>(Landroid/util/Size;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final metricsDataBelongsToSameEvent(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;)Z"
        }
    .end annotation

    .line 403
    check-cast p1, Ljava/lang/Iterable;

    .line 457
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 458
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 403
    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getEvent()Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    move-result-object v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/Metrics;->getEvent()Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-nez v2, :cond_1

    move v1, v4

    :cond_4
    :goto_2
    return v1
.end method

.method private final metricsDataIsValid(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;)Z"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Failed to post metrics data to the server. Data set is empty."

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->metricsDataBelongsToSameEvent(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 266
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Failed to post metrics data to the server. Data set contains metrics data for multiple events."

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public static synthetic postMetricsData$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    .line 100
    invoke-virtual/range {p2 .. p8}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)V

    return-void
.end method

.method public static synthetic postMetricsDataForFailedEvent$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move-object v14, v2

    goto :goto_5

    :cond_5
    move-object/from16 v14, p11

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object v15, v2

    goto :goto_6

    :cond_6
    move-object/from16 v15, p12

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move-object/from16 v16, v2

    goto :goto_7

    :cond_7
    move-object/from16 v16, p13

    :goto_7
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    move-object/from16 v17, v2

    goto :goto_8

    :cond_8
    move-object/from16 v17, p14

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 206
    invoke-virtual/range {v3 .. v17}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsDataForFailedEvent(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final shouldPostMetricsData(Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)Z
    .locals 1

    .line 417
    sget-object v0, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfigStorage;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/AppConfigStorage;->getMetricsEvents()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final buildMetricsDataRequestBody$Helium_release(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/chartboost/heliumsdk/domain/EventResult;",
            ")",
            "Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-string v2, "data"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1A;

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 299
    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1A;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1A;->getInitResultCode()Ljava/lang/String;

    move-result-object v13

    .line 300
    check-cast v0, Ljava/lang/Iterable;

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 434
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 435
    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 300
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v3, v2}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 435
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 433
    check-cast v1, Ljava/lang/Iterable;

    .line 300
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4ff

    const/16 v17, 0x0

    .line 298
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v4, v0

    invoke-direct/range {v4 .. v17}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 304
    :cond_1
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2A;

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 306
    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2A;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2A;->getInitResultCode()Ljava/lang/String;

    move-result-object v13

    .line 307
    check-cast v0, Ljava/lang/Iterable;

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 438
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 439
    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 307
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v3, v2}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 439
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 437
    check-cast v1, Ljava/lang/Iterable;

    .line 307
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4ff

    const/16 v17, 0x0

    .line 305
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v4, v0

    invoke-direct/range {v4 .. v17}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 311
    :cond_3
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;

    if-eqz v2, :cond_4

    .line 312
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 313
    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;->getInitResultCode()Ljava/lang/String;

    move-result-object v13

    .line 314
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v14

    .line 315
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult1B;->getJsonParseError()Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v16, 0xff

    const/16 v17, 0x0

    move-object v4, v0

    .line 312
    invoke-direct/range {v4 .. v17}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 319
    :cond_4
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;

    if-eqz v2, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 321
    check-cast v1, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;->getInitResultCode()Ljava/lang/String;

    move-result-object v13

    .line 322
    check-cast v0, Ljava/lang/Iterable;

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 442
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 443
    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 322
    new-instance v4, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v4, v3}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 443
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 444
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 441
    check-cast v2, Ljava/lang/Iterable;

    .line 322
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    .line 323
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/EventResult$SdkInitializationResult$InitResult2B;->getJsonParseError()Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v16, 0xff

    const/16 v17, 0x0

    .line 320
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v4, v0

    invoke-direct/range {v4 .. v17}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 328
    :cond_6
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadSuccess;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    .line 330
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_7
    move-object v6, v4

    .line 332
    :goto_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    :cond_8
    move-object v8, v4

    .line 333
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-result-object v9

    const/4 v14, 0x0

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 446
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 447
    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 338
    new-instance v3, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v3, v2}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 447
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 448
    :cond_9
    check-cast v0, Ljava/util/List;

    .line 445
    check-cast v0, Ljava/lang/Iterable;

    .line 338
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x500

    const/16 v18, 0x0

    .line 329
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v5, v0

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v5 .. v18}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 342
    :cond_a
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadJsonFailure;

    if-eqz v2, :cond_d

    .line 343
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    .line 344
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Metrics;->getAuctionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_5

    :cond_b
    move-object v6, v4

    :goto_5
    const/4 v7, 0x0

    .line 345
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/Metrics;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    :cond_c
    move-object v8, v4

    .line 346
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-result-object v9

    const/4 v14, 0x0

    .line 351
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v15

    .line 352
    move-object v0, v1

    check-cast v0, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadJsonFailure;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadJsonFailure;->getJsonParseError()Lcom/chartboost/heliumsdk/domain/MetricsError$JsonParseError;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v17, 0x102

    const/16 v18, 0x0

    move-object v5, v2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 343
    invoke-direct/range {v5 .. v18}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_6
    move-object v0, v2

    goto/16 :goto_c

    .line 356
    :cond_d
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadPartnerFailure;

    if-eqz v2, :cond_11

    .line 358
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Metrics;->getAuctionId()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_7

    :cond_e
    move-object v7, v4

    :goto_7
    const/4 v8, 0x0

    .line 359
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Metrics;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    :cond_f
    move-object v9, v4

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-result-object v10

    const/4 v15, 0x0

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 450
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 451
    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 365
    new-instance v4, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v4, v3}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 451
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 452
    :cond_10
    check-cast v0, Ljava/util/List;

    .line 449
    check-cast v0, Ljava/lang/Iterable;

    .line 365
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v16

    .line 366
    move-object v0, v1

    check-cast v0, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadPartnerFailure;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadPartnerFailure;->getMetricsError()Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v18, 0x102

    const/16 v19, 0x0

    .line 357
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-object v6, v0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v6 .. v19}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_c

    .line 370
    :cond_11
    instance-of v2, v1, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadUnspecifiedFailure;

    if-eqz v2, :cond_14

    .line 371
    new-instance v2, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    .line 372
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/Metrics;->getAuctionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_9

    :cond_12
    move-object v6, v4

    :goto_9
    const/4 v7, 0x0

    .line 373
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/domain/Metrics;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    :cond_13
    move-object v8, v4

    .line 374
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-result-object v9

    const/4 v14, 0x0

    .line 379
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v15

    .line 380
    move-object v0, v1

    check-cast v0, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadUnspecifiedFailure;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/EventResult$AdLoadResult$AdLoadUnspecifiedFailure;->getMetricsError()Lcom/chartboost/heliumsdk/domain/MetricsError$SimpleError;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/chartboost/heliumsdk/domain/MetricsError;

    const/16 v17, 0x102

    const/16 v18, 0x0

    move-object v5, v2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    .line 371
    invoke-direct/range {v5 .. v18}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_6

    .line 386
    :cond_14
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getAuctionId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_a

    :cond_15
    move-object v6, v4

    .line 387
    :goto_a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/Metrics;->getPlacementType()Ljava/lang/String;

    move-result-object v4

    :cond_16
    move-object v8, v4

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 454
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 455
    check-cast v3, Lcom/chartboost/heliumsdk/domain/Metrics;

    .line 388
    new-instance v4, Lcom/chartboost/heliumsdk/network/model/MetricsData;

    invoke-direct {v4, v3}, Lcom/chartboost/heliumsdk/network/model/MetricsData;-><init>(Lcom/chartboost/heliumsdk/domain/Metrics;)V

    .line 455
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 456
    :cond_17
    check-cast v2, Ljava/util/List;

    .line 453
    check-cast v2, Ljava/lang/Iterable;

    .line 388
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    .line 389
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->getBannerAdDimensions(Ljava/util/Set;)Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;

    move-result-object v9

    .line 385
    new-instance v0, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x5f2

    const/16 v18, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/BannerAdDimensions;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;Lcom/chartboost/heliumsdk/domain/MetricsError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_c
    return-object v0
.end method

.method public final end(Ljava/lang/String;ZLcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V
    .locals 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/chartboost/heliumsdk/domain/MetricsManager;->eventsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/heliumsdk/domain/MetricsEvent;

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/heliumsdk/domain/MetricsEvent;->setEndTimestamp(J)V

    .line 72
    invoke-virtual {v1, p2}, Lcom/chartboost/heliumsdk/domain/MetricsEvent;->setSuccess(Z)V

    .line 73
    invoke-virtual {v1, p3}, Lcom/chartboost/heliumsdk/domain/MetricsEvent;->setError(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getEventInProgress(Ljava/lang/String;)Lcom/chartboost/heliumsdk/domain/MetricsEvent;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/chartboost/heliumsdk/domain/MetricsManager;->eventsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chartboost/heliumsdk/domain/MetricsEvent;

    return-object p1
.end method

.method public final postMetricsData(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/chartboost/heliumsdk/domain/Metrics;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lcom/chartboost/heliumsdk/domain/EventResult;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p1

    const-string v0, "data"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct/range {p0 .. p1}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->metricsDataIsValid(Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    if-eqz p4, :cond_1

    .line 118
    move-object/from16 v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sub-long/2addr v2, v0

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v4, v9

    move-object v5, v4

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 127
    invoke-virtual/range {v0 .. v7}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->buildMetricsDataRequestBody$Helium_release(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;)Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;

    move-result-object v14

    .line 128
    move-object v0, v8

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/heliumsdk/domain/Metrics;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->getEvent()Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    move-result-object v11

    .line 131
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;->Companion:Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    .line 131
    invoke-static {v0, v14, v1}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonObject(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/heliumsdk/utils/JsonTranslatorKt;->toJSONObject(Lkotlinx/serialization/json/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Metrics data for the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lifecycle event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/heliumsdk/utils/LogController;->d(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 141
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/chartboost/heliumsdk/domain/MetricsManager$postMetricsData$2;

    invoke-direct {v1, v0, v9}, Lcom/chartboost/heliumsdk/domain/MetricsManager$postMetricsData$2;-><init>(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    move-object/from16 v0, p0

    .line 152
    invoke-direct {v0, v11}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->shouldPostMetricsData(Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 156
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/chartboost/heliumsdk/domain/MetricsManager$postMetricsData$3;

    const/4 v15, 0x0

    move-object v10, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/chartboost/heliumsdk/domain/MetricsManager$postMetricsData$3;-><init>(Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/heliumsdk/network/model/MetricsRequestBody;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final postMetricsDataForFailedEvent(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/chartboost/heliumsdk/domain/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p2

    move-object/from16 v1, p4

    const-string v2, "event"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "chartboostMediationError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/chartboost/heliumsdk/domain/Metrics;

    move-object v3, p1

    invoke-direct {v2, p1, p2}, Lcom/chartboost/heliumsdk/domain/Metrics;-><init>(Ljava/lang/String;Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;)V

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setStart(Ljava/lang/Long;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setEnd(Ljava/lang/Long;)V

    const-wide/16 v3, 0x0

    .line 228
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setDuration(Ljava/lang/Long;)V

    move-object v0, p3

    .line 229
    invoke-virtual {v2, p3}, Lcom/chartboost/heliumsdk/domain/Metrics;->setAuctionId(Ljava/lang/String;)V

    move-object/from16 v0, p6

    .line 230
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setPlacementType(Ljava/lang/String;)V

    move-object/from16 v0, p12

    .line 231
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setNetworkType(Ljava/lang/String;)V

    move-object/from16 v0, p13

    .line 232
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setLineItemId(Ljava/lang/String;)V

    move-object/from16 v0, p14

    .line 233
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setPartnerPlacement(Ljava/lang/String;)V

    move-object/from16 v0, p7

    .line 234
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setSize(Landroid/util/Size;)V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setSuccess(Z)V

    .line 236
    invoke-virtual {v2, v1}, Lcom/chartboost/heliumsdk/domain/Metrics;->setChartboostMediationError(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    move-object/from16 v0, p5

    .line 237
    invoke-virtual {v2, v0}, Lcom/chartboost/heliumsdk/domain/Metrics;->setChartboostMediationErrorMessage(Ljava/lang/String;)V

    .line 224
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v3, p0

    move-object/from16 v5, p10

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p11

    .line 222
    invoke-static/range {v3 .. v11}, Lcom/chartboost/heliumsdk/domain/MetricsManager;->postMetricsData$default(Lcom/chartboost/heliumsdk/domain/MetricsManager;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/chartboost/heliumsdk/domain/EventResult;ILjava/lang/Object;)V

    return-void
.end method

.method public final start(Lcom/chartboost/heliumsdk/domain/MetricsEvent$EventType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/chartboost/heliumsdk/domain/MetricsManager;->eventsInProgress:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lcom/chartboost/heliumsdk/domain/MetricsEvent;

    invoke-direct {v2, p1, p2}, Lcom/chartboost/heliumsdk/domain/MetricsEvent;-><init>(Lcom/chartboost/heliumsdk/domain/MetricsEvent$EventType;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
