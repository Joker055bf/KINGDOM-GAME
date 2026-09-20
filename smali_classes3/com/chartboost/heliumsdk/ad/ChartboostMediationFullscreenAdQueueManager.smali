.class public final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;
.super Ljava/lang/Object;
.source "ChartboostMediationFullscreenAdQueueManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostMediationFullscreenAdQueueManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostMediationFullscreenAdQueueManager.kt\ncom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,51:1\n766#2:52\n857#2,2:53\n1855#2,2:55\n361#3,7:57\n*S KotlinDebug\n*F\n+ 1 ChartboostMediationFullscreenAdQueueManager.kt\ncom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager\n*L\n28#1:52\n28#1:53,2\n28#1:55,2\n47#1:57,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;",
        "",
        "()V",
        "placementToFullscreenAdQueues",
        "",
        "",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
        "autoStartQueues",
        "",
        "isSdkInitialized",
        "",
        "autoStartQueues$Helium_release",
        "queue",
        "context",
        "Landroid/content/Context;",
        "placementName",
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
.field public static final INSTANCE:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;

.field private static final placementToFullscreenAdQueues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;

    invoke-direct {v0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;-><init>()V

    sput-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->INSTANCE:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->placementToFullscreenAdQueues:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final queue(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->placementToFullscreenAdQueues:Ljava/util/Map;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-direct {v1, p0, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    check-cast v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    return-object v1
.end method


# virtual methods
.method public final autoStartQueues$Helium_release(Z)V
    .locals 4

    .line 28
    sget-object v0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueManager;->placementToFullscreenAdQueues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 28
    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 52
    check-cast v1, Ljava/lang/Iterable;

    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 29
    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getNotifyQueueToAutoStart$Helium_release()Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;->onSdkInitAutoQueue(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
