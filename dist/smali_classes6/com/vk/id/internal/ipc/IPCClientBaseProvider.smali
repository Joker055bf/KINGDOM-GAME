.class public abstract Lcom/vk/id/internal/ipc/IPCClientBaseProvider;
.super Ljava/lang/Object;
.source "IPCClientBaseProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIPCClientBaseProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IPCClientBaseProvider.kt\ncom/vk/id/internal/ipc/IPCClientBaseProvider\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,201:1\n40#2:202\n*S KotlinDebug\n*F\n+ 1 IPCClientBaseProvider.kt\ncom/vk/id/internal/ipc/IPCClientBaseProvider\n*L\n48#1:202\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008!\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\"\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&J\'\u0010$\u001a\u0004\u0018\u00018\u00002\u0006\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0004\u00a2\u0006\u0002\u0010)J\n\u0010*\u001a\u0004\u0018\u00010+H\u0004J\u0018\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00152\u0006\u0010%\u001a\u00020\u001eH\u0004J,\u0010-\u001a\u00020.\"\u0004\u0008\u0001\u0010\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00152\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0002J\u0018\u0010/\u001a\u00020\'2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'H\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0004R\u001a\u0010\u0008\u001a\u00020\tX\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0018\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u0019j\u0008\u0012\u0004\u0012\u00020\u000f`\u001aX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0019X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001cR&\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00150!X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u00060"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/IPCClientBaseProvider;",
        "T",
        "",
        "<init>",
        "()V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "getLogger$annotations",
        "appContext",
        "Landroid/content/Context;",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext",
        "(Landroid/content/Context;)V",
        "intentName",
        "",
        "getIntentName",
        "()Ljava/lang/String;",
        "setProvider",
        "",
        "connectionInfo",
        "Lcom/vk/id/internal/ipc/ConnectionInfo;",
        "service",
        "Landroid/os/IBinder;",
        "providerComparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "getProviderComparator",
        "()Ljava/util/Comparator;",
        "componentComparator",
        "Landroid/content/ComponentName;",
        "getComponentComparator",
        "connectionsMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getConnectionsMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "getProvider",
        "component",
        "startTime",
        "",
        "timeout",
        "(Landroid/content/ComponentName;JJ)Ljava/lang/Object;",
        "getSignature",
        "Landroid/content/pm/Signature;",
        "prepareSpecificApp",
        "waitForConnection",
        "",
        "calculateActualTimeout",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field public appContext:Landroid/content/Context;

.field private final componentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final providerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7W5P8p__vN6X264LKfrZ1NTdVMA(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->providerComparator$lambda$0(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aM54Yv1-oK2XWi4kuR_jmbBVnNo(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;Landroid/content/ComponentName;Landroid/content/ComponentName;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->componentComparator$lambda$1(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;Landroid/content/ComponentName;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v1, "getSimpleName(...)"

    const-string v2, "IPCClientBaseProvider"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 59
    new-instance v0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->providerComparator:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;)V

    iput-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->componentComparator:Ljava/util/Comparator;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final calculateActualTimeout(JJ)J
    .locals 2

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    sub-long/2addr p3, v0

    const-wide/16 p1, 0x0

    .line 198
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private static final componentComparator$lambda$1(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;Landroid/content/ComponentName;Landroid/content/ComponentName;)I
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->providerComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {p0, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic getLogger$annotations()V
    .locals 0

    return-void
.end method

.method private static final providerComparator$lambda$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final waitForConnection(Lcom/vk/id/internal/ipc/ConnectionInfo;JJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;JJ)Z"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->calculateActualTimeout(JJ)J

    move-result-wide p2

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 190
    iget-object p2, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string p3, "Interrupted wait for connection"

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p3, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getComponentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->componentComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected final getConnectionsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public abstract getIntentName()Ljava/lang/String;
.end method

.method protected final getProvider(Landroid/content/ComponentName;JJ)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "JJ)TT;"
        }
    .end annotation

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_5

    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_5

    .line 77
    invoke-virtual {p0, p1}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->prepareSpecificApp(Landroid/content/ComponentName;)Lcom/vk/id/internal/ipc/ConnectionInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {v0}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getProvider()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    move-object v4, p0

    move-object v5, v0

    move-wide v6, p2

    move-wide v8, p4

    .line 84
    invoke-direct/range {v4 .. v9}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->waitForConnection(Lcom/vk/id/internal/ipc/ConnectionInfo;JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-virtual {v0}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getProvider()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/internal/ipc/ConnectionInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getProvider()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    move v0, v3

    goto :goto_0

    :cond_5
    :goto_3
    return-object v2
.end method

.method protected final getProviderComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->providerComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected final getSignature()Landroid/content/pm/Signature;
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v1, "signatures"

    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 98
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    return-object v0
.end method

.method protected final prepareSpecificApp(Landroid/content/ComponentName;)Lcom/vk/id/internal/ipc/ConnectionInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 105
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/vk/id/internal/ipc/ConnectionInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getProvider()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 106
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/vk/id/internal/ipc/ConnectionInfo;

    return-object p1

    .line 110
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 111
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 112
    new-instance v4, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$prepareSpecificApp$connection$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider$prepareSpecificApp$connection$1;-><init>(Lcom/vk/id/internal/ipc/IPCClientBaseProvider;Landroid/content/ComponentName;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 135
    new-instance v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-direct {v5, v1, v4}, Lcom/vk/id/internal/ipc/ConnectionInfo;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/content/ServiceConnection;)V

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->connectionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v1, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_2
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v4}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getLock()Lcom/vk/id/internal/ipc/ConnectionInfo;

    move-result-object v4

    monitor-enter v4

    .line 139
    :try_start_0
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v5}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getConnectionState()I

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v5}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getConnectionState()I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 146
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v5}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getConnectionState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 159
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v5}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 160
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v5, v1}, Lcom/vk/id/internal/ipc/ConnectionInfo;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 162
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    monitor-exit v4

    .line 165
    :goto_1
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getLock()Lcom/vk/id/internal/ipc/ConnectionInfo;

    move-result-object v1

    monitor-enter v1

    .line 166
    :try_start_1
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/vk/id/internal/ipc/ConnectionInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vk/id/internal/ipc/ConnectionInfo;->setConnectionState(I)V

    .line 167
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit v1

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->getIntentName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "setComponent(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :try_start_2
    invoke-virtual {p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/vk/id/internal/ipc/ConnectionInfo;

    invoke-virtual {v6}, Lcom/vk/id/internal/ipc/ConnectionInfo;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v6

    invoke-virtual {v4, v1, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 174
    iget-object v3, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error while binding to "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v3, p1, v1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v5, :cond_4

    .line 178
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/vk/id/internal/ipc/ConnectionInfo;

    :cond_4
    return-object v2

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 138
    monitor-exit v4

    throw p1
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;->appContext:Landroid/content/Context;

    return-void
.end method

.method public abstract setProvider(Lcom/vk/id/internal/ipc/ConnectionInfo;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation
.end method
