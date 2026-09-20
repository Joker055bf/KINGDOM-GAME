.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingResult;Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;->f$0:Lcom/android/billingclient/api/BillingResult;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;->f$1:Lcom/t4f/sdk/core/OnFinish;

    return-void
.end method


# virtual methods
.method public final onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;->f$0:Lcom/android/billingclient/api/BillingResult;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda9;->f$1:Lcom/t4f/sdk/core/OnFinish;

    invoke-static {v0, v1, p1}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->lambda$consumePurchase$3(Lcom/android/billingclient/api/BillingResult;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
