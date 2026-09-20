.class Lcom/t4f/sdkpay/catappult/CatappultPay$2;
.super Ljava/lang/Object;
.source "CatappultPay.java"

# interfaces
.implements Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdkpay/catappult/CatappultPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appcoins/sdk/billing/Purchase;

    .line 73
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2, p2}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onBuyItemCallback(ILjava/lang/String;Lcom/appcoins/sdk/billing/Purchase;)V

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/appcoins/sdk/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$200()Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    move-result-object v0

    new-instance v1, Lcom/t4f/sdkpay/catappult/CatappultPay$2$1;

    invoke-direct {v1, p0}, Lcom/t4f/sdkpay/catappult/CatappultPay$2$1;-><init>(Lcom/t4f/sdkpay/catappult/CatappultPay$2;)V

    invoke-interface {v0, p2, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->consumeAsync(Ljava/lang/String;Lcom/appcoins/sdk/billing/listeners/ConsumeResponseListener;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onPurchasesUpdated: error"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdktgs.CatappultPay"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
