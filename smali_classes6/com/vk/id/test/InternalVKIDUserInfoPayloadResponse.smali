.class public final Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;
.super Ljava/lang/Object;
.source "InternalVKIDOverrideApi.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u00c7\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d7\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d7\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d7\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;",
        "",
        "error",
        "",
        "user",
        "Lcom/vk/id/test/InternalVKIDUserPayloadResponse;",
        "state",
        "<init>",
        "(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)V",
        "getError",
        "()Ljava/lang/String;",
        "getUser",
        "()Lcom/vk/id/test/InternalVKIDUserPayloadResponse;",
        "getState",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final error:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;-><init>(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    .line 93
    iput-object p3, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 90
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;-><init>(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->copy(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/vk/id/test/InternalVKIDUserPayloadResponse;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;
    .locals 1

    new-instance v0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;-><init>(Ljava/lang/String;Lcom/vk/id/test/InternalVKIDUserPayloadResponse;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;

    iget-object v1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    iget-object v3, p1, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    iget-object p1, p1, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/vk/id/test/InternalVKIDUserPayloadResponse;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vk/id/test/InternalVKIDUserPayloadResponse;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->error:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->user:Lcom/vk/id/test/InternalVKIDUserPayloadResponse;

    iget-object v2, p0, Lcom/vk/id/test/InternalVKIDUserInfoPayloadResponse;->state:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InternalVKIDUserInfoPayloadResponse(error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", user="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
