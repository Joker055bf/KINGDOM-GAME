.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4ftgs/channel/global/googlepay/OnBillingClientStateUpdate$OnBillingServiceUpdate;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

.field public final synthetic f$4:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    iput-object p5, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$4:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBillingServiceUpdate(ZLcom/android/billingclient/api/BillingResult;)V
    .locals 7

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    iget-object v4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda5;->f$4:[Ljava/lang/String;

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$sLToFvRc0bMq9D9yVBkTFtZXtAo(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/lang/String;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;[Ljava/lang/String;ZLcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
