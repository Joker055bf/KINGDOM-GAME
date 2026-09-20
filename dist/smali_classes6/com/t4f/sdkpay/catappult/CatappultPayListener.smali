.class public interface abstract Lcom/t4f/sdkpay/catappult/CatappultPayListener;
.super Ljava/lang/Object;
.source "CatappultPayListener.java"


# virtual methods
.method public abstract onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V
.end method

.method public abstract onGetProductListCallback(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/SkuDetails;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInitCallback(ILjava/lang/String;Ljava/lang/String;)V
.end method
