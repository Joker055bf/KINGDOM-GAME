.class public final Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;
.super Lcom/vk/id/captcha/api/data/VKCaptchaError;
.source "VKCaptchaError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/api/data/VKCaptchaError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;",
        "Lcom/vk/id/captcha/api/data/VKCaptchaError;",
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
.method public constructor <init>()V
    .locals 2

    const-string v0, "You\'ve cancelled the captcha flow"

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v0, v1, v1}, Lcom/vk/id/captcha/api/data/VKCaptchaError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
