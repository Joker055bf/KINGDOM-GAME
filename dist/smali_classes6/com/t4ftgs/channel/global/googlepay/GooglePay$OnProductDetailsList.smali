.class public interface abstract Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;
.super Ljava/lang/Object;
.source "GooglePay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4ftgs/channel/global/googlepay/GooglePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProductDetailsList"
.end annotation


# virtual methods
.method public abstract onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation
.end method
