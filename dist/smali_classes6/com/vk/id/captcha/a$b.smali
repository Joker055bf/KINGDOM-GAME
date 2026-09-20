.class public final Lcom/vk/id/captcha/a$b;
.super Lcom/vk/id/captcha/a;
.source "VKCaptchaState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/vk/id/captcha/api/data/VKCaptchaError;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vk/id/captcha/api/data/VKCaptchaError;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/vk/id/captcha/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/vk/id/captcha/a$b;->a:Lcom/vk/id/captcha/api/data/VKCaptchaError;

    .line 16
    iput-object p2, p0, Lcom/vk/id/captcha/a$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vk/id/captcha/api/data/VKCaptchaError;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/vk/id/captcha/a$b;->a:Lcom/vk/id/captcha/api/data/VKCaptchaError;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/vk/id/captcha/a$b;->b:Ljava/lang/String;

    return-object v0
.end method
