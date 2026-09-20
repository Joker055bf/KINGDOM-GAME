.class public final Lcom/vk/id/network/http/ResponseBody;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u0003H\u0016R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vk/id/network/http/ResponseBody;",
        "",
        "string",
        "",
        "contentType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getString$annotations",
        "()V",
        "getString",
        "()Ljava/lang/String;",
        "getContentType$annotations",
        "getContentType",
        "length",
        "",
        "getLength",
        "()I",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final contentType:Ljava/lang/String;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getContentType$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method

.method public static synthetic getString$annotations()V
    .locals 0
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 163
    :cond_0
    instance-of v1, p1, Lcom/vk/id/network/http/ResponseBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    check-cast p1, Lcom/vk/id/network/http/ResponseBody;

    iget-object v3, p1, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    iget-object p1, p1, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 169
    iget-object v1, p0, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/vk/id/network/http/ResponseBody;->string:Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/id/network/http/ResponseBody;->contentType:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResponseBody(string=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', contentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
