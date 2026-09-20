.class final Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;
.super Lkotlin/jvm/internal/Lambda;
.source "VKCaptchaWebViewActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/id/captcha/web/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/c;",
        "a",
        "()Lcom/vk/id/captcha/web/c;"
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
.field private synthetic a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/web/c;
    .locals 3

    .line 38
    new-instance v0, Lcom/vk/id/captcha/web/c;

    iget-object v1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-virtual {v1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/web/c;-><init>(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;->a()Lcom/vk/id/captcha/web/c;

    move-result-object v0

    return-object v0
.end method
