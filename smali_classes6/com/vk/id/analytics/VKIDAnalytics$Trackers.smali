.class public final Lcom/vk/id/analytics/VKIDAnalytics$Trackers;
.super Ljava/lang/Object;
.source "VKIDAnalytics.kt"

# interfaces
.implements Lcom/vk/id/analytics/VKIDAnalytics$Tracker;


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/analytics/VKIDAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trackers"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKIDAnalytics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKIDAnalytics.kt\ncom/vk/id/analytics/VKIDAnalytics$Trackers\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,72:1\n13409#2,2:73\n1#3:75\n37#4,2:76\n37#4,2:78\n*S KotlinDebug\n*F\n+ 1 VKIDAnalytics.kt\ncom/vk/id/analytics/VKIDAnalytics$Trackers\n*L\n38#1:73,2\n51#1:76,2\n61#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000b0\n\"\u00020\u000bH\u0017\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0001H\u0007J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0001H\u0007R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u0011j\u0008\u0012\u0004\u0012\u00020\u0001`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/id/analytics/VKIDAnalytics$Trackers;",
        "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "<init>",
        "()V",
        "trackEvent",
        "",
        "accessToken",
        "",
        "name",
        "params",
        "",
        "Lcom/vk/id/analytics/VKIDAnalytics$EventParam;",
        "(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V",
        "addTracker",
        "tracker",
        "removeTracker",
        "trackers",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "trackersArray",
        "[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V
    .locals 3
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eq p1, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 49
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object p1, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v0, v0, [Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 77
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 51
    invoke-static {p1}, Lcom/vk/id/analytics/VKIDAnalytics;->access$setTrackersArray$cp([Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    .line 52
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_2
    const-string p1, "Cannot add VKIDAnalytics into itself."

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V
    .locals 2
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    sget-object p1, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackers$cp()Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 79
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 61
    invoke-static {p1}, Lcom/vk/id/analytics/VKIDAnalytics;->access$setTrackersArray$cp([Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    .line 62
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public varargs trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 5
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/vk/id/analytics/VKIDAnalytics;->access$getTrackersArray$cp()[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    move-result-object v0

    .line 73
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    array-length v4, p3

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/vk/id/analytics/VKIDAnalytics$EventParam;

    invoke-interface {v3, p1, p2, v4}, Lcom/vk/id/analytics/VKIDAnalytics$Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs trackEvent(Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Tracker$DefaultImpls;->trackEvent(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method
