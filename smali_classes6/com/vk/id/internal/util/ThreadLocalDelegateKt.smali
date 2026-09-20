.class public final Lcom/vk/id/internal/util/ThreadLocalDelegateKt;
.super Ljava/lang/Object;
.source "ThreadLocalDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "threadLocal",
        "Lcom/vk/id/internal/util/ThreadLocalDelegate;",
        "T",
        "factory",
        "Lkotlin/Function0;",
        "vkid_release"
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
.method public static final threadLocal(Lkotlin/jvm/functions/Function0;)Lcom/vk/id/internal/util/ThreadLocalDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lcom/vk/id/internal/util/ThreadLocalDelegate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;

    invoke-direct {v0, p0}, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/vk/id/internal/util/ThreadLocalDelegate;

    return-object v0
.end method
