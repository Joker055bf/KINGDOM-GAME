.class Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;
.super Ljava/lang/Object;
.source "OnBillingClientStateUpdate.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;
    }
.end annotation


# instance fields
.field private mOnBillingServiceUpdate:Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;-><init>(Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;)V

    return-void
.end method

.method public constructor <init>(Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;->mOnBillingServiceUpdate:Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;->onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method protected onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;->mOnBillingServiceUpdate:Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;->onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V

    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate;->onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
