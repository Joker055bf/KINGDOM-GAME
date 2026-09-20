.class public final Lcom/vk/id/internal/auth/web/DelimitedVersion;
.super Ljava/lang/Object;
.source "DelimitedVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/vk/id/internal/auth/web/DelimitedVersion;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0000H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/DelimitedVersion;",
        "",
        "mNumericParts",
        "",
        "<init>",
        "([J)V",
        "toString",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "compareTo",
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

.field private static final BIT_MASK_32:J = -0x1L

.field public static final Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

.field private static final PRIME_HASH_FACTOR:I = 0x16a95


# instance fields
.field private final mNumericParts:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->$stable:I

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    const-string v0, "mNumericParts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/DelimitedVersion;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    invoke-virtual {v0, p0}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->parse(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/DelimitedVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/vk/id/internal/auth/web/DelimitedVersion;)I
    .locals 6

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 68
    sget-object v3, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    aget-wide v4, v1, v0

    aget-wide v1, v2, v0

    invoke-static {v3, v4, v5, v1, v2}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->access$compareLongs(Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;JJ)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    array-length v1, v1

    int-to-long v1, v1

    iget-object p1, p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length p1, p1

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->access$compareLongs(Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion;->compareTo(Lcom/vk/id/internal/auth/web/DelimitedVersion;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 50
    instance-of v2, p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;

    if-nez v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion;->compareTo(Lcom/vk/id/internal/auth/web/DelimitedVersion;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v4, v0, v2

    const v6, 0x16a95

    mul-int/2addr v3, v6

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 32
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "0"

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget-object v3, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    aget-wide v4, v3, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    array-length v1, v1

    if-ge v2, v1, :cond_2

    const/16 v1, 0x2e

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->mNumericParts:[J

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
