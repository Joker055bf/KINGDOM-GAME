.class public final Lru/ok/tracer/base/http/HttpByteArrayBody;
.super Ljava/lang/Object;
.source "HttpByteArrayBody.kt"

# interfaces
.implements Lru/ok/tracer/base/http/HttpRequestBody;
.implements Lru/ok/tracer/base/http/HttpResponseBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpByteArrayBody;",
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "Lru/ok/tracer/base/http/HttpResponseBody;",
        "contentType",
        "",
        "bytes",
        "",
        "(Ljava/lang/String;[B)V",
        "getBytes",
        "()[B",
        "contentLength",
        "",
        "getContentLength",
        "()J",
        "getContentType",
        "()Ljava/lang/String;",
        "close",
        "",
        "writeTo",
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
.field private final bytes:[B

.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lru/ok/tracer/base/http/HttpByteArrayBody;->contentType:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lru/ok/tracer/base/http/HttpByteArrayBody;->bytes:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 7
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpByteArrayBody;->bytes:[B

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 11
    invoke-virtual {p0}, Lru/ok/tracer/base/http/HttpByteArrayBody;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpByteArrayBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lru/ok/tracer/base/http/HttpByteArrayBody;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
