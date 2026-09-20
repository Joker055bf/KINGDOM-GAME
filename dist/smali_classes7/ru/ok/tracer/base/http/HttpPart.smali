.class public final Lru/ok/tracer/base/http/HttpPart;
.super Ljava/lang/Object;
.source "HttpMultipartBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpPart;",
        "",
        "name",
        "",
        "filename",
        "contentType",
        "body",
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V",
        "getBody",
        "()Lru/ok/tracer/base/http/HttpRequestBody;",
        "headers",
        "length",
        "",
        "getLength$tracer_base_release",
        "()J",
        "writeTo",
        "",
        "stream",
        "Ljava/io/OutputStream;",
        "tracer-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final body:Lru/ok/tracer/base/http/HttpRequestBody;

.field private final headers:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p4, p0, Lru/ok/tracer/base/http/HttpPart;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content-Disposition: form-data; name="

    .line 78
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p4, p1}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "; filename="

    .line 81
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p4, p2}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const-string p1, "\r\n"

    .line 84
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p2, "Content-Type: "

    .line 86
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/ok/tracer/base/http/HttpPart;->headers:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 71
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lru/ok/tracer/base/http/HttpPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V

    return-void
.end method


# virtual methods
.method public final getBody()Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1

    .line 75
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpPart;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    return-object v0
.end method

.method public final getLength$tracer_base_release()J
    .locals 4

    .line 92
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpPart;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    invoke-interface {v0}, Lru/ok/tracer/base/http/HttpRequestBody;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpPart;->headers:Ljava/lang/String;

    invoke-static {v0}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$getUtf8Length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$getCRLF$p()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lru/ok/tracer/base/http/HttpPart;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    invoke-interface {v2}, Lru/ok/tracer/base/http/HttpRequestBody;->getContentLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$getCRLF$p()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpPart;->headers:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$writeUtf8(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$getCRLF$p()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpPart;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    invoke-interface {v0, p1}, Lru/ok/tracer/base/http/HttpRequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 100
    invoke-static {}, Lru/ok/tracer/base/http/HttpMultipartBodyKt;->access$getCRLF$p()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
