.class public final Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;
.super Lcom/vk/id/internal/ipc/IPCClientBaseProvider;
.source "VkSilentAuthInfoProvider.kt"

# interfaces
.implements Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$Companion;,
        Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/id/internal/ipc/IPCClientBaseProvider<",
        "Lcom/vk/silentauth/ISilentAuthInfoProvider;",
        ">;",
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVkSilentAuthInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkSilentAuthInfoProvider.kt\ncom/vk/id/internal/ipc/VkSilentAuthInfoProvider\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n40#2:169\n2642#3:170\n1557#3:172\n1628#3,3:173\n1557#3:176\n1628#3,3:177\n1557#3:180\n1628#3,3:181\n1557#3:184\n1628#3,3:185\n1#4:171\n*S KotlinDebug\n*F\n+ 1 VkSilentAuthInfoProvider.kt\ncom/vk/id/internal/ipc/VkSilentAuthInfoProvider\n*L\n61#1:169\n90#1:170\n92#1:172\n92#1:173,3\n93#1:176\n93#1:177,3\n101#1:180\n101#1:181,3\n140#1:184\n140#1:185,3\n90#1:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u0000 32\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u000223B)\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\"\u0010\u0016\u001a\u00020\u00172\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0006\u0010\'\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0013H\u0016J \u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020\u000bH\u0002J\u001a\u00100\u001a\u00020,2\u0008\u00101\u001a\u0004\u0018\u00010\u00032\u0006\u0010-\u001a\u00020.H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;",
        "Lcom/vk/id/internal/ipc/SilentAuthInfoProvider;",
        "Lcom/vk/id/internal/ipc/IPCClientBaseProvider;",
        "Lcom/vk/silentauth/ISilentAuthInfoProvider;",
        "context",
        "Landroid/content/Context;",
        "servicesProvider",
        "Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;",
        "deviceIdProvider",
        "Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;",
        "defaultTimeout",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;J)V",
        "getDefaultTimeout",
        "()J",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
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
        "appContext",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext",
        "(Landroid/content/Context;)V",
        "appId",
        "",
        "apiVersion",
        "getSilentAuthInfos",
        "",
        "Lcom/vk/silentauth/SilentAuthInfo;",
        "timeout",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAppId",
        "setApiVersion",
        "getSpecificAppSilentAuthInfos",
        "Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;",
        "component",
        "Lcom/vk/id/internal/auth/app/SilentAuthProviderData;",
        "startTime",
        "getInfosFromAidl",
        "provider",
        "SilentAuthResult",
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

.field public static final Companion:Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$Companion;

.field public static final DEFAULT_BINDING_TIMEOUT_SECONDS:J = 0x1eL

.field public static final SILENT_AUTH_API_VERSION:Ljava/lang/String; = "5.219"


# instance fields
.field private apiVersion:Ljava/lang/String;

.field private appContext:Landroid/content/Context;

.field private appId:I

.field private final defaultTimeout:J

.field private final deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final servicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->Companion:Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;J)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "servicesProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIdProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/vk/id/internal/ipc/IPCClientBaseProvider;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->servicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    .line 58
    iput-object p3, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    .line 59
    iput-wide p4, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->defaultTimeout:J

    .line 169
    sget-object p2, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p3, "getSimpleName(...)"

    const-string p4, "VkSilentAuthInfoProvider"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p2

    .line 61
    iput-object p2, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appContext:Landroid/content/Context;

    const-string p1, "5.219"

    .line 77
    iput-object p1, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 59
    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p5, 0x1e

    invoke-virtual {p4, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;-><init>(Landroid/content/Context;Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;J)V

    return-void
.end method

.method private final getInfosFromAidl(Lcom/vk/silentauth/ISilentAuthInfoProvider;Lcom/vk/id/internal/auth/app/SilentAuthProviderData;)Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;
    .locals 25

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    .line 126
    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Provider is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 128
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->getSignature()Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    :try_start_0
    iget v3, v1, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appId:I

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 134
    sget-object v2, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->INSTANCE:Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    invoke-virtual {v2, v0}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestBase64(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    iget-object v7, v1, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->apiVersion:Ljava/lang/String;

    .line 137
    iget-object v0, v1, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->deviceIdProvider:Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/device/InternalVKIDDeviceIdProvider;->getDeviceId$vkid_release()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v2, p1

    .line 131
    invoke-interface/range {v2 .. v9}, Lcom/vk/silentauth/ISilentAuthInfoProvider;->getSilentAuthInfos(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, "getSilentAuthInfos(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 186
    move-object v4, v3

    check-cast v4, Lcom/vk/silentauth/SilentAuthInfo;

    .line 141
    new-instance v3, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x1bfff

    const/16 v24, 0x0

    invoke-static/range {v4 .. v24}, Lcom/vk/silentauth/SilentAuthInfo;->copy$default(Lcom/vk/silentauth/SilentAuthInfo;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object v4

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getWeight()I

    move-result v5

    .line 141
    invoke-direct {v3, v4, v5}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;-><init>(Lcom/vk/silentauth/SilentAuthInfo;I)V

    .line 186
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 146
    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    invoke-direct {v0, v2}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 148
    new-instance v2, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    invoke-direct {v2, v0}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;-><init>(Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Signature is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;-><init>(Ljava/lang/Exception;)V

    :goto_1
    return-object v0
.end method

.method private final getSpecificAppSilentAuthInfos(Lcom/vk/id/internal/auth/app/SilentAuthProviderData;JJ)Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;
    .locals 6

    .line 117
    invoke-virtual {p1}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->getProvider(Landroid/content/ComponentName;JJ)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vk/silentauth/ISilentAuthInfoProvider;

    .line 118
    invoke-direct {p0, p2, p1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->getInfosFromAidl(Lcom/vk/silentauth/ISilentAuthInfoProvider;Lcom/vk/id/internal/auth/app/SilentAuthProviderData;)Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultTimeout()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->defaultTimeout:J

    return-wide v0
.end method

.method public getIntentName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.vk.silentauth.action.GET_INFO"

    return-object v0
.end method

.method public getSilentAuthInfos(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vk/silentauth/SilentAuthInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;

    iget v1, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;

    invoke-direct {v0, p0, p3}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;-><init>(Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->J$1:J

    iget-wide v1, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->J$0:J

    iget-object v0, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v4, p1

    move-wide p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget p3, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appId:I

    if-nez p3, :cond_3

    .line 85
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 88
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    iget-object p3, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->servicesProvider:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    iput-object p0, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->J$0:J

    iput-wide v4, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->J$1:J

    iput v3, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$getSilentAuthInfos$1;->label:I

    invoke-virtual {p3, v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getSilentAuthServices(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 83
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    .line 170
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    .line 90
    invoke-virtual {v2}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->prepareSpecificApp(Landroid/content/ComponentName;)Lcom/vk/id/internal/ipc/ConnectionInfo;

    goto :goto_2

    :cond_5
    check-cast p3, Ljava/util/List;

    .line 92
    check-cast p3, Ljava/lang/Iterable;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 173
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 174
    move-object v7, v3

    check-cast v7, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    move-object v6, v0

    move-wide v8, v4

    move-wide v10, p1

    .line 92
    invoke-direct/range {v6 .. v11}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->getSpecificAppSilentAuthInfos(Lcom/vk/id/internal/auth/app/SilentAuthProviderData;JJ)Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    move-result-object v3

    .line 174
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 175
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 93
    sget-object p1, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;->INSTANCE:Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;

    check-cast v1, Ljava/lang/Iterable;

    .line 176
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 177
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 178
    check-cast v1, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;

    .line 94
    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 95
    iget-object v3, v0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while fetching silent auth info: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v5}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_7
    invoke-virtual {v1}, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider$SilentAuthResult;->getInfoItems()Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 179
    :cond_8
    check-cast p2, Ljava/util/List;

    .line 176
    check-cast p2, Ljava/lang/Iterable;

    .line 99
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Lcom/vk/id/internal/ipc/VkSilentInfoItemsGrouper;->groupByWeightAndUserHash(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 180
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 181
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 182
    check-cast p3, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;

    .line 101
    invoke-virtual {p3}, Lcom/vk/silentauth/SilentAuthInfoWithProviderWeight;->getInfo()Lcom/vk/silentauth/SilentAuthInfo;

    move-result-object p3

    .line 182
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 183
    :cond_9
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apiVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->apiVersion:Ljava/lang/String;

    return-void
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appContext:Landroid/content/Context;

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/vk/id/internal/ipc/VkSilentAuthInfoProvider;->appId:I

    return-void
.end method

.method public setProvider(Lcom/vk/id/internal/ipc/ConnectionInfo;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/ipc/ConnectionInfo<",
            "Lcom/vk/silentauth/ISilentAuthInfoProvider;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    invoke-static {p2}, Lcom/vk/silentauth/ISilentAuthInfoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vk/silentauth/ISilentAuthInfoProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vk/id/internal/ipc/ConnectionInfo;->setProvider(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
