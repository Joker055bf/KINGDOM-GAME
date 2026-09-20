.class Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/core/AbstractHybridAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field private final insIndex:I

.field final synthetic this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/core/AbstractHybridAds;I)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->insIndex:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeout startNextInstance : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->insIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;

    iget v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->insIndex:I

    invoke-static {v0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->access$000(Lcom/openmediation/sdk/core/AbstractHybridAds;I)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->this$0:Lcom/openmediation/sdk/core/AbstractHybridAds;

    iget-object v0, v0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HybridAds group ins load timeout: startNextInstance : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/openmediation/sdk/core/AbstractHybridAds$TimeoutRunnable;->insIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2722

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
