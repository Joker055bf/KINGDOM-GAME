.class public interface abstract Lcom/t4f/sdkpay/flexion/FlexionListener;
.super Ljava/lang/Object;
.source "FlexionListener.java"


# virtual methods
.method public abstract onBuyItemCallBack(ILjava/lang/String;Lcom/flexionmobile/fdk/Purchase;)V
.end method

.method public abstract onGetProductListCallBack(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/flexionmobile/fdk/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInitCallBack(ILjava/lang/String;Ljava/lang/String;)V
.end method
