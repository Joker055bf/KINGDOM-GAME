.class public Lcom/unity/hms/listener/BuildRewardAdStatusListener;
.super Ljava/lang/Object;
.source "BuildRewardAdStatusListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildRewardAdStatusListener(Lcom/unity/hms/listener/IRewardAdStatusListener;)Lcom/huawei/hms/ads/reward/RewardAdStatusListener;
    .locals 1

    .line 8
    new-instance v0, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;

    invoke-direct {v0, p0}, Lcom/unity/hms/listener/BuildRewardAdStatusListener$1;-><init>(Lcom/unity/hms/listener/IRewardAdStatusListener;)V

    return-object v0
.end method
