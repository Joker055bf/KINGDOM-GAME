.class public final Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;
.super Ljava/lang/Object;
.source "InternalVKIDDeviceIdProvider.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;,
        Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalVKIDDeviceIdProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalVKIDDeviceIdProvider.kt\ncom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,124:1\n40#2:125\n*S KotlinDebug\n*F\n+ 1 InternalVKIDDeviceIdProvider.kt\ncom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider\n*L\n49#1:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0010J\r\u0010\u0011\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "",
        "context",
        "Landroid/content/Context;",
        "deviceIdStorage",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;",
        "<init>",
        "(Landroid/content/Context;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;)V",
        "mutex",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "setDeviceId",
        "",
        "deviceId",
        "",
        "setDeviceId$vkid_release",
        "getDeviceId",
        "getDeviceId$vkid_release",
        "DeviceIdStorage",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;

.field private static final DEFAULT_ID:Ljava/lang/String; = "default"


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceIdStorage:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final mutex:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->Companion:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->deviceIdStorage:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    .line 48
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 125
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "getSimpleName(...)"

    const-string v0, "InternalVKIDDeviceIdProvider"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method


# virtual methods
.method public final getDeviceId$vkid_release()Ljava/lang/String;
    .locals 6

    const-string v0, "nextDeviceId is null or empty: "

    .line 69
    iget-object v1, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->mutex:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->deviceIdStorage:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    invoke-interface {v2}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 71
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    iget-object v3, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->Companion:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;

    iget-object v2, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;->access$findDeviceIdByAndroidId(Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$Companion;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "default"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 80
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    const-string v5, ":"

    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "toString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new nextDeviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->deviceIdStorage:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    invoke-interface {v0, v2}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;->setDeviceId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final setDeviceId$vkid_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->deviceIdStorage:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;

    invoke-interface {v0, p1}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider$DeviceIdStorage;->setDeviceId(Ljava/lang/String;)V

    return-void
.end method
