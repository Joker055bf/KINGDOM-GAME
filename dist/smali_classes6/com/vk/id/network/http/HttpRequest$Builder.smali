.class public final Lcom/vk/id/network/http/HttpRequest$Builder;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequest.kt\ncom/vk/id/network/http/HttpRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\u0016\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0011J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u0012\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpRequest$Builder;",
        "",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpRequest;)V",
        "method",
        "",
        "url",
        "body",
        "headers",
        "",
        "contentType",
        "header",
        "name",
        "value",
        "addHeader",
        "",
        "build",
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
.field private body:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/http/HttpRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->method:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->url:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->body:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    .line 73
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    .line 86
    iget-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final body(Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1

    .line 81
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/vk/id/network/http/HttpRequest;
    .locals 7

    .line 96
    new-instance v6, Lcom/vk/id/network/http/HttpRequest;

    .line 97
    iget-object v1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->method:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->url:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->body:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->contentType:Ljava/lang/String;

    move-object v0, v6

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/vk/id/network/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v6
.end method

.method public final contentType(Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1

    .line 94
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    iget-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final headers(Ljava/util/Map;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vk/id/network/http/HttpRequest$Builder;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    .line 90
    iget-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final method(Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1
    .annotation runtime Lcom/vk/id/common/InternalVKIDApi;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/vk/id/network/http/HttpRequest$Builder;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpRequest$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
