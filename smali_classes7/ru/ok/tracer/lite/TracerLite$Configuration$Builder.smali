.class public final Lru/ok/tracer/lite/TracerLite$Configuration$Builder;
.super Ljava/lang/Object;
.source "TracerLite.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/ok/tracer/lite/TracerLite$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010$\u001a\u00020%R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u0007\"\u0004\u0008\u001c\u0010\tR$\u0010\u001d\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\r\"\u0004\u0008\u001f\u0010\u000fR\u001a\u0010 \u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0013\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lru/ok/tracer/lite/TracerLite$Configuration$Builder;",
        "",
        "()V",
        "value",
        "",
        "apiUrl",
        "getApiUrl",
        "()Ljava/lang/String;",
        "setApiUrl",
        "(Ljava/lang/String;)V",
        "apiUrlProvider",
        "Ljavax/inject/Provider;",
        "getApiUrlProvider",
        "()Ljavax/inject/Provider;",
        "setApiUrlProvider",
        "(Ljavax/inject/Provider;)V",
        "experimentalMaxKeysCount",
        "",
        "getExperimentalMaxKeysCount",
        "()I",
        "ioExecutor",
        "Ljava/util/concurrent/Executor;",
        "getIoExecutor",
        "()Ljava/util/concurrent/Executor;",
        "setIoExecutor",
        "(Ljava/util/concurrent/Executor;)V",
        "overrideLibToken",
        "getOverrideLibToken",
        "setOverrideLibToken",
        "overrideLibTokenProvider",
        "getOverrideLibTokenProvider",
        "setOverrideLibTokenProvider",
        "trafficStatsTag",
        "getTrafficStatsTag",
        "setTrafficStatsTag",
        "(I)V",
        "build",
        "Lru/ok/tracer/lite/TracerLite$Configuration;",
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


# instance fields
.field private apiUrlProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final experimentalMaxKeysCount:I

.field private ioExecutor:Ljava/util/concurrent/Executor;

.field private overrideLibTokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trafficStatsTag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://sdk-api.apptracer.ru"

    .line 118
    invoke-static {v0}, Lru/ok/tracer/base/inject/ProviderUtils;->providerOf(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->apiUrlProvider:Ljavax/inject/Provider;

    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Lru/ok/tracer/base/inject/ProviderUtils;->providerOf(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->overrideLibTokenProvider:Ljavax/inject/Provider;

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->trafficStatsTag:I

    const/16 v0, 0x1e

    .line 130
    iput v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->experimentalMaxKeysCount:I

    return-void
.end method


# virtual methods
.method public final build()Lru/ok/tracer/lite/TracerLite$Configuration;
    .locals 2

    .line 134
    new-instance v0, Lru/ok/tracer/lite/TracerLite$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/ok/tracer/lite/TracerLite$Configuration;-><init>(Lru/ok/tracer/lite/TracerLite$Configuration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getApiUrl()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->apiUrlProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "apiUrlProvider.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getApiUrlProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->apiUrlProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public final getExperimentalMaxKeysCount()I
    .locals 1

    .line 130
    iget v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->experimentalMaxKeysCount:I

    return v0
.end method

.method public final getIoExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->ioExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getOverrideLibToken()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->overrideLibTokenProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOverrideLibTokenProvider()Ljavax/inject/Provider;
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

    .line 126
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->overrideLibTokenProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method public final getTrafficStatsTag()I
    .locals 1

    .line 128
    iget v0, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->trafficStatsTag:I

    return v0
.end method

.method public final setApiUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lru/ok/tracer/base/inject/ProviderUtils;->providerOf(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->apiUrlProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public final setApiUrlProvider(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->apiUrlProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public final setIoExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->ioExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setOverrideLibToken(Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lru/ok/tracer/base/inject/ProviderUtils;->providerOf(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->overrideLibTokenProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public final setOverrideLibTokenProvider(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->overrideLibTokenProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public final setTrafficStatsTag(I)V
    .locals 0

    .line 128
    iput p1, p0, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->trafficStatsTag:I

    return-void
.end method
