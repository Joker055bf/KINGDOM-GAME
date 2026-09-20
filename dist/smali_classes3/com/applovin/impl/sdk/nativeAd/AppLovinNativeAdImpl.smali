.class public Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;
.super Lcom/applovin/impl/sdk/AppLovinAdBase;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;,
        Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;
    }
.end annotation


# static fields
.field private static final AD_RESPONSE_TYPE_APPLOVIN:Ljava/lang/String; = "applovin"

.field private static final AD_RESPONSE_TYPE_ORTB:Ljava/lang/String; = "ortb"

.field private static final AD_RESPONSE_TYPE_UNDEFINED:Ljava/lang/String; = "undefined"

.field private static final DEFAULT_APPLOVIN_PRIVACY_URL:Ljava/lang/String; = "https://www.applovin.com/privacy/"

.field private static final MINIMUM_STARS_TO_RENDER:F = 3.0f

.field private static final VIEWABLE_MRC100_PERCENTAGE:I = 0x64

.field private static final VIEWABLE_MRC50_PERCENTAGE:I = 0x32

.field private static final VIEWABLE_MRC_REQUIRED_SECONDS:I = 0x1

.field private static final VIEWABLE_VIDEO_MRC_REQUIRED_SECONDS:I = 0x2


# instance fields
.field private final adEventTracker:Lcom/applovin/impl/sdk/a/e;

.field private final advertiser:Ljava/lang/String;

.field private final body:Ljava/lang/String;

.field private final callToAction:Ljava/lang/String;

.field private final clickDestinationBackupUri:Landroid/net/Uri;

.field private final clickDestinationUri:Landroid/net/Uri;

.field private final clickHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

.field private final clickTrackingUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

.field private iconUri:Landroid/net/Uri;

.field private final impressionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final jsTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainImageUri:Landroid/net/Uri;

.field private mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

.field private nativeAdView:Landroid/view/ViewGroup;

.field private final onAttachStateChangeHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;

.field private optionsView:Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;

.field private privacyDestinationUri:Landroid/net/Uri;

.field private privacyIconUri:Landroid/net/Uri;

.field private final registeredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final starRating:Ljava/lang/Double;

.field private final tag:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final vastAd:Lcom/applovin/impl/c/a;

.field private videoView:Landroid/view/View;

.field private final viewableMRC100Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

.field private viewableMRC100Tracker:Lcom/applovin/impl/sdk/ad;

.field private final viewableMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

.field private viewableMRC50Tracker:Lcom/applovin/impl/sdk/ad;

.field private viewableVideoMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

.field private viewableVideoMRC50Tracker:Lcom/applovin/impl/sdk/ad;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)V
    .locals 6

    .line 116
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$000(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$100(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$200(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    .line 118
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    .line 119
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->onAttachStateChangeHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;

    .line 120
    new-instance v0, Lcom/applovin/impl/sdk/a/e;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/a/e;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adEventTracker:Lcom/applovin/impl/sdk/a/e;

    .line 121
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$300(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->title:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$400(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->advertiser:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$500(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->body:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$600(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->callToAction:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$700(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->iconUri:Landroid/net/Uri;

    .line 126
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$800(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mainImageUri:Landroid/net/Uri;

    .line 127
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$900(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyIconUri:Landroid/net/Uri;

    .line 128
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1000(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Lcom/applovin/impl/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->vastAd:Lcom/applovin/impl/c/a;

    .line 129
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1100(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationUri:Landroid/net/Uri;

    .line 130
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1200(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationBackupUri:Landroid/net/Uri;

    .line 131
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1300(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickTrackingUrls:Ljava/util/List;

    .line 132
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1400(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->jsTrackers:Ljava/util/List;

    .line 133
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1500(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->impressionRequests:Ljava/util/List;

    .line 135
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1600(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->starRating:Ljava/lang/Double;

    .line 138
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1700(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1700(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyDestinationUri:Landroid/net/Uri;

    goto :goto_1

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->isDspAd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getSdk()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "https://www.applovin.com/privacy/"

    .line 145
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyDestinationUri:Landroid/net/Uri;

    .line 148
    :cond_3
    :goto_1
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1800(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Ljava/util/List;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    .line 149
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$1900(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Ljava/util/List;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC100Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-static {p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->access$2000(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Ljava/util/List;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableVideoMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    .line 156
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppLovinNativeAd:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdIdNumber()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->maybeHandleOnAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getDirectClickTrackingPostbacks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickTrackingUrls:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->eventListener:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Landroid/net/Uri;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Landroid/net/Uri;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationBackupUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private getDirectClickTrackingPostbacks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/d/a;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "click_tracking_url"

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_tracking_urls"

    .line 378
    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getClCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {v2, v3, v4, v1, v5}, Lcom/applovin/impl/sdk/utils/Utils;->getPostbacks(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 379
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isDspAd()Z
    .locals 2

    const-string v0, "ortb"

    .line 389
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeHandleOnAttachedToWindow(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p0

    .line 307
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->impressionTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    new-instance v4, Lcom/applovin/impl/sdk/ad;

    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v5, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-direct {v4, v1, v2, v5}, Lcom/applovin/impl/sdk/ad;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/ad$a;)V

    iput-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC50Tracker:Lcom/applovin/impl/sdk/ad;

    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    .line 310
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1

    .line 313
    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    .line 310
    invoke-virtual/range {v4 .. v10}, Lcom/applovin/impl/sdk/ad;->a(IFFJLandroid/view/View;)V

    .line 316
    new-instance v13, Lcom/applovin/impl/sdk/ad;

    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC100Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-direct {v13, v1, v2, v4}, Lcom/applovin/impl/sdk/ad;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/ad$a;)V

    iput-object v13, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC100Tracker:Lcom/applovin/impl/sdk/ad;

    const/4 v14, 0x0

    const/high16 v15, 0x42c80000    # 100.0f

    const/high16 v16, 0x42c80000    # 100.0f

    .line 317
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 320
    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v17

    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    move-object/from16 v19, v1

    .line 317
    invoke-virtual/range {v13 .. v19}, Lcom/applovin/impl/sdk/ad;->a(IFFJLandroid/view/View;)V

    .line 323
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->vastAd:Lcom/applovin/impl/c/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->hasVideoUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v4, Lcom/applovin/impl/sdk/ad;

    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v5, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableVideoMRC50Callback:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$c;

    invoke-direct {v4, v1, v2, v5}, Lcom/applovin/impl/sdk/ad;-><init>(Landroid/view/View;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/ad$a;)V

    iput-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableVideoMRC50Tracker:Lcom/applovin/impl/sdk/ad;

    const/4 v5, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v7, 0x42480000    # 50.0f

    .line 326
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    .line 329
    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    iget-object v10, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->videoView:Landroid/view/View;

    .line 326
    invoke-virtual/range {v4 .. v10}, Lcom/applovin/impl/sdk/ad;->a(IFFJLandroid/view/View;)V

    .line 333
    :cond_0
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->jsTrackers:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 335
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->fQ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->jsTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->aa()Lcom/applovin/impl/sdk/ae;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/applovin/impl/sdk/ae;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->jsTrackers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    new-instance v3, Lcom/applovin/impl/adview/d;

    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/e;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    const-string/jumbo v4, "text/html"

    const-string v5, "UTF-8"

    .line 348
    invoke-virtual {v3, v1, v4, v5}, Lcom/applovin/impl/adview/d;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$1;

    invoke-direct {v1, v0, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$1;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/adview/d;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    .line 358
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 351
    invoke-static {v1, v3, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 363
    :cond_2
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->impressionRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/network/l;

    .line 365
    iget-object v4, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/p;->ak()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_1

    .line 368
    :cond_3
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adEventTracker:Lcom/applovin/impl/sdk/a/e;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/a/e;->a(Landroid/view/View;)V

    .line 369
    iget-object v1, v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adEventTracker:Lcom/applovin/impl/sdk/a/e;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/e;->d()V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->unregisterViewsForInteraction()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->eventListener:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

    .line 263
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adEventTracker:Lcom/applovin/impl/sdk/a/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/e;->e()V

    return-void
.end method

.method public bridge synthetic getAdEventTracker()Lcom/applovin/impl/sdk/a/b;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getAdEventTracker()Lcom/applovin/impl/sdk/a/e;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adEventTracker:Lcom/applovin/impl/sdk/a/e;

    return-object v0
.end method

.method public getAdIdNumber()J
    .locals 3

    const-string v0, "ad_id"

    const-wide/16 v1, -0x1

    .line 409
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->advertiser:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePrefix()Ljava/lang/String;
    .locals 2

    const-string v0, "cache_prefix"

    const/4 v1, 0x0

    .line 468
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickHandler()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    return-object v0
.end method

.method public getDirectDownloadParameters()Landroid/os/Bundle;
    .locals 2

    const-string v0, "ah_parameters"

    const/4 v1, 0x0

    .line 598
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDirectDownloadToken()Ljava/lang/String;
    .locals 2

    const-string v0, "ah_dd_token"

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->iconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMainImageUri()Landroid/net/Uri;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mainImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMediaView()Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    return-object v0
.end method

.method public getOpenMeasurementContentUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "omid_content_url"

    const/4 v1, 0x0

    .line 496
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenMeasurementCustomReferenceData()Ljava/lang/String;
    .locals 2

    const-string v0, "omid_custom_ref_data"

    const-string v1, ""

    .line 505
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenMeasurementVerificationScriptResources()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->adObject:Lorg/json/JSONObject;

    const-string v3, "omid_verification_script_resources"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 533
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 535
    invoke-static {v2, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v6, "url"

    .line 539
    invoke-static {v5, v6, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 540
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "vendor_key"

    .line 542
    invoke-static {v5, v6, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "parameters"

    .line 543
    invoke-static {v5, v8, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 547
    invoke-static {v6, v7, v5}, Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 551
    :cond_0
    invoke-static {v7}, Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/applovin/adsession/VerificationScriptResource;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 556
    :try_start_2
    iget-object v6, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v6

    iget-object v7, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    const-string v8, "Failed to parse OMID verification script resource"

    invoke-virtual {v6, v7, v8, v5}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getOptionsView()Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->optionsView:Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;

    return-object v0
.end method

.method public getPrivacyDestinationUri()Landroid/net/Uri;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyDestinationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPrivacyIconUri()Landroid/net/Uri;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->starRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "undefined"

    .line 403
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVastAd()Lcom/applovin/impl/c/a;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->vastAd:Lcom/applovin/impl/c/a;

    return-object v0
.end method

.method public isDirectDownloadEnabled()Z
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getDirectDownloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOpenMeasurementEnabled()Z
    .locals 2

    const/4 v0, 0x0

    .line 486
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "omsdk_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public registerViewsForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 162
    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    .line 165
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->maybeHandleOnAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->c()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 171
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->maybeHandleOnAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->onAttachStateChangeHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registered ad view for impressions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_2
    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationUri:Landroid/net/Uri;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickDestinationBackupUri:Landroid/net/Uri;

    if-nez p2, :cond_4

    .line 184
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    const-string v0, "Skipping click registration - no click URLs provided"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 188
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View has an onClickListener already - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View is not clickable - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 202
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View is not enabled - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_7
    instance-of v0, p2, Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 207
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering click for button: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering click for view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->clickHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$a;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 218
    :cond_a
    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registered views: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public setEventListener(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->eventListener:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

    return-void
.end method

.method public setIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->iconUri:Landroid/net/Uri;

    return-void
.end method

.method public setMainImageUri(Landroid/net/Uri;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mainImageUri:Landroid/net/Uri;

    return-void
.end method

.method public setPrivacyIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyIconUri:Landroid/net/Uri;

    return-void
.end method

.method public setUpNativeAdViewComponents()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->vastAd:Lcom/applovin/impl/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 283
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    const-string v3, "Failed to create ExoPlayer VAST media view. Falling back to static image for media view."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->privacyDestinationUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 295
    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->optionsView:Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;

    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    const-string v2, "Privacy icon will not render because no native ad privacy URL is provided."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setVideoView(Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->videoView:Landroid/view/View;

    return-void
.end method

.method public shouldInjectOpenMeasurementScriptDuringCaching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppLovinNativeAd{adIdNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterViewsForInteraction()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->sdk:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unregistered views: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->registeredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC50Tracker:Lcom/applovin/impl/sdk/ad;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad;->a()V

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableMRC100Tracker:Lcom/applovin/impl/sdk/ad;

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad;->a()V

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->viewableVideoMRC50Tracker:Lcom/applovin/impl/sdk/ad;

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad;->a()V

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 250
    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->onAttachStateChangeHandler:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 251
    iput-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->nativeAdView:Landroid/view/ViewGroup;

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->mediaView:Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinMediaView;->destroy()V

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->optionsView:Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinOptionsView;->destroy()V

    :cond_7
    return-void
.end method
