.class public final Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "AuthActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/auth/AuthActivity;->handleStartAuth(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthActivity.kt\ncom/vk/id/internal/auth/AuthActivity$handleStartAuth$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/vk/id/internal/auth/AuthActivity$handleStartAuth$1",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "onCustomTabsServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "client",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "onServiceDisconnected",
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


# instance fields
.field final synthetic this$0:Lcom/vk/id/internal/auth/AuthActivity;


# direct methods
.method public static synthetic $r8$lambda$eMdAl9akvT8h7rrQ3LDYbbMvUKU(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1;->onCustomTabsServiceConnected$lambda$0(Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jlk2AEKmebcgp0vOMbgCFdrOC-M(Lcom/vk/id/internal/auth/AuthActivity;Landroidx/browser/customtabs/CustomTabsClient;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1;->onCustomTabsServiceConnected$lambda$2(Lcom/vk/id/internal/auth/AuthActivity;Landroidx/browser/customtabs/CustomTabsClient;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/vk/id/internal/auth/AuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1;->this$0:Lcom/vk/id/internal/auth/AuthActivity;

    .line 245
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method

.method private static final onCustomTabsServiceConnected$lambda$0(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCustomTabsServiceConnected$lambda$2(Lcom/vk/id/internal/auth/AuthActivity;Landroidx/browser/customtabs/CustomTabsClient;)Lkotlin/Unit;
    .locals 2

    .line 251
    invoke-static {p0}, Lcom/vk/id/internal/auth/AuthActivity;->access$getCallback$p(Lcom/vk/id/internal/auth/AuthActivity;)Lcom/vk/id/internal/auth/AuthActivity$callback$1;

    move-result-object v0

    check-cast v0, Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vk/id/internal/auth/AuthActivity;->access$setCustomTabsSession$p(Lcom/vk/id/internal/auth/AuthActivity;Landroidx/browser/customtabs/CustomTabsSession;)V

    const-wide/16 v0, 0x0

    .line 252
    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 254
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-static {p0}, Lcom/vk/id/internal/auth/AuthActivity;->access$getCustomTabsSession$p(Lcom/vk/id/internal/auth/AuthActivity;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    const/4 v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 259
    invoke-static {p0}, Lcom/vk/id/internal/auth/AuthActivity;->access$getAuthIntent$p(Lcom/vk/id/internal/auth/AuthActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "apply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-static {p0, p1}, Lcom/vk/id/internal/auth/AuthActivity;->access$launchAuth(Lcom/vk/id/internal/auth/AuthActivity;Landroid/content/Intent;)V

    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    sget-object p1, Lcom/vk/id/VKID;->Companion:Lcom/vk/id/VKID$Companion;

    invoke-virtual {p1}, Lcom/vk/id/VKID$Companion;->getInstance()Lcom/vk/id/VKID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vk/id/VKID;->getCrashReporter()Lcom/vk/id/tracking/core/CrashReporter;

    move-result-object p1

    new-instance v0, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1;->this$0:Lcom/vk/id/internal/auth/AuthActivity;

    new-instance v2, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/vk/id/internal/auth/AuthActivity$handleStartAuth$1$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/internal/auth/AuthActivity;Landroidx/browser/customtabs/CustomTabsClient;)V

    invoke-interface {p1, v0, v2}, Lcom/vk/id/tracking/core/CrashReporter;->runReportingCrashes(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
