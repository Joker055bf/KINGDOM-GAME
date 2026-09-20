.class public final Lru/ok/tracer/base/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B!\u0008\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpRequest;",
        "",
        "url",
        "",
        "body",
        "Lru/ok/tracer/base/http/HttpRequestBody;",
        "(Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V",
        "method",
        "(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V",
        "getBody",
        "()Lru/ok/tracer/base/http/HttpRequestBody;",
        "getMethod",
        "()Ljava/lang/String;",
        "getUrl",
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

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lru/ok/tracer/base/http/HttpRequest;->method:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lru/ok/tracer/base/http/HttpRequest;->url:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lru/ok/tracer/base/http/HttpRequest;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "GET"

    goto :goto_0

    :cond_0
    const-string v0, "POST"

    .line 16
    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lru/ok/tracer/base/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lru/ok/tracer/base/http/HttpRequestBody;)V

    return-void
.end method


# virtual methods
.method public final getBody()Lru/ok/tracer/base/http/HttpRequestBody;
    .locals 1

    .line 11
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpRequest;->body:Lru/ok/tracer/base/http/HttpRequestBody;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/ok/tracer/base/http/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method
