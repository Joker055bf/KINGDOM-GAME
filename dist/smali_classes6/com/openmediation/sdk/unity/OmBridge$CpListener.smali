.class Lcom/openmediation/sdk/unity/OmBridge$CpListener;
.super Ljava/lang/Object;
.source "OmBridge.java"

# interfaces
.implements Lcom/openmediation/sdk/promotion/PromotionAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/OmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/unity/OmBridge$1;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Lcom/openmediation/sdk/unity/OmBridge$CpListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPromotionAdAvailabilityChanged(Z)V
    .locals 1

    const-string v0, "onPromotionAdAvailabilityChanged"

    .line 381
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionAdClicked(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onPromotionAdClicked"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionAdHidden(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onPromotionAdHidden"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionAdShowFailed(Lcom/openmediation/sdk/utils/model/Scene;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPromotionAdShowFailed"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPromotionAdShowed(Lcom/openmediation/sdk/utils/model/Scene;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/model/Scene;->getN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v0, "onPromotionAdShowed"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
