.class public final Lcom/vk/id/captcha/web/g;
.super Landroid/webkit/WebViewClient;
.source "VKCaptchaWebViewClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/web/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005Be\u0012\u0006\u0010\u0003\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020 \u0012\u0006\u0010\n\u001a\u00020\u0017\u0012\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"\u0012\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"\u0012\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"\u0012\u0008\u0008\u0002\u0010/\u001a\u00020\u0014\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0008\u00101\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u00082\u00103J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000eH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J-\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\r2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0011H\u0017\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J#\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00178\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u00148\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0018\u001a\u00020 8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010!R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010$R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010$R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001bR\u0013\u0010\'\u001a\u00020(X\u0083\u0080\u0002\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u001a\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010+"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/g;",
        "Landroid/webkit/WebViewClient;",
        "",
        "p0",
        "",
        "a",
        "(Ljava/lang/String;)V",
        "Landroid/webkit/WebView;",
        "p1",
        "Landroid/graphics/Bitmap;",
        "p2",
        "onPageStarted",
        "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "Landroid/webkit/WebResourceRequest;",
        "Landroid/webkit/WebResourceError;",
        "onReceivedError",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V",
        "Landroid/webkit/WebResourceResponse;",
        "onReceivedHttpError",
        "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V",
        "",
        "shouldOverrideUrlLoading",
        "(Landroid/webkit/WebView;Ljava/lang/String;)Z",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "d",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "j",
        "Ljava/lang/String;",
        "b",
        "h",
        "Z",
        "c",
        "Lcom/vk/id/captcha/web/b;",
        "Lcom/vk/id/captcha/web/b;",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "f",
        "g",
        "i",
        "Lcom/vk/id/captcha/web/d;",
        "k",
        "Lkotlin/Lazy;",
        "Landroid/webkit/WebView;",
        "p3",
        "p4",
        "p5",
        "p6",
        "p7",
        "p8",
        "<init>",
        "(Landroid/webkit/WebView;Lcom/vk/id/captcha/web/b;Ljava/util/concurrent/ThreadPoolExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Ljava/lang/String;)V"
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
.field private static final a:Lcom/vk/id/captcha/web/g$a;


# instance fields
.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/vk/id/captcha/web/b;

.field private final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$eVDtndYUYe4unRU6nOsorEZ-ySw(Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/captcha/web/g;->a(Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public static synthetic $r8$lambda$frMXvbqhWrtdWSpoDw9NfpyKzNQ(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vk/id/captcha/web/g;->a(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/web/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/web/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/web/g;->a:Lcom/vk/id/captcha/web/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lcom/vk/id/captcha/web/b;Ljava/util/concurrent/ThreadPoolExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Lcom/vk/id/captcha/web/b;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/vk/id/captcha/web/g;->b:Landroid/webkit/WebView;

    .line 20
    iput-object p2, p0, Lcom/vk/id/captcha/web/g;->c:Lcom/vk/id/captcha/web/b;

    .line 21
    iput-object p3, p0, Lcom/vk/id/captcha/web/g;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    iput-object p4, p0, Lcom/vk/id/captcha/web/g;->e:Lkotlin/jvm/functions/Function0;

    .line 23
    iput-object p5, p0, Lcom/vk/id/captcha/web/g;->f:Lkotlin/jvm/functions/Function0;

    .line 24
    iput-object p6, p0, Lcom/vk/id/captcha/web/g;->g:Lkotlin/jvm/functions/Function0;

    .line 25
    iput-boolean p7, p0, Lcom/vk/id/captcha/web/g;->h:Z

    .line 26
    iput-object p8, p0, Lcom/vk/id/captcha/web/g;->i:Ljava/lang/String;

    .line 27
    iput-object p9, p0, Lcom/vk/id/captcha/web/g;->j:Ljava/lang/String;

    .line 30
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/vk/id/captcha/web/g$1;

    invoke-direct {p2, p0}, Lcom/vk/id/captcha/web/g$1;-><init>(Lcom/vk/id/captcha/web/g;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/web/g;->k:Lkotlin/Lazy;

    return-void
.end method

.method private static final a(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "HttpError loading WebView. ErrorCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/vk/id/captcha/web/g;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final a(Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceError;)V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {p1}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1064
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x8

    if-ne p1, v0, :cond_2

    .line 1065
    :cond_1
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->c:Lcom/vk/id/captcha/web/b;

    invoke-virtual {p1}, Lcom/vk/id/captcha/web/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 50
    iget-object p0, p0, Lcom/vk/id/captcha/web/g;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_3
    const-string p1, "Error loading WebView."

    .line 52
    invoke-direct {p0, p1}, Lcom/vk/id/captcha/web/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 5

    .line 96
    sget-object v0, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    .line 97
    new-instance v1, Lcom/vk/id/captcha/a$b;

    .line 98
    new-instance v2, Lcom/vk/id/captcha/api/data/VKCaptchaError$NetworkError;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, p1, v3, v4, v3}, Lcom/vk/id/captcha/api/data/VKCaptchaError$NetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/vk/id/captcha/api/data/VKCaptchaError;

    .line 99
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->j:Ljava/lang/String;

    .line 97
    invoke-direct {v1, v2, p1}, Lcom/vk/id/captcha/a$b;-><init>(Lcom/vk/id/captcha/api/data/VKCaptchaError;Ljava/lang/String;)V

    check-cast v1, Lcom/vk/id/captcha/a;

    .line 96
    invoke-virtual {v0, v1}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha$captcha_release(Lcom/vk/id/captcha/a;)V

    .line 102
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/web/g;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/vk/id/captcha/web/g;->h:Z

    return p0
.end method

.method public static final synthetic b(Lcom/vk/id/captcha/web/g;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vk/id/captcha/web/g;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 37
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-eqz p1, :cond_0

    const-string p2, "file:///android_asset/index.html"

    .line 47
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p2, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda1;-><init>(Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceError;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 79
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0, p3}, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/vk/id/captcha/web/g;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/web/d;

    .line 89
    check-cast p1, Landroid/view/View;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vk/id/captcha/web/d;->a(Landroid/view/View;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/vk/id/captcha/web/g;->b:Landroid/webkit/WebView;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
