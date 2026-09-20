.class public final Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;
.super Ljava/lang/Object;
.source "MetaAudienceNetworkAdapter.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/domain/PartnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;,
        Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetaAudienceNetworkAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetaAudienceNetworkAdapter.kt\ncom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,765:1\n314#2,11:766\n*S KotlinDebug\n*F\n+ 1 MetaAudienceNetworkAdapter.kt\ncom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter\n*L\n275#1:766,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 X2\u00020\u0001:\u0001XB\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J&\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J&\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0016J-\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0096@\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010!J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J&\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\'\u001a\u00020(H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0002J*\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00080\u00101J:\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u0002032\u0006\u00104\u001a\u000205H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00086\u00107J:\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u0002032\u0006\u00104\u001a\u000205H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00089\u00107J:\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u0002032\u0006\u00104\u001a\u000205H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008;\u00107J:\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u0002032\u0006\u00104\u001a\u000205H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008=\u00107J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J \u0010B\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010C\u001a\u00020?2\u0006\u0010D\u001a\u00020\u0004H\u0016J\'\u0010E\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010F\u001a\u0004\u0018\u00010?2\u0006\u0010G\u001a\u00020HH\u0016\u00a2\u0006\u0002\u0010IJ2\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010K\u001a\u00020LH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0018\u0010O\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010P\u001a\u00020?H\u0016J2\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0014\u001a\u00020\u0013H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008R\u0010SJ&\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008U\u0010\u0016J&\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008W\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;",
        "Lcom/chartboost/heliumsdk/domain/PartnerAdapter;",
        "()V",
        "adapterVersion",
        "",
        "getAdapterVersion",
        "()Ljava/lang/String;",
        "onInterstitialAdShowFailure",
        "Lkotlin/Function0;",
        "",
        "onInterstitialAdShowSuccess",
        "partnerDisplayName",
        "getPartnerDisplayName",
        "partnerId",
        "getPartnerId",
        "partnerSdkVersion",
        "getPartnerSdkVersion",
        "destroyBannerAd",
        "Lkotlin/Result;",
        "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
        "partnerAd",
        "destroyBannerAd-IoAF18A",
        "(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;",
        "destroyInterstitialAd",
        "destroyInterstitialAd-IoAF18A",
        "destroyRewardedAd",
        "destroyRewardedAd-IoAF18A",
        "fetchBidderInformation",
        "",
        "context",
        "Landroid/content/Context;",
        "request",
        "Lcom/chartboost/heliumsdk/domain/PreBidRequest;",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PreBidRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChartboostMediationError",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "error",
        "",
        "getInitResult",
        "result",
        "Lcom/facebook/ads/AudienceNetworkAds$InitResult;",
        "getInitResult-IoAF18A",
        "(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)Ljava/lang/Object;",
        "getMetaBannerAdSize",
        "Lcom/facebook/ads/AdSize;",
        "size",
        "Landroid/util/Size;",
        "invalidate",
        "invalidate-gIAlu-s",
        "(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "load",
        "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
        "partnerAdListener",
        "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
        "load-BWLJW6A",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadBannerAd",
        "loadBannerAd-BWLJW6A",
        "loadInterstitialAd",
        "loadInterstitialAd-BWLJW6A",
        "loadRewardedAd",
        "loadRewardedAd-BWLJW6A",
        "readyToShow",
        "",
        "ad",
        "",
        "setCcpaConsent",
        "hasGrantedCcpaConsent",
        "privacyString",
        "setGdpr",
        "applies",
        "gdprConsentStatus",
        "Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;",
        "(Landroid/content/Context;Ljava/lang/Boolean;Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;)V",
        "setUp",
        "partnerConfiguration",
        "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
        "setUp-0E7RQCE",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setUserSubjectToCoppa",
        "isSubjectToCoppa",
        "show",
        "show-0E7RQCE",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showInterstitialAd",
        "showInterstitialAd-IoAF18A",
        "showRewardedAd",
        "showRewardedAd-IoAF18A",
        "Companion",
        "MetaAudienceNetworkAdapter_remoteRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;

.field private static placementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static testMode:Z


# instance fields
.field private onInterstitialAdShowFailure:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onInterstitialAdShowSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->Companion:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$Companion;

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->placementIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$onInterstitialAdShowSuccess$1;->INSTANCE:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$onInterstitialAdShowSuccess$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowSuccess:Lkotlin/jvm/functions/Function0;

    .line 74
    sget-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$onInterstitialAdShowFailure$1;->INSTANCE:Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$onInterstitialAdShowFailure$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowFailure:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getChartboostMediationError(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;I)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->getChartboostMediationError(I)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInitResult-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/facebook/ads/AudienceNetworkAds$InitResult;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->getInitResult-IoAF18A(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnInterstitialAdShowFailure$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowFailure:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnInterstitialAdShowSuccess$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowSuccess:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPlacementIds$cp()Ljava/util/List;
    .locals 1

    .line 30
    sget-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->placementIds:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTestMode$cp()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->testMode:Z

    return v0
.end method

.method public static final synthetic access$loadBannerAd-BWLJW6A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadInterstitialAd-BWLJW6A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadInterstitialAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadRewardedAd-BWLJW6A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadRewardedAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setOnInterstitialAdShowFailure$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowFailure:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$setOnInterstitialAdShowSuccess$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->onInterstitialAdShowSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$setPlacementIds$cp(Ljava/util/List;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->placementIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setTestMode$cp(Z)V
    .locals 0

    .line 30
    sput-boolean p0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->testMode:Z

    return-void
.end method

.method public static final synthetic access$showInterstitialAd-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->showInterstitialAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showRewardedAd-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->showRewardedAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final destroyBannerAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 4

    .line 663
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 664
    instance-of v1, v0, Lcom/facebook/ads/AdView;

    if-eqz v1, :cond_0

    .line 665
    check-cast v0, Lcom/facebook/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->setVisibility(I)V

    .line 666
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 668
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 669
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 671
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not an AdView."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 672
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_WRONG_RESOURCE_TYPE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 674
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 675
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 676
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final destroyInterstitialAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 4

    .line 688
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 689
    instance-of v1, v0, Lcom/facebook/ads/InterstitialAd;

    if-eqz v1, :cond_0

    .line 690
    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 692
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 693
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 695
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not an InterstitialAd."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 696
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_WRONG_RESOURCE_TYPE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 698
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 699
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 700
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final destroyRewardedAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 4

    .line 712
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 713
    instance-of v1, v0, Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 714
    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    .line 716
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 717
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 719
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not a RewardedVideoAd."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 720
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_WRONG_RESOURCE_TYPE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 722
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 723
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 724
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INVALIDATE_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getChartboostMediationError(I)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;
    .locals 1

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d9

    if-eq p1, v0, :cond_2

    const/16 v0, 0x834

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b5a

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 762
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_PARTNER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 759
    :pswitch_0
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_RATE_LIMITED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 755
    :pswitch_1
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_NO_FILL:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 756
    :pswitch_2
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 761
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_SHOW_IN_PROGRESS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 760
    :cond_1
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_MEDIA_BROKEN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 758
    :cond_2
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_TIMEOUT:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 757
    :cond_3
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_AD_SERVER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getInitResult-IoAF18A(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)Ljava/lang/Object;
    .locals 3

    .line 324
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 327
    :cond_0
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 328
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_UNKNOWN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getMetaBannerAdSize(Landroid/util/Size;)Lcom/facebook/ads/AdSize;
    .locals 4

    if-eqz p1, :cond_5

    .line 737
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/16 v0, 0x32

    const/4 v1, 0x1

    const/16 v2, 0x5a

    const/4 v3, 0x0

    if-gt v0, p1, :cond_0

    if-ge p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 739
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_2

    :cond_1
    const/16 v0, 0xfa

    if-gt v2, p1, :cond_2

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 740
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_2

    :cond_3
    if-lt p1, v0, :cond_4

    .line 741
    sget-object p1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_2

    .line 742
    :cond_4
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    .line 744
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    const-string v0, "BANNER_HEIGHT_50"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-object p1
.end method

.method private final loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;

    iget v1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 341
    iget v2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    iput-object p0, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p4, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 347
    new-instance v3, Lcom/facebook/ads/AdView;

    .line 349
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->getMetaBannerAdSize(Landroid/util/Size;)Lcom/facebook/ads/AdSize;

    move-result-object v5

    .line 347
    invoke-direct {v3, p1, v4, v5}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 353
    new-instance p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;

    invoke-direct {p1, v2, p0, p2, p3}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadBannerAd$2$metaListener$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;)V

    check-cast p1, Lcom/facebook/ads/AdListener;

    .line 399
    invoke-virtual {v3}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p3

    .line 400
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p2

    .line 401
    invoke-interface {p2, p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    .line 398
    invoke-virtual {v3, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    .line 346
    invoke-virtual {p4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final loadInterstitialAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;

    iget v1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 415
    iget v2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 420
    iput-object p0, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p4, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 421
    new-instance v3, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    new-instance p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$2$metaListener$1;

    invoke-direct {p1, p3, p2, p0, v2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadInterstitialAd$2$metaListener$1;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lcom/facebook/ads/InterstitialAdListener;

    .line 495
    invoke-virtual {v3}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p3

    .line 496
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p2

    .line 497
    invoke-interface {p2, p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p1

    .line 494
    invoke-virtual {v3, p1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    .line 420
    invoke-virtual {p4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final loadRewardedAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;

    iget v1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 511
    iget v2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 516
    iput-object p0, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p4, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v7, p4

    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 517
    new-instance v2, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    new-instance p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;

    move-object v3, p1

    move-object v4, p3

    move-object v5, v2

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$loadRewardedAd$2$metaListener$1;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/facebook/ads/RewardedVideoAd;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)V

    check-cast p1, Lcom/facebook/ads/RewardedVideoAdListener;

    .line 586
    invoke-virtual {v2}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p3

    .line 587
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p2

    .line 588
    invoke-interface {p2, p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p1

    .line 585
    invoke-virtual {v2, p1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    .line 516
    invoke-virtual {p4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final readyToShow(Ljava/lang/Object;)Z
    .locals 3

    .line 648
    instance-of v0, p1, Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 649
    :cond_1
    instance-of v0, p1, Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/RewardedVideoAd;->isAdInvalidated()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 650
    :cond_2
    instance-of v0, p1, Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->isAdInvalidated()Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    return v1
.end method

.method private final showInterstitialAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 2

    .line 601
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    invoke-direct {p0, v0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->readyToShow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 604
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 606
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not ready."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 607
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_READY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 609
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 610
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 611
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final showRewardedAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 4

    .line 623
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 624
    invoke-direct {p0, v0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->readyToShow(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    check-cast v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    .line 627
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 628
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 630
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not ready."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 631
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_READY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 633
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    .line 634
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 635
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object v0, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, v0}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public fetchBidderInformation(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PreBidRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PreBidRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 218
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->BIDDER_INFO_FETCH_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 221
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$fetchBidderInformation$2;

    invoke-direct {v0, p1, v2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$fetchBidderInformation$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.12.0.0"

    return-object v0
.end method

.method public getPartnerDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "Meta Audience Network"

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook"

    return-object v0
.end method

.method public getPartnerSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.12.0"

    return-object v0
.end method

.method public invalidate-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 307
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p2

    sget-object v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 310
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->destroyBannerAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->destroyRewardedAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 311
    :cond_2
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->destroyInterstitialAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public load-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAdListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;

    iget v1, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 238
    iget v2, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 243
    sget-object p4, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v6, 0x0

    invoke-static {p4, v2, v6, v5, v6}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 245
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p4

    sget-object v2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result p4

    aget p4, v2, p4

    if-eq p4, v4, :cond_9

    if-eq p4, v5, :cond_7

    if-ne p4, v3, :cond_6

    .line 256
    iput v3, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object p1

    .line 262
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 251
    :cond_7
    iput v5, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadRewardedAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    return-object p1

    .line 246
    :cond_9
    iput v4, v0, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$load$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->loadInterstitialAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    return-object p1
.end method

.method public setCcpaConsent(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "privacyString"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    if-eqz p2, :cond_0

    .line 179
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CCPA_CONSENT_GRANTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    .line 180
    :cond_0
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CCPA_CONSENT_DENIED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 178
    invoke-static {p1, p3, v1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, "LDU"

    .line 187
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 p2, 0x1

    const/16 p3, 0x3e8

    .line 183
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/AdSettings;->setDataProcessingOptions([Ljava/lang/String;II)V

    return-void
.end method

.method public setGdpr(Landroid/content/Context;Ljava/lang/Boolean;Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "gdprConsentStatus"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    const/4 v0, 0x1

    .line 149
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_APPLICABLE:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_NOT_APPLICABLE:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    .line 151
    :cond_1
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_UNKNOWN:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 147
    invoke-static {p1, p2, v1, v2, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 155
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    .line 156
    sget-object p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v0, :cond_4

    if-eq p2, v2, :cond_3

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 159
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_DENIED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 158
    :cond_3
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_GRANTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_1

    .line 157
    :cond_4
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_UNKNOWN:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    .line 155
    :goto_1
    invoke-static {p1, p2, v1, v2, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public setUp-0E7RQCE(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;

    iget v0, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;

    invoke-direct {p2, p0, p3}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget v1, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p3, v1, v4, v3, v4}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 123
    iput-object p0, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->L$1:Ljava/lang/Object;

    iput v2, p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$1;->label:I

    check-cast p2, Lkotlin/coroutines/Continuation;

    new-instance p3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {p3, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, p3

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Chartboost "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withMediationService(Ljava/lang/String;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 127
    new-instance v2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;

    invoke-direct {v2, v1, p0}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$setUp$2$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;)V

    check-cast v2, Lcom/facebook/ads/AudienceNetworkAds$InitListener;

    invoke-interface {p1, v2}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 130
    sget-object v1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->placementIds:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withPlacementIds(Ljava/util/List;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    .line 123
    invoke-virtual {p3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setUserSubjectToCoppa(Landroid/content/Context;Z)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    if-eqz p2, :cond_0

    .line 199
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->COPPA_SUBJECT:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->COPPA_NOT_SUBJECT:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 198
    invoke-static {p1, v0, v2, v1, v2}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 203
    invoke-static {p2}, Lcom/facebook/ads/AdSettings;->setMixedAudience(Z)V

    return-void
.end method

.method public show-0E7RQCE(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/chartboost/heliumsdk/domain/PartnerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p1, p3, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;

    iget v0, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;

    invoke-direct {p1, p0, p3}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;-><init>(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 272
    iget v1, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p2, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    iget-object p1, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 273
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p3, v1, v3, v4, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 766
    iput-object p0, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->L$0:Ljava/lang/Object;

    iput-object p2, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$1;->label:I

    .line 767
    new-instance p3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {p3, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 773
    invoke-virtual {p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 774
    move-object v1, p3

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 276
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object v5

    sget-object v6, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v5}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v2, :cond_5

    if-eq v5, v4, :cond_4

    const/4 v2, 0x3

    if-eq v5, v2, :cond_3

    goto :goto_1

    .line 279
    :cond_3
    sget-object v2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v5, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-static {v2, v5, v3, v4, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 280
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    :cond_4
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0, p2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$showRewardedAd-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 282
    :cond_5
    invoke-static {p0, p2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$showInterstitialAd-IoAF18A(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    .line 287
    :goto_1
    new-instance v2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$2$1;

    invoke-direct {v2, v1, p2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$setOnInterstitialAdShowSuccess$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 292
    new-instance p2, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$2$2;

    invoke-direct {p2, v1}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter$show$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p2}, Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;->access$setOnInterstitialAdShowFailure$p(Lcom/chartboost/mediation/metaaudiencenetworkadapter/MetaAudienceNetworkAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 775
    invoke-virtual {p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p3

    .line 766
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p3, p2, :cond_6

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne p3, v0, :cond_7

    return-object v0

    .line 776
    :cond_7
    :goto_2
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
