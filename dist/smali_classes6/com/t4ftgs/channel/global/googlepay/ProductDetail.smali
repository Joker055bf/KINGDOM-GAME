.class Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
.super Lcom/t4f/json/Json;
.source "ProductDetail.java"


# static fields
.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final ONE_TIME_PURCHASE_OFFER_DETAIL:Ljava/lang/String; = "oneTimePurchaseOfferDetails"

.field private static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field private static final PRODUCT_TYPE:Ljava/lang/String; = "type"

.field private static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/t4f/json/Json;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->set(Lcom/android/billingclient/api/ProductDetails;)Z

    return-void
.end method

.method private set(Lcom/android/billingclient/api/ProductDetails;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->setProductId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->setProductType(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->setDescription(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->setTitle(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    .line 72
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    invoke-direct {v0, p1}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;-><init>(Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->setOneTimePurchaseOfferDetail(Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "description"

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOneTimePurchaseOfferDetail()Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;
    .locals 2

    const-string v0, "oneTimePurchaseOfferDetails"

    .line 64
    invoke-super {p0, v0}, Lcom/t4f/json/Json;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;

    invoke-direct {v1, v0}, Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "productId"

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProductType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDescription(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "description"

    .line 36
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "name"

    .line 52
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method

.method public setOneTimePurchaseOfferDetail(Lcom/t4ftgs/channel/global/googlepay/OneTimePurchaseOfferDetail;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "oneTimePurchaseOfferDetails"

    .line 60
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method

.method public setProductId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "productId"

    .line 20
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method

.method public setProductType(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "type"

    .line 28
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
    .locals 1

    const-string v0, "title"

    .line 44
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;

    return-object p1
.end method
