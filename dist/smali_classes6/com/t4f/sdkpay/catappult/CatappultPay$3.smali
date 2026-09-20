.class Lcom/t4f/sdkpay/catappult/CatappultPay$3;
.super Ljava/lang/Object;
.source "CatappultPay.java"

# interfaces
.implements Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkpay/catappult/CatappultPay;->getProductList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 136
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2, p2}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onGetProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 141
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object p2

    const-string v0, "error"

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onGetProductListCallback(ILjava/lang/String;Ljava/util/List;)V

    .line 145
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSkuDetailsResponse: responseCode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdktgs.CatappultPay"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
