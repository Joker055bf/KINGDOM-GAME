.class public final Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;
.super Ljava/lang/Object;
.source "TracerLiteHttpClientHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB!\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;",
        "",
        "context",
        "Landroid/content/Context;",
        "libraryPackageName",
        "",
        "trafficStatsTag",
        "",
        "(Landroid/content/Context;Ljava/lang/String;I)V",
        "httpClient",
        "Lru/ok/tracer/base/http/HttpClient;",
        "getHttpClient",
        "()Lru/ok/tracer/base/http/HttpClient;",
        "httpClient$delegate",
        "Lkotlin/Lazy;",
        "Companion",
        "tracer-lite-commons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final httpClient$delegate:Lkotlin/Lazy;

.field private final libraryPackageName:Ljava/lang/String;

.field private final trafficStatsTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->Companion:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->context:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->libraryPackageName:Ljava/lang/String;

    .line 12
    iput p3, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->trafficStatsTag:I

    .line 14
    new-instance p1, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;

    invoke-direct {p1, p0}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder$httpClient$2;-><init>(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->httpClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLibraryPackageName$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->libraryPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTrafficStatsTag$p(Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;)I
    .locals 0

    .line 9
    iget p0, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->trafficStatsTag:I

    return p0
.end method


# virtual methods
.method public final getHttpClient()Lru/ok/tracer/base/http/HttpClient;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;->httpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/ok/tracer/base/http/HttpClient;

    return-object v0
.end method
