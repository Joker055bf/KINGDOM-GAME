.class public interface abstract Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueAdExpiredListener;
.super Ljava/lang/Object;
.source "ChartboostMediationFullscreenAdQueueAdExpiredListener.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdQueueAdExpiredListener;",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAdListener;",
        "onAdClicked",
        "",
        "ad",
        "Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;",
        "onAdClosed",
        "error",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;",
        "onAdImpressionRecorded",
        "onAdRewarded",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public onAdClicked(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;)V
    .locals 0

    const-string p2, "ad"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpressionRecorded(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Lcom/chartboost/heliumsdk/ad/ChartboostMediationFullscreenAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
