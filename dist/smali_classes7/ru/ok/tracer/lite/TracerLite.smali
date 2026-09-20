.class public final Lru/ok/tracer/lite/TracerLite;
.super Ljava/lang/Object;
.source "TracerLite.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/ok/tracer/lite/TracerLite$Configuration;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTracerLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TracerLite.kt\nru/ok/tracer/lite/TracerLite\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001=B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u00108\u001a\u000209J\u0018\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u00052\u0008\u0010<\u001a\u0004\u0018\u00010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010 \u001a\u00020!8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008\"\u0010#R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010\u001fR\u0014\u0010)\u001a\u00020*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u001d\u0010-\u001a\u0004\u0018\u00010.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010%\u001a\u0004\u0008/\u00100R\u0011\u00102\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u001fR\u0014\u00104\u001a\u000205X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107\u00a8\u0006>"
    }
    d2 = {
        "Lru/ok/tracer/lite/TracerLite;",
        "",
        "context",
        "Landroid/content/Context;",
        "libraryPackageName",
        "",
        "configuration",
        "Lru/ok/tracer/lite/TracerLite$Configuration;",
        "(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;)V",
        "getConfiguration",
        "()Lru/ok/tracer/lite/TracerLite$Configuration;",
        "getContext",
        "()Landroid/content/Context;",
        "dropHolder",
        "Lru/ok/tracer/lite/upload/TracerDropHolder;",
        "getDropHolder$tracer_lite_commons_release",
        "()Lru/ok/tracer/lite/upload/TracerDropHolder;",
        "executorHolder",
        "Lru/ok/tracer/lite/utils/TracerExecutorsHolder;",
        "getExecutorHolder$tracer_lite_commons_release",
        "()Lru/ok/tracer/lite/utils/TracerExecutorsHolder;",
        "httpClientHolder",
        "Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;",
        "getHttpClientHolder$tracer_lite_commons_release",
        "()Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;",
        "isDisabled",
        "",
        "()Z",
        "isExplicitlyDisabled",
        "libToken",
        "getLibToken",
        "()Ljava/lang/String;",
        "libraryInfo",
        "Lru/ok/tracer/lite/TracerLibraryInfo;",
        "getLibraryInfo",
        "()Lru/ok/tracer/lite/TracerLibraryInfo;",
        "libraryInfo$delegate",
        "Lkotlin/Lazy;",
        "getLibraryPackageName$annotations",
        "()V",
        "getLibraryPackageName",
        "limits",
        "Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "getLimits$tracer_lite_commons_release",
        "()Lru/ok/tracer/lite/limits/TracerLiteLimits;",
        "manifest",
        "Lru/ok/tracer/manifest/TracerLiteManifest;",
        "getManifest",
        "()Lru/ok/tracer/manifest/TracerLiteManifest;",
        "manifest$delegate",
        "sessionUuid",
        "getSessionUuid",
        "tagsStorage",
        "Lru/ok/tracer/lite/TagsStorageLite;",
        "getTagsStorage$tracer_lite_commons_release",
        "()Lru/ok/tracer/lite/TagsStorageLite;",
        "disable",
        "",
        "setKey",
        "key",
        "value",
        "Configuration",
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
.field private final configuration:Lru/ok/tracer/lite/TracerLite$Configuration;

.field private final context:Landroid/content/Context;

.field private final dropHolder:Lru/ok/tracer/lite/upload/TracerDropHolder;

.field private final executorHolder:Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

.field private final httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

.field private volatile isExplicitlyDisabled:Z

.field private final libraryInfo$delegate:Lkotlin/Lazy;

.field private final libraryPackageName:Ljava/lang/String;

.field private final limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

.field private final manifest$delegate:Lkotlin/Lazy;

.field private final tagsStorage:Lru/ok/tracer/lite/TagsStorageLite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lru/ok/tracer/lite/TracerLite;-><init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lru/ok/tracer/lite/TracerLite;->libraryPackageName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lru/ok/tracer/lite/TracerLite;->configuration:Lru/ok/tracer/lite/TracerLite$Configuration;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->context:Landroid/content/Context;

    .line 42
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lru/ok/tracer/lite/TracerLite$manifest$2;

    invoke-direct {v1, p0}, Lru/ok/tracer/lite/TracerLite$manifest$2;-><init>(Lru/ok/tracer/lite/TracerLite;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->manifest$delegate:Lkotlin/Lazy;

    .line 54
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;

    invoke-direct {v1, p0}, Lru/ok/tracer/lite/TracerLite$libraryInfo$2;-><init>(Lru/ok/tracer/lite/TracerLite;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->libraryInfo$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v0, Lru/ok/tracer/lite/TagsStorageLite;

    .line 64
    invoke-virtual {p3}, Lru/ok/tracer/lite/TracerLite$Configuration;->getMaxKeysCount$tracer_lite_commons_release()I

    move-result v1

    .line 63
    invoke-direct {v0, v1}, Lru/ok/tracer/lite/TagsStorageLite;-><init>(I)V

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->tagsStorage:Lru/ok/tracer/lite/TagsStorageLite;

    .line 67
    new-instance v0, Lru/ok/tracer/lite/upload/TracerDropHolder;

    invoke-direct {v0, p1, p2}, Lru/ok/tracer/lite/upload/TracerDropHolder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->dropHolder:Lru/ok/tracer/lite/upload/TracerDropHolder;

    .line 72
    new-instance v0, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    .line 75
    invoke-virtual {p3}, Lru/ok/tracer/lite/TracerLite$Configuration;->getTrafficStatsTag$tracer_lite_commons_release()I

    move-result v1

    .line 72
    invoke-direct {v0, p1, p2, v1}, Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    .line 78
    new-instance v0, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    .line 79
    invoke-virtual {p3}, Lru/ok/tracer/lite/TracerLite$Configuration;->getIoExecutor$tracer_lite_commons_release()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 78
    invoke-direct {v0, p3, p2}, Lru/ok/tracer/lite/utils/TracerExecutorsHolder;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    iput-object v0, p0, Lru/ok/tracer/lite/TracerLite;->executorHolder:Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    .line 83
    new-instance p3, Lru/ok/tracer/lite/limits/TracerLiteLimits;

    invoke-direct {p3, p1, p2}, Lru/ok/tracer/lite/limits/TracerLiteLimits;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lru/ok/tracer/lite/TracerLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    new-instance p3, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;

    invoke-direct {p3}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;-><init>()V

    invoke-virtual {p3}, Lru/ok/tracer/lite/TracerLite$Configuration$Builder;->build()Lru/ok/tracer/lite/TracerLite$Configuration;

    move-result-object p3

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lru/ok/tracer/lite/TracerLite;-><init>(Landroid/content/Context;Ljava/lang/String;Lru/ok/tracer/lite/TracerLite$Configuration;)V

    return-void
.end method

.method public static final synthetic access$getManifest(Lru/ok/tracer/lite/TracerLite;)Lru/ok/tracer/manifest/TracerLiteManifest;
    .locals 0

    .line 16
    invoke-direct {p0}, Lru/ok/tracer/lite/TracerLite;->getManifest()Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLibraryPackageName$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be internal"
    .end annotation

    return-void
.end method

.method private final getManifest()Lru/ok/tracer/manifest/TracerLiteManifest;
    .locals 1

    .line 42
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->manifest$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/ok/tracer/manifest/TracerLiteManifest;

    return-object v0
.end method


# virtual methods
.method public final disable()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lru/ok/tracer/lite/TracerLite;->isExplicitlyDisabled:Z

    return-void
.end method

.method public final getConfiguration()Lru/ok/tracer/lite/TracerLite$Configuration;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->configuration:Lru/ok/tracer/lite/TracerLite$Configuration;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 38
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDropHolder$tracer_lite_commons_release()Lru/ok/tracer/lite/upload/TracerDropHolder;
    .locals 1

    .line 67
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->dropHolder:Lru/ok/tracer/lite/upload/TracerDropHolder;

    return-object v0
.end method

.method public final getExecutorHolder$tracer_lite_commons_release()Lru/ok/tracer/lite/utils/TracerExecutorsHolder;
    .locals 1

    .line 78
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->executorHolder:Lru/ok/tracer/lite/utils/TracerExecutorsHolder;

    return-object v0
.end method

.method public final getHttpClientHolder$tracer_lite_commons_release()Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;
    .locals 1

    .line 72
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->httpClientHolder:Lru/ok/tracer/lite/upload/TracerLiteHttpClientHolder;

    return-object v0
.end method

.method public final getLibToken()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->configuration:Lru/ok/tracer/lite/TracerLite$Configuration;

    invoke-virtual {v0}, Lru/ok/tracer/lite/TracerLite$Configuration;->getOverrideLibToken$tracer_lite_commons_release()Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lru/ok/tracer/lite/TracerLite;->getManifest()Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/ok/tracer/manifest/TracerLiteManifest;->isDisabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/ok/tracer/manifest/TracerLiteManifest;->appToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final getLibraryInfo()Lru/ok/tracer/lite/TracerLibraryInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->libraryInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/ok/tracer/lite/TracerLibraryInfo;

    return-object v0
.end method

.method public final getLibraryPackageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->libraryPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimits$tracer_lite_commons_release()Lru/ok/tracer/lite/limits/TracerLiteLimits;
    .locals 1

    .line 83
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->limits:Lru/ok/tracer/lite/limits/TracerLiteLimits;

    return-object v0
.end method

.method public final getSessionUuid()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lru/ok/tracer/base/sessionuuuid/SessionUuidUtils;->getCurrentSessionUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTagsStorage$tracer_lite_commons_release()Lru/ok/tracer/lite/TagsStorageLite;
    .locals 1

    .line 63
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->tagsStorage:Lru/ok/tracer/lite/TagsStorageLite;

    return-object v0
.end method

.method public final isDisabled()Z
    .locals 3

    .line 28
    iget-boolean v0, p0, Lru/ok/tracer/lite/TracerLite;->isExplicitlyDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 31
    :cond_0
    invoke-direct {p0}, Lru/ok/tracer/lite/TracerLite;->getManifest()Lru/ok/tracer/manifest/TracerLiteManifest;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/ok/tracer/manifest/TracerLiteManifest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 32
    iput-boolean v1, p0, Lru/ok/tracer/lite/TracerLite;->isExplicitlyDisabled:Z

    return v1

    :cond_2
    return v2
.end method

.method public final setKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lru/ok/tracer/lite/TracerLite;->isExplicitlyDisabled:Z

    if-eqz v0, :cond_0

    const-string p1, "Tracer"

    const-string p2, "Tracer is disabled"

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lru/ok/tracer/lite/TracerLite;->tagsStorage:Lru/ok/tracer/lite/TagsStorageLite;

    invoke-virtual {v0, p1, p2}, Lru/ok/tracer/lite/TagsStorageLite;->setKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
