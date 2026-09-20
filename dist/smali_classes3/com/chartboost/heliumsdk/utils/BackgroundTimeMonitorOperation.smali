.class public final Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;
.super Ljava/lang/Object;
.source "BackgroundTimeMonitorOperation.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;",
        "Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperator;",
        "()V",
        "lastBackgroundedDate",
        "Ljava/util/Date;",
        "totalBackgroundedMs",
        "",
        "backgroundTimeUntilNow",
        "commitLastBackgroundedDate",
        "",
        "onStart",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onStop",
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
.field private lastBackgroundedDate:Ljava/util/Date;

.field private totalBackgroundedMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver;->Companion:Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver$Companion;

    invoke-virtual {v0}, Lcom/chartboost/heliumsdk/utils/LifecycleStatusObserver$Companion;->getStatus()Lcom/chartboost/heliumsdk/utils/LifecycleStatus;

    move-result-object v0

    sget-object v1, Lcom/chartboost/heliumsdk/utils/LifecycleStatus;->BACKGROUND:Lcom/chartboost/heliumsdk/utils/LifecycleStatus;

    if-ne v0, v1, :cond_0

    .line 18
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->lastBackgroundedDate:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method private final commitLastBackgroundedDate()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->lastBackgroundedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-wide v1, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->totalBackgroundedMs:J

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->totalBackgroundedMs:J

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->lastBackgroundedDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public backgroundTimeUntilNow()J
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->commitLastBackgroundedDate()V

    .line 30
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->totalBackgroundedMs:J

    return-wide v0
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->commitLastBackgroundedDate()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/chartboost/heliumsdk/utils/BackgroundTimeMonitorOperation;->lastBackgroundedDate:Ljava/util/Date;

    return-void
.end method
