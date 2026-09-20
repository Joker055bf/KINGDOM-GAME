.class public final Lcom/vk/id/network/util/CreateRequestKt;
.super Ljava/lang/Object;
.source "CreateRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\u001a@\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nH\u0000\u001a.\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nH\u0000\u001a\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "createRequest",
        "Lcom/vk/id/network/InternalVKIDCall;",
        "Lcom/vk/id/network/http/HttpResponse;",
        "Lcom/vk/id/network/http/HttpClient;",
        "host",
        "",
        "path",
        "requestBody",
        "Lcom/vk/id/network/http/FormBody;",
        "query",
        "",
        "createUrl",
        "urlEncode",
        "value",
        "network_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$L_RoKoHXMFKPxoYrykWkuwCvDWk(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/util/CreateRequestKt;->createUrl$lambda$2(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yXaI-FRbdDQ4UG6uXCrUF9QRI2E(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/network/http/HttpResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest$lambda$0(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/network/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final createRequest(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/network/http/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vk/id/network/http/FormBody;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vk/id/network/InternalVKIDCall<",
            "Lcom/vk/id/network/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, p2, p4}, Lcom/vk/id/network/util/CreateRequestKt;->createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/vk/id/network/http/RealInternalVKIDCall;

    .line 36
    sget-object p4, Lcom/vk/id/network/http/HttpRequest;->Companion:Lcom/vk/id/network/http/HttpRequest$Companion;

    invoke-virtual {p4, p1, p3}, Lcom/vk/id/network/http/HttpRequest$Companion;->post(Ljava/lang/String;Lcom/vk/id/network/http/FormBody;)Lcom/vk/id/network/http/HttpRequest;

    move-result-object p1

    new-instance p3, Lcom/vk/id/network/util/CreateRequestKt$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/vk/id/network/util/CreateRequestKt$$ExternalSyntheticLambda1;-><init>()V

    .line 34
    invoke-direct {p2, p0, p1, p3}, Lcom/vk/id/network/http/RealInternalVKIDCall;-><init>(Lcom/vk/id/network/http/HttpClient;Lcom/vk/id/network/http/HttpRequest;Lkotlin/jvm/functions/Function1;)V

    check-cast p2, Lcom/vk/id/network/InternalVKIDCall;

    return-object p2
.end method

.method public static synthetic createRequest$default(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;ILjava/lang/Object;)Lcom/vk/id/network/InternalVKIDCall;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 31
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    .line 26
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vk/id/network/util/CreateRequestKt;->createRequest(Lcom/vk/id/network/http/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/vk/id/network/http/FormBody;Ljava/util/Map;)Lcom/vk/id/network/InternalVKIDCall;

    move-result-object p0

    return-object p0
.end method

.method private static final createRequest$lambda$0(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/network/http/HttpResponse;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    new-array v1, p0, [C

    const/16 v2, 0x2f

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 51
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    .line 52
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v3, p0

    :cond_0
    if-eqz v3, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_2

    const-string p0, "?"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    const-string p0, "&"

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/vk/id/network/util/CreateRequestKt$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/vk/id/network/util/CreateRequestKt$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic createUrl$default(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 47
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 44
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/vk/id/network/util/CreateRequestKt;->createUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createUrl$lambda$2(Ljava/util/Map$Entry;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "<destruct>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/vk/id/network/util/CreateRequestKt;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/vk/id/network/util/CreateRequestKt;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "encode(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
