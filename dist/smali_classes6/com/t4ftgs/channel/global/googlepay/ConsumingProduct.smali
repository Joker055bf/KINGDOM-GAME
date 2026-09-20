.class Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
.super Lcom/t4f/json/Json;
.source "ConsumingProduct.java"


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final CHARACTER_ID:Ljava/lang/String; = "character_id"

.field private static final GOODS_TYPE:Ljava/lang/String; = "goods_type"

.field private static final IAP_DATA:Ljava/lang/String; = "iap_data"

.field private static final IS_ACKNOWLEDGED:Ljava/lang/String; = "isAcknowledged"

.field private static final ORDER_ID:Ljava/lang/String; = "order_id"

.field private static final PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final PURCHASE_STATE:Ljava/lang/String; = "purchase_state"

.field private static final PURCHASE_TOKEN:Ljava/lang/String; = "purchase_token"

.field private static final REASON:Ljava/lang/String; = "reason"

.field private static final SERVER_ID:Ljava/lang/String; = "server_id"

.field private static final SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VERIFY_RETRY_COUNT:Ljava/lang/String; = "verifyRetryCount"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/t4f/json/Json;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getAccountId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "account_id"

    .line 74
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharacterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "character_id"

    .line 82
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGoodsType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "goods_type"

    .line 58
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIapData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "iap_data"

    .line 90
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "order_id"

    .line 152
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "product_id"

    .line 144
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "purchase_state"

    .line 107
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseStateInteger(I)I
    .locals 4

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getPurchaseState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception parse google pay consuming product purchase state. state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method

.method public getPurchaseToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "purchase_token"

    .line 128
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "reason"

    .line 136
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "server_id"

    .line 66
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "signature"

    .line 99
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVerifyRetryCount(I)I
    .locals 1

    const-string v0, "verifyRetryCount"

    .line 160
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isAcknowledged(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "isAcknowledged"

    .line 37
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAcknowledgedBoolean(Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->getPurchaseState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception parse google pay consuming product acknowledged boolean. state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "account_id"

    .line 70
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setAcknowledged(Z)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "isAcknowledged"

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setCharacterId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "character_id"

    .line 78
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setGoodsType(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "goods_type"

    .line 54
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setIapData(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "iap_data"

    .line 86
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "order_id"

    .line 148
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setProductId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "product_id"

    .line 140
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setPurchaseState(I)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "purchase_state"

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "purchase_token"

    .line 124
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setReason(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "reason"

    .line 132
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setServerId(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "server_id"

    .line 62
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setSignature(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "signature"

    .line 95
    invoke-super {p0, p0, v0, p1}, Lcom/t4f/json/Json;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method

.method public setVerifyRetryCount(I)Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;
    .locals 1

    const-string v0, "verifyRetryCount"

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/ConsumingProduct;

    return-object p1
.end method
