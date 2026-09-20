.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda1;->f$3:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$VVQzRF2pTfJZ226_ihwHaBMQILc(Lcom/t4ftgs/channel/global/googlepay/GooglePay;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
