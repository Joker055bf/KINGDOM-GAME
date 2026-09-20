.class public final Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener$DefaultImpls;
.super Ljava/lang/Object;
.source "HeliumBannerAdListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onAdCached(Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "winningBidInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static/range {p0 .. p5}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;->access$onAdCached$jd(Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;Landroid/util/Size;)V

    return-void
.end method

.method public static onAdViewAdded(Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1, p2}, Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;->access$onAdViewAdded$jd(Lcom/chartboost/heliumsdk/ad/HeliumBannerAdListener;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
