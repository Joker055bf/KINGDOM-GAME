.class public final Lcom/vk/id/internal/auth/web/WebAuthProvider;
.super Ljava/lang/Object;
.source "WebAuthProvider.kt"

# interfaces
.implements Lcom/vk/id/internal/auth/VKIDAuthProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebAuthProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebAuthProvider.kt\ncom/vk/id/internal/auth/web/WebAuthProvider\n+ 2 InternalVKIDLog.kt\ncom/vk/id/logger/InternalVKIDLogKt\n*L\n1#1,62:1\n40#2:63\n*S KotlinDebug\n*F\n+ 1 WebAuthProvider.kt\ncom/vk/id/internal/auth/web/WebAuthProvider\n*L\n22#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/id/internal/auth/web/WebAuthProvider;",
        "Lcom/vk/id/internal/auth/VKIDAuthProvider;",
        "context",
        "Lcom/vk/id/internal/context/InternalVKIDPackageManager;",
        "starter",
        "Lcom/vk/id/internal/context/InternalVKIDActivityStarter;",
        "<init>",
        "(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V",
        "logger",
        "Lcom/vk/id/logger/InternalVKIDLogger;",
        "auth",
        "",
        "authOptions",
        "Lcom/vk/id/internal/auth/AuthOptions;",
        "sendNoBrowserAuthEvent",
        "throwable",
        "",
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
.field private final context:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

.field private final logger:Lcom/vk/id/logger/InternalVKIDLogger;

.field private final starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Lcom/vk/id/internal/context/InternalVKIDActivityStarter;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "starter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->context:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    .line 20
    iput-object p2, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    .line 63
    sget-object p1, Lcom/vk/id/logger/InternalVKIDLog;->INSTANCE:Lcom/vk/id/logger/InternalVKIDLog;

    const-string p2, "getSimpleName(...)"

    const-string v0, "WebAuthProvider"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/vk/id/logger/InternalVKIDLog;->createLoggerForTag(Ljava/lang/String;)Lcom/vk/id/logger/InternalVKIDLogger;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    return-void
.end method

.method private final sendNoBrowserAuthEvent(Ljava/lang/Throwable;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    const-string v1, "Can\'t start browser to auth"

    invoke-interface {v0, v1, p1}, Lcom/vk/id/logger/InternalVKIDLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    sget-object v0, Lcom/vk/id/internal/auth/AuthEventBridge;->INSTANCE:Lcom/vk/id/internal/auth/AuthEventBridge;

    .line 55
    new-instance v1, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;

    const-string v2, "Error. Make sure you have a browser installed."

    invoke-direct {v1, v2, p1}, Lcom/vk/id/internal/auth/AuthResult$NoBrowserAvailable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/vk/id/internal/auth/AuthResult;

    .line 54
    invoke-virtual {v0, v1}, Lcom/vk/id/internal/auth/AuthEventBridge;->onAuthResult$vkid_release(Lcom/vk/id/internal/auth/AuthResult;)V

    return-void
.end method


# virtual methods
.method public auth(Lcom/vk/id/internal/auth/AuthOptions;)V
    .locals 5

    const-string v0, "authOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/vk/id/internal/auth/AuthOptionsKt;->toAuthUriBrowser(Lcom/vk/id/internal/auth/AuthOptions;)Landroid/net/Uri;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->INSTANCE:Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;

    iget-object v1, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->context:Lcom/vk/id/internal/context/InternalVKIDPackageManager;

    invoke-virtual {v0, v1}, Lcom/vk/id/internal/auth/web/WhiteListedBrowserHelper;->selectBestBrowser(Lcom/vk/id/internal/context/InternalVKIDPackageManager;)Lcom/vk/id/internal/auth/web/BrowserDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/web/WebAuthProvider;->sendNoBrowserAuthEvent(Ljava/lang/Throwable;)V

    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->logger:Lcom/vk/id/logger/InternalVKIDLogger;

    invoke-virtual {v0}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Auth with browser "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vk/id/logger/InternalVKIDLogger;->debug(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getUseCustomTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    new-instance v1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    iget-object v1, v1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.BROWSABLE"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 35
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    invoke-virtual {v0}, Lcom/vk/id/internal/auth/web/BrowserDescriptor;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :try_start_0
    iget-object p1, p0, Lcom/vk/id/internal/auth/web/WebAuthProvider;->starter:Lcom/vk/id/internal/context/InternalVKIDActivityStarter;

    invoke-interface {p1, v1}, Lcom/vk/id/internal/context/InternalVKIDActivityStarter;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 48
    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Lcom/vk/id/internal/auth/web/WebAuthProvider;->sendNoBrowserAuthEvent(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
