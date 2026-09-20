.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/billingclient/api/PurchasesResponseListener;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$2:Lcom/android/billingclient/api/PurchasesResponseListener;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda9;->f$2:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$UgPRDROnTQ91weVSawaH35CIME8(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
