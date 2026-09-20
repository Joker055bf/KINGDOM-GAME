.class final Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;
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
        "Lcom/vk/id/captcha/web/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/b;",
        "a",
        "()Lcom/vk/id/captcha/web/b;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;

    invoke-direct {v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;-><init>()V

    sput-object v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/web/b;
    .locals 1

    .line 43
    sget-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/b/a;->b()Lcom/vk/id/captcha/web/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;->a()Lcom/vk/id/captcha/web/b;

    move-result-object v0

    return-object v0
.end method
