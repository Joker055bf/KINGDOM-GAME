.class final Lcom/vk/id/network/http/RetryInterceptor$intercept$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RetryInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/network/http/RetryInterceptor;->intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vk.id.network.http.RetryInterceptor"
    f = "RetryInterceptor.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x2c,
        0x32,
        0x48
    }
    m = "intercept"
    n = {
        "this",
        "chain",
        "lastException",
        "attempt",
        "this",
        "chain",
        "lastException",
        "attempt",
        "this",
        "chain",
        "lastException",
        "attempt"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/vk/id/network/http/RetryInterceptor;


# direct methods
.method constructor <init>(Lcom/vk/id/network/http/RetryInterceptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/RetryInterceptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/network/http/RetryInterceptor$intercept$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->this$0:Lcom/vk/id/network/http/RetryInterceptor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->label:I

    iget-object p1, p0, Lcom/vk/id/network/http/RetryInterceptor$intercept$1;->this$0:Lcom/vk/id/network/http/RetryInterceptor;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v1}, Lcom/vk/id/network/http/RetryInterceptor;->intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
