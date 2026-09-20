.class public final Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;
.super Lcom/vk/id/captcha/api/data/VKCaptchaResult;
.source "VKCaptchaResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/api/data/VKCaptchaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006"
    }
    d2 = {
        "Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;",
        "Lcom/vk/id/captcha/api/data/VKCaptchaResult;",
        "",
        "domain",
        "Ljava/lang/String;",
        "getDomain",
        "()Ljava/lang/String;",
        "token",
        "getToken",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V"
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
.field private final domain:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/vk/id/captcha/api/data/VKCaptchaResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;->token:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/vk/id/captcha/api/data/VKCaptchaResult$Success;->token:Ljava/lang/String;

    return-object v0
.end method
