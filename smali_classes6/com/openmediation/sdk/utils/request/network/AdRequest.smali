.class public final Lcom/openmediation/sdk/utils/request/network/AdRequest;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/Request;->newBuilder()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/request/network/Request$Method;->GET:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->method(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static post()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/request/network/Request;->newBuilder()Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/openmediation/sdk/utils/request/network/Request$Method;->POST:Lcom/openmediation/sdk/utils/request/network/Request$Method;

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;->method(Lcom/openmediation/sdk/utils/request/network/Request$Method;)Lcom/openmediation/sdk/utils/request/network/Request$RequestBuilder;

    move-result-object v0

    return-object v0
.end method
