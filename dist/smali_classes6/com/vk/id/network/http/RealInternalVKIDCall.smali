.class public final Lcom/vk/id/network/http/RealInternalVKIDCall;
.super Ljava/lang/Object;
.source "RealInternalVKIDCall.kt"

# interfaces
.implements Lcom/vk/id/network/InternalVKIDCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vk/id/network/InternalVKIDCall<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealInternalVKIDCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealInternalVKIDCall.kt\ncom/vk/id/network/http/RealInternalVKIDCall\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n329#2:73\n1#3:74\n*S KotlinDebug\n*F\n+ 1 RealInternalVKIDCall.kt\ncom/vk/id/network/http/RealInternalVKIDCall\n*L\n30#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0014H\u0096@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vk/id/network/http/RealInternalVKIDCall;",
        "T",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "httpClient",
        "Lcom/vk/id/network/http/HttpClient;",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "responseMapper",
        "Lkotlin/Function1;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpClient;Lcom/vk/id/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V",
        "_executed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "_cancelled",
        "jobExecution",
        "Lkotlinx/coroutines/Job;",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "execute",
        "Lkotlin/Result;",
        "execute-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancel",
        "",
        "isCanceled",
        "",
        "isExecuted",
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
.field private _cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private _executed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final httpClient:Lcom/vk/id/network/http/HttpClient;

.field private jobExecution:Lkotlinx/coroutines/Job;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final request:Lcom/vk/id/network/http/HttpRequest;

.field private final responseMapper:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/vk/id/network/http/HttpResponse;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/id/network/http/HttpClient;Lcom/vk/id/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpClient;",
            "Lcom/vk/id/network/http/HttpRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->httpClient:Lcom/vk/id/network/http/HttpClient;

    .line 18
    iput-object p2, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 19
    iput-object p3, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->responseMapper:Lkotlin/jvm/functions/Function1;

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "RealInternalVKIDCall"

    invoke-virtual {p1, p2}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method

.method public static final synthetic access$getHttpClient$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpClient;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->httpClient:Lcom/vk/id/network/http/HttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/logger/InternalVKIDLogger;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-object p0
.end method

.method public static final synthetic access$getRequest$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lcom/vk/id/network/http/HttpRequest;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->request:Lcom/vk/id/network/http/HttpRequest;

    return-object p0
.end method

.method public static final synthetic access$getResponseMapper$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->responseMapper:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$get_cancelled$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$get_executed$p(Lcom/vk/id/network/http/RealInternalVKIDCall;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$setJobExecution$p(Lcom/vk/id/network/http/RealInternalVKIDCall;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->jobExecution:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->jobExecution:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 65
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;

    iget v1, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;-><init>(Lcom/vk/id/network/http/RealInternalVKIDCall;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 30
    new-instance v2, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$2;-><init>(Lcom/vk/id/network/http/RealInternalVKIDCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/vk/id/network/http/RealInternalVKIDCall$execute$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/id/network/http/RealInternalVKIDCall;->_executed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
