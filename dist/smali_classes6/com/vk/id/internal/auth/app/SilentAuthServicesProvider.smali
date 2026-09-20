.class public final Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;
.super Ljava/lang/Object;
.source "SilentAuthServicesProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSilentAuthServicesProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SilentAuthServicesProvider.kt\ncom/vk/id/internal/auth/app/SilentAuthServicesProvider\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n618#2:64\n295#3,2:65\n1#4:67\n*S KotlinDebug\n*F\n+ 1 SilentAuthServicesProvider.kt\ncom/vk/id/internal/auth/app/SilentAuthServicesProvider\n*L\n25#1:64\n49#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086@\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f*\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u0010H\u0002J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0010*\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000bH\u0002J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;",
        "",
        "packageManager",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "currentPackageName",
        "",
        "cache",
        "Lcom/vk/id/internal/auth/app/TrustedProvidersCache;",
        "<init>",
        "(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;Lcom/vk/id/internal/auth/app/TrustedProvidersCache;)V",
        "getSilentAuthServices",
        "",
        "Lcom/vk/id/internal/auth/app/SilentAuthProviderData;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "excludeCurrentApp",
        "Lkotlin/sequences/Sequence;",
        "Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;",
        "isAllowedToOpenWebAuth",
        "",
        "mapToProviderInfo",
        "Landroid/content/pm/ServiceInfo;",
        "trustedProviders",
        "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
        "getAppsWithSilentAuthServices",
        "Landroid/content/pm/ResolveInfo;",
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

.field public static final ACTION_GET_INFO:Ljava/lang/String; = "com.vk.silentauth.action.GET_INFO"

.field public static final Companion:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$Companion;


# instance fields
.field private final cache:Lcom/vk/id/internal/auth/app/TrustedProvidersCache;

.field private final currentPackageName:Ljava/lang/String;

.field private final packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;


# direct methods
.method public static synthetic $r8$lambda$Qz26NOrC7QYsn64lI0LKD12Yhxg(Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Lcom/vk/id/internal/auth/app/SilentAuthProviderData;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getSilentAuthServices$lambda$3(Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ra2P285cLOKfbvGXdcoQZS_n2Yk(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getSilentAuthServices$lambda$1(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jzf_9KmwRBXr0KXLUQ11n3XBefk(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->excludeCurrentApp$lambda$4(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nM-bIKqRzdmBgawoJACeY-h8YXI(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getSilentAuthServices$lambda$0(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->Companion:Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;Lcom/vk/id/internal/auth/app/TrustedProvidersCache;)V
    .locals 1

    const-string v0, "packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    .line 14
    iput-object p2, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->currentPackageName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->cache:Lcom/vk/id/internal/auth/app/TrustedProvidersCache;

    return-void
.end method

.method private final excludeCurrentApp(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;",
            ">;)",
            "Lkotlin/sequences/Sequence<",
            "Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda3;-><init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method private static final excludeCurrentApp$lambda$4(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->currentPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final getAppsWithSilentAuthServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vk.silentauth.action.GET_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final getSilentAuthServices$lambda$0(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v0, "serviceInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->mapToProviderInfo(Landroid/content/pm/ServiceInfo;Ljava/util/List;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final getSilentAuthServices$lambda$1(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->isAllowedToOpenWebAuth(Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z

    move-result p0

    return p0
.end method

.method private static final getSilentAuthServices$lambda$3(Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Lcom/vk/id/internal/auth/app/SilentAuthProviderData;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;

    invoke-virtual {p0}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;->getWeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/vk/id/internal/auth/app/SilentAuthProviderData;-><init>(Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method private final isAllowedToOpenWebAuth(Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;)Z
    .locals 3

    .line 38
    invoke-virtual {p1}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vk/id/internal/auth/AuthOptionsKt;->basicCodeFlowUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    iget-object v0, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 41
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final mapToProviderInfo(Landroid/content/pm/ServiceInfo;Ljava/util/List;)Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ServiceInfo;",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;",
            ">;)",
            "Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->INSTANCE:Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    iget-object v1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->packageManager:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestHex(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    check-cast p2, Ljava/lang/Iterable;

    .line 65
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    .line 49
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;->getAppPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;->getAppSha()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;

    if-eqz v1, :cond_3

    .line 50
    new-instance v2, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;

    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vk/id/internal/auth/app/VkAuthSilentAuthProvider;->getWeight()I

    move-result p1

    invoke-direct {v2, p2, p1}, Lcom/vk/id/internal/auth/app/VkAuthProviderInfo;-><init>(Landroid/content/ComponentName;I)V

    :cond_3
    return-object v2
.end method


# virtual methods
.method public final getSilentAuthServices(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/app/SilentAuthProviderData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;

    iget v1, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;-><init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->cache:Lcom/vk/id/internal/auth/app/TrustedProvidersCache;

    iput-object p0, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$1;->label:I

    invoke-virtual {p1, v0}, Lcom/vk/id/internal/auth/app/TrustedProvidersCache;->getSilentAuthProviders(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 18
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 20
    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->getAppsWithSilentAuthServices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;Ljava/util/List;)V

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 23
    invoke-direct {v0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;->excludeCurrentApp(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 24
    new-instance v1, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider;)V

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$getSilentAuthServices$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->sortedWith(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/app/SilentAuthServicesProvider$$ExternalSyntheticLambda2;-><init>()V

    .line 26
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
