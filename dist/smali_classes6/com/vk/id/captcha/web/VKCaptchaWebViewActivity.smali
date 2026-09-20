.class public final Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;
.super Landroid/app/Activity;
.source "VKCaptchaWebViewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 92\u00020\u0001:\u00019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020)H\u0017J\u0012\u0010+\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0014J\u0008\u0010.\u001a\u00020)H\u0014J\u0010\u0010/\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u000cH\u0002J\u001a\u00101\u001a\u00020)2\u0010\u00102\u001a\u000c\u0012\u0004\u0012\u00020403j\u0002`5H\u0002J\u0010\u00106\u001a\u00020)2\u0006\u00100\u001a\u00020\u000cH\u0003J\u0008\u00107\u001a\u00020)H\u0002J\u0008\u00108\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0010\u0010\u0008R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\n\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\n\u001a\u0004\u0008\"\u0010#R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;",
        "Landroid/app/Activity;",
        "()V",
        "backgroundTasksThreadPool",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "captchaCreatedFromUserRequest",
        "",
        "getCaptchaCreatedFromUserRequest",
        "()Z",
        "captchaCreatedFromUserRequest$delegate",
        "Lkotlin/Lazy;",
        "domain",
        "",
        "getDomain",
        "()Ljava/lang/String;",
        "domain$delegate",
        "isHitmanChallenge",
        "isHitmanChallenge$delegate",
        "mainHandler",
        "Landroid/os/Handler;",
        "networkConnectionObserver",
        "Lcom/vk/id/captcha/web/NetworkConnectionObserver;",
        "getNetworkConnectionObserver",
        "()Lcom/vk/id/captcha/web/NetworkConnectionObserver;",
        "networkConnectionObserver$delegate",
        "noInternetFragment",
        "Lcom/vk/id/captcha/web/nointernet/VKCaptchaNoInternetFragment;",
        "getNoInternetFragment",
        "()Lcom/vk/id/captcha/web/nointernet/VKCaptchaNoInternetFragment;",
        "noInternetFragment$delegate",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "urlDecorator",
        "Lcom/vk/id/captcha/web/UrlDecorator;",
        "getUrlDecorator",
        "()Lcom/vk/id/captcha/web/UrlDecorator;",
        "urlDecorator$delegate",
        "webView",
        "Landroid/webkit/WebView;",
        "webViewHandler",
        "finishActivity",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "prepareUrl",
        "url",
        "sendVKCaptchaListenSensorsChangedEvent",
        "data",
        "",
        "Lcom/vk/id/captcha/sensors/model/SensorData;",
        "Lcom/vk/id/captcha/sensors/model/SensorsData;",
        "setupWebView",
        "showNoInternet",
        "wasProcessRecreated",
        "Companion",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$a;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ProgressBar;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9xeAZl6gigCqSUZI4AAM7HH7D-E(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2dpeIX-pWk7YEV1NTId-KW6BKs(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgTU2Bvww3xqzDKFl2Uv4z1dn4U(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->g(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntKTvFq4BD5e3wbn45JCRIs1DHg(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->f(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;

    invoke-direct {v0, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$10;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d:Lkotlin/Lazy;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/vk/id/captcha/web/f;->a()Lcom/vk/id/captcha/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/id/captcha/c/d;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->e:Landroid/os/Handler;

    .line 40
    sget-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/b/a;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->f:Landroid/os/Handler;

    .line 41
    sget-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/b/a;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    sget-object v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$4;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->h:Lkotlin/Lazy;

    .line 45
    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$2;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->i:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$3;

    invoke-direct {v0, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$3;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->j:Lkotlin/Lazy;

    .line 47
    sget-object v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$1;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->k:Lkotlin/Lazy;

    .line 49
    sget-object v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$5;->a:Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$5;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->l:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lcom/vk/id/captcha/web/b;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/web/b;

    return-object v0
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d()V

    return-void
.end method

.method private static final a(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/lang/String;)V
    .locals 14

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 122
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    new-instance v3, Lcom/vk/id/captcha/web/e;

    .line 125
    iget-object v6, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->e:Landroid/os/Handler;

    .line 123
    new-instance v4, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$6;

    invoke-direct {v4, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$6;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 127
    new-instance v4, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$b;

    invoke-direct {v4, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$b;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 128
    sget-object v4, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vk/id/captcha/b/a;->a()Lcom/vk/id/captcha/c/e;

    move-result-object v9

    .line 129
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b()Ljava/lang/String;

    move-result-object v10

    move-object v5, v3

    .line 124
    invoke-direct/range {v5 .. v10}, Lcom/vk/id/captcha/web/e;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vk/id/captcha/c/e;Ljava/lang/String;)V

    const-string v4, "AndroidBridge"

    .line 123
    invoke-virtual {v1, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 134
    new-instance v3, Lcom/vk/id/captcha/web/g;

    .line 135
    iget-object v4, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez v4, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a()Lcom/vk/id/captcha/web/b;

    move-result-object v6

    .line 137
    iget-object v7, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 134
    new-instance v4, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$7;

    invoke-direct {v4, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$7;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$8;

    invoke-direct {v4, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$8;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;

    invoke-direct {v4, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$9;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 4046
    iget-object v4, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->j:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 146
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b()Ljava/lang/String;

    move-result-object v13

    move-object v4, v3

    move-object v12, p1

    .line 134
    invoke-direct/range {v4 .. v13}, Lcom/vk/id/captcha/web/g;-><init>(Landroid/webkit/WebView;Lcom/vk/id/captcha/web/b;Ljava/util/concurrent/ThreadPoolExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Ljava/lang/String;)V

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    iget-object v1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 5038
    iget-object v1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/captcha/web/c;

    .line 4166
    invoke-virtual {v1, p1}, Lcom/vk/id/captcha/web/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object p0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez p0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/util/List;)V
    .locals 5

    .line 5159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    .line 5160
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6008
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6009
    check-cast p1, Ljava/lang/Iterable;

    .line 6015
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vk/id/captcha/c/a/a;

    .line 6010
    invoke-virtual {v3}, Lcom/vk/id/captcha/c/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vk/id/captcha/c/a/a;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "detail"

    .line 5160
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5162
    iget-object p0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "javascript:window.dispatchEvent(new CustomEvent(\'VKCaptchaListenSensorsChanged\', "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->c()V

    return-void
.end method

.method public static final synthetic c(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private final c()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic d(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    return-object p0
.end method

.method private final d()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->finish()V

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 172
    sget v0, Lcom/vk/id/captcha/R$anim;->fade_in:I

    sget v1, Lcom/vk/id/captcha/R$anim;->fade_out:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->overrideActivityTransition(III)V

    return-void

    .line 174
    :cond_0
    sget v0, Lcom/vk/id/captcha/R$anim;->fade_in:I

    sget v1, Lcom/vk/id/captcha/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public static final synthetic e(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 3

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a()Lcom/vk/id/captcha/web/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/web/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->c()V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VK_CAPTCHA_URL_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2120
    iget-object v1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->f:Landroid/os/Handler;

    new-instance v2, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final g(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3049
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/web/a/c;

    .line 100
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "NoInternetFragment"

    invoke-virtual {v0, p0, v1}, Lcom/vk/id/captcha/web/a/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "javascript:window.dispatchEvent(new CustomEvent(\'VKCaptchaUserClose\', null))"

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 113
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {v0}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha()V

    .line 114
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, ""

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2047
    iget-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->k:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->finish()V

    .line 66
    :cond_0
    :try_start_0
    sget p1, Lcom/vk/id/captcha/R$layout;->vkcaptcha_activity:I

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v4, "webview"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 69
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    .line 70
    new-instance v1, Lcom/vk/id/captcha/a$b;

    .line 71
    new-instance v2, Lcom/vk/id/captcha/api/data/VKCaptchaError$WebviewIsUpdatingError;

    const-string v3, "Webview is being updated"

    .line 73
    check-cast p1, Ljava/lang/Throwable;

    .line 71
    invoke-direct {v2, v3, p1}, Lcom/vk/id/captcha/api/data/VKCaptchaError$WebviewIsUpdatingError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Lcom/vk/id/captcha/api/data/VKCaptchaError;

    .line 75
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {v1, v2, p1}, Lcom/vk/id/captcha/a$b;-><init>(Lcom/vk/id/captcha/api/data/VKCaptchaError;Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/captcha/a;

    .line 69
    invoke-virtual {v0, v1}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V

    .line 78
    invoke-direct {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->d()V

    return-void

    .line 83
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 85
    :cond_3
    sget p1, Lcom/vk/id/captcha/R$id;->webview:I

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    .line 86
    sget p1, Lcom/vk/id/captcha/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->c:Landroid/widget/ProgressBar;

    .line 88
    iget-object p1, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const-string v3, "AndroidBridge"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 180
    :cond_1
    sget-object v0, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/b/a;->a()Lcom/vk/id/captcha/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/vk/id/captcha/c/e;->a()V

    .line 181
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 182
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
