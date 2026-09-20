.class final Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;
.super Lcom/huawei/hms/ads/reward/RewardAdStatusListener;
.source "BuildRewardAdStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/hms/listener/BuildRewardAdStatusListener;->BuildRewardAdStatusListener(Lcom/unity/hms/listener/IRewardAdStatusListener;)Lcom/huawei/hms/ads/reward/RewardAdStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;


# direct methods
.method constructor <init>(Lcom/unity/hms/listener/IRewardAdStatusListener;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;

    invoke-direct {p0}, Lcom/huawei/hms/ads/reward/RewardAdStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardAdClosed()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IRewardAdStatusListener;->onRewardAdClosed()V

    return-void
.end method

.method public onRewardAdFailedToShow(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/IRewardAdStatusListener;->onRewardAdFailedToShow(I)V

    return-void
.end method

.method public onRewardAdOpened()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;

    invoke-interface {v0}, Lcom/unity/hms/listener/IRewardAdStatusListener;->onRewardAdOpened()V

    return-void
.end method

.method public onRewarded(Lcom/huawei/hms/ads/reward/Reward;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;->val$arg:Lcom/unity/hms/listener/IRewardAdStatusListener;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/IRewardAdStatusListener;->onRewarded(Lcom/huawei/hms/ads/reward/Reward;)V

    return-void
.end method
