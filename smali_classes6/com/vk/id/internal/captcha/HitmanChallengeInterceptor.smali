.class public final Lcom/vk/id/internal/captcha/HitmanChallengeInterceptor;
.super Ljava/lang/Object;
.source "HitmanChallengeInterceptor.kt"

# interfaces
.implements Lcom/vk/id/network/http/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/id/internal/captcha/HitmanChallengeInterceptor;",
        "Lcom/vk/id/network/http/Interceptor;",
        "<init>",
        "()V",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/vk/id/network/http/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    .line 12
    invoke-interface {p1}, Lcom/vk/id/network/http/Interceptor$Chain;->request()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/vk/id/network/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "X-Challenge-Solution"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 16
    new-instance p1, Lcom/vk/id/network/http/HttpResponse;

    const/16 p2, 0xc8

    const-string v4, "OK"

    const-string v5, ""

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v6, "Content-Type"

    const-string v7, "application/json; charset=utf-8"

    .line 22
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "X-Challenge"

    const-string v6, "required"

    .line 23
    invoke-static {v2, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "X-Challenge-Url"

    const-string v3, "/challenge.html"

    .line 24
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 21
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x1

    move-object v0, p1

    move v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p1

    .line 29
    :cond_2
    invoke-interface {p1, v1, p2}, Lcom/vk/id/network/http/Interceptor$Chain;->proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
