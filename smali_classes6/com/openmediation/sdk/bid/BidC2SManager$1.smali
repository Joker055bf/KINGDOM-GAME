.class Lcom/openmediation/sdk/bid/BidC2SManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openmediation/sdk/bid/BidC2SManager;->bid(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/bid/BidResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

.field final synthetic val$adSize:Lcom/openmediation/sdk/banner/AdSize;

.field final synthetic val$adType:I

.field final synthetic val$bidInstances:Ljava/util/List;

.field final synthetic val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:Ljava/lang/String;

.field final synthetic val$reqId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/bid/BidC2SManager;Ljava/lang/String;Ljava/util/List;Lcom/openmediation/sdk/bid/BidResponseCallback;Ljava/lang/String;Landroid/content/Context;ILcom/openmediation/sdk/banner/AdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    iput-object p2, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$placementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$bidInstances:Ljava/util/List;

    iput-object p4, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    iput-object p5, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$reqId:Ljava/lang/String;

    iput-object p6, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$context:Landroid/content/Context;

    iput p7, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$adType:I

    iput-object p8, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$adSize:Lcom/openmediation/sdk/banner/AdSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    invoke-static {v0}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$200(Lcom/openmediation/sdk/bid/BidC2SManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$bidInstances:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    invoke-static {v0}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$300(Lcom/openmediation/sdk/bid/BidC2SManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$bidInstances:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$400(Lcom/openmediation/sdk/bid/BidC2SManager;Ljava/util/List;)V

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$bidInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/openmediation/sdk/utils/model/BaseInstance;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationId()I

    move-result v2

    invoke-static {v2}, Lcom/openmediation/sdk/utils/AdapterUtil;->getCustomAdsAdapter(I)Lcom/openmediation/sdk/mediation/CustomAdsAdapter;

    move-result-object v9

    if-nez v9, :cond_2

    sget-object v2, Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;->BID_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;

    invoke-virtual {v8, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setBidState(Lcom/openmediation/sdk/utils/model/BaseInstance$BID_STATE;)V

    const/16 v2, 0x272b

    const-string v3, "C2S bid error: adapter = null"

    invoke-static {v8, v2, v3}, Lcom/openmediation/sdk/utils/AdsUtil;->advanceEventReport(Lcom/openmediation/sdk/utils/model/BaseInstance;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setReqId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    invoke-virtual {v8}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getHbt()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v8, v3, v4}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$500(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;J)V

    iget-object v3, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->this$0:Lcom/openmediation/sdk/bid/BidC2SManager;

    iget-object v4, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$placementId:Ljava/lang/String;

    iget v6, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$adType:I

    iget-object v7, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$adSize:Lcom/openmediation/sdk/banner/AdSize;

    invoke-static/range {v3 .. v9}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$600(Lcom/openmediation/sdk/bid/BidC2SManager;Landroid/content/Context;Ljava/lang/String;ILcom/openmediation/sdk/banner/AdSize;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/CustomAdsAdapter;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/bid/BidC2SManager$1;->val$callback:Lcom/openmediation/sdk/bid/BidResponseCallback;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/openmediation/sdk/bid/BidResponseCallback;->onBidC2SComplete(Ljava/util/List;)V

    :cond_4
    return-void
.end method
