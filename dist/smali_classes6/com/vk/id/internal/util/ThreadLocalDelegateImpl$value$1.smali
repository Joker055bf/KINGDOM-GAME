.class public final Lcom/vk/id/internal/util/ThreadLocalDelegateImpl$value$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;-><init>(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\r\u0010\u0002\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "com/vk/id/internal/util/ThreadLocalDelegateImpl$value$1",
        "Ljava/lang/ThreadLocal;",
        "initialValue",
        "()Ljava/lang/Object;",
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


# instance fields
.field final synthetic this$0:Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/internal/util/ThreadLocalDelegateImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/util/ThreadLocalDelegateImpl<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl$value$1;->this$0:Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;

    .line 49
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl$value$1;->this$0:Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;

    invoke-virtual {v0}, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;->getFactory()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
