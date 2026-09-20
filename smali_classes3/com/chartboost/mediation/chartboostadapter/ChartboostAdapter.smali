.class public final Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;
.super Ljava/lang/Object;
.source "ChartboostAdapter.kt"

# interfaces
.implements Lcom/chartboost/heliumsdk/domain/PartnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$Companion;,
        Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartboostAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartboostAdapter.kt\ncom/chartboost/mediation/chartboostadapter/ChartboostAdapter\n+ 2 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,783:1\n210#2:784\n32#3:785\n80#4:786\n1#5:787\n314#6,11:788\n314#6,11:799\n*S KotlinDebug\n*F\n+ 1 ChartboostAdapter.kt\ncom/chartboost/mediation/chartboostadapter/ChartboostAdapter\n*L\n112#1:784\n112#1:785\n112#1:786\n647#1:788,11\n688#1:799,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 U2\u00020\u0001:\u0001UB\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ-\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0096@\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010$J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u000e\u001a\u00020+H\u0002J*\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001aH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008-\u0010.J:\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u0002002\u0006\u00101\u001a\u000202H\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00083\u00104J:\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u0002002\u0006\u00101\u001a\u000202H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00086\u00104J2\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\"\u001a\u0002002\u0006\u00101\u001a\u000202H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u00088\u00109J2\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\"\u001a\u0002002\u0006\u00101\u001a\u000202H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008;\u00109J \u0010<\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0004H\u0016J\'\u0010@\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u0008\u0010A\u001a\u0004\u0018\u00010>2\u0006\u0010B\u001a\u00020CH\u0016\u00a2\u0006\u0002\u0010DJ\u0008\u0010E\u001a\u00020FH\u0002J2\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010H\u001a\u00020IH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008J\u0010KJ\u0018\u0010L\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!2\u0006\u0010M\u001a\u00020>H\u0016J2\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001b\u001a\u00020\u001aH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008O\u0010PJ*\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001aH\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008R\u0010.J*\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u001aH\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008T\u0010.R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R>\u0010\u0007\u001a2\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0006R\u0014\u0010\u0014\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0006R\u0014\u0010\u0016\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006V"
    }
    d2 = {
        "Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;",
        "Lcom/chartboost/heliumsdk/domain/PartnerAdapter;",
        "()V",
        "adapterVersion",
        "",
        "getAdapterVersion",
        "()Ljava/lang/String;",
        "onShowError",
        "Lkotlin/Function2;",
        "Lcom/chartboost/sdk/events/ShowEvent;",
        "Lkotlin/ParameterName;",
        "name",
        "event",
        "Lcom/chartboost/sdk/events/ShowError;",
        "error",
        "",
        "onShowSuccess",
        "Lkotlin/Function0;",
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
        "fetchBidderInformation",
        "",
        "context",
        "Landroid/content/Context;",
        "request",
        "Lcom/chartboost/heliumsdk/domain/PreBidRequest;",
        "(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PreBidRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getChartboostAdSize",
        "Lcom/chartboost/sdk/ads/Banner$BannerSize;",
        "size",
        "Landroid/util/Size;",
        "getChartboostMediationError",
        "Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;",
        "Lcom/chartboost/sdk/events/CBError;",
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
        "loadInterstitialAd-0E7RQCE",
        "(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "loadRewardedAd",
        "loadRewardedAd-0E7RQCE",
        "setCcpaConsent",
        "hasGrantedCcpaConsent",
        "",
        "privacyString",
        "setGdpr",
        "applies",
        "gdprConsentStatus",
        "Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;",
        "(Landroid/content/Context;Ljava/lang/Boolean;Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;)V",
        "setMediation",
        "Lcom/chartboost/sdk/Mediation;",
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
        "showInterstitialAd-gIAlu-s",
        "showRewardedAd",
        "showRewardedAd-gIAlu-s",
        "Companion",
        "ChartboostAdapter_remoteRelease"
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
.field private static final APPLICATION_ID_KEY:Ljava/lang/String; = "app_id"

.field public static final Companion:Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$Companion;


# instance fields
.field private onShowError:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/chartboost/sdk/events/ShowEvent;",
            "-",
            "Lcom/chartboost/sdk/events/ShowError;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onShowSuccess:Lkotlin/jvm/functions/Function0;
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

    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->Companion:Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$onShowSuccess$1;->INSTANCE:Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$onShowSuccess$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowSuccess:Lkotlin/jvm/functions/Function0;

    .line 62
    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$onShowError$1;->INSTANCE:Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$onShowError$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowError:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getChartboostMediationError(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lcom/chartboost/sdk/events/CBError;)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->getChartboostMediationError(Lcom/chartboost/sdk/events/CBError;)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnShowError$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowError:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getOnShowSuccess$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowSuccess:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$loadBannerAd-BWLJW6A(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadInterstitialAd-0E7RQCE(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadInterstitialAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadRewardedAd-0E7RQCE(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadRewardedAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setOnShowError$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowError:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$setOnShowSuccess$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->onShowSuccess:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$showInterstitialAd-gIAlu-s(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->showInterstitialAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showRewardedAd-gIAlu-s(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->showRewardedAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final destroyBannerAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;
    .locals 4

    .line 724
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 725
    instance-of v1, v0, Lcom/chartboost/sdk/ads/Banner;

    if-eqz v1, :cond_0

    .line 726
    check-cast v0, Lcom/chartboost/sdk/ads/Banner;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ads/Banner;->detach()V

    .line 728
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 729
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 731
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is not a Chartboost Banner."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 732
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

    .line 734
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 735
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v1, "Ad is null."

    invoke-virtual {p1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 736
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

.method private final getChartboostAdSize(Landroid/util/Size;)Lcom/chartboost/sdk/ads/Banner$BannerSize;
    .locals 5

    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x32

    const/16 v1, 0x5a

    .line 429
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/chartboost/sdk/ads/Banner$BannerSize;->STANDARD:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    goto :goto_4

    :cond_2
    const/16 v0, 0xfa

    .line 430
    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    sget-object p1, Lcom/chartboost/sdk/ads/Banner$BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    goto :goto_4

    .line 431
    :cond_4
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-eqz v2, :cond_6

    sget-object p1, Lcom/chartboost/sdk/ads/Banner$BannerSize;->MEDIUM:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    goto :goto_4

    .line 432
    :cond_6
    sget-object p1, Lcom/chartboost/sdk/ads/Banner$BannerSize;->STANDARD:Lcom/chartboost/sdk/ads/Banner$BannerSize;

    :goto_4
    return-object p1
.end method

.method private final getChartboostMediationError(Lcom/chartboost/sdk/events/CBError;)Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;
    .locals 4

    .line 756
    instance-of v0, p1, Lcom/chartboost/sdk/events/StartError;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 757
    check-cast p1, Lcom/chartboost/sdk/events/StartError;

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/StartError;->getCode()Lcom/chartboost/sdk/events/StartError$Code;

    move-result-object p1

    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/StartError$Code;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 760
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_UNKNOWN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 759
    :cond_0
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_AD_SERVER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 758
    :cond_1
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_INVALID_CREDENTIALS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 763
    :cond_2
    instance-of v0, p1, Lcom/chartboost/sdk/events/CacheError;

    const/4 v3, 0x3

    if-eqz v0, :cond_7

    .line 764
    check-cast p1, Lcom/chartboost/sdk/events/CacheError;

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/CacheError;->getCode()Lcom/chartboost/sdk/events/CacheError$Code;

    move-result-object p1

    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/CacheError$Code;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v3, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 769
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_PARTNER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 768
    :cond_3
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_AD_SERVER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 767
    :cond_4
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_UNKNOWN:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 766
    :cond_5
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_LOAD_FAILURE_NO_FILL:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 765
    :cond_6
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 772
    :cond_7
    instance-of v0, p1, Lcom/chartboost/sdk/events/ShowError;

    if-eqz v0, :cond_b

    .line 773
    check-cast p1, Lcom/chartboost/sdk/events/ShowError;

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/ShowError;->getCode()Lcom/chartboost/sdk/events/ShowError$Code;

    move-result-object p1

    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/events/ShowError$Code;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v3, :cond_8

    .line 777
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_PARTNER_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 776
    :cond_8
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_NOT_INITIALIZED:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 775
    :cond_9
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_READY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 774
    :cond_a
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_NO_CONNECTIVITY:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    goto :goto_0

    .line 780
    :cond_b
    sget-object p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_UNKNOWN_ERROR:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    :goto_0
    return-object p1
.end method

.method private final loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    instance-of v0, p4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 342
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 347
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p4, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p4

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 348
    new-instance v10, Lcom/chartboost/sdk/ads/Banner;

    .line 350
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->getChartboostAdSize(Landroid/util/Size;)Lcom/chartboost/sdk/ads/Banner$BannerSize;

    move-result-object v7

    .line 352
    new-instance v4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$2$chartboostBanner$1;

    invoke-direct {v4, p3, p2, v2, p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadBannerAd$2$chartboostBanner$1;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)V

    move-object v8, v4

    check-cast v8, Lcom/chartboost/sdk/callbacks/BannerCallback;

    .line 410
    invoke-direct {p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->setMediation()Lcom/chartboost/sdk/Mediation;

    move-result-object v9

    move-object v4, v10

    move-object v5, p1

    .line 348
    invoke-direct/range {v4 .. v9}, Lcom/chartboost/sdk/ads/Banner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/ads/Banner$BannerSize;Lcom/chartboost/sdk/callbacks/BannerCallback;Lcom/chartboost/sdk/Mediation;)V

    .line 413
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 414
    invoke-virtual {v10}, Lcom/chartboost/sdk/ads/Banner;->cache()V

    goto :goto_2

    .line 416
    :cond_5
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/chartboost/sdk/ads/Banner;->cache(Ljava/lang/String;)V

    .line 347
    :goto_2
    invoke-virtual {p4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_6

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne p4, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p4, Lkotlin/Result;

    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final loadInterstitialAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of v0, p3, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 443
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 448
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p3, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p3

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 449
    new-instance v4, Lcom/chartboost/sdk/ads/Interstitial;

    .line 450
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v5

    .line 451
    new-instance v6, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$2$chartboostInterstitial$1;

    invoke-direct {v6, p2, p1, v2, p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadInterstitialAd$2$chartboostInterstitial$1;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)V

    check-cast v6, Lcom/chartboost/sdk/callbacks/InterstitialCallback;

    .line 519
    invoke-direct {p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->setMediation()Lcom/chartboost/sdk/Mediation;

    move-result-object p2

    .line 449
    invoke-direct {v4, v5, v6, p2}, Lcom/chartboost/sdk/ads/Interstitial;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/InterstitialCallback;Lcom/chartboost/sdk/Mediation;)V

    .line 522
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 523
    invoke-virtual {v4}, Lcom/chartboost/sdk/ads/Interstitial;->cache()V

    goto :goto_2

    .line 525
    :cond_5
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/ads/Interstitial;->cache(Ljava/lang/String;)V

    .line 448
    :goto_2
    invoke-virtual {p3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_6

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final loadRewardedAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of v0, p3, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 538
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdListener;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 542
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p3, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p3

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 543
    new-instance v4, Lcom/chartboost/sdk/ads/Rewarded;

    .line 544
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getPartnerPlacement()Ljava/lang/String;

    move-result-object v5

    .line 545
    new-instance v6, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$2$chartboostRewarded$1;

    invoke-direct {v6, p2, p1, v2, p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$loadRewardedAd$2$chartboostRewarded$1;-><init>(Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lkotlin/coroutines/Continuation;Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)V

    check-cast v6, Lcom/chartboost/sdk/callbacks/RewardedCallback;

    .line 624
    invoke-direct {p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->setMediation()Lcom/chartboost/sdk/Mediation;

    move-result-object p2

    .line 543
    invoke-direct {v4, v5, v6, p2}, Lcom/chartboost/sdk/ads/Rewarded;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/callbacks/RewardedCallback;Lcom/chartboost/sdk/Mediation;)V

    .line 627
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 628
    invoke-virtual {v4}, Lcom/chartboost/sdk/ads/Rewarded;->cache()V

    goto :goto_2

    .line 630
    :cond_5
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/chartboost/sdk/ads/Rewarded;->cache(Ljava/lang/String;)V

    .line 542
    :goto_2
    invoke-virtual {p3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_6

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final setMediation()Lcom/chartboost/sdk/Mediation;
    .locals 4

    .line 745
    new-instance v0, Lcom/chartboost/sdk/Mediation;

    invoke-static {}, Lcom/chartboost/heliumsdk/HeliumSdk;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chartboost"

    invoke-direct {v0, v3, v1, v2}, Lcom/chartboost/sdk/Mediation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final showInterstitialAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 642
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/sdk/ads/Interstitial;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 645
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 646
    instance-of v2, p2, Lcom/chartboost/sdk/ads/Interstitial;

    if-eqz v2, :cond_3

    check-cast p2, Lcom/chartboost/sdk/ads/Interstitial;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 788
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$2:Ljava/lang/Object;

    iput-object v0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$1;->label:I

    .line 789
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 795
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 796
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 648
    new-instance v4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$2$1$1$1;

    invoke-direct {v4, v3, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$2$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->access$setOnShowSuccess$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 653
    new-instance p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$2$1$1$2;

    invoke-direct {p1, v3, p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showInterstitialAd$2$1$1$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->access$setOnShowError$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function2;)V

    .line 664
    invoke-virtual {p2}, Lcom/chartboost/sdk/ads/Interstitial;->show()V

    .line 797
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 788
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p0

    .line 798
    :goto_2
    check-cast p2, Lkotlin/Result;

    if-eqz p2, :cond_7

    .line 646
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, p0

    .line 666
    :cond_7
    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 667
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v0, "Ad is not Interstitial."

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 668
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_WRONG_RESOURCE_TYPE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 670
    :cond_8
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 671
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v0, "Ad is null."

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 672
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final showRewardedAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 683
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/sdk/ads/Rewarded;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerAd;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 686
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getAd()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 687
    instance-of v2, p2, Lcom/chartboost/sdk/ads/Rewarded;

    if-eqz v2, :cond_3

    check-cast p2, Lcom/chartboost/sdk/ads/Rewarded;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_6

    .line 799
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$2:Ljava/lang/Object;

    iput-object v0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$1;->label:I

    .line 800
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 806
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 807
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 689
    new-instance v4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$2$1$1$1;

    invoke-direct {v4, v3, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$2$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/chartboost/heliumsdk/domain/PartnerAd;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->access$setOnShowSuccess$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 694
    new-instance p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$2$1$1$2;

    invoke-direct {p1, v3, p0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$showRewardedAd$2$1$1$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->access$setOnShowError$p(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/jvm/functions/Function2;)V

    .line 704
    invoke-virtual {p2}, Lcom/chartboost/sdk/ads/Rewarded;->show()V

    .line 808
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 799
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p0

    .line 809
    :goto_2
    check-cast p2, Lkotlin/Result;

    if-eqz p2, :cond_7

    .line 687
    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, p0

    .line 706
    :cond_7
    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 707
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v0, "Ad is not Rewarded."

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 708
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_WRONG_RESOURCE_TYPE:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 710
    :cond_8
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 711
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v0, "Ad is null."

    invoke-virtual {p1, p2, v0}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 712
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_SHOW_FAILURE_AD_NOT_FOUND:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method


# virtual methods
.method public fetchBidderInformation(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PreBidRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 258
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->BIDDER_INFO_FETCH_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 260
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$fetchBidderInformation$2;

    invoke-direct {p2, v1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$fetchBidderInformation$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.9.2.0.0"

    return-object v0
.end method

.method public getPartnerDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "Chartboost"

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    const-string v0, "chartboost"

    return-object v0
.end method

.method public getPartnerSdkVersion()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

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

    .line 321
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 323
    invoke-virtual {p1}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p2

    sget-object v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 327
    :cond_1
    :goto_0
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->INVALIDATE_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-static {p2, v0, v1, v2, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 328
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 324
    :cond_2
    invoke-direct {p0, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->destroyBannerAd-IoAF18A(Lcom/chartboost/heliumsdk/domain/PartnerAd;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
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

    instance-of v0, p4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;

    invoke-direct {v0, p0, p4}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 277
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

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

    .line 282
    sget-object p4, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->LOAD_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v6, 0x0

    invoke-static {p4, v2, v6, v5, v6}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 284
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p4

    sget-object v2, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p4}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result p4

    aget p4, v2, p4

    if-eq p4, v4, :cond_9

    if-eq p4, v5, :cond_7

    if-ne p4, v3, :cond_6

    .line 287
    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    invoke-direct {p0, p2, p3, v0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadRewardedAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object p1

    .line 289
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 286
    :cond_7
    iput v5, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    invoke-direct {p0, p2, p3, v0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadInterstitialAd-0E7RQCE(Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    return-object p1

    .line 285
    :cond_9
    iput v4, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$load$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->loadBannerAd-BWLJW6A(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;Lcom/chartboost/heliumsdk/domain/PartnerAdListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    const-string v0, "privacyString"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    .line 221
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CCPA_CONSENT_GRANTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-static {p2, p3, v1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 222
    new-instance p2, Lcom/chartboost/sdk/privacy/model/CCPA;

    sget-object p3, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_IN_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {p2, p3}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    check-cast p2, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 225
    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->CCPA_CONSENT_DENIED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-static {p2, p3, v1, v0, v1}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 226
    new-instance p2, Lcom/chartboost/sdk/privacy/model/CCPA;

    sget-object p3, Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;->OPT_OUT_SALE:Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;

    invoke-direct {p2, p3}, Lcom/chartboost/sdk/privacy/model/CCPA;-><init>(Lcom/chartboost/sdk/privacy/model/CCPA$CCPA_CONSENT;)V

    check-cast p2, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGdpr(Landroid/content/Context;Ljava/lang/Boolean;Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gdprConsentStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    const/4 v1, 0x1

    .line 169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_APPLICABLE:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 170
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_NOT_APPLICABLE:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    .line 171
    :cond_1
    sget-object v3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_UNKNOWN:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 167
    invoke-static {v0, v3, v4, v5, v4}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    .line 176
    sget-object v3, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x3

    if-eq v3, v1, :cond_4

    if-eq v3, v5, :cond_3

    if-ne v3, v6, :cond_2

    .line 179
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_DENIED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 178
    :cond_3
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_GRANTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_1

    .line 177
    :cond_4
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->GDPR_CONSENT_UNKNOWN:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    .line 175
    :goto_1
    invoke-static {v0, v1, v4, v5, v4}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 185
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "gdpr"

    if-nez p2, :cond_5

    .line 186
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->clearDataUseConsent(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    :cond_5
    sget-object p2, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/domain/GdprConsentStatus;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v5, :cond_7

    if-eq p2, v6, :cond_6

    .line 203
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->clearDataUseConsent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :cond_6
    new-instance p2, Lcom/chartboost/sdk/privacy/model/GDPR;

    sget-object p3, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->NON_BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {p2, p3}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    check-cast p2, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    .line 197
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    goto :goto_2

    .line 193
    :cond_7
    new-instance p2, Lcom/chartboost/sdk/privacy/model/GDPR;

    sget-object p3, Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;->BEHAVIORAL:Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;

    invoke-direct {p2, p3}, Lcom/chartboost/sdk/privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/privacy/model/GDPR$GDPR_CONSENT;)V

    check-cast p2, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    .line 191
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    :goto_2
    return-void
.end method

.method public setUp-0E7RQCE(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p3, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;

    iget v1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;

    invoke-direct {v0, p0, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p3, v2, v5, v4, v5}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 111
    iput-object p0, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p3, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p3, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, p3

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 112
    sget-object v4, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast v4, Lkotlinx/serialization/json/Json;

    .line 113
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerConfiguration;->getCredentials()Lkotlinx/serialization/json/JsonObject;

    move-result-object p2

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.json.JsonObject"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Map;

    const-string v6, "app_id"

    invoke-static {p2, v6}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 784
    invoke-virtual {v4}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v6

    .line 785
    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 786
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    .line 784
    invoke-virtual {v4, v6, p2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p2

    .line 112
    check-cast p2, Ljava/lang/String;

    .line 114
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v5

    :goto_2
    if-eqz p2, :cond_7

    .line 119
    invoke-static {}, Lcom/chartboost/heliumsdk/HeliumSdk;->getAppSignature()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 120
    sget-object v4, Lcom/chartboost/sdk/LoggingLevel;->ALL:Lcom/chartboost/sdk/LoggingLevel;

    invoke-static {v4}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/LoggingLevel;)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v4, "context.applicationContext"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "app_signature"

    .line 125
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v4, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$2$2$1$1;

    invoke-direct {v4, p0, v2}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$setUp$2$2$1$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lcom/chartboost/sdk/callbacks/StartCallback;

    invoke-static {p1, p2, v3, v4}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/callbacks/StartCallback;)V

    .line 119
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    if-nez v5, :cond_6

    .line 144
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 145
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v3, "Missing application signature."

    invoke-virtual {p1, p2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 146
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_INVALID_CREDENTIALS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 115
    :cond_6
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    if-nez v5, :cond_8

    .line 148
    move-object p1, p0

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;

    .line 149
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p2, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SETUP_FAILED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const-string v3, "Missing application ID."

    invoke-virtual {p1, p2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log(Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;)V

    .line 150
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;

    sget-object p2, Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;->CM_INITIALIZATION_FAILURE_INVALID_CREDENTIALS:Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;

    invoke-direct {p1, p2}, Lcom/chartboost/heliumsdk/domain/ChartboostMediationAdException;-><init>(Lcom/chartboost/heliumsdk/domain/ChartboostMediationError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 111
    :cond_8
    invoke-virtual {p3}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_9

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_9
    if-ne p3, v1, :cond_a

    return-object v1

    :cond_a
    :goto_3
    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setUserSubjectToCoppa(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    if-eqz p2, :cond_0

    .line 239
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->COPPA_SUBJECT:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    goto :goto_0

    .line 240
    :cond_0
    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->COPPA_NOT_SUBJECT:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 238
    invoke-static {v0, v1, v3, v2, v3}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 243
    new-instance v0, Lcom/chartboost/sdk/privacy/model/COPPA;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/privacy/model/COPPA;-><init>(Z)V

    check-cast v0, Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    invoke-static {p1, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    return-void
.end method

.method public show-0E7RQCE(Landroid/content/Context;Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of p1, p3, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;

    iget v0, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;

    invoke-direct {p1, p0, p3}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;-><init>(Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 299
    iget v1, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    invoke-virtual {p3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object v1, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_STARTED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    const/4 v4, 0x0

    invoke-static {p3, v1, v4, v3, v4}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 302
    invoke-virtual {p2}, Lcom/chartboost/heliumsdk/domain/PartnerAd;->getRequest()Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;

    move-result-object p3

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/domain/PartnerAdLoadRequest;->getFormat()Lcom/chartboost/heliumsdk/domain/AdFormat;

    move-result-object p3

    sget-object v1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p3}, Lcom/chartboost/heliumsdk/domain/AdFormat;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, v2, :cond_8

    if-eq p3, v3, :cond_6

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    .line 309
    iput v3, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    invoke-direct {p0, p2, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->showRewardedAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    return-object p1

    .line 311
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 308
    :cond_6
    iput v2, p1, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter$show$1;->label:I

    invoke-direct {p0, p2, p1}, Lcom/chartboost/mediation/chartboostadapter/ChartboostAdapter;->showInterstitialAd-gIAlu-s(Lcom/chartboost/heliumsdk/domain/PartnerAd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p1

    .line 305
    :cond_8
    sget-object p1, Lcom/chartboost/heliumsdk/utils/PartnerLogController;->Companion:Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;

    sget-object p3, Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;->SHOW_SUCCEEDED:Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;

    invoke-static {p1, p3, v4, v3, v4}, Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;->log$default(Lcom/chartboost/heliumsdk/utils/PartnerLogController$Companion;Lcom/chartboost/heliumsdk/utils/PartnerLogController$PartnerAdapterEvents;Ljava/lang/String;ILjava/lang/Object;)V

    .line 306
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
