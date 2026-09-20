.class public final Lru/ok/tracer/base/http/TracerHttpClientKt;
.super Ljava/lang/Object;
.source "TracerHttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "NO_TRAFFIC_STATS_TAG",
        "",
        "createTracerHttpClient",
        "Lru/ok/tracer/base/http/HttpClient;",
        "context",
        "Landroid/content/Context;",
        "trafficStatsTag",
        "createTracerLiteHttpClient",
        "libraryPackageName",
        "",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final NO_TRAFFIC_STATS_TAG:I = -0x1


# direct methods
.method public static final createTracerHttpClient(Landroid/content/Context;I)Lru/ok/tracer/base/http/HttpClient;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "1.2.2"

    .line 16
    invoke-static {v1, v2}, Lru/ok/tracer/base/useragent/UserAgentUtils;->createTracerUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    .line 14
    invoke-direct/range {v1 .. v8}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lru/ok/tracer/base/http/HttpClient;

    return-object v0
.end method

.method public static synthetic createTracerHttpClient$default(Landroid/content/Context;IILjava/lang/Object;)Lru/ok/tracer/base/http/HttpClient;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lru/ok/tracer/base/http/TracerHttpClientKt;->createTracerHttpClient(Landroid/content/Context;I)Lru/ok/tracer/base/http/HttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final createTracerLiteHttpClient(Landroid/content/Context;Ljava/lang/String;I)Lru/ok/tracer/base/http/HttpClient;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "1.2.2"

    .line 31
    invoke-static {v1, p1, v2}, Lru/ok/tracer/base/useragent/UserAgentUtils;->createTracerLiteUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    .line 29
    invoke-direct/range {v1 .. v8}, Lru/ok/tracer/base/http/HttpUrlConnectionHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lru/ok/tracer/base/http/HttpClient;

    return-object v0
.end method

.method public static synthetic createTracerLiteHttpClient$default(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)Lru/ok/tracer/base/http/HttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 24
    :cond_0
    invoke-static {p0, p1, p2}, Lru/ok/tracer/base/http/TracerHttpClientKt;->createTracerLiteHttpClient(Landroid/content/Context;Ljava/lang/String;I)Lru/ok/tracer/base/http/HttpClient;

    move-result-object p0

    return-object p0
.end method
