.class final Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;
.super Ljava/lang/Object;
.source "UserDataFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/user/UserDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedUserWithTimeFetched"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;",
        "",
        "data",
        "Lcom/vk/id/VKIDUser;",
        "timeFetched",
        "",
        "<init>",
        "(Lcom/vk/id/VKIDUser;J)V",
        "getData",
        "()Lcom/vk/id/VKIDUser;",
        "getTimeFetched",
        "()J",
        "isValid",
        "",
        "()Z",
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


# instance fields
.field private final data:Lcom/vk/id/VKIDUser;

.field private final timeFetched:J


# direct methods
.method public constructor <init>(Lcom/vk/id/VKIDUser;J)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->data:Lcom/vk/id/VKIDUser;

    iput-wide p2, p0, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->timeFetched:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/id/VKIDUser;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 44
    invoke-static {}, Lcom/vk/id/internal/util/TimeKt;->currentTime()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;-><init>(Lcom/vk/id/VKIDUser;J)V

    return-void
.end method


# virtual methods
.method public final getData()Lcom/vk/id/VKIDUser;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->data:Lcom/vk/id/VKIDUser;

    return-object v0
.end method

.method public final getTimeFetched()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->timeFetched:J

    return-wide v0
.end method

.method public final isValid()Z
    .locals 4

    .line 46
    invoke-static {}, Lcom/vk/id/internal/util/TimeKt;->currentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vk/id/internal/user/UserDataFetcher$CachedUserWithTimeFetched;->timeFetched:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
