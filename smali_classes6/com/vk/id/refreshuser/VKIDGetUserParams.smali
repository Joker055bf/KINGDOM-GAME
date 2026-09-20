.class public final Lcom/vk/id/refreshuser/VKIDGetUserParams;
.super Ljava/lang/Object;
.source "VKIDGetUserParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0015\u0008\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
        "",
        "refreshTokenState",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getRefreshTokenState$vkid_release",
        "()Ljava/lang/String;",
        "Builder",
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


# instance fields
.field private final refreshTokenState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/vk/id/refreshuser/VKIDGetUserParams;->refreshTokenState:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/vk/id/refreshuser/VKIDGetUserParams;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/id/refreshuser/VKIDGetUserParams;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getRefreshTokenState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/vk/id/refreshuser/VKIDGetUserParams;->refreshTokenState:Ljava/lang/String;

    return-object v0
.end method
