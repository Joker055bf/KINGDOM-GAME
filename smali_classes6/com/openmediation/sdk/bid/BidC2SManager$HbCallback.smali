.class Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/mediation/BidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/bid/BidC2SManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HbCallback"
.end annotation


# instance fields
.field private final mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    return-void
.end method


# virtual methods
.method public onBidFailed(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/bid/BidC2SManager;->getInstance()Lcom/openmediation/sdk/bid/BidC2SManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$800(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/bid/BidC2SManager;->getInstance()Lcom/openmediation/sdk/bid/BidC2SManager;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/bid/BidC2SManager$HbCallback;->mInstance:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/bid/BidC2SManager;->access$700(Lcom/openmediation/sdk/bid/BidC2SManager;Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method
