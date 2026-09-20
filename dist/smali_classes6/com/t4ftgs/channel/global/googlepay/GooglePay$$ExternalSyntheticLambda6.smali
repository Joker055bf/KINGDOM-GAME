.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$4:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .locals 7

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$0:Lcom/t4ftgs/channel/global/googlepay/GooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$2:I

    iget-object v3, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/t4ftgs/channel/global/googlepay/GooglePay$$ExternalSyntheticLambda6;->f$4:Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4ftgs/channel/global/googlepay/GooglePay;->$r8$lambda$CLGh9cQAlKKrJXdSWP2fiYMMqMk(Lcom/t4ftgs/channel/global/googlepay/GooglePay;Ljava/lang/String;ILjava/util/List;Lcom/t4ftgs/channel/global/googlepay/GooglePay$OnProductDetailsList;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
