.class Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
.super Lcom/t4f/json/Json;
.source "OneTimePurchaseOfferDetail.java"


# static fields
.field private static final FORMATTED_PRICE:Ljava/lang/String; = "formattedPrice"

.field private static final OFFER_ID:Ljava/lang/String; = "offerId"

.field private static final OFFER_ID_TOKEN:Ljava/lang/String; = "offerIdToken"

.field private static final PRICE_AMOUNT_MICROS:Ljava/lang/String; = "priceAmountMicros"

.field private static final PRICE_CURRENCY_CODE:Ljava/lang/String; = "priceCurrencyCode"


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/t4f/json/Json;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;->set(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Z

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/t4f/json/Json;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method private set(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;->setFormattedPrice(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;->setPriceAmountMicros(J)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;->setPriceCurrencyCode(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;->setOfferIdToken(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    const-string v0, "formattedPrice"

    .line 31
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    const-string v0, "offerId"

    .line 55
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfferIdToken()Ljava/lang/String;
    .locals 1

    const-string v0, "offerIdToken"

    .line 47
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    const-string v0, "priceAmountMicros"

    .line 23
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    const-string v0, "priceCurrencyCode"

    .line 39
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFormattedPrice(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 1

    const-string v0, "formattedPrice"

    .line 35
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    return-object p1
.end method

.method public setOfferId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 1

    const-string v0, "offerId"

    .line 59
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    return-object p1
.end method

.method public setOfferIdToken(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 1

    const-string v0, "offerIdToken"

    .line 51
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    return-object p1
.end method

.method public setPriceAmountMicros(J)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 1

    const-string v0, "priceAmountMicros"

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    return-object p1
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 1

    const-string v0, "priceCurrencyCode"

    .line 43
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    return-object p1
.end method
