.class Lcom/openmediation/sdk/unity/OmBridge$InitListener;
.super Ljava/lang/Object;
.source "OmBridge.java"

# interfaces
.implements Lcom/openmediation/sdk/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/OmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/OmBridge$InitListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "OM init failed"

    :goto_0
    const-string v0, "onSdkInitFailed"

    .line 431
    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "onSdkInitSuccess"

    .line 421
    invoke-static {v0}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/openmediation/sdk/unity/OmBridge$RvListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/OmBridge$RvListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    invoke-static {v0}, Lcom/openmediation/sdk/video/RewardedVideoAd;->setAdListener(Lcom/openmediation/sdk/video/RewardedVideoListener;)V

    .line 423
    new-instance v0, Lcom/openmediation/sdk/unity/OmBridge$IsListener;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/OmBridge$IsListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    invoke-static {v0}, Lcom/openmediation/sdk/interstitial/InterstitialAd;->setAdListener(Lcom/openmediation/sdk/interstitial/InterstitialAdListener;)V

    .line 424
    new-instance v0, Lcom/openmediation/sdk/unity/OmBridge$CpListener;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/OmBridge$CpListener;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    invoke-static {v0}, Lcom/openmediation/sdk/promotion/PromotionAd;->setAdListener(Lcom/openmediation/sdk/promotion/PromotionAdListener;)V

    .line 425
    new-instance v0, Lcom/openmediation/sdk/unity/OmBridge$ImpressionDataCallback;

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/unity/OmBridge$ImpressionDataCallback;-><init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V

    invoke-static {v0}, Lcom/openmediation/sdk/OmAds;->addImpressionDataListener(Lcom/openmediation/sdk/ImpressionDataListener;)V

    return-void
.end method
