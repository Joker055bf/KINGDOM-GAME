.class public abstract Lcom/vk/id/captcha/api/data/VKCaptchaError;
.super Ljava/lang/Object;
.source "VKCaptchaError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;,
        Lcom/vk/id/captcha/api/data/VKCaptchaError$IllegalArgumentError;,
        Lcom/vk/id/captcha/api/data/VKCaptchaError$NetworkError;,
        Lcom/vk/id/captcha/api/data/VKCaptchaError$WebviewIsUpdatingError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u00086\u0018\u00002\u00020\u0001:\u0004\u000e\u000f\u0010\u0011B\u001b\u0008\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0008\u001a\u00020\u00078\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0004\u0012\u0013\u0014\u0015"
    }
    d2 = {
        "Lcom/vk/id/captcha/api/data/VKCaptchaError;",
        "",
        "",
        "error",
        "Ljava/lang/Throwable;",
        "getError",
        "()Ljava/lang/Throwable;",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "Cancelled",
        "IllegalArgumentError",
        "NetworkError",
        "WebviewIsUpdatingError",
        "Lcom/vk/id/captcha/api/data/VKCaptchaError$Cancelled;",
        "Lcom/vk/id/captcha/api/data/VKCaptchaError$IllegalArgumentError;",
        "Lcom/vk/id/captcha/api/data/VKCaptchaError$NetworkError;",
        "Lcom/vk/id/captcha/api/data/VKCaptchaError$WebviewIsUpdatingError;"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/vk/id/captcha/api/data/VKCaptchaError;->message:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/vk/id/captcha/api/data/VKCaptchaError;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vk/id/captcha/api/data/VKCaptchaError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/Throwable;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaError;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaError;->message:Ljava/lang/String;

    return-object v0
.end method
