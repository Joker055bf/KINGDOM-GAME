.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:Lcom/android/billingclient/api/PurchasesUpdatedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;->f$1:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda8;->f$1:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-static {v0, v1, p1, p2}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$wdYPDvblBiduM2oQ7sWYnAgb7ks(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
