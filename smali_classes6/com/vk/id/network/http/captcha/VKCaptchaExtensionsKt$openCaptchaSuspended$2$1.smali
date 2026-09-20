.class public final Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;
.super Ljava/lang/Object;
.source "VKCaptchaExtensions.kt"

# interfaces
.implements Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt;->openCaptchaSuspended(Lcom/vk/id/captcha/api/VKCaptcha;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1",
        "Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;",
        "onResult",
        "",
        "result",
        "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
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
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/vk/id/network/http/captcha/VKCaptchaExtensionsKt$openCaptchaSuspended$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
