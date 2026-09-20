.class Lcom/t4ftgs/channel/global/googlepay/Result;
.super Lcom/t4f/json/Json;
.source "Result.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "responseCode"

.field private static final DEBUG_MESSAGE:Ljava/lang/String; = "debugMessage"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/t4f/json/Json;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "debugMessage"

    .line 21
    invoke-virtual {p0, v0}, Lcom/t4ftgs/channel/global/googlepay/Result;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2

    const-string v0, "responseCode"

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/t4ftgs/channel/global/googlepay/Result;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDebugMessage(Ljava/lang/String;)Lcom/t4ftgs/channel/global/googlepay/Result;
    .locals 1

    const-string v0, "debugMessage"

    .line 17
    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/Result;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/Result;

    return-object p1
.end method

.method public setResponseCode(I)Lcom/t4ftgs/channel/global/googlepay/Result;
    .locals 1

    const-string v0, "responseCode"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/t4ftgs/channel/global/googlepay/Result;->putSafe(Lcom/t4f/json/Json;Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    check-cast p1, Lcom/t4ftgs/channel/global/googlepay/Result;

    return-object p1
.end method
