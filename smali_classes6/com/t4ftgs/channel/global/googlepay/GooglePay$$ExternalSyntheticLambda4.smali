.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:Lcom/android/billingclient/api/ConsumeResponseListener;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$1:Lcom/android/billingclient/api/ConsumeResponseListener;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V
    .locals 3

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$1:Lcom/android/billingclient/api/ConsumeResponseListener;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$6sFjQG2vk4imP1zMu3jL1V9hi0M(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
