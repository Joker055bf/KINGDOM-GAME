.class public abstract Lcom/vk/id/refresh/VKIDRefreshTokenFail;
.super Ljava/lang/Object;
.source "VKIDRefreshTokenFail.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;,
        Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedOAuthState;,
        Lcom/vk/id/refresh/VKIDRefreshTokenFail$NotAuthenticated;,
        Lcom/vk/id/refresh/VKIDRefreshTokenFail$RefreshTokenExpired;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0004\u0008\t\n\u000bB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0004\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail;",
        "",
        "description",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "FailedOAuthState",
        "FailedApiCall",
        "RefreshTokenExpired",
        "NotAuthenticated",
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedApiCall;",
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail$FailedOAuthState;",
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail$NotAuthenticated;",
        "Lcom/vk/id/refresh/VKIDRefreshTokenFail$RefreshTokenExpired;",
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
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vk/id/refresh/VKIDRefreshTokenFail;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/id/refresh/VKIDRefreshTokenFail;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenFail;->description:Ljava/lang/String;

    return-object v0
.end method
