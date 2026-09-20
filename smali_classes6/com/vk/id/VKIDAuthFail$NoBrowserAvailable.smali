.class public final Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;
.super Lcom/vk/id/VKIDAuthFail;
.source "VKIDAuthFail.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/VKIDAuthFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoBrowserAvailable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;",
        "Lcom/vk/id/VKIDAuthFail;",
        "description",
        "",
        "throwable",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/vk/id/VKIDAuthFail;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    iput-object p2, p0, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 141
    instance-of v0, p1, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->getDescription()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;

    invoke-virtual {p1}, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->throwable:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->throwable:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v1, p0, Lcom/vk/id/VKIDAuthFail$NoBrowserAvailable;->throwable:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
