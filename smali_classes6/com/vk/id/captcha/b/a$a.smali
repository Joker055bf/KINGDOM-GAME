.class public final Lcom/vk/id/captcha/b/a$a;
.super Ljava/lang/Object;
.source "DI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0011\u0010\u000b\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\n"
    }
    d2 = {
        "Lcom/vk/id/captcha/b/a$a;",
        "",
        "Landroid/content/Context;",
        "p0",
        "",
        "a",
        "(Landroid/content/Context;)V",
        "Lcom/vk/id/captcha/b/a;",
        "i",
        "Lcom/vk/id/captcha/b/a;",
        "()Lcom/vk/id/captcha/b/a;",
        "b",
        "<init>",
        "()V"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/captcha/b/a$a;-><init>()V

    return-void
.end method

.method public static a()Lcom/vk/id/captcha/b/a;
    .locals 2

    invoke-static {}, Lcom/vk/id/captcha/b/a;->f()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DI is not initialized!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/vk/id/captcha/b/a;->f()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Lcom/vk/id/captcha/b/a;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/vk/id/captcha/b/a;->f()Lcom/vk/id/captcha/b/a;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    sget-object v1, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    new-instance v1, Lcom/vk/id/captcha/b/a;

    invoke-direct {v1, p0}, Lcom/vk/id/captcha/b/a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/vk/id/captcha/b/a;->a(Lcom/vk/id/captcha/b/a;)V

    .line 51
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method
