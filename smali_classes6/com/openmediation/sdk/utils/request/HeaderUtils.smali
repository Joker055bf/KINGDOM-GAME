.class public final Lcom/openmediation/sdk/utils/request/HeaderUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseHeaders()Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 4

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Headers;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/network/Headers;-><init>()V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "UserAgent"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/network/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
