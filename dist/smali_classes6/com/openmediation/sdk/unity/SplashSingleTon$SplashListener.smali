.class Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;
.super Ljava/lang/Object;
.source "SplashSingleTon.java"

# interfaces
.implements Lcom/openmediation/sdk/splash/SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/SplashSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplashListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/SplashSingleTon$1;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/SplashSingleTon$SplashListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unity plugin onSplashAdClicked"

    .line 103
    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string v0, "onSplashAdClick"

    .line 104
    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdDismissed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unity plugin onSplashAdDismissed"

    .line 128
    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->access$400(Lcom/openmediation/sdk/unity/SplashSingleTon;)V

    const-string v0, "onSplashAdClosed"

    .line 130
    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity plugin onSplashAdFailed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string p2, "onSplashAdLoadFailed"

    .line 98
    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdLoaded(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unity plugin onSplashAdLoad"

    .line 90
    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/SplashSingleTon;->access$300(Lcom/openmediation/sdk/unity/SplashSingleTon;)V

    const-string v0, "onSplashAdLoadSuccess"

    .line 92
    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdShowFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity plugin onSplashAdShowFailed \uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/openmediation/sdk/unity/SplashSingleTon;->getInstance()Lcom/openmediation/sdk/unity/SplashSingleTon;

    move-result-object p2

    invoke-static {p2}, Lcom/openmediation/sdk/unity/SplashSingleTon;->access$400(Lcom/openmediation/sdk/unity/SplashSingleTon;)V

    const-string p2, "onSplashAdShowFailed"

    .line 117
    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdShowed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Unity plugin onSplashAdShowed"

    .line 109
    invoke-static {v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string v0, "onSplashAdShowed"

    .line 110
    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashAdTick(Ljava/lang/String;J)V
    .locals 0

    const-string p2, "Unity plugin onSplashAdTick"

    .line 122
    invoke-static {p2}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    const-string p2, "onSplashAdTicked"

    .line 123
    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
