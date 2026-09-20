.class public Lcom/openmediation/sdk/core/imp/banner/BnManager;
.super Lcom/openmediation/sdk/core/imp/HybridCacheManager;

# interfaces
.implements Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;
    }
.end annotation


# instance fields
.field private mLytBanner:Landroid/widget/FrameLayout;

.field private mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

.field private mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/openmediation/sdk/banner/BannerAdListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/imp/HybridCacheManager;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;-><init>(Lcom/openmediation/sdk/utils/HandlerUtil$OnReceiveMessageListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    invoke-virtual {p1, p2}, Lcom/openmediation/sdk/core/ListenerWrapper;->setBnListener(Lcom/openmediation/sdk/banner/BannerAdListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    return-object p0
.end method

.method static synthetic access$100(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    return-object p0
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    return-object p0
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/openmediation/sdk/core/imp/banner/BnManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mLoadTs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/core/imp/banner/BnManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCallbackTs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/openmediation/sdk/core/imp/banner/BnManager;)Lcom/openmediation/sdk/utils/model/Placement;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    return-object p0
.end method

.method private createBannerParent(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneHeight(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private resetAdSize()Lcom/openmediation/sdk/banner/AdSize;
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/openmediation/sdk/banner/AdSize;->SMART:Lcom/openmediation/sdk/banner/AdSize;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/openmediation/sdk/banner/AdSize;->LEADERBOARD:Lcom/openmediation/sdk/banner/AdSize;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/openmediation/sdk/banner/AdSize;->BANNER:Lcom/openmediation/sdk/banner/AdSize;

    :cond_2
    :goto_1
    return-object v0
.end method

.method private startRefreshTask()V
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isDestroyed:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    if-nez v1, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getRlw()I

    move-result v0

    if-gtz v0, :cond_3

    const-string v0, "BnManager, stop RefreshTask: Interval is 0"

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    if-nez v1, :cond_4

    new-instance v1, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    invoke-direct {v1, p0, v0}, Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;-><init>(Lcom/openmediation/sdk/core/imp/banner/BnManager;I)V

    iput-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    :cond_4
    iget-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BnManager, startRefreshTask error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRefreshTask:Lcom/openmediation/sdk/core/imp/banner/BnManager$RefreshTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mRlwHandler:Lcom/openmediation/sdk/utils/HandlerUtil$HandlerHolder;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    :cond_1
    invoke-super {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->destroy()V

    return-void
.end method

.method protected destroyAdEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    invoke-virtual {v0}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->destroyBn()V

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->reportInsDestroyed(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method protected getPlacementInfo()Lcom/openmediation/sdk/utils/model/PlacementInfo;
    .locals 3

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->resetAdSize()Lcom/openmediation/sdk/banner/AdSize;

    move-result-object v0

    new-instance v1, Lcom/openmediation/sdk/utils/model/PlacementInfo;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/openmediation/sdk/utils/model/PlacementInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/AdSize;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getBannerPlacementInfo(II)Lcom/openmediation/sdk/utils/model/PlacementInfo;

    move-result-object v0

    return-object v0
.end method

.method protected initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->initInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    if-nez v0, :cond_0

    sget-object v0, Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;->INIT_FAILED:Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/utils/model/BaseInstance;->setMediationState(Lcom/openmediation/sdk/utils/model/BaseInstance$MEDIATION_STATE;)V

    new-instance v0, Lcom/openmediation/sdk/mediation/AdapterError;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current is not an Banner adUnit"

    invoke-direct {v0, v1, v2}, Lcom/openmediation/sdk/mediation/AdapterError;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void

    :cond_0
    check-cast p1, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->setBnManagerListener(Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->initBn(Landroid/app/Activity;)V

    return-void
.end method

.method protected insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/BaseInstance;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->insLoad(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->getInstance()Lcom/openmediation/sdk/utils/event/EventUploadManager;

    move-result-object v0

    invoke-static {p1}, Lcom/openmediation/sdk/core/InsManager;->buildReportData(Lcom/openmediation/sdk/utils/model/BaseInstance;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/event/EventUploadManager;->uploadEvent(ILorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/AdSize;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/AdSize;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    invoke-virtual {v0}, Lcom/openmediation/sdk/banner/AdSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_abt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_abt_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/model/Placement;->getWfAbtId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/cache/DataCache;->setMEM(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    invoke-virtual {p1, p0}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->setBnManagerListener(Lcom/openmediation/sdk/core/imp/banner/BnManagerListener;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mActRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->loadBn(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method protected isInsAvailable(Lcom/openmediation/sdk/utils/model/BaseInstance;)Z
    .locals 1

    instance-of v0, p1, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/openmediation/sdk/core/imp/banner/BnInstance;

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/imp/banner/BnInstance;->isBnAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V
    .locals 3

    sget-object v0, Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;->MANUAL:Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/AdsUtil;->callActionReport(Ljava/lang/String;II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadAds(Lcom/openmediation/sdk/core/OmManager$LOAD_TYPE;)V

    return-void
.end method

.method protected onAdErrorCallback(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->startRefreshTask()V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    return-void
.end method

.method protected onAdReadyCallback()V
    .locals 4

    const/16 v0, 0xf1

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractHybridAds;->mCurrentIns:Lcom/openmediation/sdk/utils/model/BaseInstance;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/mediation/MediationUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->createBannerParent(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/openmediation/sdk/core/imp/banner/BnManager;->mLytBanner:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdLoaded(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz v1, :cond_5

    const-string v1, "Load No Available Ad, Banner Load Error"

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    :goto_0
    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz v1, :cond_5

    const-string v1, "Load No Available Ad, CurrentIns is null"

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load No Available Ad, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v0

    iget-object v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V

    :cond_4
    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onBannerAdAdClicked(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsClicked(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/utils/model/Scene;)V

    iget-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mListenerWrapper:Lcom/openmediation/sdk/core/ListenerWrapper;

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/openmediation/sdk/core/ListenerWrapper;->onBannerAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdInitFailed(Lcom/openmediation/sdk/core/imp/banner/BnInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onBannerAdInitSuccess(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/openmediation/sdk/core/AbstractAdsApi;->loadInsAndSendEvent(Lcom/openmediation/sdk/utils/model/BaseInstance;)V

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/openmediation/sdk/core/imp/banner/BnInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/mediation/AdapterError;Z)V

    return-void
.end method

.method public onBannerAdLoadSuccess(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->isManualTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onInsLoadSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Z)V

    return-void
.end method

.method public onBannerAdShowFailed(Lcom/openmediation/sdk/core/imp/banner/BnInstance;Lcom/openmediation/sdk/mediation/AdapterError;)V
    .locals 0

    return-void
.end method

.method public onBannerAdShowSuccess(Lcom/openmediation/sdk/core/imp/banner/BnInstance;)V
    .locals 0

    return-void
.end method

.method public onBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidFailed(Lcom/openmediation/sdk/utils/model/BaseInstance;Ljava/lang/String;)V

    return-void
.end method

.method public onBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInsC2SBidSuccess(Lcom/openmediation/sdk/utils/model/BaseInstance;Lcom/openmediation/sdk/bid/BidResponse;)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/core/imp/banner/BnManager;->startRefreshTask()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onViewAttachToWindow()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/openmediation/sdk/core/AbstractHybridAds;->onViewDetachFromWindow()V

    return-void
.end method

.method public setAdSize(Lcom/openmediation/sdk/banner/AdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mAdSize:Lcom/openmediation/sdk/banner/AdSize;

    return-void
.end method
