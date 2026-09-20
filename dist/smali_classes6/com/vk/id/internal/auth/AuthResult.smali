.class public abstract Lcom/vk/id/internal/auth/AuthResult;
.super Ljava/lang/Object;
.source "AuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;,
        Lcom/vk/id/internal/auth/AuthResult$Canceled;,
        Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;,
        Lcom/vk/id/internal/auth/AuthResult$OAuth;,
        Lcom/vk/id/internal/auth/AuthResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\u0008B\t\u0008\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0004\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/AuthResult;",
        "",
        "<init>",
        "()V",
        "Success",
        "Canceled",
        "NoBrowserAvailable",
        "AuthActiviyResultFailed",
        "OAuth",
        "Lcom/vk/id/internal/auth/AuthResult$AuthActiviyResultFailed;",
        "Lcom/vk/id/internal/auth/AuthResult$Canceled;",
        "Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;",
        "Lcom/vk/id/internal/auth/AuthResult$Success;",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/internal/auth/AuthResult;-><init>()V

    return-void
.end method
