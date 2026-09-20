.class public interface abstract Lcom/game/sdk/ui/payment/IPaymentPresenter;
.super Ljava/lang/Object;
.source "IPaymentPresenter.java"

# interfaces
.implements Lcom/game/sdk/comon/presenter/BasePresenter;


# virtual methods
.method public abstract getItemList()V
.end method

.method public abstract initialPurchase(Lcom/game/sdk/comon/object/request/InitalizePuchaseRequestObj;)V
.end method

.method public abstract retryPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract verifyPurchase(Lcom/game/sdk/comon/object/request/VerifyPurchaseRequestObj;)V
.end method
