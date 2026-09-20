.class public final Lcom/vk/id/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001BE\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0096\u0002J\u0006\u0010\u001e\u001a\u00020\u0019J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vk/id/AccessToken;",
        "Landroid/os/Parcelable;",
        "token",
        "",
        "idToken",
        "userID",
        "",
        "expireTime",
        "userData",
        "Lcom/vk/id/VKIDUser;",
        "scopes",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V",
        "getToken",
        "()Ljava/lang/String;",
        "getIdToken",
        "getUserID",
        "()J",
        "getExpireTime",
        "getUserData",
        "()Lcom/vk/id/VKIDUser;",
        "getScopes",
        "()Ljava/util/Set;",
        "hashCode",
        "",
        "equals",
        "",
        "other",
        "",
        "describeContents",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/id/AccessToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final expireTime:J

.field private final idToken:Ljava/lang/String;

.field private final scopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final token:Ljava/lang/String;

.field private final userData:Lcom/vk/id/VKIDUser;

.field private final userID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/AccessToken$Creator;

    invoke-direct {v0}, Lcom/vk/id/AccessToken$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/vk/id/AccessToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V
    .locals 12
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/vk/id/VKIDUser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userData"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v11}, Lcom/vk/id/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/vk/id/VKIDUser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userData"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vk/id/AccessToken;->idToken:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/vk/id/AccessToken;->userID:J

    .line 41
    iput-wide p5, p0, Lcom/vk/id/AccessToken;->expireTime:J

    .line 47
    iput-object p7, p0, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    .line 55
    iput-object p8, p0, Lcom/vk/id/AccessToken;->scopes:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/vk/id/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/vk/id/VKIDUser;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.vk.id.AccessToken"

    .line 72
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vk/id/AccessToken;

    .line 74
    iget-object v1, p0, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 75
    :cond_3
    iget-wide v3, p0, Lcom/vk/id/AccessToken;->userID:J

    iget-wide v5, p1, Lcom/vk/id/AccessToken;->userID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 76
    :cond_4
    iget-wide v3, p0, Lcom/vk/id/AccessToken;->expireTime:J

    iget-wide v5, p1, Lcom/vk/id/AccessToken;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    iget-object p1, p1, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getExpireTime()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/vk/id/AccessToken;->expireTime:J

    return-wide v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/vk/id/AccessToken;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/vk/id/AccessToken;->scopes:Ljava/util/Set;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserData()Lcom/vk/id/VKIDUser;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    return-object v0
.end method

.method public final getUserID()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/vk/id/AccessToken;->userID:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-wide v1, p0, Lcom/vk/id/AccessToken;->userID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-wide v1, p0, Lcom/vk/id/AccessToken;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-object v1, p0, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    invoke-virtual {v1}, Lcom/vk/id/VKIDUser;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/id/AccessToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/id/AccessToken;->idToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vk/id/AccessToken;->userID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/vk/id/AccessToken;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/id/AccessToken;->userData:Lcom/vk/id/VKIDUser;

    invoke-virtual {v0, p1, p2}, Lcom/vk/id/VKIDUser;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/vk/id/AccessToken;->scopes:Ljava/util/Set;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
