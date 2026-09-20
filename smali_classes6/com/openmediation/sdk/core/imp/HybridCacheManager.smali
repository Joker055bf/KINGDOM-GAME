.class public abstract Lcom/openmediation/sdk/core/imp/HybridCacheManager;
.super Lcom/openmediation/sdk/core/AbstractHybridAds;


# static fields
.field public static TAG:Ljava/lang/String; = "HybridCacheManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/core/AbstractHybridAds;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public s2sBid()V
    .locals 5

    const-string v0, "Om wf read local cache, placementId: "

    const-string v1, "Om wf need read from cache, but has no local cache, placementId: "

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReadWfFromLocal:Z

    invoke-static {}, Lcom/openmediation/sdk/core/OmCacheManager;->getInstance()Lcom/openmediation/sdk/core/OmCacheManager;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v3}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v4}, Lcom/openmediation/sdk/utils/model/Placement;->getT()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/openmediation/sdk/core/OmCacheManager;->getWaterfallData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mReadWfFromLocal:Z

    sget-object v1, Lcom/openmediation/sdk/core/imp/HybridCacheManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/openmediation/sdk/core/AbstractAdsApi;->onInternalRequestSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/core/imp/HybridCacheManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HybridCacheManager Read waterfall cache error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xfb

    const/16 v3, 0xa

    invoke-static {v2, v1, v3}, Lcom/openmediation/sdk/utils/error/ErrorBuilder;->build(ILjava/lang/String;I)Lcom/openmediation/sdk/utils/error/Error;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", failed when read cache, Placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/openmediation/sdk/core/AbstractAdsApi;->mPlacement:Lcom/openmediation/sdk/utils/model/Placement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/openmediation/sdk/core/AbstractHybridAds;->callbackLoadError(Lcom/openmediation/sdk/utils/error/Error;)V

    :goto_0
    invoke-super {p0}, Lcom/openmediation/sdk/core/AbstractAdsApi;->s2sBid()V

    return-void
.end method
