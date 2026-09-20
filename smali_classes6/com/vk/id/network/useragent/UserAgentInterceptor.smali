.class public final Lcom/vk/id/network/useragent/UserAgentInterceptor;
.super Ljava/lang/Object;
.source "UserAgentInterceptor.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vk/id/network/useragent/UserAgentInterceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "userAgentProvider",
        "Lcom/vk/id/network/useragent/UserAgentProvider;",
        "<init>",
        "(Lcom/vk/id/network/useragent/UserAgentProvider;)V",
        "intercept",
        "Lcom/vk/id/network/http/HttpResponse;",
        "chain",
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final userAgentProvider:Lcom/vk/id/network/useragent/UserAgentProvider;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V
    .locals 1

    const-string v0, "userAgentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentInterceptor;->userAgentProvider:Lcom/vk/id/network/useragent/UserAgentProvider;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/Interceptor$Chain;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpRequest;->newBuilder()Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/vk/id/network/useragent/UserAgentInterceptor;->userAgentProvider:Lcom/vk/id/network/useragent/UserAgentProvider;

    invoke-virtual {v1}, Lcom/vk/id/network/useragent/UserAgentProvider;->getUserAgent$network_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/vk/id/network/http/HttpRequest$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/vk/id/network/http/HttpRequest$Builder;->build()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v0

    .line 18
    invoke-interface {p1, v0, p2}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
