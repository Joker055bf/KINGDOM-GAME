.class Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;
.super Lcom/t4ftgs/channel/global/googlepay/ProductDetail;
.source "PurchasingProduct.java"


# static fields
.field private static final OBFUSCATED_ACCOUNT_ID:Ljava/lang/String; = "obfuscatedAccountId"

.field private static final OBFUSCATED_PROFILE_ID:Ljava/lang/String; = "obfuscatedProfileId"


# instance fields
.field private transient mCallback:Lcom/t4f/sdk/core/OnSDKFinish;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/t4ftgs/channel/global/googlepay/ProductDetail;-><init>(Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/t4f/sdk/core/OnSDKFinish;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->mCallback:Lcom/t4f/sdk/core/OnSDKFinish;

    return-object v0
.end method

.method public getObfuscatedAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "obfuscatedAccountId"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObfuscatedProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "obfuscatedProfileId"

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notifyPurchaseFinish(ILjava/lang/String;)Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->mCallback:Lcom/t4f/sdk/core/OnSDKFinish;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/t4f/sdk/core/OnSDKFinish;->onSdkFinish(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lcom/t4f/sdk/core/OnSDKFinish;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->mCallback:Lcom/t4f/sdk/core/OnSDKFinish;

    return-object p0
.end method

.method public setObfuscatedAccountId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;
    .locals 1

    const-string v0, "obfuscatedAccountId"

    .line 32
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    return-object p1
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;
    .locals 1

    const-string v0, "obfuscatedProfileId"

    .line 40
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/PurchasingProduct;

    return-object p1
.end method
