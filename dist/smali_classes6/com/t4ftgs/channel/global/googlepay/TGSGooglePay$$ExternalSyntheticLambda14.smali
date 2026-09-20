.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/t4f/sdk/core/OnFinish;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$1:I

    iput-boolean p3, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$2:Z

    iput-object p4, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$4:Lcom/t4f/sdk/core/OnFinish;

    return-void
.end method


# virtual methods
.method public final onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$1:I

    iget-boolean v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$2:Z

    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda14;->f$4:Lcom/t4f/sdk/core/OnFinish;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$dmtpgLqcQ2EkMrZfjX51sW6CZk8(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;IZLjava/lang/String;Lcom/t4f/sdk/core/OnFinish;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method
