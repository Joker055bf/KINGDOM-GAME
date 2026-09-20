.class final Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/String;"
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

    iput-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-virtual {v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VK_CAPTCHA_CHALLENGE_DOMAIN_URL_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
