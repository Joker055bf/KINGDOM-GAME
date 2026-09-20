.class final Lcom/vk/id/captcha/web/g$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VKCaptchaWebViewClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/web/g;-><init>(Landroid/webkit/WebView;Lcom/vk/id/captcha/web/b;Ljava/util/concurrent/ThreadPoolExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/id/captcha/web/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/d;",
        "a",
        "()Lcom/vk/id/captcha/web/d;"
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
.field private synthetic a:Lcom/vk/id/captcha/web/g;


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/web/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/captcha/web/g$1;->a:Lcom/vk/id/captcha/web/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/web/d;
    .locals 3

    .line 31
    new-instance v0, Lcom/vk/id/captcha/web/d;

    iget-object v1, p0, Lcom/vk/id/captcha/web/g$1;->a:Lcom/vk/id/captcha/web/g;

    invoke-static {v1}, Lcom/vk/id/captcha/web/g;->a(Lcom/vk/id/captcha/web/g;)Z

    move-result v1

    iget-object v2, p0, Lcom/vk/id/captcha/web/g$1;->a:Lcom/vk/id/captcha/web/g;

    invoke-static {v2}, Lcom/vk/id/captcha/web/g;->b(Lcom/vk/id/captcha/web/g;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vk/id/captcha/web/d;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/g$1;->a()Lcom/vk/id/captcha/web/d;

    move-result-object v0

    return-object v0
.end method
