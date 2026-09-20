.class public final Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;
.super Ljava/lang/Object;
.source "ThreadLocalDelegate.kt"

# interfaces
.implements Lcom/vk/id/internal/util/ThreadLocalDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vk/id/internal/util/ThreadLocalDelegate<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u000b\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000cR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;",
        "T",
        "Lcom/vk/id/internal/util/ThreadLocalDelegate;",
        "factory",
        "Lkotlin/Function0;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getFactory",
        "()Lkotlin/jvm/functions/Function0;",
        "value",
        "Ljava/lang/ThreadLocal;",
        "get",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final factory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;->factory:Lkotlin/jvm/functions/Function0;

    .line 49
    new-instance p1, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl$value$1;

    invoke-direct {p1, p0}, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl$value$1;-><init>(Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;)V

    check-cast p1, Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;->value:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;->value:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getFactory()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/vk/id/internal/util/ThreadLocalDelegateImpl;->factory:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lcom/vk/id/internal/util/ThreadLocalDelegate$DefaultImpls;->getValue(Lcom/vk/id/internal/util/ThreadLocalDelegate;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
