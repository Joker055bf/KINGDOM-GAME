.class public final Lcom/vk/id/internal/captcha/ForceError14Interceptor;
.super Ljava/lang/Object;
.source "ForceError14Interceptor.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010\u000cR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/captcha/ForceError14Interceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "redirectUri",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "once",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "intercept",
        "Lcom/vk/id/network/http/HttpResponse;",
        "chain",
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "vkid_release"
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
.field public static final $stable:I = 0x8


# instance fields
.field private final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final redirectUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/vk/id/internal/captcha/ForceError14Interceptor;->redirectUri:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vk/id/internal/captcha/ForceError14Interceptor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 17
    iget-object v0, p0, Lcom/vk/id/internal/captcha/ForceError14Interceptor;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v1

    .line 30
    iget-object p1, p0, Lcom/vk/id/internal/captcha/ForceError14Interceptor;->redirectUri:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\n                            {\n                                \"error\": {\n                                    \"error_code\": 14,\n                                    \"error_msg\": \"Captcha needed\",\n                                    \"request_params\": [\n                                    ],\n                                    \"redirect_uri\": \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\",\n                                    \"captcha_sid\": \"679747455055\",\n                                    \"is_refresh_enabled\": true,\n                                    \"captcha_img\": \"https:\\/\\/vk.ru\\/captcha.php?sid=679747455055&source=check_user_action_validate%2Bmail_send&app_id=6287487&device_id=&s=1&resized=1\",\n                                    \"captcha_ts\": 1741099026.324000,\n                                    \"captcha_attempt\": 1,\n                                    \"captcha_ratio\": 2.600000,\n                                    \"is_sound_captcha_available\": true,\n                                    \"captcha_track\": \"https:\\/\\/vk.ru\\/sound_captcha.php?captcha_sid=679747455055&act=get&source=check_user_action_validate%2Bmail_send&app_id=6287487&device_id=\",\n                                    \"uiux_changes\": true\n                                }\n                            }\n        "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    new-instance p1, Lcom/vk/id/network/http/HttpResponse;

    const/16 v2, 0xc8

    const-string v3, "OK"

    const-string p2, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    .line 49
    invoke-static {p2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p1

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p1
.end method
