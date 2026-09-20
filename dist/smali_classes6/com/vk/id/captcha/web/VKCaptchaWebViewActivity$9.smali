.class final Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;
.super Lkotlin/jvm/internal/Lambda;
.source "VKCaptchaWebViewActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
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

    iput-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-static {v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->c(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-static {v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
