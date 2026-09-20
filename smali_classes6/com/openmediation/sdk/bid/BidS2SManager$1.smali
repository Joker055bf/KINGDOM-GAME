.class Lcom/openmediation/sdk/bid/BidS2SManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/bid/BidS2SManager;->bid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/bid/BidResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

.field final synthetic val$adType:I

.field final synthetic val$bidInstances:Ljava/util/List;

.field final synthetic val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/bid/BidResponseCallback;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    iput-object p2, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    iput-object p3, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$placementId:Ljava/lang/String;

    iput p4, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$adType:I

    iput-object p5, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$bidInstances:Ljava/util/List;

    iput-object p6, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$reqId:Ljava/lang/String;

    iput-object p7, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    invoke-static {v0}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$200(Lcom/openmediation/sdk/bid/BidS2SManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$adType:I

    invoke-static {v0}, Lcom/openmediation/sdk/utils/PlacementUtils;->isCacheAdsType(I)Z

    move-result v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$bidInstances:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$300(Lcom/openmediation/sdk/bid/BidS2SManager;ZLjava/util/List;)V

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$bidInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {v2, v3}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    const-string v3, "S2S get token error: adapter = null"

    const/16 v4, 0x2728

    invoke-static {v2, v4, v3}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/openmediation/sdk/mediation/CustomAdsAdapter;->isS2S()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/openmediation/sdk/core/InsManager;->isInstanceAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    sget-object v4, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_PENDING:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {v2, v4}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    iget-object v4, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    iget-object v5, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v3, v2}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$400(Lcom/openmediation/sdk/bid/BidS2SManager;Landroid/content/Context;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;Lcom/openmediation/sdk/utils/model/BaseInstance;)Lcom/openmediation/sdk/bid/BidResponse;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    invoke-static {v4, v2, v3}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$500(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    const-string v4, "No BidToken"

    invoke-static {v3, v2, v4}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$600(Lcom/openmediation/sdk/bid/BidS2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$700(Lcom/openmediation/sdk/bid/BidS2SManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "S2S Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogW(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidS2SManager;

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$placementId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openmediation/sdk/bid/BidS2SManager;->access$700(Lcom/openmediation/sdk/bid/BidS2SManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidS2SManager$1;->val$placementId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "S2S bid error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x272a

    invoke-static {v1, v2, v0}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-void
.end method
