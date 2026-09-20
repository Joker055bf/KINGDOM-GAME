.class public final Lcom/vk/id/internal/auth/web/BrowserSelector;
.super Ljava/lang/Object;
.source "BrowserSelector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrowserSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrowserSelector.kt\ncom/vk/id/internal/auth/web/BrowserSelector\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,191:1\n40#2:192\n*S KotlinDebug\n*F\n+ 1 BrowserSelector.kt\ncom/vk/id/internal/auth/web/BrowserSelector\n*L\n42#1:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/BrowserSelector;",
        "",
        "<init>",
        "()V",
        "SCHEME_HTTP",
        "",
        "SCHEME_HTTPS",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "ACTION_CUSTOM_TABS_CONNECTION",
        "BROWSER_INTENT",
        "Landroid/content/Intent;",
        "getAllBrowsers",
        "",
        "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
        "pm",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "select",
        "browserMatcher",
        "Lcom/vk/id/internal/auth/web/BrowserMatcher;",
        "hasWarmupService",
        "",
        "packageName",
        "isFullBrowser",
        "resolveInfo",
        "Landroid/content/pm/ResolveInfo;",
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

.field private static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String;

.field private static final BROWSER_INTENT:Landroid/content/Intent;

.field public static final INSTANCE:Lcom/vk/id/internal/auth/web/BrowserSelector;

.field private static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static final logger:Lcom/vk/id/logger/InternalVKIDLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vk/id/internal/auth/web/BrowserSelector;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/web/BrowserSelector;-><init>()V

    sput-object v0, Lcom/vk/id/internal/auth/web/BrowserSelector;->INSTANCE:Lcom/vk/id/internal/auth/web/BrowserSelector;

    .line 192
    sget-object v0, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string v1, "getSimpleName(...)"

    const-string v2, "BrowserSelector"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/vk/id/internal/auth/web/BrowserSelector;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v0, "toString(...)"

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    .line 49
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/vk/id/internal/auth/web/BrowserSelector;->ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://www.example.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.BROWSABLE"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addCategory(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/vk/id/internal/auth/web/BrowserSelector;->BROWSER_INTENT:Landroid/content/Intent;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/internal/auth/web/BrowserSelector;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasWarmupService(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    sget-object v1, Lcom/vk/id/internal/auth/web/BrowserSelector;->ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 155
    invoke-interface {p1, v0, p2}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method private final isFullBrowser(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    .line 162
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 177
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    move v2, v0

    .line 178
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "http"

    .line 180
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    const-string v4, "https"

    .line 181
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final getAllBrowsers(Lcom/vk/id/internal/context/InternalVKIDPackageManager;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/vk/id/internal/auth/web/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    const-string v1, "pm"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 78
    sget-object v2, Lcom/vk/id/internal/auth/web/BrowserSelector;->BROWSER_INTENT:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const v5, 0x20040

    .line 82
    invoke-interface {p1, v2, v5}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 85
    invoke-direct {p0, v5}, Lcom/vk/id/internal/auth/web/BrowserSelector;->isFullBrowser(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    :try_start_0
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x40

    .line 90
    invoke-interface {p1, v6, v7}, Lcom/vk/id/internal/context/InternalVKIDPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 94
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v7}, Lcom/vk/id/internal/auth/web/BrowserSelector;->hasWarmupService(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 95
    new-instance v7, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 96
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 99
    invoke-interface {v1, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 102
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v8, v3

    .line 105
    :goto_2
    new-instance v7, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    invoke-direct {v7, v6, v3}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 106
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    invoke-interface {v1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 112
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 115
    sget-object v6, Lcom/vk/id/internal/auth/web/BrowserSelector;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v7, "Can\'t generate browser descriptor without the package info"

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v6, v7, v5}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public final select(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/auth/web/BrowserMatcher;)Lcom/vk/id/internal/auth/web/BrowserDescriptor;
    .locals 3

    const-string v0, "pm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserMatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/web/BrowserSelector;->getAllBrowsers(Lcom/vk/id/internal/context/InternalVKIDPackageManager;)Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    .line 135
    invoke-interface {p2, v1}, Lcom/vk/id/internal/auth/web/BrowserMatcher;->matches(Lcom/vk/id/internal/auth/web/BrowserDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v1}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getUseCustomTab()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    return-object v0
.end method
