.class public final Lcom/vk/id/network/http/InterceptorManager;
.super Ljava/lang/Object;
.source "InterceptorManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0013B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vk/id/network/http/InterceptorManager;",
        "",
        "httpClient",
        "Lcom/vk/id/network/http/HttpClient;",
        "applicationInterceptors",
        "",
        "Lcom/vk/id/network/http/Interceptor;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient;Ljava/util/List;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "proceed",
        "Lcom/vk/id/network/http/HttpResponse;",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addApplicationInterceptor",
        "",
        "interceptor",
        "HttpExecutionInterceptor",
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
.field private final applicationInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lcom/vk/id/network/http/HttpClient;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/http/HttpClient;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpClient;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInterceptors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vk/id/network/http/InterceptorManager;->httpClient:Lcom/vk/id/network/http/HttpClient;

    .line 13
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v0, "InterceptorManager"

    invoke-virtual {p1, v0}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/InterceptorManager;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 15
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/InterceptorManager;->applicationInterceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/id/network/http/HttpClient;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vk/id/network/http/InterceptorManager;-><init>(Lcom/vk/id/network/http/HttpClient;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final addApplicationInterceptor(Lcom/vk/id/network/http/Interceptor;)V
    .locals 3

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/vk/id/network/http/InterceptorManager;->applicationInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/vk/id/network/http/InterceptorManager;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added application interceptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/vk/id/network/http/InterceptorManager;->applicationInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;

    iget-object v2, p0, Lcom/vk/id/network/http/InterceptorManager;->httpClient:Lcom/vk/id/network/http/HttpClient;

    invoke-direct {v1, v2}, Lcom/vk/id/network/http/InterceptorManager$HttpExecutionInterceptor;-><init>(Lcom/vk/id/network/http/HttpClient;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/vk/id/network/http/RealInterceptorChain;

    const/4 v2, 0x0

    .line 26
    iget-object v3, p0, Lcom/vk/id/network/http/InterceptorManager;->httpClient:Lcom/vk/id/network/http/HttpClient;

    .line 22
    invoke-direct {v1, v0, v2, p1, v3}, Lcom/vk/id/network/http/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/vk/id/network/http/HttpRequest;Lcom/vk/id/network/http/HttpClient;)V

    .line 29
    invoke-virtual {v1, p1, p2}, Lcom/vk/id/network/http/RealInterceptorChain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
