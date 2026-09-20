.class public interface abstract Lcom/game/sdk/ui/payment/PaymentNativeFragment$PaymentSuccess;
.super Ljava/lang/Object;
.source "PaymentNativeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/payment/PaymentNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PaymentSuccess"
.end annotation


# virtual methods
.method public abstract onIapPaymentSuccess(Lcom/game/sdk/comon/object/PurchaseHistoryObj;)V
.end method

.method public abstract onLocalPaymentSuccess(Lcom/game/sdk/comon/object/VerifyPurchaseObj;)V
.end method
