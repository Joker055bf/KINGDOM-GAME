.class public interface abstract Lcom/vk/id/network/http/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\'J\u0008\u0010\t\u001a\u00020\u0008H\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/id/network/http/Interceptor$Chain;",
        "",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "proceed",
        "Lcom/vk/id/network/http/HttpResponse;",
        "(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "index",
        "",
        "size",
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


# virtual methods
.method public abstract index()I
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation
.end method

.method public abstract proceed(Lcom/vk/id/network/http/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

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
.end method

.method public abstract request()Lcom/vk/id/network/http/HttpRequest;
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation
.end method

.method public abstract size()I
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation
.end method
