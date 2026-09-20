.class public final Lcom/vk/id/captcha/c/a/a$c$a;
.super Ljava/lang/Object;
.source "SensorData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/c/a/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/vk/id/captcha/c/a/a$c$a;",
        "",
        "",
        "p0",
        "Lcom/vk/id/captcha/c/a/a$c;",
        "a",
        "([F)Lcom/vk/id/captcha/c/a/a$c;",
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
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/captcha/c/a/a$c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([F)Lcom/vk/id/captcha/c/a/a$c;
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/vk/id/captcha/c/a/a$c;

    const/4 v1, 0x0

    .line 29
    aget p1, p1, v1

    .line 28
    invoke-direct {v0, p1, p1, p1}, Lcom/vk/id/captcha/c/a/a$c;-><init>(FFF)V

    return-object v0
.end method
