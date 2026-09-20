.class Lcom/t4ftgs/channel/global/googlepay/IapData;
.super Lcom/t4f/json/Json;
.source "IapData.java"


# static fields
.field private static final OBFUSCATED_PROFILE_ID:Ljava/lang/String; = "obfuscatedProfileId"

.field private static final ORDER_ID:Ljava/lang/String; = "orderId"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/t4f/json/Json;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getObfuscatedProfileId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "obfuscatedProfileId"

    .line 17
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOrderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "orderId"

    .line 13
    invoke-super {p0, v0, p1}, Lcom/t4f/json/Json;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
