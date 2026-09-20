.class public final Lcom/vk/id/internal/auth/web/VersionRange;
.super Ljava/lang/Object;
.source "VersionRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/web/VersionRange$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/VersionRange;",
        "",
        "lowerBound",
        "Lcom/vk/id/internal/auth/web/DelimitedVersion;",
        "upperBound",
        "<init>",
        "(Lcom/vk/id/internal/auth/web/DelimitedVersion;Lcom/vk/id/internal/auth/web/DelimitedVersion;)V",
        "matches",
        "",
        "version",
        "",
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

.field public static final ANY_VERSION:Lcom/vk/id/internal/auth/web/VersionRange;

.field public static final Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;


# instance fields
.field private final lowerBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

.field private final upperBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/web/VersionRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionRange;->Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/VersionRange;->$stable:I

    .line 70
    new-instance v0, Lcom/vk/id/internal/auth/web/VersionRange;

    invoke-direct {v0, v1, v1}, Lcom/vk/id/internal/auth/web/VersionRange;-><init>(Lcom/vk/id/internal/auth/web/DelimitedVersion;Lcom/vk/id/internal/auth/web/DelimitedVersion;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/VersionRange;->ANY_VERSION:Lcom/vk/id/internal/auth/web/VersionRange;

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/auth/web/DelimitedVersion;Lcom/vk/id/internal/auth/web/DelimitedVersion;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/VersionRange;->lowerBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    .line 30
    iput-object p2, p0, Lcom/vk/id/internal/auth/web/VersionRange;->upperBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    return-void
.end method

.method public static final atLeast(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Lcom/vk/id/internal/auth/web/VersionRange;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/vk/id/internal/auth/web/VersionRange;->Companion:Lcom/vk/id/internal/auth/web/VersionRange$Companion;

    invoke-virtual {v0, p0}, Lcom/vk/id/internal/auth/web/VersionRange$Companion;->atLeast(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Lcom/vk/id/internal/auth/web/VersionRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final matches(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Z
    .locals 2

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionRange;->lowerBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion;->compareTo(Lcom/vk/id/internal/auth/web/DelimitedVersion;)I

    move-result v0

    if-lez v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionRange;->upperBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion;->compareTo(Lcom/vk/id/internal/auth/web/DelimitedVersion;)I

    move-result p1

    if-ltz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final matches(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;->Companion:Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;

    invoke-virtual {v0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->parse(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/DelimitedVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/web/VersionRange;->matches(Lcom/vk/id/internal/auth/web/DelimitedVersion;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionRange;->lowerBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/VersionRange;->upperBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    if-nez v0, :cond_0

    const-string v0, "any version"

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or lower"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/VersionRange;->upperBound:Lcom/vk/id/internal/auth/web/DelimitedVersion;

    if-eqz v1, :cond_2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "between "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or higher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
