.class public final synthetic Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/t4f/sdk/core/OnFinish;


# instance fields
.field public final synthetic f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

.field public final synthetic f$1:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$1:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFinish(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$0:Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$1:Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Lcom/android/billingclient/api/ProductDetails;

    move v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;->$r8$lambda$CNurpJ1zq-uv1zSkw9gc3tq5VP0(Lcom/t4ftgs/channel/global/googlepay/TGSGooglePay;Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;Ljava/lang/String;ILjava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method
