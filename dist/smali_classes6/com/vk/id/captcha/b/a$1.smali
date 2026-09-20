.class final Lcom/vk/id/captcha/b/a$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/b/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "a",
        "()Ljava/util/concurrent/ThreadPoolExecutor;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic a:Lcom/vk/id/captcha/b/a;


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/captcha/b/a$1;->a:Lcom/vk/id/captcha/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 26
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    iget-object v0, p0, Lcom/vk/id/captcha/b/a$1;->a:Lcom/vk/id/captcha/b/a;

    invoke-static {v0}, Lcom/vk/id/captcha/b/a;->c(Lcom/vk/id/captcha/b/a;)I

    move-result v1

    .line 28
    iget-object v0, p0, Lcom/vk/id/captcha/b/a$1;->a:Lcom/vk/id/captcha/b/a;

    invoke-static {v0}, Lcom/vk/id/captcha/b/a;->c(Lcom/vk/id/captcha/b/a;)I

    move-result v0

    shl-int/lit8 v2, v0, 0x1

    const-wide/16 v3, 0xa

    .line 30
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    move-object v0, v7

    .line 26
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v7
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/vk/id/captcha/b/a$1;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method
