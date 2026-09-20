.class public final Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;
.super Ljava/lang/Object;
.source "ChartboostMediationFullscreenAdQueue.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueNotifyOnAutoQueue;",
        "onSdkInitAutoQueue",
        "",
        "isSdkInitialized",
        "",
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
.field final synthetic this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;


# direct methods
.method constructor <init>(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitAutoQueue(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    .line 78
    sget-object v0, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->INSTANCE:Lcom/chartboost/heliumsdk/domain/PlacementStorage;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/heliumsdk/domain/PlacementStorage;->getQueueSize(Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->setQueueCapacity(I)V

    .line 80
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->start()V

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/LogController;->INSTANCE:Lcom/chartboost/heliumsdk/utils/LogController;

    const-string v0, "Cannot auto start queuing due to the Chartboost Mediation SDK failing to initialize. Stopping the queue."

    invoke-virtual {p1, v0}, Lcom/chartboost/heliumsdk/utils/LogController;->w(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue$notifyQueueToAutoStart$1;->this$0:Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;

    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueue;->stop()V

    :goto_0
    return-void
.end method
