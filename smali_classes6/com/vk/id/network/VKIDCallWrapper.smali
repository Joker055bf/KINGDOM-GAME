.class final Lcom/vk/id/network/VKIDCallWrapper;
.super Ljava/lang/Object;
.source "InternalVKIDCall.kt"

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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B.\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0008\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/id/network/VKIDCallWrapper;",
        "T",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "delegate",
        "Lcom/vk/id/network/http/HttpResponse;",
        "responseMapping",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "<init>",
        "(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)V",
        "execute",
        "Lkotlin/Result;",
        "execute-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancel",
        "",
        "isExecuted",
        "",
        "isCanceled",
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
.field private final delegate:Lcom/vk/id/network/InternalVKIDCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final responseMapping:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/vk/id/network/http/HttpResponse;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/id/network/InternalVKIDCall;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vk/id/network/http/HttpResponse;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMapping"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vk/id/network/VKIDCallWrapper;->delegate:Lcom/vk/id/network/InternalVKIDCall;

    .line 43
    iput-object p2, p0, Lcom/vk/id/network/VKIDCallWrapper;->responseMapping:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/vk/id/network/VKIDCallWrapper;->delegate:Lcom/vk/id/network/InternalVKIDCall;

    invoke-interface {v0}, Lcom/vk/id/network/InternalVKIDCall;->cancel()V

    return-void
.end method

.method public execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/vk/id/network/VKIDCallWrapper$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;

    iget v1, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/network/VKIDCallWrapper$execute$1;-><init>(Lcom/vk/id/network/VKIDCallWrapper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/network/VKIDCallWrapper;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/vk/id/network/VKIDCallWrapper;->delegate:Lcom/vk/id/network/InternalVKIDCall;

    iput-object p0, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/network/VKIDCallWrapper$execute$1;->label:I

    invoke-interface {p1, v0}, Lcom/vk/id/network/InternalVKIDCall;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    .line 47
    iget-object v0, v0, Lcom/vk/id/network/VKIDCallWrapper;->responseMapping:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/vk/id/network/VKIDCallWrapper;->delegate:Lcom/vk/id/network/InternalVKIDCall;

    invoke-interface {v0}, Lcom/vk/id/network/InternalVKIDCall;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/vk/id/network/VKIDCallWrapper;->delegate:Lcom/vk/id/network/InternalVKIDCall;

    invoke-interface {v0}, Lcom/vk/id/network/InternalVKIDCall;->isExecuted()Z

    move-result v0

    return v0
.end method
