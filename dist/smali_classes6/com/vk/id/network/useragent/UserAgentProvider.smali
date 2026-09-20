.class public final Lcom/vk/id/network/useragent/UserAgentProvider;
.super Ljava/lang/Object;
.source "UserAgentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserAgentProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserAgentProvider.kt\ncom/vk/id/network/useragent/UserAgentProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000c\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0010\u001a\n \u0011*\u0004\u0018\u00010\u00070\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\tR\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0015\u0010\u0016R!\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000b\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vk/id/network/useragent/UserAgentProvider;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "userAgent",
        "",
        "getUserAgent$network_release",
        "()Ljava/lang/String;",
        "userAgent$delegate",
        "Lkotlin/Lazy;",
        "appBuild",
        "getAppBuild",
        "appVersion",
        "getAppVersion",
        "packageName",
        "kotlin.jvm.PlatformType",
        "getPackageName",
        "packageInfo",
        "Landroid/content/pm/PackageInfo;",
        "getPackageInfo",
        "()Landroid/content/pm/PackageInfo;",
        "packageInfo$delegate",
        "displaySize",
        "Landroid/graphics/Point;",
        "getDisplaySize$annotations",
        "()V",
        "getDisplaySize",
        "()Landroid/graphics/Point;",
        "displaySize$delegate",
        "toHumanReadableAscii",
        "string",
        "network_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final displaySize$delegate:Lkotlin/Lazy;

.field private final packageInfo$delegate:Lkotlin/Lazy;

.field private final userAgent$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$IGstywmWCLs2zkQEjTw_O7KVZeQ(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->packageInfo_delegate$lambda$1(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$irN16Zh6CP21OWG_EmJW7hWdODk(Lcom/vk/id/network/useragent/UserAgentProvider;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->userAgent_delegate$lambda$0(Lcom/vk/id/network/useragent/UserAgentProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q2Uk6j6mTM8MLXJ6NGjwOsyJ8zI(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->displaySize_delegate$lambda$3(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->context:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->userAgent$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->packageInfo$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/vk/id/network/useragent/UserAgentProvider$$ExternalSyntheticLambda2;-><init>(Lcom/vk/id/network/useragent/UserAgentProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->displaySize$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final displaySize_delegate$lambda$3(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/graphics/Point;
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->context:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final getAppBuild()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private final getDisplaySize()Landroid/graphics/Point;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->displaySize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method private static synthetic getDisplaySize$annotations()V
    .locals 0

    return-void
.end method

.method private final getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->packageInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private final getPackageName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final packageInfo_delegate$lambda$1(Lcom/vk/id/network/useragent/UserAgentProvider;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 56
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v4, 0x3f

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    :goto_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final userAgent_delegate$lambda$0(Lcom/vk/id/network/useragent/UserAgentProvider;)Ljava/lang/String;
    .locals 6

    .line 14
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0xb

    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VKID_2.7.1("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 18
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 19
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getAppBuild()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 20
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 22
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    .line 23
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 24
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "user.language"

    .line 25
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 26
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 27
    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/vk/id/network/useragent/UserAgentProvider;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 14
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/%s-%s (Android %s; SDK %d; %s; %s %s; %s; %dx%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/vk/id/network/useragent/UserAgentProvider;->toHumanReadableAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getUserAgent$network_release()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/vk/id/network/useragent/UserAgentProvider;->userAgent$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
