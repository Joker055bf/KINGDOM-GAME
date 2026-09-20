.class public interface abstract Lcom/openmediation/sdk/bid/BidResponseCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBidC2SComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBidS2SComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;)V"
        }
    .end annotation
.end method
