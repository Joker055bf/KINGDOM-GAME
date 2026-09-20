.class public final Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt;
.super Ljava/lang/Object;
.source "VKCaptchaExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVKCaptchaExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VKCaptchaExtensions.kt\ncom/vk/id/network/http/captcha/VKCaptchaExtensionsKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,54:1\n314#2,11:55\n*S KotlinDebug\n*F\n+ 1 VKCaptchaExtensions.kt\ncom/vk/id/network/http/captcha/VKCaptchaExtensionsKt\n*L\n21#1:55,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0080@\u00a2\u0006\u0002\u0010\u0006\u001a\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008*\u00020\u0001H\u0000\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "openCaptchaSuspended",
        "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
        "Lcom/vk/id/captcha/api/VKCaptcha;",
        "domain",
        "",
        "redirectUri",
        "(Lcom/vk/id/captcha/api/VKCaptcha;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toResult",
        "Lkotlin/Result;",
        "(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)Ljava/lang/Object;",
        "network_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final openCaptchaSuspended(Lcom/vk/id/captcha/api/VKCaptcha;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/captcha/api/VKCaptcha;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 62
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 63
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 26
    :try_start_0
    new-instance v2, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;

    invoke-direct {v2, v1}, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    .line 23
    invoke-virtual {p0, p1, p2, v2}, Lcom/vk/id/captcha/api/VKCaptcha;->openCaptcha(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V

    .line 35
    new-instance p1, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$2;

    invoke-direct {p1, p0}, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$2;-><init>(Lcom/vk/id/captcha/api/VKCaptcha;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 55
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p0
.end method

.method public static final toResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;

    invoke-virtual {p0}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    new-instance v0, Ljava/io/IOException;

    check-cast p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;

    invoke-virtual {p0}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;->getError()Lcom/vk/id/captcha/api/data/VKCaptchaError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/captcha/api/data/VKCaptchaError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;->getError()Lcom/vk/id/captcha/api/data/VKCaptchaError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vk/id/captcha/api/data/VKCaptchaError;->getError()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 48
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 46
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
