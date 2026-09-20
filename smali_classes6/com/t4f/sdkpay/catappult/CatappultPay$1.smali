.class Lcom/t4f/sdkpay/catappult/CatappultPay$1;
.super Ljava/lang/Object;
.source "CatappultPay.java"

# interfaces
.implements Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 4

    const-string v0, "sdktgs.CatappultPay"

    const-string v1, "onBillingServiceDisconnected"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v2, v1, v3}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onInitCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$200()Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->startConnection(Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;)V

    return-void
.end method

.method public onBillingSetupFinished(I)V
    .locals 4

    .line 36
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    const-string v1, ""

    const-string v2, "sdktgs.CatappultPay"

    if-eq p1, v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Problem setting up in-app billing: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onInitCallback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "onBillingSetupFinished"

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 47
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$000()Lcom/t4f/sdkpay/catappult/CatappultPayListener;

    move-result-object p1

    const/4 v0, 0x0

    const-string v2, "success"

    invoke-interface {p1, v0, v2, v1}, Lcom/t4f/sdkpay/catappult/CatappultPayListener;->onInitCallback(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-static {}, Lcom/t4f/sdkpay/catappult/CatappultPay;->access$100()V

    return-void
.end method
