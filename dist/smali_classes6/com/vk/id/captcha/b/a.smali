.class public final Lcom/vk/id/captcha/b/a;
.super Ljava/lang/Object;
.source "DI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/b/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u001b\u0010\u0003\u001a\u00020\u00068AX\u0081\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\"\u0010\u0011\u001a\u00020\u000b8\u0001@\u0001X\u0081\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0005\u0010\u0010R\u0014\u0010\t\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u000e\u001a\u00020\u00158\u0001X\u0081\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0017R\u001b\u0010\u0013\u001a\u00020\u00188AX\u0081\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0008\u001a\u0004\u0008\u0003\u0010\u0019R\u001b\u0010\u0007\u001a\u00020\u001a8AX\u0081\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u001b"
    }
    d2 = {
        "Lcom/vk/id/captcha/b/a;",
        "",
        "Landroid/content/Context;",
        "b",
        "Landroid/content/Context;",
        "a",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "g",
        "Lkotlin/Lazy;",
        "d",
        "()Ljava/util/concurrent/ThreadPoolExecutor;",
        "",
        "h",
        "Z",
        "e",
        "()Z",
        "(Z)V",
        "c",
        "",
        "f",
        "I",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "()Landroid/os/Handler;",
        "Lcom/vk/id/captcha/web/b;",
        "()Lcom/vk/id/captcha/web/b;",
        "Lcom/vk/id/captcha/c/e;",
        "()Lcom/vk/id/captcha/c/e;",
        "p0",
        "<init>",
        "(Landroid/content/Context;)V"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vk/id/captcha/b/a$a;

.field private static volatile i:Lcom/vk/id/captcha/b/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroid/os/Handler;

.field private final f:I

.field private final g:Lkotlin/Lazy;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/b/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/captcha/b/a;->b:Landroid/content/Context;

    .line 15
    new-instance p1, Lcom/vk/id/captcha/b/a$3;

    invoke-direct {p1, p0}, Lcom/vk/id/captcha/b/a$3;-><init>(Lcom/vk/id/captcha/b/a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/b/a;->c:Lkotlin/Lazy;

    .line 19
    new-instance p1, Lcom/vk/id/captcha/b/a$2;

    invoke-direct {p1, p0}, Lcom/vk/id/captcha/b/a$2;-><init>(Lcom/vk/id/captcha/b/a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/b/a;->d:Lkotlin/Lazy;

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vk/id/captcha/b/a;->e:Landroid/os/Handler;

    .line 24
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/vk/id/captcha/b/a;->f:I

    .line 25
    new-instance p1, Lcom/vk/id/captcha/b/a$1;

    invoke-direct {p1, p0}, Lcom/vk/id/captcha/b/a$1;-><init>(Lcom/vk/id/captcha/b/a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/b/a;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/b/a;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/vk/id/captcha/b/a;->i:Lcom/vk/id/captcha/b/a;

    return-void
.end method

.method public static final synthetic b(Lcom/vk/id/captcha/b/a;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/vk/id/captcha/b/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/vk/id/captcha/b/a;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/vk/id/captcha/b/a;->f:I

    return p0
.end method

.method public static final synthetic f()Lcom/vk/id/captcha/b/a;
    .locals 1

    .line 13
    sget-object v0, Lcom/vk/id/captcha/b/a;->i:Lcom/vk/id/captcha/b/a;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/c/e;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/vk/id/captcha/b/a;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/c/e;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/vk/id/captcha/b/a;->h:Z

    return-void
.end method

.method public final b()Lcom/vk/id/captcha/web/b;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/vk/id/captcha/b/a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/web/b;

    return-object v0
.end method

.method public final c()Landroid/os/Handler;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vk/id/captcha/b/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/vk/id/captcha/b/a;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/vk/id/captcha/b/a;->h:Z

    return v0
.end method
