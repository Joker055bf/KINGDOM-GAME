.class final Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;
.super Ljava/lang/Object;
.source "InterceptorManager.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/InterceptorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpExecutionInterceptor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "httpClient",
        "Lcom/vk/id/network/http/HttpClient;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient;)V",
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
.field private final httpClient:Lcom/vk/id/network/http/HttpClient;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/http/HttpClient;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;->httpClient:Lcom/vk/id/network/http/HttpClient;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 45
    iget-object p2, p0, Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;->httpClient:Lcom/vk/id/network/http/HttpClient;

    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vk/id/network/http/HttpClient;->executeHttpRequest$network_release(Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
