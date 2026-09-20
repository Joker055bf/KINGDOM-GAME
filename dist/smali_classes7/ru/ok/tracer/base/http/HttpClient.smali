.class public interface abstract Lru/ok/tracer/base/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lru/ok/tracer/base/http/HttpClient;",
        "",
        "execute",
        "Lru/ok/tracer/base/http/HttpResponse;",
        "request",
        "Lru/ok/tracer/base/http/HttpRequest;",
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


# virtual methods
.method public abstract execute(Lru/ok/tracer/base/http/HttpRequest;)Lru/ok/tracer/base/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
