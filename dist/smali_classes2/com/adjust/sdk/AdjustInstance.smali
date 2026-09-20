.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;
    }
.end annotation


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private basePath:Ljava/lang/String;

.field private final cachedAdidReadCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/OnAdidReadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/AdjustTimeoutCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedAttributionReadCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/OnAttributionReadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/AdjustTimeoutCallback;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

.field private gdprPath:Ljava/lang/String;

.field private preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

.field private purchaseVerificationPath:Ljava/lang/String;

.field private pushToken:Ljava/lang/String;

.field private startEnabled:Ljava/lang/Boolean;

.field private startOffline:Z

.field private subscriptionPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    .line 30
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/AdjustInstance;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/adjust/sdk/AdjustInstance;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustInstance;->getCachedDeeplink(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cacheDeeplink(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/adjust/sdk/SharedPreferencesManager;->cacheDeeplink(Landroid/net/Uri;)V

    return-void
.end method

.method private checkActivityHandler(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private checkActivityHandler(Ljava/lang/String;Z)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "Adjust not initialized correctly"

    invoke-interface {p1, v1, p2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 15
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Adjust not initialized, but %s saved for launch"

    invoke-interface {p2, p1, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Adjust not initialized, can\'t perform %s"

    invoke-interface {p2, p1, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method private checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p3, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getCachedDeeplink(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getCachedDeeplink()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isInstanceEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$setSendingReferrersAsNotSent$2(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->setSendingReferrersAsNotSent()V

    return-void
.end method

.method static synthetic lambda$trackMeasurementConsent$1(ZLcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->tryTrackMeasurementConsentI(Z)V

    return-void
.end method

.method static synthetic lambda$trackThirdPartySharing$0(Lcom/adjust/sdk/AdjustThirdPartySharing;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->tryTrackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    return-void
.end method

.method private saveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p4}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/adjust/sdk/SharedPreferencesManager;->saveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;J)V

    return-void
.end method

.method private saveGdprForgetMe(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->setGdprForgetMe()V

    return-void
.end method

.method private savePreinstallReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/adjust/sdk/SharedPreferencesManager;->savePreinstallReferrer(Ljava/lang/String;)V

    return-void
.end method

.method private savePushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/adjust/sdk/SharedPreferencesManager;->savePushToken(Ljava/lang/String;)V

    return-void
.end method

.method private saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p4}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/adjust/sdk/SharedPreferencesManager;->saveRawReferrer(Ljava/lang/String;J)V

    return-void
.end method

.method private setSendingReferrersAsNotSent(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    const-string v1, "AdjustInstance"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addGlobalCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "adding global callback parameter"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addGlobalCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$2;

    invoke-direct {v1, p1, p2}, Lcom/adjust/sdk/AdjustInstance$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGlobalPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "adding global partner parameter"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->addGlobalPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$3;

    invoke-direct {v1, p1, p2}, Lcom/adjust/sdk/AdjustInstance$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disable()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    const-string v0, "enabled mode"

    const-string v1, "disabled mode"

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v2, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public disableCoppaComplianceInDelay()V
    .locals 2

    const-string v0, "disableCoppaComplianceInDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->setCoppaComplianceInDelay(Z)V

    return-void
.end method

.method public disablePlayStoreKidsComplianceInDelay()V
    .locals 2

    const-string v0, "disablePlayStoreKidsComplianceInDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->setPlayStoreKidsComplianceInDelay(Z)V

    return-void
.end method

.method public enable()V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    const-string v0, "enabled mode"

    const-string v1, "disabled mode"

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableCoppaComplianceInDelay()V
    .locals 2

    const-string v0, "enableCoppaComplianceInDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->setCoppaComplianceInDelay(Z)V

    return-void
.end method

.method public enablePlayStoreKidsComplianceInDelay()V
    .locals 2

    const-string v0, "enablePlayStoreKidsComplianceInDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/IActivityHandler;->setPlayStoreKidsComplianceInDelay(Z)V

    return-void
.end method

.method public endFirstSessionDelay()V
    .locals 1

    const-string v0, "endFirstSessionDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->endFirstSessionDelay()V

    return-void
.end method

.method public gdprForgetMe(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustInstance;->saveGdprForgetMe(Landroid/content/Context;)V

    const-string p1, "gdpr"

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->gdprForgetMe()V

    :cond_0
    return-void
.end method

.method public getAdid(Lcom/adjust/sdk/OnAdidReadListener;)V
    .locals 1

    const-string v0, "getAdid"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->getAdid(Lcom/adjust/sdk/OnAdidReadListener;)V

    return-void
.end method

.method public getAdidWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAdidReadListener;)V
    .locals 8

    const-string v0, "getAdidWithTimeout"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-direct {v1, v0}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$8;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/adjust/sdk/AdjustInstance$8;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnAdidReadListener;J)V

    invoke-interface {v1, v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1, p2, p3, p4}, Lcom/adjust/sdk/IActivityHandler;->getAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;)V

    return-void
.end method

.method public getAmazonAdId(Landroid/content/Context;Lcom/adjust/sdk/OnAmazonAdIdReadListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/adjust/sdk/DeviceInfo;->getFireAdvertisingIdBypassConditions(Landroid/content/ContentResolver;Lcom/adjust/sdk/OnAmazonAdIdReadListener;)V

    return-void
.end method

.method public getAttribution(Lcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 1

    const-string v0, "getAttribution"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->getAttribution(Lcom/adjust/sdk/OnAttributionReadListener;)V

    return-void
.end method

.method public getAttributionWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 8

    const-string v0, "getAttributionWithTimeout"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    invoke-direct {v1, v0}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$9;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/adjust/sdk/AdjustInstance$9;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnAttributionReadListener;J)V

    invoke-interface {v1, v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1, p2, p3, p4}, Lcom/adjust/sdk/IActivityHandler;->getAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;)V

    return-void
.end method

.method public getGooglePlayInstallReferrer(Landroid/content/Context;Lcom/adjust/sdk/OnGooglePlayInstallReferrerReadListener;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/adjust/sdk/InstallReferrer;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$11;

    invoke-direct {v1, p2}, Lcom/adjust/sdk/AdjustInstance$11;-><init>(Lcom/adjust/sdk/OnGooglePlayInstallReferrerReadListener;)V

    invoke-direct {v0, p1, v1}, Lcom/adjust/sdk/InstallReferrer;-><init>(Landroid/content/Context;Lcom/adjust/sdk/InstallReferrerReadListener;)V

    .line 12
    invoke-virtual {v0}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    return-void
.end method

.method public getLastDeeplink(Landroid/content/Context;Lcom/adjust/sdk/OnLastDeeplinkReadListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance$12;-><init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnLastDeeplinkReadListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 16
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->execute([Ljava/lang/Object;)Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    return-void
.end method

.method public getSdkVersion(Lcom/adjust/sdk/OnSdkVersionReadListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$10;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/AdjustInstance$10;-><init>(Lcom/adjust/sdk/OnSdkVersionReadListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->execute([Ljava/lang/Object;)Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    return-void
.end method

.method public initSdk(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustSigner;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Missing signature library, SDK can\'t be initialised"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AdjustConfig missing"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AdjustConfig not initialized correctly"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Adjust already initialized"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    .line 19
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->pushToken:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->startEnabled:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->startEnabled:Ljava/lang/Boolean;

    .line 21
    iget-boolean v0, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    iput-boolean v0, p1, Lcom/adjust/sdk/AdjustConfig;->startOffline:Z

    .line 22
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->basePath:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->gdprPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->gdprPath:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->subscriptionPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->subscriptionPath:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->purchaseVerificationPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->purchaseVerificationPath:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    .line 27
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1}, Lcom/adjust/sdk/AdjustFactory;->getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 33
    iget-object p1, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/AdjustInstance;->setSendingReferrersAsNotSent(Landroid/content/Context;)V

    return-void
.end method

.method public isEnabled(Landroid/content/Context;Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 2

    const-string v0, "isEnabled"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/adjust/sdk/AdjustInstance$1;

    invoke-direct {v0, p2}, Lcom/adjust/sdk/AdjustInstance$1;-><init>(Lcom/adjust/sdk/OnIsEnabledListener;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 12
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;->execute([Ljava/lang/Object;)Lcom/adjust/sdk/scheduler/AsyncTaskExecutor;

    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1, p2}, Lcom/adjust/sdk/IActivityHandler;->isEnabled(Lcom/adjust/sdk/OnIsEnabledListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->onResume()V

    return-void
.end method

.method public processAndResolveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;Landroid/content/Context;Lcom/adjust/sdk/OnDeeplinkResolvedListener;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustDeeplink;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;Landroid/content/Context;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/adjust/sdk/AdjustDeeplink;->url:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/adjust/sdk/AdjustInstance;->cacheDeeplink(Landroid/net/Uri;Landroid/content/Context;)V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "processAndResolveDeeplink"

    const/4 v3, 0x1

    .line 17
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adjust/sdk/AdjustInstance;->saveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;JLandroid/content/Context;)V

    .line 19
    iput-object p3, p0, Lcom/adjust/sdk/AdjustInstance;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    return-void

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/adjust/sdk/IActivityHandler;->processAndResolveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;JLcom/adjust/sdk/OnDeeplinkResolvedListener;)V

    return-void

    .line 25
    :cond_3
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Skipping deeplink processing (null or empty)"

    invoke-interface {p1, p3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustDeeplink;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/adjust/sdk/AdjustDeeplink;->url:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/adjust/sdk/AdjustInstance;->cacheDeeplink(Landroid/net/Uri;Landroid/content/Context;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "processDeeplink"

    const/4 v3, 0x1

    .line 10
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adjust/sdk/AdjustInstance;->saveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;JLandroid/content/Context;)V

    return-void

    .line 15
    :cond_1
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p2, p1, v0, v1}, Lcom/adjust/sdk/IActivityHandler;->processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;J)V

    return-void

    .line 16
    :cond_2
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Skipping deeplink processing (null or empty)"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeGlobalCallbackParameter(Ljava/lang/String;)V
    .locals 2

    const-string v0, "removing global callback parameter"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeGlobalCallbackParameter(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$4;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustInstance$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGlobalCallbackParameters()V
    .locals 2

    const-string v0, "resetting global callback parameters"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->removeGlobalCallbackParameters()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$6;

    invoke-direct {v1}, Lcom/adjust/sdk/AdjustInstance$6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGlobalPartnerParameter(Ljava/lang/String;)V
    .locals 2

    const-string v0, "removing global partner parameter"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->removeGlobalPartnerParameter(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$5;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustInstance$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGlobalPartnerParameters()V
    .locals 2

    const-string v0, "resetting global partner parameters"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->removeGlobalPartnerParameters()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$7;

    invoke-direct {v1}, Lcom/adjust/sdk/AdjustInstance$7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendPreinstallReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->savePreinstallReferrer(Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "preinstall referrer"

    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->sendPreinstallReferrer()V

    :cond_1
    return-void

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Skipping SYSTEM_INSTALLER_REFERRER preinstall referrer processing (null or empty)"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/adjust/sdk/AdjustInstance;->saveRawReferrer(Ljava/lang/String;JLandroid/content/Context;)V

    const-string p1, "referrer"

    const/4 p2, 0x1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IActivityHandler;->sendReftagReferrer()V

    :cond_1
    return-void

    .line 14
    :cond_2
    :goto_0
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Skipping INSTALL_REFERRER intent referrer processing (null or empty)"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setExternalDeviceIdInDelay(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setExternalDeviceIdInDelay"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->setExternalDeviceIdInDelay(Ljava/lang/String;)V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/AdjustInstance;->savePushToken(Ljava/lang/String;Landroid/content/Context;)V

    const-string p2, "push token"

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p2}, Lcom/adjust/sdk/IActivityHandler;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/IActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setTestOptions(Lcom/adjust/sdk/AdjustTestOptions;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->basePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->basePath:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->gdprPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->gdprPath:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->subscriptionPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->subscriptionPath:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->purchaseVerificationPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 11
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->purchaseVerificationPath:Ljava/lang/String;

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setBaseUrl(Ljava/lang/String;)V

    .line 16
    :cond_4
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->gdprUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 17
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setGdprUrl(Ljava/lang/String;)V

    .line 19
    :cond_5
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->subscriptionUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 20
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setSubscriptionUrl(Ljava/lang/String;)V

    .line 22
    :cond_6
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->purchaseVerificationUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 23
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setPurchaseVerificationUrl(Ljava/lang/String;)V

    .line 25
    :cond_7
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setTimerInterval(J)V

    .line 28
    :cond_8
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerStartInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->timerIntervalInMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setTimerStart(J)V

    .line 31
    :cond_9
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->sessionIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setSessionInterval(J)V

    .line 34
    :cond_a
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->subsessionIntervalInMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/adjust/sdk/AdjustFactory;->setSubsessionInterval(J)V

    .line 37
    :cond_b
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->tryInstallReferrer:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setTryInstallReferrer(Z)V

    .line 40
    :cond_c
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->noBackoffWait:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 41
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->NO_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setPackageHandlerBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V

    .line 42
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setSdkClickBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V

    .line 44
    :cond_d
    iget-object v0, p1, Lcom/adjust/sdk/AdjustTestOptions;->ignoreSystemLifecycleBootstrap:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setIgnoreSystemLifecycleBootstrap(Z)V

    .line 50
    :cond_e
    iget-object p1, p1, Lcom/adjust/sdk/AdjustTestOptions;->allowUrlStrategyFallback:Ljava/lang/Boolean;

    if-eqz p1, :cond_f

    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 53
    invoke-static {p1}, Lcom/adjust/sdk/AdjustFactory;->setAllowUrlStrategyFallback(Z)V

    :cond_f
    return-void
.end method

.method public switchBackToOnlineMode()V
    .locals 3

    const-string v0, "offline mode"

    const-string v1, "online mode"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->setOfflineMode(Z)V

    return-void
.end method

.method public switchToOfflineMode()V
    .locals 3

    const-string v0, "offline mode"

    const-string v1, "online mode"

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v2, p0, Lcom/adjust/sdk/AdjustInstance;->startOffline:Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->setOfflineMode(Z)V

    return-void
.end method

.method public teardown()V
    .locals 1

    const-string v0, "teardown"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->teardown()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    return-void
.end method

.method public trackAdRevenue(Lcom/adjust/sdk/AdjustAdRevenue;)V
    .locals 1

    const-string v0, "trackAdRevenue"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackAdRevenue(Lcom/adjust/sdk/AdjustAdRevenue;)V

    return-void
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    const-string v0, "trackEvent"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method public trackMeasurementConsent(Z)V
    .locals 2

    const-string v0, "measurement consent"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackMeasurementConsent(Z)V

    return-void
.end method

.method public trackPlayStoreSubscription(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 1

    const-string v0, "trackPlayStoreSubscription"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackPlayStoreSubscription(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V

    return-void
.end method

.method public trackThirdPartySharing(Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 2

    const-string v0, "third party sharing"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/AdjustInstance$$ExternalSyntheticLambda0;-><init>(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IActivityHandler;->trackThirdPartySharing(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    return-void
.end method

.method public verifyAndTrackPlayStorePurchase(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 3

    const-string v0, "verifyAndTrack"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x64

    const-string v1, "SDK needs to be initialized before making purchase verification request"

    const-string v2, "not_verified"

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->verifyAndTrackPlayStorePurchase(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    return-void
.end method

.method public verifyPlayStorePurchase(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 3

    const-string v0, "verifyPurchase"

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x64

    const-string v1, "SDK needs to be initialized before making purchase verification request"

    const-string v2, "not_verified"

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/adjust/sdk/IActivityHandler;->verifyPlayStorePurchase(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    return-void
.end method
