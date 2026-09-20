.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/t4f/sdk/core/OnFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda2;->f$0:Lcom/t4f/sdk/core/OnFinish;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda2;->f$0:Lcom/t4f/sdk/core/OnFinish;

    invoke-static {v0, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$consumePurchase$6(Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
