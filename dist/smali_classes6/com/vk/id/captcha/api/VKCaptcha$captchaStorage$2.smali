.class final Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VKCaptcha.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/api/VKCaptcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vk/id/captcha/a/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/vk/id/captcha/a/a;",
        "invoke",
        "()Lcom/vk/id/captcha/a/a;"
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
.field public static final INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;

    invoke-direct {v0}, Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;-><init>()V

    sput-object v0, Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vk/id/captcha/a/a;
    .locals 1

    .line 104
    new-instance v0, Lcom/vk/id/captcha/a/a;

    invoke-direct {v0}, Lcom/vk/id/captcha/a/a;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/vk/id/captcha/api/VKCaptcha$captchaStorage$2;->invoke()Lcom/vk/id/captcha/a/a;

    move-result-object v0

    return-object v0
.end method
