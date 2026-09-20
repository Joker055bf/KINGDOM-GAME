.class public final Lcom/vk/silentauth/SilentTokenProviderInfo;
.super Ljava/lang/Object;
.source "SilentTokenProviderInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 ,2\u00020\u0001:\u0001,B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u0011\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0008\u0010\u001e\u001a\u00020\nH\u0016J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JG\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u00c7\u0001J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d7\u0003J\t\u0010*\u001a\u00020\nH\u00d7\u0001J\t\u0010+\u001a\u00020\u0005H\u00d7\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014\u00a8\u0006-"
    }
    d2 = {
        "Lcom/vk/silentauth/SilentTokenProviderInfo;",
        "Landroid/os/Parcelable;",
        "userId",
        "Lcom/vk/dto/common/id/UserId;",
        "uuid",
        "",
        "token",
        "expireTime",
        "",
        "weight",
        "",
        "applicationProviderPackage",
        "<init>",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getUserId",
        "()Lcom/vk/dto/common/id/UserId;",
        "getUuid",
        "()Ljava/lang/String;",
        "getToken",
        "getExpireTime",
        "()J",
        "getWeight",
        "()I",
        "getApplicationProviderPackage",
        "writeToParcel",
        "",
        "flags",
        "describeContents",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "Companion",
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
            "Lcom/vk/silentauth/SilentTokenProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;


# instance fields
.field private final applicationProviderPackage:Ljava/lang/String;

.field private final expireTime:J

.field private final token:Ljava/lang/String;

.field private final userId:Lcom/vk/dto/common/id/UserId;

.field private final uuid:Ljava/lang/String;

.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/silentauth/SilentTokenProviderInfo;->Companion:Lcom/vk/silentauth/SilentTokenProviderInfo$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/silentauth/SilentTokenProviderInfo;->$stable:I

    .line 84
    new-instance v0, Lcom/vk/silentauth/SilentTokenProviderInfo$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/vk/silentauth/SilentTokenProviderInfo$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/vk/silentauth/SilentTokenProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const-class v0, Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/vk/dto/common/id/UserId;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 51
    invoke-direct/range {v1 .. v8}, Lcom/vk/silentauth/SilentTokenProviderInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    .line 44
    iput-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    .line 46
    iput-wide p4, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    .line 47
    iput p6, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    .line 48
    iput-object p7, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 42
    invoke-direct/range {v1 .. v8}, Lcom/vk/silentauth/SilentTokenProviderInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/silentauth/SilentTokenProviderInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;ILjava/lang/Object;)Lcom/vk/silentauth/SilentTokenProviderInfo;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p6, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    :cond_4
    move v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-wide p6, v1

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/vk/silentauth/SilentTokenProviderInfo;->copy(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Lcom/vk/silentauth/SilentTokenProviderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/vk/dto/common/id/UserId;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Lcom/vk/silentauth/SilentTokenProviderInfo;
    .locals 9

    const-string v0, "userId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/silentauth/SilentTokenProviderInfo;

    move-object v1, v0

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/vk/silentauth/SilentTokenProviderInfo;-><init>(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/silentauth/SilentTokenProviderInfo;

    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    iget-object v3, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    iget-wide v5, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    iget v3, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getApplicationProviderPackage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpireTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Lcom/vk/dto/common/id/UserId;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v0}, Lcom/vk/dto/common/id/UserId;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    iget-object v1, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    iget-wide v3, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    iget v5, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    iget-object v6, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SilentTokenProviderInfo(userId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", uuid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationProviderPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->userId:Lcom/vk/dto/common/id/UserId;

    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->expireTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/vk/silentauth/SilentTokenProviderInfo;->applicationProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
