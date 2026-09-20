.class public final Lcom/vk/id/network/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/network/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponse.kt\ncom/vk/id/network/http/HttpResponse$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bJ\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0014J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0010J\u0006\u0010\u0016\u001a\u00020\u0003R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vk/id/network/http/HttpResponse$Builder;",
        "",
        "response",
        "Lcom/vk/id/network/http/HttpResponse;",
        "<init>",
        "(Lcom/vk/id/network/http/HttpResponse;)V",
        "request",
        "Lcom/vk/id/network/http/HttpRequest;",
        "code",
        "",
        "message",
        "",
        "body",
        "headers",
        "",
        "isRequestSuccessful",
        "",
        "header",
        "name",
        "value",
        "",
        "isSuccessful",
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

.field private code:I

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

.field private isRequestSuccessful:Z

.field private message:Ljava/lang/String;

.field private request:Lcom/vk/id/network/http/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/vk/id/network/http/HttpResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getRequest()Lcom/vk/id/network/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 100
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getCode()I

    move-result v0

    iput v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->code:I

    .line 101
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->message:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->body:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    .line 104
    invoke-virtual {p1}, Lcom/vk/id/network/http/HttpResponse;->isRequestSuccessful()Z

    move-result p1

    iput-boolean p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->isRequestSuccessful:Z

    return-void
.end method


# virtual methods
.method public final body(Ljava/lang/String;)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    .line 113
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/vk/id/network/http/HttpResponse;
    .locals 8

    .line 126
    new-instance v7, Lcom/vk/id/network/http/HttpResponse;

    .line 127
    iget-object v1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->request:Lcom/vk/id/network/http/HttpRequest;

    .line 128
    iget v2, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->code:I

    .line 129
    iget-object v3, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->message:Ljava/lang/String;

    .line 130
    iget-object v4, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->body:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 132
    iget-boolean v6, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->isRequestSuccessful:Z

    move-object v0, v7

    .line 126
    invoke-direct/range {v0 .. v6}, Lcom/vk/id/network/http/HttpResponse;-><init>(Lcom/vk/id/network/http/HttpRequest;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object v7
.end method

.method public final code(I)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    iput p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->code:I

    return-object p0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final headers(Ljava/util/Map;)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vk/id/network/http/HttpResponse$Builder;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    .line 118
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    iget-object v0, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final isRequestSuccessful(Z)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    .line 123
    iput-boolean p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->isRequestSuccessful:Z

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final request(Lcom/vk/id/network/http/HttpRequest;)Lcom/vk/id/network/http/HttpResponse$Builder;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/vk/id/network/http/HttpResponse$Builder;

    iput-object p1, p0, Lcom/vk/id/network/http/HttpResponse$Builder;->request:Lcom/vk/id/network/http/HttpRequest;

    return-object p0
.end method
