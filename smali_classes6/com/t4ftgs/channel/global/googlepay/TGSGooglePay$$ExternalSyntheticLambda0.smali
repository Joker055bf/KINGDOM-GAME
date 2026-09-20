.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda0;->f$1:Lcom/t4f/sdk/core/OnSDKFinish;

    invoke-static {v0, v1, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$gFKDEGaji4BP7z3KTFnW-is3SLg(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4f/sdk/core/OnSDKFinish;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
