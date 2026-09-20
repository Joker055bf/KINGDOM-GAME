.class public final Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;
.super Ljava/lang/Object;
.source "VKIDGetUserParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/refreshuser/VKIDGetUserParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;",
        "",
        "<init>",
        "()V",
        "refreshTokenState",
        "",
        "getRefreshTokenState",
        "()Ljava/lang/String;",
        "setRefreshTokenState",
        "(Ljava/lang/String;)V",
        "build",
        "Lcom/vk/id/refreshuser/VKIDGetUserParams;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private refreshTokenState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/refreshuser/VKIDGetUserParams;
    .locals 3

    .line 45
    new-instance v0, Lcom/vk/id/refreshuser/VKIDGetUserParams;

    .line 46
    iget-object v1, p0, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->refreshTokenState:Ljava/lang/String;

    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, v1, v2}, Lcom/vk/id/refreshuser/VKIDGetUserParams;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getRefreshTokenState()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->refreshTokenState:Ljava/lang/String;

    return-object v0
.end method

.method public final setRefreshTokenState(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/vk/id/refreshuser/VKIDGetUserParams$Builder;->refreshTokenState:Ljava/lang/String;

    return-void
.end method
