.class public final Lcom/facebook/appevents/AppEventsManager$start$1;
.super Ljava/lang/Object;
.source "AppEventsManager.kt"

# interfaces
.implements Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/facebook/appevents/AppEventsManager$start$1",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;",
        "onError",
        "",
        "onSuccess",
        "fetchedAppSettings",
        "Lcom/facebook/internal/FetchedAppSettings;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$3bAflEfqYvEc1hw4xONKkb9irAQ(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOOiUL0kZUoyZbOoeoLJX18sRQc(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ef-zpjAxjALQFvrcQHED-XwoJkk(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kd0Uvr2CbikRsyXYiy-w9x-JbVc(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-6(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMA0uZf1zV8jKm9ekxJ_MW9ouHM(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-9(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBqBHqH-fqTMXrOoK0rfAppBNr0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cVEVqh1KFQKYzrGVYvm7TnZsISc(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYXhpA0Sdk3w4BHWNdAQ9ztgogM(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fHdub-9GgRl_VariTBBti8ZlB88(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5msmuZ09rkTxweKx5SB50Xw3Ck(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uY7ZPpB095dtY1ZTaQdCW92PH8A(Z)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->onSuccess$lambda-1(Z)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess$lambda-0(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 45
    sget-object p0, Lcom/facebook/appevents/aam/MetadataIndexer;->INSTANCE:Lcom/facebook/appevents/aam/MetadataIndexer;

    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-1(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 50
    sget-object p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;->INSTANCE:Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;

    invoke-static {}, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-10(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 95
    sget-object p0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-2(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 55
    sget-object p0, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-3(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 60
    sget-object p0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->INSTANCE:Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-4(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 65
    sget-object p0, Lcom/facebook/appevents/iap/InAppPurchaseManager;->INSTANCE:Lcom/facebook/appevents/iap/InAppPurchaseManager;

    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseManager;->enableAutoLogging()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-5(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    sget-object p0, Lcom/facebook/appevents/integrity/ProtectedModeManager;->INSTANCE:Lcom/facebook/appevents/integrity/ProtectedModeManager;

    invoke-static {}, Lcom/facebook/appevents/integrity/ProtectedModeManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-6(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 75
    sget-object p0, Lcom/facebook/appevents/integrity/MACARuleMatchingManager;->INSTANCE:Lcom/facebook/appevents/integrity/MACARuleMatchingManager;

    invoke-static {}, Lcom/facebook/appevents/integrity/MACARuleMatchingManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-7(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 80
    sget-object p0, Lcom/facebook/appevents/integrity/BlocklistEventsManager;->INSTANCE:Lcom/facebook/appevents/integrity/BlocklistEventsManager;

    invoke-static {}, Lcom/facebook/appevents/integrity/BlocklistEventsManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-8(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    sget-object p0, Lcom/facebook/appevents/integrity/RedactedEventsManager;->INSTANCE:Lcom/facebook/appevents/integrity/RedactedEventsManager;

    invoke-static {}, Lcom/facebook/appevents/integrity/RedactedEventsManager;->enable()V

    :cond_0
    return-void
.end method

.method private static final onSuccess$lambda-9(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    sget-object p0, Lcom/facebook/appevents/integrity/SensitiveParamsManager;->INSTANCE:Lcom/facebook/appevents/integrity/SensitiveParamsManager;

    invoke-static {}, Lcom/facebook/appevents/integrity/SensitiveParamsManager;->enable()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 1

    .line 43
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 48
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 53
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 58
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 63
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 68
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->ProtectedMode:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 73
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->MACARuleMatching:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 78
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->BlocklistEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 83
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->FilterRedactedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 88
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->FilterSensitiveParams:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 93
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventsManager$start$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    return-void
.end method
