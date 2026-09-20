.class public Lcom/openmediation/sdk/unity/SplashSingleTon;
.super Ljava/lang/Object;
.source "SplashSingleTon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;,
        Lcom/openmediation/sdk/unity/SplashSingleTon$SplashHolder;
    }
.end annotation


# static fields
.field private static final EVENT_SPLASH_CLICKED:Ljava/lang/String; = "onSplashAdClick"

.field private static final EVENT_SPLASH_DISMISSED:Ljava/lang/String; = "onSplashAdClosed"

.field private static final EVENT_SPLASH_LOADED:Ljava/lang/String; = "onSplashAdLoadSuccess"

.field private static final EVENT_SPLASH_LOAD_FAILED:Ljava/lang/String; = "onSplashAdLoadFailed"

.field private static final EVENT_SPLASH_SHOWED:Ljava/lang/String; = "onSplashAdShowed"

.field private static final EVENT_SPLASH_SHOW_FAILED:Ljava/lang/String; = "onSplashAdShowFailed"

.field private static final EVENT_SPLASH_TICKED:Ljava/lang/String; = "onSplashAdTicked"


# instance fields
.field private listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashContainer:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->listenerMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/SplashSingleTon$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/unity/SplashSingleTon;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->initContainer()V

    return-void
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/unity/SplashSingleTon;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->releaseSplash()V

    return-void
.end method

.method private containsListener(Ljava/lang/String;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;
    .locals 1

    .line 36
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashHolder;->access$100()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    return-object v0
.end method

.method private initContainer()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 75
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private releaseSplash()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 82
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private removeListener(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setListener(Ljava/lang/String;Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {p1, p2}, Lcom/openmediation/sdk/splash/SplashAd;->setSplashAdListener(Ljava/lang/String;Lcom/openmediation/sdk/splash/SplashAdListener;)V

    return-void
.end method


# virtual methods
.method public isSplashAdReady(Ljava/lang/String;)Z
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/openmediation/sdk/splash/SplashAd;->isReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadSplashAd(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/openmediation/sdk/unity/SplashSingleTon;->containsListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;-><init>(Lcom/openmediation/sdk/unity/SplashSingleTon$1;)V

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->setListener(Ljava/lang/String;Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;)V

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/openmediation/sdk/splash/SplashAd;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method public showSplashAd(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/openmediation/sdk/unity/OmBridge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/SplashSingleTon;->mSplashContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, p1, v1}, Lcom/openmediation/sdk/splash/SplashAd;->showAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method
