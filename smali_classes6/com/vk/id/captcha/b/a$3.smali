.class final Lcom/vk/id/captcha/b/a$3;
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
        "Lcom/vk/id/captcha/c/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vk/id/captcha/c/f;",
        "a",
        "()Lcom/vk/id/captcha/c/f;"
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

    iput-object p1, p0, Lcom/vk/id/captcha/b/a$3;->a:Lcom/vk/id/captcha/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/c/f;
    .locals 1

    .line 16
    sget-object v0, Lcom/vk/id/captcha/c/f;->a:Lcom/vk/id/captcha/c/f$a;

    iget-object v0, p0, Lcom/vk/id/captcha/b/a$3;->a:Lcom/vk/id/captcha/b/a;

    invoke-static {v0}, Lcom/vk/id/captcha/b/a;->b(Lcom/vk/id/captcha/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/id/captcha/c/f$a;->a(Landroid/content/Context;)Lcom/vk/id/captcha/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/vk/id/captcha/b/a$3;->a()Lcom/vk/id/captcha/c/f;

    move-result-object v0

    return-object v0
.end method
