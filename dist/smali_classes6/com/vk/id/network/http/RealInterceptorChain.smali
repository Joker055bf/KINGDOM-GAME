.class public final Lcom/vk/id/network/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "RealInterceptorChain.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/network/http/RealInterceptorChain$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealInterceptorChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealInterceptorChain.kt\ncom/vk/id/network/http/RealInterceptorChain\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,84:1\n329#2:85\n*S KotlinDebug\n*F\n+ 1 RealInterceptorChain.kt\ncom/vk/id/network/http/RealInterceptorChain\n*L\n65#1:85\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B-\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J\u001a\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0080@\u00a2\u0006\u0004\u0008\u0014\u0010\u0011R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vk/id/network/http/RealInterceptorChain;",
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "interceptors",
        "",
        "Lcom/vk/id/network/http/Interceptor;",
        "index",
        "",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "httpClient",
        "Lcom/vk/id/network/http/HttpClient;",
        "<init>",
        "(Ljava/util/List;ILcom/vk/id/network/http/HttpRequest;Lcom/vk/id/network/http/HttpClient;)V",
        "calls",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "proceed",
        "Lcom/vk/id/network/http/HttpResponse;",
        "(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "size",
        "executeRequest",
        "executeRequest$network_release",
        "Companion",
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


# static fields
.field public static final CALLS_LIMIT:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/vk/id/network/http/RealInterceptorChain$Companion;


# instance fields
.field private final calls:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final httpClient:Lcom/vk/id/network/http/HttpClient;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/vk/id/network/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/network/http/RealInterceptorChain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/network/http/RealInterceptorChain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/network/http/RealInterceptorChain;->Companion:Lcom/vk/id/network/http/RealInterceptorChain$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/vk/id/network/http/HttpRequest;Lcom/vk/id/network/http/HttpClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;I",
            "Lcom/vk/id/network/http/HttpRequest;",
            "Lcom/vk/id/network/http/HttpClient;",
            ")V"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 25
    iput p2, p0, Lcom/vk/id/network/http/RealInterceptorChain;->index:I

    .line 26
    iput-object p3, p0, Lcom/vk/id/network/http/RealInterceptorChain;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 27
    iput-object p4, p0, Lcom/vk/id/network/http/RealInterceptorChain;->httpClient:Lcom/vk/id/network/http/HttpClient;

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->calls:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$getHttpClient$p(Lcom/vk/id/network/http/RealInterceptorChain;)Lcom/vk/id/network/http/HttpClient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->httpClient:Lcom/vk/id/network/http/HttpClient;

    return-object p0
.end method

.method public static synthetic executeRequest$network_release$default(Lcom/vk/id/network/http/RealInterceptorChain;Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 64
    iget-object p1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/http/RealInterceptorChain;->executeRequest$network_release(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final executeRequest$network_release(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p2, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;

    iget v1, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;

    invoke-direct {v0, p0, p2}, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;-><init>(Lcom/vk/id/network/http/RealInterceptorChain;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 63
    iget v2, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/network/http/HttpRequest;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 65
    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 66
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$httpResponse$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$httpResponse$1;-><init>(Lcom/vk/id/network/http/RealInterceptorChain;Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/network/http/RealInterceptorChain$executeRequest$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v5, p1

    .line 63
    check-cast p2, Lcom/vk/id/network/http/HttpResponse;

    .line 70
    new-instance p1, Lcom/vk/id/network/http/HttpResponse;

    .line 72
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v6

    .line 73
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v9

    .line 76
    invoke-virtual {p2}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-gt v0, p2, :cond_4

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_4

    move v10, v3

    goto :goto_2

    :cond_4
    move v10, v1

    :goto_2
    move-object v4, p1

    .line 70
    invoke-direct/range {v4 .. v10}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p1
.end method

.method public index()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->index:I

    return v0
.end method

.method public proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 35
    iget-object v0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->calls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->calls:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 41
    new-instance v0, Lcom/vk/id/network/http/RealInterceptorChain;

    .line 42
    iget-object v1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 43
    iget v2, p0, Lcom/vk/id/network/http/RealInterceptorChain;->index:I

    add-int/lit8 v2, v2, 0x1

    .line 45
    iget-object v3, p0, Lcom/vk/id/network/http/RealInterceptorChain;->httpClient:Lcom/vk/id/network/http/HttpClient;

    .line 41
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/vk/id/network/http/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/vk/id/network/http/HttpRequest;Lcom/vk/id/network/http/HttpClient;)V

    .line 48
    iget v1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->index:I

    iget-object v2, p0, Lcom/vk/id/network/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 49
    iget-object p1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    iget v1, p0, Lcom/vk/id/network/http/RealInterceptorChain;->index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/network/http/Interceptor;

    check-cast v0, Lcom/vk/id/network/http/Interceptor$Chain;

    invoke-interface {p1, v0, p2}, Lcom/vk/id/network/http/Interceptor;->intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/id/network/http/RealInterceptorChain;->executeRequest$network_release(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Interceptor chain calls limit (100) exceeded"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request()Lcom/vk/id/network/http/HttpRequest;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->request:Lcom/vk/id/network/http/HttpRequest;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/vk/id/network/http/RealInterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
