.class Lcom/t4f/sdkpay/catappult/CatappultPay$4;
.super Ljava/lang/Object;
.source "CatappultPay.java"

# interfaces
.implements Lcom/appcoins/sdk/billing/listeners/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkpay/catappult/CatappultPay;->checkPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(ILjava/lang/String;)V
    .locals 3

    .line 216
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    const-string v1, "onConsumeResponse: "

    const-string v2, "sdktgs.CatappultPay"

    if-ne p1, v0, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
