.class public final Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;
.super Ljava/lang/Object;
.source "DelimitedVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/internal/auth/web/DelimitedVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelimitedVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelimitedVersion.kt\ncom/vk/id/internal/auth/web/DelimitedVersion$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,122:1\n739#2,9:123\n37#3,2:132\n*S KotlinDebug\n*F\n+ 1 DelimitedVersion.kt\ncom/vk/id/internal/auth/web/DelimitedVersion$Companion\n*L\n91#1:123,9\n92#1:132,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0018\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;",
        "",
        "<init>",
        "()V",
        "PRIME_HASH_FACTOR",
        "",
        "BIT_MASK_32",
        "",
        "parse",
        "Lcom/vk/id/internal/auth/web/DelimitedVersion;",
        "versionString",
        "",
        "compareLongs",
        "a",
        "b",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$compareLongs(Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;JJ)I
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/id/internal/auth/web/DelimitedVersion$Companion;->compareLongs(JJ)I

    move-result p0

    return p0
.end method

.method private final compareLongs(JJ)I
    .locals 0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/vk/id/internal/auth/web/DelimitedVersion;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Lcom/vk/id/internal/auth/web/DelimitedVersion;

    new-array v0, v0, [J

    invoke-direct {p1, v0}, Lcom/vk/id/internal/auth/web/DelimitedVersion;-><init>([J)V

    return-object p1

    .line 91
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[^0-9]+"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 124
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 125
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-nez v3, :cond_1

    .line 127
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    new-array v1, v0, [Ljava/lang/String;

    .line 133
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 92
    check-cast p1, [Ljava/lang/String;

    .line 93
    array-length v1, p1

    new-array v1, v1, [J

    .line 95
    array-length v3, p1

    move v4, v0

    move v5, v4

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v6, p1, v4

    .line 96
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    .line 99
    :cond_5
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    .line 106
    aget-wide v3, v1, v5

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-lez p1, :cond_6

    :cond_7
    add-int/2addr v5, v2

    .line 112
    new-array p1, v5, [J

    .line 113
    invoke-static {v1, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    new-instance v0, Lcom/vk/id/internal/auth/web/DelimitedVersion;

    invoke-direct {v0, p1}, Lcom/vk/id/internal/auth/web/DelimitedVersion;-><init>([J)V

    return-object v0
.end method
