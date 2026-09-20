.class final Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;
.super Lcom/huawei/hms/ads/reward/RewardAdLoadListener;
.source "BuildRewardAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/hms/listener/BuildRewardAdLoadListener;->BuildRewardAdLoadListener(Lcom/unity/hms/listener/IRewardAdLoadListener;)Lcom/huawei/hms/ads/reward/RewardAdLoadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Lcom/unity/hms/listener/IRewardAdLoadListener;


# direct methods
.method constructor <init>(Lcom/unity/hms/listener/IRewardAdLoadListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdLoadListener;

    invoke-direct {p0}, Lcom/huawei/hms/ads/reward/RewardAdLoadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardAdFailedToLoad(I)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdLoadListener;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/IRewardAdLoadListener;->onRewardAdFailedToLoad(I)V

    return-void
.end method

.method public onRewardedLoaded()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdLoadListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IRewardAdLoadListener;->onRewardedLoaded()V

    return-void
.end method
