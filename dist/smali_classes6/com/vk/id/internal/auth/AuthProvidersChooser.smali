.class public interface abstract Lcom/vk/id/internal/auth/AuthProvidersChooser;
.super Ljava/lang/Object;
.source "AuthProvidersChooser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/AuthProvidersChooser;",
        "",
        "chooseBest",
        "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
        "params",
        "Lcom/vk/id/auth/VKIDAuthParams;",
        "(Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract chooseBest(Lcom/vk/id/auth/VKIDAuthParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/auth/VKIDAuthParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
