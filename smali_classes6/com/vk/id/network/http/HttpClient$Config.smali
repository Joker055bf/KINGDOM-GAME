.class public final Lcom/vk/id/network/http/HttpClient$Config;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003JK\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0001J\u0013\u0010 \u001a\u00020\u00082\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpClient$Config;",
        "",
        "context",
        "Landroid/content/Context;",
        "connectingTimeout",
        "",
        "readingTimeout",
        "followRedirects",
        "",
        "maxRedirects",
        "applicationInterceptors",
        "",
        "Lcom/vk/id/network/http/Interceptor;",
        "<init>",
        "(Landroid/content/Context;IIZILjava/util/List;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getConnectingTimeout",
        "()I",
        "getReadingTimeout",
        "getFollowRedirects",
        "()Z",
        "getMaxRedirects",
        "getApplicationInterceptors",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "network_release"
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
.field private final applicationInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final connectingTimeout:I

.field private final context:Landroid/content/Context;

.field private final followRedirects:Z

.field private final maxRedirects:I

.field private final readingTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZI",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInterceptors"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    .line 26
    iput p3, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    .line 27
    iput-boolean p4, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    .line 28
    iput p5, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    .line 29
    iput-object p6, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IIZILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/vk/id/network/http/HttpClient$Config;-><init>(Landroid/content/Context;IIZILjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/id/network/http/HttpClient$Config;Landroid/content/Context;IIZILjava/util/List;ILjava/lang/Object;)Lcom/vk/id/network/http/HttpClient$Config;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/vk/id/network/http/HttpClient$Config;->copy(Landroid/content/Context;IIZILjava/util/List;)Lcom/vk/id/network/http/HttpClient$Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Landroid/content/Context;IIZILjava/util/List;)Lcom/vk/id/network/http/HttpClient$Config;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZI",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;)",
            "Lcom/vk/id/network/http/HttpClient$Config;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInterceptors"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/id/network/http/HttpClient$Config;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/vk/id/network/http/HttpClient$Config;-><init>(Landroid/content/Context;IIZILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/id/network/http/HttpClient$Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/id/network/http/HttpClient$Config;

    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    iget v3, p1, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    iget v3, p1, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    iget-boolean v3, p1, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    iget v3, p1, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    iget-object p1, p1, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getApplicationInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/id/network/http/Interceptor;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectingTimeout()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getFollowRedirects()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    return v0
.end method

.method public final getMaxRedirects()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    return v0
.end method

.method public final getReadingTimeout()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/vk/id/network/http/HttpClient$Config;->context:Landroid/content/Context;

    iget v1, p0, Lcom/vk/id/network/http/HttpClient$Config;->connectingTimeout:I

    iget v2, p0, Lcom/vk/id/network/http/HttpClient$Config;->readingTimeout:I

    iget-boolean v3, p0, Lcom/vk/id/network/http/HttpClient$Config;->followRedirects:Z

    iget v4, p0, Lcom/vk/id/network/http/HttpClient$Config;->maxRedirects:I

    iget-object v5, p0, Lcom/vk/id/network/http/HttpClient$Config;->applicationInterceptors:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Config(context="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", connectingTimeout="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readingTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", followRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationInterceptors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
