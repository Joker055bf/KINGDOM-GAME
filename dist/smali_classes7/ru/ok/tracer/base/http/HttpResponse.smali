.class public final Lru/ok/tracer/base/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpResponse;",
        "Ljava/io/Closeable;",
        "statusCode",
        "",
        "message",
        "",
        "body",
        "Lru/ok/tracer/base/http/HttpResponseBody;",
        "(ILjava/lang/String;Lru/ok/tracer/base/http/HttpResponseBody;)V",
        "getBody",
        "()Lru/ok/tracer/base/http/HttpResponseBody;",
        "getMessage",
        "()Ljava/lang/String;",
        "getStatusCode",
        "()I",
        "close",
        "",
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
.field private final body:Lru/ok/tracer/base/http/HttpResponseBody;

.field private final message:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lru/ok/tracer/base/http/HttpResponseBody;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lru/ok/tracer/base/http/HttpResponse;->statusCode:I

    .line 8
    iput-object p2, p0, Lru/ok/tracer/base/http/HttpResponse;->message:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lru/ok/tracer/base/http/HttpResponse;->body:Lru/ok/tracer/base/http/HttpResponseBody;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 13
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpResponse;->body:Lru/ok/tracer/base/http/HttpResponseBody;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/ok/tracer/base/http/HttpResponseBody;->close()V

    :cond_0
    return-void
.end method

.method public final getBody()Lru/ok/tracer/base/http/HttpResponseBody;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpResponse;->body:Lru/ok/tracer/base/http/HttpResponseBody;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 7
    iget v0, p0, Lru/ok/tracer/base/http/HttpResponse;->statusCode:I

    return v0
.end method
