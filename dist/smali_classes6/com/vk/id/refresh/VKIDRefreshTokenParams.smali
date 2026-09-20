.class public final Lcom/vk/id/refresh/VKIDRefreshTokenParams;
.super Ljava/lang/Object;
.source "VKIDRefreshTokenParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/refresh/VKIDRefreshTokenParams$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB\u001b\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/refresh/VKIDRefreshTokenParams;",
        "",
        "state",
        "",
        "refreshAccessToken",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getState$vkid_release",
        "()Ljava/lang/String;",
        "getRefreshAccessToken$vkid_release",
        "()Z",
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
.field private final refreshAccessToken:Z

.field private final state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->state:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->refreshAccessToken:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vk/id/refresh/VKIDRefreshTokenParams;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getRefreshAccessToken$vkid_release()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->refreshAccessToken:Z

    return v0
.end method

.method public final getState$vkid_release()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/vk/id/refresh/VKIDRefreshTokenParams;->state:Ljava/lang/String;

    return-object v0
.end method
