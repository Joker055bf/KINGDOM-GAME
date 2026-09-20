.class public final Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;
.super Ljava/lang/Object;
.source "VKIDRefreshTokenParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/refresh/VKIDRefreshTokenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0012R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0003\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;",
        "",
        "<init>",
        "()V",
        "state",
        "",
        "getState",
        "()Ljava/lang/String;",
        "setState",
        "(Ljava/lang/String;)V",
        "refreshAccessToken",
        "",
        "getRefreshAccessToken$annotations",
        "getRefreshAccessToken",
        "()Z",
        "setRefreshAccessToken",
        "(Z)V",
        "build",
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
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
.field private refreshAccessToken:Z

.field private state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->refreshAccessToken:Z

    return-void
.end method

.method public static synthetic getRefreshAccessToken$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public final build()Lcom/vk/id/refresh/VKIDRefreshTokenParams;
    .locals 4

    .line 54
    new-instance v0, Lcom/vk/id/refresh/VKIDRefreshTokenParams;

    .line 55
    iget-object v1, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->state:Ljava/lang/String;

    .line 56
    iget-boolean v2, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->refreshAccessToken:Z

    const/4 v3, 0x0

    .line 54
    invoke-direct {v0, v1, v2, v3}, Lcom/vk/id/refresh/VKIDRefreshTokenParams;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getRefreshAccessToken()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->refreshAccessToken:Z

    return v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final setRefreshAccessToken(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->refreshAccessToken:Z

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;->state:Ljava/lang/String;

    return-void
.end method
