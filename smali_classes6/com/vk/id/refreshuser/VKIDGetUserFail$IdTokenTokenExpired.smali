.class public final Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;
.super Lcom/vk/id/refreshuser/VKIDGetUserFail;
.source "VKIDGetUserFail.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/refreshuser/VKIDGetUserFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdTokenTokenExpired"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;",
        "Lcom/vk/id/refreshuser/VKIDGetUserFail;",
        "description",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
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
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/vk/id/refreshuser/VKIDGetUserFail;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;->getDescription()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;

    invoke-virtual {p1}, Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;->getDescription()Ljava/lang/String;

    move-result-object p1

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

.method public hashCode()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/vk/id/refreshuser/VKIDGetUserFail$IdTokenTokenExpired;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
