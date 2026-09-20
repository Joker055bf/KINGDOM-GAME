.class public abstract Lcom/vk/id/captcha/c/a/a;
.super Ljava/lang/Object;
.source "SensorData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/c/a/a$a;,
        Lcom/vk/id/captcha/c/a/a$b;,
        Lcom/vk/id/captcha/c/a/a$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u00080\u0018\u00002\u00020\u0001:\u0003\u0006\u0003\nB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0003\u000b\u000c\r"
    }
    d2 = {
        "Lcom/vk/id/captcha/c/a/a;",
        "",
        "Lorg/json/JSONObject;",
        "b",
        "()Lorg/json/JSONObject;",
        "",
        "a",
        "()Ljava/lang/String;",
        "<init>",
        "()V",
        "c",
        "Lcom/vk/id/captcha/c/a/a$a;",
        "Lcom/vk/id/captcha/c/a/a$b;",
        "Lcom/vk/id/captcha/c/a/a$c;"
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/captcha/c/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Lorg/json/JSONObject;
.end method
