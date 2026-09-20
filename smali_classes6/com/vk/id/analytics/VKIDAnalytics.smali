.class public final Lcom/vk/id/analytics/VKIDAnalytics;
.super Ljava/lang/Object;
.source "VKIDAnalytics.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/analytics/VKIDAnalytics$EventParam;,
        Lcom/vk/id/analytics/VKIDAnalytics$Tracker;,
        Lcom/vk/id/analytics/VKIDAnalytics$Trackers;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00062\u00020\u0001:\u0003\u0004\u0005\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/id/analytics/VKIDAnalytics;",
        "",
        "<init>",
        "()V",
        "Tracker",
        "EventParam",
        "Trackers",
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


# static fields
.field public static final Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

.field private static final trackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vk/id/analytics/VKIDAnalytics$Tracker;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile trackersArray:[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->trackers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    .line 69
    sput-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->trackersArray:[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTrackers$cp()Ljava/util/ArrayList;
    .locals 1

    .line 8
    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->trackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getTrackersArray$cp()[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;
    .locals 1

    .line 8
    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->trackersArray:[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-object v0
.end method

.method public static final synthetic access$setTrackersArray$cp([Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V
    .locals 0

    .line 8
    sput-object p0, Lcom/vk/id/analytics/VKIDAnalytics;->trackersArray:[Lcom/vk/id/analytics/VKIDAnalytics$Tracker;

    return-void
.end method

.method public static final addTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-virtual {v0, p0}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->addTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    return-void
.end method

.method public static final removeTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-virtual {v0, p0}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->removeTracker(Lcom/vk/id/analytics/VKIDAnalytics$Tracker;)V

    return-void
.end method

.method public static varargs trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vk/id/analytics/VKIDAnalytics;->Trackers:Lcom/vk/id/analytics/VKIDAnalytics$Trackers;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vk/id/analytics/VKIDAnalytics$Trackers;->trackEvent(Ljava/lang/String;Ljava/lang/String;[Lcom/vk/id/analytics/VKIDAnalytics$EventParam;)V

    return-void
.end method
