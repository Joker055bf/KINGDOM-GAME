.class public final Lru/ok/tracer/lite/TracerLite$Configuration;
.super Ljava/lang/Object;
.source "TracerLite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/TracerLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/TracerLite$Configuration$Builder;,
        Lru/ok/tracer/lite/TracerLite$Configuration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0010X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\u00a8\u0006\u001a"
    }
    d2 = {
        "Lru/ok/tracer/lite/TracerLite$Configuration;",
        "",
        "builder",
        "Lru/ok/tracer/lite/TracerLite$Configuration$Builder;",
        "(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)V",
        "apiUrl",
        "",
        "getApiUrl",
        "()Ljava/lang/String;",
        "apiUrlProvider",
        "Ljavax/inject/Provider;",
        "ioExecutor",
        "Ljava/util/concurrent/Executor;",
        "getIoExecutor$tracer_lite_commons_release",
        "()Ljava/util/concurrent/Executor;",
        "maxKeysCount",
        "",
        "getMaxKeysCount$tracer_lite_commons_release",
        "()I",
        "overrideLibToken",
        "getOverrideLibToken$tracer_lite_commons_release",
        "()Ljavax/inject/Provider;",
        "trafficStatsTag",
        "getTrafficStatsTag$tracer_lite_commons_release",
        "Builder",
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
.field public static final Companion:Lru/ok/tracer/lite/TracerLite$Configuration$Companion;

.field public static final DEFAULT_API_URL:Ljava/lang/String; = "https://sdk-api.apptracer.ru"


# instance fields
.field private final apiUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final maxKeysCount:I

.field private final overrideLibToken:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trafficStatsTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/ok/tracer/lite/TracerLite$Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/ok/tracer/lite/TracerLite$Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lru/ok/tracer/lite/TracerLite$Configuration;->Companion:Lru/ok/tracer/lite/TracerLite$Configuration$Companion;

    return-void
.end method

.method private constructor <init>(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->getApiUrlProvider()Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->apiUrlProvider:Ljavax/inject/Provider;

    .line 105
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->getTrafficStatsTag()I

    move-result v0

    iput v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->trafficStatsTag:I

    .line 106
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->getOverrideLibTokenProvider()Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->overrideLibToken:Ljavax/inject/Provider;

    .line 107
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->getExperimentalMaxKeysCount()I

    move-result v0

    iput v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->maxKeysCount:I

    .line 109
    invoke-virtual {p1}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->getIoExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public synthetic constructor <init>(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lru/ok/tracer/lite/TracerLite$Configuration;-><init>(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;)V

    return-void
.end method


# virtual methods
.method public final getApiUrl()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->apiUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "apiUrlProvider.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIoExecutor$tracer_lite_commons_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 109
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->ioExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getMaxKeysCount$tracer_lite_commons_release()I
    .locals 1

    .line 107
    iget v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->maxKeysCount:I

    return v0
.end method

.method public final getOverrideLibToken$tracer_lite_commons_release()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->overrideLibToken:Ljavax/inject/Provider;

    return-object v0
.end method

.method public final getTrafficStatsTag$tracer_lite_commons_release()I
    .locals 1

    .line 105
    iget v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration;->trafficStatsTag:I

    return v0
.end method
