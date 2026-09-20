.class public final Lcom/vk/id/captcha/api/VKCaptchaKt;
.super Ljava/lang/Object;
.source "VKCaptcha.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\"\u0014\u0010\u0001\u001a\u00020\u00008\u0000X\u0081T\u00a2\u0006\u0006\n\u0004\u0008\u0001\u0010\u0002\"\u0014\u0010\u0003\u001a\u00020\u00008\u0000X\u0081T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0002\".\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0001@AX\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "",
        "VK_CAPTCHA_CHALLENGE_DOMAIN_URL_KEY",
        "Ljava/lang/String;",
        "VK_CAPTCHA_URL_KEY",
        "Lcom/vk/id/captcha/a;",
        "value",
        "result",
        "Lcom/vk/id/captcha/a;",
        "getResult",
        "()Lcom/vk/id/captcha/a;",
        "setResult",
        "(Lcom/vk/id/captcha/a;)V"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final VK_CAPTCHA_CHALLENGE_DOMAIN_URL_KEY:Ljava/lang/String; = "VK_CAPTCHA_CHALLENGE_DOMAIN_URL_KEY"

.field public static final VK_CAPTCHA_URL_KEY:Ljava/lang/String; = "VK_CAPTCHA_URL_KEY"

.field private static result:Lcom/vk/id/captcha/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getResult()Lcom/vk/id/captcha/a;
    .locals 1

    .line 19
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptchaKt;->result:Lcom/vk/id/captcha/a;

    return-object v0
.end method

.method public static final setResult(Lcom/vk/id/captcha/a;)V
    .locals 6

    .line 22
    instance-of v0, p0, Lcom/vk/id/captcha/a$d;

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;

    .line 24
    move-object v1, p0

    check-cast v1, Lcom/vk/id/captcha/a$d;

    invoke-virtual {v1}, Lcom/vk/id/captcha/a$d;->a()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v1}, Lcom/vk/id/captcha/a$d;->b()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-direct {v0, v2, v3}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v2}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaListener$captcha_release()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult;

    invoke-interface {v2, v0}, Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;->onResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)V

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/vk/id/captcha/a$d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 29
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v0}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaStorage$captcha_release()Lcom/vk/id/captcha/a/a;

    move-result-object v0

    invoke-virtual {v1}, Lcom/vk/id/captcha/a$d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vk/id/captcha/a$d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/vk/id/captcha/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 33
    :cond_1
    instance-of v0, p0, Lcom/vk/id/captcha/a$b;

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;

    .line 35
    move-object v1, p0

    check-cast v1, Lcom/vk/id/captcha/a$b;

    invoke-virtual {v1}, Lcom/vk/id/captcha/a$b;->a()Lcom/vk/id/captcha/api/data/VKCaptchaError;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/vk/id/captcha/a$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-direct {v0, v2, v1}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;-><init>(Lcom/vk/id/captcha/api/data/VKCaptchaError;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v1}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaListener$captcha_release()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult;

    invoke-interface {v1, v0}, Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;->onResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)V

    goto/16 :goto_4

    .line 41
    :cond_2
    instance-of v0, p0, Lcom/vk/id/captcha/a$a;

    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;

    .line 43
    new-instance v1, Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;

    invoke-direct {v1}, Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;-><init>()V

    check-cast v1, Lcom/vk/id/captcha/api/data/VKCaptchaError;

    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Error;-><init>(Lcom/vk/id/captcha/api/data/VKCaptchaError;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v1}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaListener$captcha_release()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v0, Lcom/vk/id/captcha/api/data/VKCaptchaResult;

    invoke-interface {v1, v0}, Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;->onResult(Lcom/vk/id/captcha/api/data/VKCaptchaResult;)V

    goto/16 :goto_4

    .line 49
    :cond_3
    sget-object v0, Lcom/vk/id/captcha/a$c;->INSTANCE:Lcom/vk/id/captcha/a$c;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v1}, Lcom/vk/id/captcha/api/VKCaptcha;->getLastDomain$captcha_release()Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v2, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v2}, Lcom/vk/id/captcha/api/VKCaptcha;->getLastRedirectUri$captcha_release()Ljava/lang/String;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v3}, Lcom/vk/id/captcha/api/VKCaptcha;->getCaptchaListener$captcha_release()Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;

    move-result-object v3

    .line 58
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-nez v3, :cond_4

    goto :goto_0

    .line 75
    :cond_4
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/id/captcha/api/VKCaptcha;->openCaptcha(Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/captcha/api/listener/VKCaptchaResultListener;)V

    goto :goto_4

    :cond_5
    :goto_0
    const-string p0, "VKCaptchaState"

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Can not retry to open captcha because illegal state. domain is null:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectUri is null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_7

    move v1, v4

    goto :goto_2

    :cond_7
    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", captchaListener is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0

    .line 84
    :cond_9
    :goto_4
    sput-object p0, Lcom/vk/id/captcha/api/VKCaptchaKt;->result:Lcom/vk/id/captcha/a;

    return-void
.end method
