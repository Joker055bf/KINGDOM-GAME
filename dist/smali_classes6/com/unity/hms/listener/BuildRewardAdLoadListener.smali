.class public Lcom/unity/hms/listener/BuildRewardAdLoadListener;
.super Ljava/lang/Object;
.source "BuildRewardAdLoadListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildRewardAdLoadListener(Lcom/unity/hms/listener/IRewardAdLoadListener;)Lcom/huawei/hms/ads/reward/RewardAdLoadListener;
    .locals 1

    .line 7
    new-instance v0, Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;

    invoke-direct {v0, p0}, Lcom/unity/hms/listener/BuildRewardAdLoadListener$1;-><init>(Lcom/unity/hms/listener/IRewardAdLoadListener;)V

    return-object v0
.end method
