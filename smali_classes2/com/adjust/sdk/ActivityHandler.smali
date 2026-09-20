.class public Lcom/adjust/sdk/ActivityHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IActivityHandler;
.implements Lcom/adjust/sdk/SystemLifecycle$SystemLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/ActivityHandler$InternalState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE_NAME:Ljava/lang/String; = "Activity state"

.field private static final ATTRIBUTION_NAME:Ljava/lang/String; = "Attribution"

.field private static BACKGROUND_TIMER_INTERVAL:J = 0x0L

.field private static final BACKGROUND_TIMER_NAME:Ljava/lang/String; = "Background timer"

.field private static final DELAY_START_TIMER_NAME:Ljava/lang/String; = "Delay Start timer"

.field private static final EVENT_METADATA_NAME:Ljava/lang/String; = "Event metadata"

.field private static FOREGROUND_TIMER_INTERVAL:J = 0x0L

.field private static final FOREGROUND_TIMER_NAME:Ljava/lang/String; = "Foreground timer"

.field private static FOREGROUND_TIMER_START:J = 0x0L

.field private static final GLOBAL_CALLBACK_PARAMETERS_NAME:Ljava/lang/String; = "Global Callback parameters"

.field private static final GLOBAL_PARAMETERS_NAME:Ljava/lang/String; = "Global parameters"

.field private static final GLOBAL_PARTNER_PARAMETERS_NAME:Ljava/lang/String; = "Global Partner parameters"

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private adjustConfig:Lcom/adjust/sdk/AdjustConfig;

.field private attribution:Lcom/adjust/sdk/AdjustAttribution;

.field private attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

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

.field private cachedAdjustThirdPartySharingArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adjust/sdk/AdjustThirdPartySharing;",
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

.field private cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

.field private deviceInfo:Lcom/adjust/sdk/DeviceInfo;

.field private eventMetadata:Lcom/adjust/sdk/EventMetadata;

.field executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

.field private firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

.field private foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

.field private gdprPath:Ljava/lang/String;

.field private globalParameters:Lcom/adjust/sdk/GlobalParameters;

.field private installReferrer:Lcom/adjust/sdk/InstallReferrer;

.field private internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

.field private sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

.field private subscriptionPath:Ljava/lang/String;

.field private systemLifecycle:Lcom/adjust/sdk/SystemLifecycle;


# direct methods
.method private constructor <init>(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/adjust/sdk/EventMetadata;

    invoke-direct {v0}, Lcom/adjust/sdk/EventMetadata;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    .line 151
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 154
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 156
    invoke-interface {v0}, Lcom/adjust/sdk/ILogger;->lockLogLevel()V

    .line 158
    new-instance v0, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    const-string v1, "ActivityHandler"

    invoke-direct {v0, v1}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    .line 159
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler$InternalState;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 162
    iget-object v1, p1, Lcom/adjust/sdk/AdjustConfig;->startEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    .line 164
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-boolean v1, p1, Lcom/adjust/sdk/AdjustConfig;->startOffline:Z

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    const/4 v1, 0x0

    .line 166
    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->sessionResponseProcessed:Z

    .line 168
    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->preinstallHasBeenRead:Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    .line 171
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

    .line 173
    new-instance v0, Lcom/adjust/sdk/FirstSessionDelayManager;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/FirstSessionDelayManager;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 175
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda28;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustConfig;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->setAskingAttributionI(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->sendInstallReferrerI(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->foregroundTimerFiredI()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->backgroundTimerFiredI()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ActivityState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustAttribution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/AdjustConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/adjust/sdk/ActivityHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabledI(Z)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/DeviceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->launchDeeplinkMain(Landroid/content/Intent;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/LicenseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->sendLicenseVerificationDataI(Lcom/adjust/sdk/LicenseData;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasksI(Lcom/adjust/sdk/EventResponseData;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchSdkClickResponseTasksI(Lcom/adjust/sdk/SdkClickResponseData;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseTasksI(Lcom/adjust/sdk/SessionResponseData;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionResponseTasksI(Lcom/adjust/sdk/AttributionResponseData;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PurchaseVerificationResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchPurchaseVerificationResponseTasksI(Lcom/adjust/sdk/PurchaseVerificationResponseData;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->processRemoteTriggersI(Lcom/adjust/sdk/ResponseData;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->gotOptOutResponseI()V

    return-void
.end method

.method private backgroundTimerFiredI()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSendI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    :cond_0
    return-void
.end method

.method private bootstrapLifecycleI()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/adjust/sdk/SystemLifecycle;->getSingletonInstance()Lcom/adjust/sdk/SystemLifecycle;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->systemLifecycle:Lcom/adjust/sdk/SystemLifecycle;

    .line 3
    iget-object v0, v0, Lcom/adjust/sdk/SystemLifecycle;->logMessageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Lifecycle: %s"

    invoke-interface {v2, v1, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->systemLifecycle:Lcom/adjust/sdk/SystemLifecycle;

    invoke-virtual {v0, p0}, Lcom/adjust/sdk/SystemLifecycle;->overwriteCallback(Lcom/adjust/sdk/SystemLifecycle$SystemLifecycleCallback;)V

    .line 9
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->isSystemLifecycleBootstrapIgnored()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->systemLifecycle:Lcom/adjust/sdk/SystemLifecycle;

    .line 14
    invoke-virtual {v1}, Lcom/adjust/sdk/SystemLifecycle;->foregroundOrElseBackgroundCached()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->foregroundOrElseBackground:Ljava/lang/Boolean;

    .line 16
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->onResumeI()V

    :cond_2
    :goto_1
    return-void
.end method

.method private canTrackMeasurementConsentI()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private canTrackThirdPartySharingI()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->coppaComplianceEnabled:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Calling third party sharing API not allowed when COPPA enabled"

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Sdk did not yet start"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkAdjustAdRevenue(Lcom/adjust/sdk/AdjustAdRevenue;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Ad revenue object missing"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustAdRevenue;->isValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Ad revenue object not initialized correctly"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkAfterNewStartI()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAfterNewStartI(Lcom/adjust/sdk/SharedPreferencesManager;)V

    return-void
.end method

.method private checkAfterNewStartI(Lcom/adjust/sdk/SharedPreferencesManager;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getPushToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, v1, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getRawReferrerArray()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->sendReftagReferrer()V

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkForPreinstallI()V

    .line 19
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->installReferrer:Lcom/adjust/sdk/InstallReferrer;

    invoke-virtual {p1}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    .line 20
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerMeta()V

    .line 21
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerHuaweiAds()V

    .line 22
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerHuaweiAppGallery()V

    .line 23
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerSamsung()V

    .line 24
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerXiaomi()V

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerVivo()V

    .line 26
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readLicenseVerificationData()V

    return-void
.end method

.method private checkAttributionStateI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->hasSessionResponseNotBeenProcessed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->getAttribution()V

    return-void
.end method

.method private checkEventI(Lcom/adjust/sdk/AdjustEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Event missing"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/adjust/sdk/AdjustEvent;->isValid()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Event not initialized correctly"

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkForInstallReferrerInfo(Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->isInstallReferrer:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "huawei_ads"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 10
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 11
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerHuawei:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "huawei_app_gallery"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeHuawei:J

    .line 23
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginHuawei:J

    .line 24
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerHuaweiAppGallery:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 30
    :cond_2
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "meta"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeMeta:J

    .line 36
    iget-object v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerMeta:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->isClick:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->isClickMeta:Ljava/lang/Boolean;

    .line 39
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 43
    :cond_3
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "samsung"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeSamsung:J

    .line 49
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginSamsung:J

    .line 50
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerSamsung:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 56
    :cond_4
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "xiaomi"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeXiaomi:J

    .line 62
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginXiaomi:J

    .line 63
    iget-object v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerXiaomi:Ljava/lang/String;

    .line 64
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTimeServer:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeServerXiaomi:J

    .line 65
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBeginServer:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginServerXiaomi:J

    .line 66
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->installVersionXiaomi:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 72
    :cond_5
    iget-object v0, p1, Lcom/adjust/sdk/SdkClickResponseData;->referrerApi:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v1, "vivo"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeVivo:J

    .line 78
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginVivo:J

    .line 79
    iget-object v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->installReferrerVivo:Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installVersion:Ljava/lang/String;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->installVersionVivo:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTime:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTime:J

    .line 87
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBegin:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBegin:J

    .line 88
    iget-object v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installReferrer:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->installReferrer:Ljava/lang/String;

    .line 89
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->clickTimeServer:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->clickTimeServer:J

    .line 90
    iget-wide v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installBeginServer:J

    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->installBeginServer:J

    .line 91
    iget-object v1, p1, Lcom/adjust/sdk/SdkClickResponseData;->installVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->installVersion:Ljava/lang/String;

    .line 92
    iget-object p1, p1, Lcom/adjust/sdk/SdkClickResponseData;->googlePlayInstant:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->googlePlayInstant:Ljava/lang/Boolean;

    .line 94
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void
.end method

.method private checkForPreinstallI()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->sendPreinstallReferrerI()V

    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->isPreinstallTrackingEnabled:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->hasPreinstallBeenRead()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_9

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getPreinstallPayloadReadStatus()J

    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasAllLocationsBeenRead(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 20
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean v4, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->preinstallHasBeenRead:Z

    return-void

    :cond_6
    const-string v3, "system_properties"

    .line 25
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 26
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, v5, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromSystemProperty(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 29
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 30
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_7
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_8
    :goto_1
    const-string v3, "system_properties_reflection"

    .line 37
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 38
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, v5, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromSystemPropertyReflection(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 41
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 42
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :cond_9
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_a
    :goto_2
    const-string v3, "system_properties_path"

    .line 49
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 50
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, v5, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromSystemPropertyFilePath(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 54
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 56
    :cond_b
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_c
    :goto_3
    const-string v3, "system_properties_path_reflection"

    .line 61
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 62
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, v5, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromSystemPropertyFilePathReflection(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 66
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 68
    :cond_d
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_e
    :goto_4
    const-string v3, "content_provider"

    .line 73
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 74
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, v5, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, v6, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6, v7}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromContentProviderDefault(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 80
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 82
    :cond_f
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_10
    :goto_5
    const-string v3, "content_provider_intent_action"

    .line 87
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 88
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, v5, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, v6, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6, v7}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadsFromContentProviderIntentAction(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 93
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    .line 94
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v7, v6, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 98
    :cond_11
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_12
    const-string v3, "content_provider_no_permission"

    .line 103
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 104
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, v5, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, v6, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6, v7}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadsFromContentProviderNoPermission(Landroid/content/Context;Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 109
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 110
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 111
    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v7, v6, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 114
    :cond_13
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_14
    const-string v3, "file_system"

    .line 119
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->hasNotBeenRead(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 120
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, v5, Lcom/adjust/sdk/DeviceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v6, v6, Lcom/adjust/sdk/AdjustConfig;->preinstallFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v5, v6, v7}, Lcom/adjust/sdk/PreinstallUtil;->getPayloadFromFileSystem(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 126
    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v6, v5, v3}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 128
    :cond_15
    invoke-static {v3, v1, v2}, Lcom/adjust/sdk/PreinstallUtil;->markAsRead(Ljava/lang/String;J)J

    move-result-wide v1

    .line 132
    :cond_16
    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/SharedPreferencesManager;->setPreinstallPayloadReadStatus(J)V

    .line 134
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean v4, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->preinstallHasBeenRead:Z

    return-void

    .line 135
    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t read preinstall payload, invalid package name"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createDeeplinkIntentI(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object p1, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustIoActivityState"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteAttribution(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustAttribution"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteEventMetadata(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustEventMetadata"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteGlobalCallbackParameters(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustGlobalCallbackParameters"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteGlobalPartnerParameters(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "AdjustGlobalPartnerParameters"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static deleteState(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->deleteActivityState(Landroid/content/Context;)Z

    .line 2
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->deleteAttribution(Landroid/content/Context;)Z

    .line 3
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->deleteGlobalCallbackParameters(Landroid/content/Context;)Z

    .line 4
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->deleteGlobalPartnerParameters(Landroid/content/Context;)Z

    .line 5
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->deleteEventMetadata(Landroid/content/Context;)Z

    .line 7
    invoke-static {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adjust/sdk/SharedPreferencesManager;->clear()V

    return-void
.end method

.method private disableThirdPartySharingForCoppaEnabledI()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->shouldDisableThirdPartySharingWhenCoppaEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 6
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 7
    new-instance v0, Lcom/adjust/sdk/AdjustThirdPartySharing;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/AdjustThirdPartySharing;-><init>(Ljava/lang/Boolean;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 11
    new-instance v1, Lcom/adjust/sdk/PackageBuilder;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 15
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/PackageBuilder;->buildThirdPartySharingPackage(Lcom/adjust/sdk/AdjustThirdPartySharing;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 18
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private endI()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSendI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->pauseSendingI()V

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityStateI(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    :cond_1
    return-void
.end method

.method private foregroundTimerFiredI()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopForegroundTimerI()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSendI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityStateI(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    :cond_2
    return-void
.end method

.method private gdprForgetMeI()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 6
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 9
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 11
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 13
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildGdprPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 17
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->removeGdprForgetMe()V

    .line 19
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method public static getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "AdjustConfig missing"

    invoke-interface {p0, v2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/adjust/sdk/AdjustConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "AdjustConfig not initialized correctly"

    invoke-interface {p0, v2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 12
    iget-object v3, p0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-nez v3, :cond_2

    return-object v1

    .line 18
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    .line 23
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 24
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_4

    .line 25
    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adjust/sdk/AdjustConfig;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object p0

    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v0, "Skipping initialization in background process (%s)"

    invoke-interface {p0, v0, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 34
    :cond_5
    new-instance v0, Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler;-><init>(Lcom/adjust/sdk/AdjustConfig;)V

    return-object v0
.end method

.method private gotOptOutResponseI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->flush()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setEnabledI(Z)V

    return-void
.end method

.method private handleAdidCallbackI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 27
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, v4, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/adjust/sdk/ActivityHandler$29;

    invoke-direct {v4, v1, v0}, Lcom/adjust/sdk/ActivityHandler$29;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 42
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 50
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 52
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/adjust/sdk/ActivityHandler$30;

    invoke-direct {v3, v2, v0}, Lcom/adjust/sdk/ActivityHandler$30;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 53
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 54
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_4
    :goto_1
    return-void

    :catchall_2
    move-exception v0

    .line 55
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 56
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method private handleAttributionCallbackI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 25
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 27
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, v4, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/adjust/sdk/ActivityHandler$27;

    invoke-direct {v4, v1, v0}, Lcom/adjust/sdk/ActivityHandler$27;-><init>(Ljava/util/ArrayList;Lcom/adjust/sdk/AdjustAttribution;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 41
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 49
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 51
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/adjust/sdk/ActivityHandler$28;

    invoke-direct {v3, v2, v0}, Lcom/adjust/sdk/ActivityHandler$28;-><init>(Ljava/util/ArrayList;Lcom/adjust/sdk/AdjustAttribution;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 52
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 53
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 54
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 55
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method private hasChangedStateI(ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p4, p2, [Ljava/lang/Object;

    invoke-interface {p1, p3, p4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, p2, [Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p2
.end method

.method private isEnabledI()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isValidReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/adjust/sdk/ReferrerDetails;->installReferrer:Ljava/lang/String;

    if-nez p1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method static synthetic lambda$addGlobalCallbackParameter$20(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lcom/adjust/sdk/ActivityHandler;->addGlobalCallbackParameterI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addGlobalPartnerParameter$22(Ljava/lang/String;Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lcom/adjust/sdk/ActivityHandler;->addGlobalPartnerParameterI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeGlobalCallbackParameter$24(Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->removeGlobalCallbackParameterI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeGlobalCallbackParameters$28(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->removeGlobalCallbackParametersI()V

    return-void
.end method

.method static synthetic lambda$removeGlobalPartnerParameter$26(Ljava/lang/String;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->removeGlobalPartnerParameterI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$removeGlobalPartnerParameters$30(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->removeGlobalPartnerParametersI()V

    return-void
.end method

.method static synthetic lambda$trackMeasurementConsent$38(ZLcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->tryTrackMeasurementConsentI(Z)V

    return-void
.end method

.method static synthetic lambda$trackThirdPartySharing$36(Lcom/adjust/sdk/AdjustThirdPartySharing;Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/adjust/sdk/ActivityHandler;->tryTrackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    return-void
.end method

.method private launchAttributionListenerI(Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onAttributionChangedListener:Lcom/adjust/sdk/OnAttributionChangedListener;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$43;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/ActivityHandler$43;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private launchAttributionResponseTasksI(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->processRemoteTriggersI(Lcom/adjust/sdk/ResponseData;)V

    .line 4
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->updateAdidI(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    iget-object v1, p1, Lcom/adjust/sdk/ResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateAttributionI(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListenerI(Landroid/os/Handler;)V

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/adjust/sdk/AttributionResponseData;->deeplink:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/ActivityHandler;->prepareDeeplinkI(Landroid/net/Uri;Landroid/os/Handler;)V

    return-void
.end method

.method private launchDeeplinkMain(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string p2, "Open deferred deeplink (%s)"

    invoke-interface {v0, p2, v2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object p2, p2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Unable to open deferred deeplink (%s)"

    invoke-interface {p1, p2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private launchEventResponseTasksI(Lcom/adjust/sdk/EventResponseData;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->updateAdidI(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    iget-boolean v1, p1, Lcom/adjust/sdk/ResponseData;->success:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingSucceededListener:Lcom/adjust/sdk/OnEventTrackingSucceededListener;

    if-eqz v3, :cond_0

    .line 7
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Launching success event tracking listener"

    invoke-interface {v1, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$38;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$38;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->onEventTrackingFailedListener:Lcom/adjust/sdk/OnEventTrackingFailedListener;

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Launching failed event tracking listener"

    invoke-interface {v1, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$39;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$39;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private launchPurchaseVerificationResponseTasksI(Lcom/adjust/sdk/PurchaseVerificationResponseData;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iget-object v1, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    iget-object v2, p1, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    const-string v3, "not_verified"

    const/16 v4, 0x65

    invoke-direct {v1, v3, v4, v2}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const-string v3, "verification_status"

    .line 13
    invoke-static {v1, v3}, Lcom/adjust/sdk/network/UtilNetworking;->extractJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "code"

    .line 14
    invoke-static {v1, v4}, Lcom/adjust/sdk/network/UtilNetworking;->extractJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    const-string v5, "message"

    .line 15
    invoke-static {v1, v5}, Lcom/adjust/sdk/network/UtilNetworking;->extractJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v2

    .line 19
    :goto_0
    new-instance v2, Lcom/adjust/sdk/ActivityHandler$44;

    invoke-direct {v2, p1, v1}, Lcom/adjust/sdk/ActivityHandler$44;-><init>(Lcom/adjust/sdk/PurchaseVerificationResponseData;Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 25
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    iget-object p1, p1, Lcom/adjust/sdk/ResponseData;->activityPackage:Lcom/adjust/sdk/ActivityPackage;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/adjust/sdk/ActivityPackage;->event:Lcom/adjust/sdk/AdjustEvent;

    if-eqz p1, :cond_1

    .line 30
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventI(Lcom/adjust/sdk/AdjustEvent;)V

    :cond_1
    return-void
.end method

.method private launchSdkClickResponseTasksI(Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->updateAdidI(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    iget-object v1, p1, Lcom/adjust/sdk/ResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateAttributionI(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListenerI(Landroid/os/Handler;)V

    .line 14
    :cond_0
    iget-object v1, p1, Lcom/adjust/sdk/ResponseData;->resolvedDeeplink:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    if-eqz v1, :cond_1

    .line 18
    new-instance v2, Lcom/adjust/sdk/ActivityHandler$40;

    invoke-direct {v2, v1, p1}, Lcom/adjust/sdk/ActivityHandler$40;-><init>(Lcom/adjust/sdk/OnDeeplinkResolvedListener;Lcom/adjust/sdk/SdkClickResponseData;)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private launchSessionResponseListenerI(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/adjust/sdk/ResponseData;->success:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingSucceededListener:Lcom/adjust/sdk/OnSessionTrackingSucceededListener;

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Launching success session tracking listener"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$41;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$41;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    .line 16
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onSessionTrackingFailedListener:Lcom/adjust/sdk/OnSessionTrackingFailedListener;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Launching failed session tracking listener"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$42;

    invoke-direct {v0, p0, p1}, Lcom/adjust/sdk/ActivityHandler$42;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private launchSessionResponseTasksI(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Launching SessionResponse tasks"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->adid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->updateAdidI(Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    iget-object v1, p1, Lcom/adjust/sdk/ResponseData;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateAttributionI(Lcom/adjust/sdk/AdjustAttribution;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->launchAttributionListenerI(Landroid/os/Handler;)V

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-nez v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v1}, Lcom/adjust/sdk/IAttributionHandler;->getAttribution()V

    .line 24
    :cond_1
    iget-boolean v1, p1, Lcom/adjust/sdk/ResponseData;->success:Z

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adjust/sdk/SharedPreferencesManager;->setInstallTracked()V

    .line 29
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/ActivityHandler;->launchSessionResponseListenerI(Lcom/adjust/sdk/SessionResponseData;Landroid/os/Handler;)V

    .line 32
    iget-object p1, p1, Lcom/adjust/sdk/SessionResponseData;->deeplink:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/adjust/sdk/ActivityHandler;->prepareDeeplinkI(Landroid/net/Uri;Landroid/os/Handler;)V

    .line 35
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/adjust/sdk/ActivityHandler$InternalState;->sessionResponseProcessed:Z

    return-void
.end method

.method private pauseSendingI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->pauseSending()V

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->pauseSending()V

    .line 7
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->pauseSending()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->resumeSending()V

    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->resumeSending()V

    return-void
.end method

.method private pausedI()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->pausedI(Z)Z

    move-result v0

    return v0
.end method

.method private pausedI(Z)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isOffline()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isOffline()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private preLaunchActionsI(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/adjust/sdk/IRunActivityHandler;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/IRunActivityHandler;

    .line 2
    invoke-interface {v0, p0}, Lcom/adjust/sdk/IRunActivityHandler;->run(Lcom/adjust/sdk/ActivityHandler;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private prepareDeeplinkI(Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Deferred deeplink received (%s)"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->createDeeplinkIntentI(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$46;

    invoke-direct {v1, p0, v0, p1}, Lcom/adjust/sdk/ActivityHandler$46;-><init>(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 20
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processCachedDeeplinkI()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDeeplinkReferrer()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDeeplinkClickTime()J

    move-result-wide v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    :goto_0
    return-void

    .line 17
    :cond_2
    new-instance v5, Lcom/adjust/sdk/AdjustDeeplink;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/adjust/sdk/AdjustDeeplink;-><init>(Landroid/net/Uri;)V

    if-eqz v2, :cond_3

    .line 19
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/adjust/sdk/AdjustDeeplink;->setReferrer(Landroid/net/Uri;)V

    .line 21
    :cond_3
    invoke-virtual {p0, v5, v3, v4}, Lcom/adjust/sdk/ActivityHandler;->processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;J)V

    .line 23
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->removeDeeplink()V

    return-void
.end method

.method private processCoppaComplianceI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->coppaComplianceEnabled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->resetThirdPartySharingCoppaActivityStateI()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->disableThirdPartySharingForCoppaEnabledI()V

    return-void
.end method

.method private processDeeplinkI(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 15

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->isUrlFilteredOut(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deeplink ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") processing skipped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/Util;->isUrlWithTrackerQueryParam(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    iget-object v3, v0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    const/4 v4, 0x0

    .line 19
    iput-object v4, v0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    if-eqz v3, :cond_3

    .line 21
    new-instance v4, Lcom/adjust/sdk/ActivityHandler$47;

    invoke-direct {v4, v3, v1}, Lcom/adjust/sdk/ActivityHandler$47;-><init>(Lcom/adjust/sdk/OnDeeplinkResolvedListener;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getUrl()Landroid/net/Uri;

    move-result-object v5

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/adjust/sdk/AdjustDeeplink;->getReferrer()Landroid/net/Uri;

    move-result-object v6

    iget-object v9, v0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v10, v0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v11, v0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v12, v0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v13, v0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    iget-object v14, v0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    move-wide/from16 v7, p2

    .line 34
    invoke-static/range {v5 .. v14}, Lcom/adjust/sdk/PackageFactory;->buildDeeplinkSdkClickPackage(Landroid/net/Uri;Landroid/net/Uri;JLcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 49
    :cond_5
    iget-object v2, v0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v2, v1}, Lcom/adjust/sdk/ISdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private processPreLaunchArraysI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->canTrackThirdPartySharingI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adjust/sdk/AdjustThirdPartySharing;

    .line 3
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->trackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    .line 8
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->canTrackMeasurementConsentI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->trackMeasurementConsentI(Z)V

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

    return-void
.end method

.method private processRemoteTriggersI(Lcom/adjust/sdk/ResponseData;)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "remote_triggers"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->onRemoteTriggerListener:Lcom/adjust/sdk/OnRemoteTriggerListener;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Invalid remote trigger item, skipping"

    invoke-interface {v2, v4, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v3, "label"

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Remote trigger missing or invalid label, skipping"

    invoke-interface {v2, v4, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v4, "payload"

    .line 33
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_6

    .line 35
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Remote trigger missing or invalid payload, skipping"

    invoke-interface {v2, v4, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_6
    new-instance v4, Lcom/adjust/sdk/AdjustRemoteTrigger;

    invoke-direct {v4, v3, v2}, Lcom/adjust/sdk/AdjustRemoteTrigger;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v3, Lcom/adjust/sdk/ActivityHandler$45;

    invoke-direct {v3, p0, v4}, Lcom/adjust/sdk/ActivityHandler$45;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustRemoteTrigger;)V

    .line 49
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method private processSessionI()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v3, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_1

    .line 10
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Time travel!"

    invoke-interface {v2, v4, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 12
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void

    .line 17
    :cond_1
    sget-wide v7, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v5, v3, v7

    if-lez v5, :cond_2

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->trackNewSessionI(J)V

    .line 19
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkAfterNewStartI()V

    return-void

    .line 24
    :cond_2
    sget-wide v7, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v5, v3, v7

    if-lez v5, :cond_3

    .line 25
    iget v5, v2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 26
    iget-wide v8, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 27
    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 28
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v2, v2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    const-string v1, "Started subsession %d of session %d"

    .line 31
    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 36
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkForPreinstallI()V

    .line 39
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->installReferrer:Lcom/adjust/sdk/InstallReferrer;

    invoke-virtual {v0}, Lcom/adjust/sdk/InstallReferrer;->startConnection()V

    .line 40
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerMeta()V

    .line 41
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerHuaweiAds()V

    .line 42
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerHuaweiAppGallery()V

    .line 43
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerSamsung()V

    .line 44
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerXiaomi()V

    .line 45
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readInstallReferrerVivo()V

    .line 46
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readLicenseVerificationData()V

    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Time span since last activity too short for a new subsession"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static queueGetAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/adjust/sdk/OnAdidReadListener;",
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/AdjustTimeoutCallback;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-direct {v0, p2}, Lcom/adjust/sdk/AdjustTimeoutCallback;-><init>(Lcom/adjust/sdk/OnAdidReadListener;)V

    .line 4
    monitor-enter p3

    .line 5
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p2, Lcom/adjust/sdk/scheduler/TimerOnce;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$21;

    invoke-direct {v1, v0, p3, p4}, Lcom/adjust/sdk/ActivityHandler$21;-><init>(Lcom/adjust/sdk/AdjustTimeoutCallback;Ljava/util/ArrayList;Landroid/content/Context;)V

    const-string p3, "Get Adid timeout timer"

    invoke-direct {p2, v1, p3}, Lcom/adjust/sdk/scheduler/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/AdjustTimeoutCallback;->setTimer(Lcom/adjust/sdk/scheduler/TimerOnce;)V

    .line 35
    invoke-virtual {p2, p0, p1}, Lcom/adjust/sdk/scheduler/TimerOnce;->startIn(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static queueGetAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/adjust/sdk/OnAttributionReadListener;",
            "Ljava/util/ArrayList<",
            "Lcom/adjust/sdk/AdjustTimeoutCallback;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/adjust/sdk/AdjustTimeoutCallback;

    invoke-direct {v0, p2}, Lcom/adjust/sdk/AdjustTimeoutCallback;-><init>(Lcom/adjust/sdk/OnAttributionReadListener;)V

    .line 4
    monitor-enter p3

    .line 5
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p2, Lcom/adjust/sdk/scheduler/TimerOnce;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$22;

    invoke-direct {v1, v0, p3, p4}, Lcom/adjust/sdk/ActivityHandler$22;-><init>(Lcom/adjust/sdk/AdjustTimeoutCallback;Ljava/util/ArrayList;Landroid/content/Context;)V

    const-string p3, "Get Attribution timeout timer"

    invoke-direct {p2, v1, p3}, Lcom/adjust/sdk/scheduler/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/AdjustTimeoutCallback;->setTimer(Lcom/adjust/sdk/scheduler/TimerOnce;)V

    .line 35
    invoke-virtual {p2, p0, p1}, Lcom/adjust/sdk/scheduler/TimerOnce;->startIn(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private readActivityStateI(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Activity state"

    :try_start_0
    const-string v1, "AdjustIoActivityState"

    .line 1
    const-class v2, Lcom/adjust/sdk/ActivityState;

    invoke-static {p1, v1, v0, v2}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adjust/sdk/ActivityState;

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Failed to read %s file (%s)"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    return-void
.end method

.method private readAttributionI(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Attribution"

    :try_start_0
    const-string v1, "AdjustAttribution"

    .line 1
    const-class v2, Lcom/adjust/sdk/AdjustAttribution;

    invoke-static {p1, v1, v0, v2}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adjust/sdk/AdjustAttribution;

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Failed to read %s file (%s)"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    return-void
.end method

.method private readConfigFile(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "adjust_config.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "adjust_config.properties file read and loaded"

    invoke-interface {p1, v2, v0}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "defaultTracker"

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iput-object p1, v0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 15
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "%s file not found in this app"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private readEventMetadataI(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Event metadata"

    :try_start_0
    const-string v1, "AdjustEventMetadata"

    .line 1
    const-class v2, Lcom/adjust/sdk/EventMetadata;

    invoke-static {p1, v1, v0, v2}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adjust/sdk/EventMetadata;

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Failed to read %s file (%s)"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/adjust/sdk/EventMetadata;

    invoke-direct {p1}, Lcom/adjust/sdk/EventMetadata;-><init>()V

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    :cond_0
    return-void
.end method

.method private readGlobalCallbackParametersI(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Global Callback parameters"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const-string v2, "AdjustGlobalCallbackParameters"

    const-class v3, Ljava/util/Map;

    invoke-static {p1, v2, v0, v3}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v1, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Failed to read %s file (%s)"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    return-void
.end method

.method private readGlobalPartnerParametersI(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Global Partner parameters"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const-string v2, "AdjustGlobalPartnerParameters"

    const-class v3, Ljava/util/Map;

    invoke-static {p1, v2, v0, v3}, Lcom/adjust/sdk/Util;->readObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v1, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Failed to read %s file (%s)"

    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    return-void
.end method

.method private readInstallReferrerHuaweiAds()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$33;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$33;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInstallReferrerHuaweiAppGallery()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$34;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$34;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInstallReferrerMeta()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$31;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$31;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInstallReferrerSamsung()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$35;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$35;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInstallReferrerVivo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$37;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$37;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInstallReferrerXiaomi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$36;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$36;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readLicenseVerificationData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$32;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$32;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetThirdPartySharingCoppaActivityStateI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    .line 4
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumeSendingI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->resumeSending()V

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    .line 3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->resumeSending()V

    .line 4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->resumeSending()V

    return-void
.end method

.method private sendInstallReferrerI(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->isValidReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-static {p1, p2, v0}, Lcom/adjust/sdk/Util;->isEqualReferrerDetails(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    iget-object v8, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lcom/adjust/sdk/PackageFactory;->buildInstallReferrerSdkClickPackage(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {p2, p1}, Lcom/adjust/sdk/ISdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private sendLicenseVerificationDataI(Lcom/adjust/sdk/LicenseData;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/adjust/sdk/LicenseData;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/adjust/sdk/PackageFactory;->buildLicenseVerificationSdkClickPackage(Lcom/adjust/sdk/LicenseData;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;Lcom/adjust/sdk/ActivityHandler$InternalState;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/ISdkClickHandler;->sendSdkClick(Lcom/adjust/sdk/ActivityPackage;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendPreinstallReferrerI()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getPreinstallReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    const-string v2, "system_installer_referrer"

    invoke-interface {v1, v0, v2}, Lcom/adjust/sdk/ISdkClickHandler;->sendPreinstallPayload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendReftagReferrerI()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->sendReftagReferrers()V

    return-void
.end method

.method private setAskingAttributionI(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void
.end method

.method private setEnabledI(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    const-string v1, "Adjust already enabled"

    const-string v2, "Adjust already disabled"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedStateI(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-enabling SDK not possible for forgotten user"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean p1, v1, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    .line 16
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Handlers will still start as paused"

    const-string v1, "Handlers will start as active due to the SDK being enabled"

    const-string v2, "Handlers will start as paused due to the SDK being disabled"

    .line 17
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateStatusI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_2
    iput-boolean p1, v1, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/adjust/sdk/SharedPreferencesManager;->getGdprForgetMe()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->gdprForgetMeI()V

    goto :goto_0

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processCoppaComplianceI()V

    .line 35
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processPreLaunchArraysI()V

    .line 39
    :goto_0
    invoke-virtual {v1}, Lcom/adjust/sdk/SharedPreferencesManager;->getInstallTracked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 40
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Detected that install was not tracked at enable time"

    invoke-interface {v2, v3, v0}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/ActivityHandler;->trackNewSessionI(J)V

    .line 44
    :cond_4
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkAfterNewStartI(Lcom/adjust/sdk/SharedPreferencesManager;)V

    :cond_5
    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Handlers remain paused"

    const-string v1, "Resuming handlers due to SDK being enabled"

    const-string v2, "Pausing handlers due to SDK being disabled"

    .line 47
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateStatusI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOfflineModeI(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isOffline()Z

    move-result v0

    const-string v1, "Adjust already in offline mode"

    const-string v2, "Adjust already in online mode"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->hasChangedStateI(ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean p1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_1

    const-string v0, "Handlers will still start as paused"

    const-string v1, "Handlers will start as active due to SDK being online"

    const-string v2, "Handlers will start paused due to SDK being offline"

    .line 10
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateStatusI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Handlers remain paused"

    const-string v1, "Resuming handlers to put SDK in online mode"

    const-string v2, "Pausing handlers to put SDK offline mode"

    .line 17
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateStatusI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPushTokenI(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 13
    new-instance p1, Lcom/adjust/sdk/PackageBuilder;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v0, p1, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    const-string v0, "push"

    .line 17
    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->buildInfoPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 21
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->removePushToken()V

    .line 23
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private shouldDisableThirdPartySharingWhenCoppaEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v2, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v2, :cond_2

    return v1

    .line 13
    :cond_2
    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isThirdPartySharingDisabledForCoppa:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldProcessEventI(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v1, p1}, Lcom/adjust/sdk/ActivityState;->eventDeduplicationIdExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Skipping duplicate event with deduplication ID \'%s\'"

    invoke-interface {v1, p1, v0}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v1, p1}, Lcom/adjust/sdk/ActivityState;->addDeduplicationId(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "Added deduplication ID \'%s\'"

    invoke-interface {v1, p1, v3}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v0
.end method

.method private startBackgroundTimerI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSendI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerOnce;->getFireIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :goto_0
    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    sget-wide v1, Lcom/adjust/sdk/ActivityHandler;->BACKGROUND_TIMER_INTERVAL:J

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/scheduler/TimerOnce;->startIn(J)V

    return-void
.end method

.method private startFirstSessionI()V
    .locals 5

    .line 1
    new-instance v0, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v0}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 4
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v1}, Lcom/adjust/sdk/AdjustConfig;->getEventDeduplicationIdsMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityState;->setEventDeduplicationIdsMaxSize(Ljava/lang/Integer;)V

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSendI()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->getPushToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v3}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->getGdprForgetMe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->gdprForgetMeI()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processCoppaComplianceI()V

    .line 22
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processPreLaunchArraysI()V

    .line 24
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    const/4 v4, 0x1

    iput v4, v3, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackageI(J)V

    .line 26
    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->checkAfterNewStartI(Lcom/adjust/sdk/SharedPreferencesManager;)V

    .line 30
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v3, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 31
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    .line 33
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 34
    invoke-virtual {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->removePushToken()V

    .line 35
    invoke-virtual {v2}, Lcom/adjust/sdk/SharedPreferencesManager;->removeGdprForgetMe()V

    .line 38
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processCachedDeeplinkI()V

    return-void
.end method

.method private startForegroundTimerI()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerCycle;->start()V

    return-void
.end method

.method private startI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v0}, Lcom/adjust/sdk/AdjustSigner;->onResume(Lcom/adjust/sdk/ILogger;)V

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startFirstSessionI()V

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processPreLaunchArraysI()V

    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    if-nez v0, :cond_1

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {v0}, Lcom/adjust/sdk/AdjustSigner;->onResume(Lcom/adjust/sdk/ILogger;)V

    .line 17
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSendI()V

    .line 19
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processCoppaComplianceI()V

    .line 21
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processSessionI()V

    .line 23
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->checkAttributionStateI()V

    .line 25
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processCachedDeeplinkI()V

    return-void
.end method

.method private stopBackgroundTimerI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerOnce;->cancel()V

    return-void
.end method

.method private stopForegroundTimerI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerCycle;->suspend()V

    return-void
.end method

.method private teardownActivityStateS()V
    .locals 2

    .line 1
    const-class v0, Lcom/adjust/sdk/ActivityState;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private teardownAllGlobalParametersS()V
    .locals 2

    .line 1
    const-class v0, Lcom/adjust/sdk/GlobalParameters;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private teardownAttributionS()V
    .locals 2

    .line 1
    const-class v0, Lcom/adjust/sdk/AdjustAttribution;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private teardownEventMetadataS()V
    .locals 2

    .line 1
    const-class v0, Lcom/adjust/sdk/EventMetadata;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private toSendI()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v0

    return v0
.end method

.method private toSendI(Z)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->pausedI(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean p1, p1, Lcom/adjust/sdk/AdjustConfig;->isSendingInBackgroundEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isInForeground()Z

    move-result p1

    return p1
.end method

.method private trackAdRevenueI(Lcom/adjust/sdk/AdjustAdRevenue;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkAdjustAdRevenue(Lcom/adjust/sdk/AdjustAdRevenue;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 6
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 8
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 10
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 12
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->buildAdRevenuePackage(Lcom/adjust/sdk/AdjustAdRevenue;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 14
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private trackEventI(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkEventI(Lcom/adjust/sdk/AdjustEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p1, Lcom/adjust/sdk/AdjustEvent;->deduplicationId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->shouldProcessEventI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    return-void

    .line 7
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    iget-object v1, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/EventMetadata;->incrementSequenceForEvent(Ljava/lang/String;)I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 12
    invoke-direct {p0, v7, v8}, Lcom/adjust/sdk/ActivityHandler;->updateActivityStateI(J)Z

    .line 14
    new-instance v9, Lcom/adjust/sdk/PackageBuilder;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 16
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v1, v9, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 17
    invoke-virtual {v9, p1, v0}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage(Lcom/adjust/sdk/AdjustEvent;I)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 20
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 23
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean p1, p1, Lcom/adjust/sdk/AdjustConfig;->isSendingInBackgroundEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityHandler$InternalState;->isInBackground()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startBackgroundTimerI()V

    .line 27
    :cond_5
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 28
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeEventMetadataI()V

    return-void
.end method

.method private trackMeasurementConsentI(Z)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2
    new-instance v8, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v0, v8, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 7
    invoke-virtual {v8, p1}, Lcom/adjust/sdk/PackageBuilder;->buildMeasurementConsentPackage(Z)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 10
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private trackNewSessionI(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v1, p1, v1

    .line 3
    iget v3, v0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 4
    iput-wide v1, v0, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackageI(J)V

    .line 7
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 8
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    return-void
.end method

.method private trackPlayStoreSubscriptionI(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 5
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 7
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 9
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v1, v0, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 11
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->buildSubscriptionPackage(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 13
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private trackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2
    new-instance v8, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v0, v8, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 7
    invoke-virtual {v8, p1}, Lcom/adjust/sdk/PackageBuilder;->buildThirdPartySharingPackage(Lcom/adjust/sdk/AdjustThirdPartySharing;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 10
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private transferSessionPackageI(J)V
    .locals 9

    .line 1
    new-instance v8, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v0, v8

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 3
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object p1, v8, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 4
    invoke-virtual {v8}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p2, p1}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 6
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {p1}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private updateActivityStateI(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, p1, v2

    .line 6
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    return v1

    .line 9
    :cond_1
    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-gez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Time travel!"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-wide p1, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr p1, v2

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 15
    iget-wide p1, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr p1, v2

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private updateAdidI(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityStateI()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 17
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v3, v1, p1}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 40
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, v2, p1}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 42
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private updateHandlersStatusAndSendI()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->toSendI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->pauseSendingI()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->resumeSendingI()V

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    return-void
.end method

.method private updateStatusI(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->pausedI(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->pausedI(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, p3, p2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", except the Sdk Click Handler"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, p4, p2}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->updateHandlersStatusAndSendI()V

    return-void
.end method

.method private verifyAndTrackPlayStorePurchaseI(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Purchase verification aborted because verification callback is null"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v1, v1, Lcom/adjust/sdk/AdjustConfig;->isDataResidency:Z

    const-string v2, "not_verified"

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification not available for data residency users right now"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x6d

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x66

    const-string v3, "Purchase verification aborted because SDK is still not initialized"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 20
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x67

    const-string v3, "Purchase verification aborted because SDK is disabled"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 29
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v1, :cond_4

    .line 33
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x68

    const-string v3, "Purchase verification aborted because user is GDPR forgotten"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 38
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 42
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification aborted because event instance is null"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x6a

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 52
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 53
    new-instance v1, Lcom/adjust/sdk/PackageBuilder;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v8, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 55
    invoke-virtual {v1, p1, p2}, Lcom/adjust/sdk/PackageBuilder;->buildVerificationPackage(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    if-nez v1, :cond_6

    .line 57
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification aborted because verification package is null"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x6b

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 66
    :cond_6
    iput-object p1, v1, Lcom/adjust/sdk/ActivityPackage;->event:Lcom/adjust/sdk/AdjustEvent;

    .line 67
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    invoke-interface {p1, v1}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->sendPurchaseVerificationPackage(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private verifyPlayStorePurchaseI(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Purchase verification aborted because verification callback is null"

    invoke-interface {p1, v0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v1, v1, Lcom/adjust/sdk/AdjustConfig;->isDataResidency:Z

    const-string v2, "not_verified"

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification not available for data residency users right now"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x6d

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->checkActivityStateI(Lcom/adjust/sdk/ActivityState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x66

    const-string v3, "Purchase verification aborted because SDK is still not initialized"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 20
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x67

    const-string v3, "Purchase verification aborted because SDK is disabled"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 29
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    if-eqz v1, :cond_4

    .line 33
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v1, 0x68

    const-string v3, "Purchase verification aborted because user is GDPR forgotten"

    invoke-direct {p1, v2, v1, v3}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    .line 38
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v3, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 42
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification aborted because purchase instance is null"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x69

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 52
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 53
    new-instance v1, Lcom/adjust/sdk/PackageBuilder;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v6, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v8, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/adjust/sdk/PackageBuilder;-><init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/DeviceInfo;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/GlobalParameters;Lcom/adjust/sdk/FirstSessionDelayManager;J)V

    .line 55
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-object v3, v1, Lcom/adjust/sdk/PackageBuilder;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 57
    invoke-virtual {v1, p1, p2}, Lcom/adjust/sdk/PackageBuilder;->buildVerificationPackage(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    if-nez p1, :cond_6

    .line 59
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Purchase verification aborted because verification package is null"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance p1, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;

    const/16 v0, 0x6a

    invoke-direct {p1, v2, v0, v1}, Lcom/adjust/sdk/AdjustPurchaseVerificationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    invoke-interface {p2, p1}, Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;->onVerificationFinished(Lcom/adjust/sdk/AdjustPurchaseVerificationResult;)V

    return-void

    .line 68
    :cond_6
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    invoke-interface {p2, p1}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->sendPurchaseVerificationPackage(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private writeActivityStateI()V
    .locals 5

    .line 1
    const-class v0, Lcom/adjust/sdk/ActivityState;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "AdjustIoActivityState"

    const-string v4, "Activity state"

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeAttributionI()V
    .locals 5

    .line 1
    const-class v0, Lcom/adjust/sdk/AdjustAttribution;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "AdjustAttribution"

    const-string v4, "Attribution"

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeEventMetadataI()V
    .locals 5

    .line 1
    const-class v0, Lcom/adjust/sdk/EventMetadata;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventMetadata:Lcom/adjust/sdk/EventMetadata;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "AdjustEventMetadata"

    const-string v4, "Event metadata"

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeGlobalCallbackParametersI()V
    .locals 5

    .line 1
    const-class v0, Lcom/adjust/sdk/GlobalParameters;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "AdjustGlobalCallbackParameters"

    const-string v4, "Global Callback parameters"

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeGlobalPartnerParametersI()V
    .locals 5

    .line 1
    const-class v0, Lcom/adjust/sdk/GlobalParameters;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, v1, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v3, "AdjustGlobalPartnerParameters"

    const-string v4, "Global Partner parameters"

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Util;->writeObject(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addGlobalCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda29;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addGlobalCallbackParameterI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    const-string v1, "Global Callback"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 2
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 11
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Key %s already present with the same value"

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Key %s will be overwritten"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalCallbackParametersI()V

    return-void
.end method

.method public addGlobalPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda32;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addGlobalPartnerParameterI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    const-string v1, "Global Partner"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value"

    .line 2
    invoke-static {p2, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 11
    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Key %s already present with the same value"

    invoke-interface {p2, p1, v0}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Key %s will be overwritten"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalPartnerParametersI()V

    return-void
.end method

.method public backgroundTimerFired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$16;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$16;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public endFirstSessionDelay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda8;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->processRemoteTriggers(Lcom/adjust/sdk/ResponseData;)V

    .line 4
    instance-of v0, p1, Lcom/adjust/sdk/SessionResponseData;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Finished tracking session"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    check-cast p1, Lcom/adjust/sdk/SessionResponseData;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IAttributionHandler;->checkSessionResponse(Lcom/adjust/sdk/SessionResponseData;)V

    return-void

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/adjust/sdk/SdkClickResponseData;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/adjust/sdk/SdkClickResponseData;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkForInstallReferrerInfo(Lcom/adjust/sdk/SdkClickResponseData;)V

    .line 12
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IAttributionHandler;->checkSdkClickResponse(Lcom/adjust/sdk/SdkClickResponseData;)V

    return-void

    .line 16
    :cond_1
    instance-of v0, p1, Lcom/adjust/sdk/EventResponseData;

    if-eqz v0, :cond_2

    .line 17
    check-cast p1, Lcom/adjust/sdk/EventResponseData;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V

    return-void

    .line 21
    :cond_2
    instance-of v0, p1, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    if-eqz v0, :cond_3

    .line 22
    check-cast p1, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    invoke-virtual {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchPurchaseVerificationResponseTasks(Lcom/adjust/sdk/PurchaseVerificationResponseData;)V

    :cond_3
    return-void
.end method

.method public foregroundTimerFired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$15;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$15;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public gdprForgetMe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda16;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getActivityState()Lcom/adjust/sdk/ActivityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    return-object v0
.end method

.method public getAdid(Lcom/adjust/sdk/OnAdidReadListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$17;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$17;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnAdidReadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SDK needs to be initialized before getting adid"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/adjust/sdk/ActivityState;->adid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object p2, p2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/adjust/sdk/ActivityHandler$18;

    invoke-direct {p2, p0, p3}, Lcom/adjust/sdk/ActivityHandler$18;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnAdidReadListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SDK needs to be initialized before getting adid"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdidReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->queueGetAdidWithTimeout(JLcom/adjust/sdk/OnAdidReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method public getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-object v0
.end method

.method public getAttribution(Lcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$19;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$19;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnAttributionReadListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object p2, p2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/adjust/sdk/ActivityHandler$20;

    invoke-direct {p2, p0, p3}, Lcom/adjust/sdk/ActivityHandler$20;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnAttributionReadListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->queueGetAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/adjust/sdk/DeviceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    return-object v0
.end method

.method public getFirstSessionDelayManager()Lcom/adjust/sdk/FirstSessionDelayManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    return-object v0
.end method

.method public getGlobalParameters()Lcom/adjust/sdk/GlobalParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    return-object v0
.end method

.method public getInternalState()Lcom/adjust/sdk/ActivityHandler$InternalState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    return-object v0
.end method

.method public gotOptOutResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$14;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$14;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    return-void
.end method

.method public initI()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 4
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_INTERVAL:J

    .line 5
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerStart()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_START:J

    .line 6
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->BACKGROUND_TIMER_INTERVAL:J

    .line 8
    new-instance v0, Lcom/adjust/sdk/GlobalParameters;

    invoke-direct {v0}, Lcom/adjust/sdk/GlobalParameters;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    .line 9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readGlobalCallbackParametersI(Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readGlobalPartnerParametersI(Landroid/content/Context;)V

    .line 12
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v1}, Lcom/adjust/sdk/AdjustConfig;->getEventDeduplicationIdsMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityState;->setEventDeduplicationIdsMaxSize(Ljava/lang/Integer;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v0, Lcom/adjust/sdk/AdjustConfig;->startEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 17
    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$23;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$23;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 26
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Z

    iput-boolean v0, v3, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    .line 27
    iput-boolean v2, v3, Lcom/adjust/sdk/ActivityHandler$InternalState;->firstLaunch:Z

    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iput-boolean v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->firstLaunch:Z

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readConfigFile(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/adjust/sdk/DeviceInfo;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-direct {v0, v3}, Lcom/adjust/sdk/DeviceInfo;-><init>(Lcom/adjust/sdk/AdjustConfig;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    .line 36
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-virtual {v0, v3}, Lcom/adjust/sdk/DeviceInfo;->reloadPlayIds(Lcom/adjust/sdk/AdjustConfig;)V

    .line 37
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->playAdId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 38
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->canReadPlayIds(Lcom/adjust/sdk/AdjustConfig;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot read Google Play Services Advertising ID with COPPA or play store kids app enabled"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Unable to get Google Play Services Advertising ID at start time"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v0, v0, Lcom/adjust/sdk/DeviceInfo;->androidId:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 45
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->canReadNonPlayIds(Lcom/adjust/sdk/AdjustConfig;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot read non Play IDs with COPPA or play store kids app enabled"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Unable to get any Device IDs. Please check if Proguard is correctly set with Adjust SDK"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Google Play Services Advertising ID read correctly at start time"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 56
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "Default tracker: \'%s\'"

    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 61
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "Push token: \'%s\'"

    invoke-interface {v3, v0, v4}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_8

    .line 64
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/adjust/sdk/ActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    goto :goto_3

    .line 67
    :cond_8
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adjust/sdk/SharedPreferencesManager;->savePushToken(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_9
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_a

    .line 72
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getPushToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->setPushToken(Ljava/lang/String;Z)V

    .line 79
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    if-nez v0, :cond_b

    .line 80
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    .line 83
    :cond_b
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->handleAdidCallbackI()V

    .line 84
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->handleAttributionCallbackI()V

    .line 87
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_c

    .line 88
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getGdprForgetMe()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->gdprForgetMe()V

    .line 94
    :cond_c
    new-instance v0, Lcom/adjust/sdk/scheduler/TimerCycle;

    new-instance v4, Lcom/adjust/sdk/ActivityHandler$24;

    invoke-direct {v4, p0}, Lcom/adjust/sdk/ActivityHandler$24;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    sget-wide v5, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_START:J

    sget-wide v7, Lcom/adjust/sdk/ActivityHandler;->FOREGROUND_TIMER_INTERVAL:J

    const-string v9, "Foreground timer"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/adjust/sdk/scheduler/TimerCycle;-><init>(Ljava/lang/Runnable;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

    .line 103
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->isSendingInBackgroundEnabled:Z

    if-eqz v0, :cond_d

    .line 104
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Send in background configured"

    invoke-interface {v0, v4, v3}, Lcom/adjust/sdk/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/adjust/sdk/scheduler/TimerOnce;

    new-instance v3, Lcom/adjust/sdk/ActivityHandler$25;

    invoke-direct {v3, p0}, Lcom/adjust/sdk/ActivityHandler$25;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-string v4, "Background timer"

    invoke-direct {v0, v3, v4}, Lcom/adjust/sdk/scheduler/TimerOnce;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    .line 114
    :cond_d
    new-instance v0, Lcom/adjust/sdk/network/ActivityPackageSender;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v6, v3, Lcom/adjust/sdk/AdjustConfig;->urlStrategyDomains:Ljava/util/List;

    iget-boolean v7, v3, Lcom/adjust/sdk/AdjustConfig;->useSubdomains:Z

    iget-object v8, v3, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    iget-object v9, v3, Lcom/adjust/sdk/AdjustConfig;->gdprPath:Ljava/lang/String;

    iget-object v10, v3, Lcom/adjust/sdk/AdjustConfig;->subscriptionPath:Ljava/lang/String;

    iget-object v11, v3, Lcom/adjust/sdk/AdjustConfig;->purchaseVerificationPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v12, v4, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    iget-object v14, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const v13, 0xea60

    move-object v5, v0

    invoke-direct/range {v5 .. v14}, Lcom/adjust/sdk/network/ActivityPackageSender;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 125
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    .line 128
    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v4

    .line 129
    invoke-static {p0, v3, v4, v0}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;ZLcom/adjust/sdk/network/IActivityPackageSender;)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 135
    new-instance v0, Lcom/adjust/sdk/network/ActivityPackageSender;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, v3, Lcom/adjust/sdk/AdjustConfig;->urlStrategyDomains:Ljava/util/List;

    iget-boolean v5, v3, Lcom/adjust/sdk/AdjustConfig;->useSubdomains:Z

    iget-object v6, v3, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    iget-object v7, v3, Lcom/adjust/sdk/AdjustConfig;->gdprPath:Ljava/lang/String;

    iget-object v8, v3, Lcom/adjust/sdk/AdjustConfig;->subscriptionPath:Ljava/lang/String;

    iget-object v9, v3, Lcom/adjust/sdk/AdjustConfig;->purchaseVerificationPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v10, v10, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    iget-object v12, v3, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const v11, 0xea60

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/adjust/sdk/network/ActivityPackageSender;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 149
    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v2

    .line 150
    invoke-static {p0, v2, v0}, Lcom/adjust/sdk/AdjustFactory;->getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)Lcom/adjust/sdk/IAttributionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 155
    new-instance v0, Lcom/adjust/sdk/network/ActivityPackageSender;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v2, Lcom/adjust/sdk/AdjustConfig;->urlStrategyDomains:Ljava/util/List;

    iget-boolean v4, v2, Lcom/adjust/sdk/AdjustConfig;->useSubdomains:Z

    iget-object v5, v2, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    iget-object v6, v2, Lcom/adjust/sdk/AdjustConfig;->gdprPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/adjust/sdk/AdjustConfig;->subscriptionPath:Ljava/lang/String;

    iget-object v8, v2, Lcom/adjust/sdk/AdjustConfig;->purchaseVerificationPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v9, v9, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    iget-object v11, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const v10, 0xea60

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/adjust/sdk/network/ActivityPackageSender;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v2

    .line 170
    invoke-static {p0, v2, v0}, Lcom/adjust/sdk/AdjustFactory;->getSdkClickHandler(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)Lcom/adjust/sdk/ISdkClickHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 175
    new-instance v0, Lcom/adjust/sdk/network/ActivityPackageSender;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v3, v2, Lcom/adjust/sdk/AdjustConfig;->urlStrategyDomains:Ljava/util/List;

    iget-boolean v4, v2, Lcom/adjust/sdk/AdjustConfig;->useSubdomains:Z

    iget-object v5, v2, Lcom/adjust/sdk/AdjustConfig;->basePath:Ljava/lang/String;

    iget-object v6, v2, Lcom/adjust/sdk/AdjustConfig;->gdprPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/adjust/sdk/AdjustConfig;->subscriptionPath:Ljava/lang/String;

    iget-object v8, v2, Lcom/adjust/sdk/AdjustConfig;->purchaseVerificationPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    iget-object v9, v9, Lcom/adjust/sdk/DeviceInfo;->clientSdk:Ljava/lang/String;

    iget-object v11, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const/16 v10, 0x7530

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/adjust/sdk/network/ActivityPackageSender;-><init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->toSendI(Z)Z

    move-result v1

    .line 190
    invoke-static {p0, v1, v0}, Lcom/adjust/sdk/AdjustFactory;->getPurchaseVerificationHandler(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)Lcom/adjust/sdk/IPurchaseVerificationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    .line 195
    new-instance v0, Lcom/adjust/sdk/InstallReferrer;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    new-instance v2, Lcom/adjust/sdk/ActivityHandler$26;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/ActivityHandler$26;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/InstallReferrer;-><init>(Landroid/content/Context;Lcom/adjust/sdk/InstallReferrerReadListener;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->installReferrer:Lcom/adjust/sdk/InstallReferrer;

    .line 208
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->preLaunchActions:Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustInstance$PreLaunchActions;->preLaunchActionsArray:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->preLaunchActionsI(Ljava/util/List;)V

    .line 209
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->sendReftagReferrerI()V

    .line 211
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->bootstrapLifecycleI()V

    return-void
.end method

.method public isEnabled(Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda14;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnIsEnabledListener;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$addGlobalCallbackParameter$21$com-adjust-sdk-ActivityHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;

    invoke-direct {v1, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda47;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add global callback parameter"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$addGlobalPartnerParameter$23$com-adjust-sdk-ActivityHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda43;

    invoke-direct {v1, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "add global partner parameter"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method lambda$endFirstSessionDelay$48$com-adjust-sdk-ActivityHandler()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 2
    iget v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 5
    iput v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    .line 6
    iget-object v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v1}, Lcom/adjust/sdk/ActivityHandler;->initI()V

    .line 8
    iget-object v0, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Runnable;

    .line 9
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$gdprForgetMe$34$com-adjust-sdk-ActivityHandler()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->gdprForgetMeI()V

    return-void
.end method

.method synthetic lambda$gdprForgetMe$35$com-adjust-sdk-ActivityHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda30;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-string v2, "GDPR forget device"

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$isEnabled$10$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda15;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnIsEnabledListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$isEnabled$11$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda18;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/OnIsEnabledListener;)V

    const-string p1, "is SDK enabled"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$isEnabled$9$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/OnIsEnabledListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->isEnabledI()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/adjust/sdk/OnIsEnabledListener;->onIsEnabledRead(Z)V

    return-void
.end method

.method lambda$new$2$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readAttributionI(Landroid/content/Context;)V

    .line 2
    iget-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->readActivityStateI(Landroid/content/Context;)V

    .line 3
    iget-object p1, p1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->readEventMetadataI(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 5
    iget-object v0, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 6
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 7
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->isFirstSessionDelayEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 9
    iput v0, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 11
    iput v0, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    .line 12
    iget-object v0, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->initI()V

    .line 14
    iget-object p1, p1, Lcom/adjust/sdk/FirstSessionDelayManager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Runnable;

    .line 15
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic lambda$onActivityLifecycle$0$com-adjust-sdk-ActivityHandler(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->foregroundOrElseBackground:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ActivityHandler$InternalState;->foregroundOrElseBackground:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->onResumeI()V

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->onPauseI()V

    return-void
.end method

.method synthetic lambda$onActivityLifecycle$1$com-adjust-sdk-ActivityHandler(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda46;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    const-string p1, "activity state"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$processAndResolveDeeplink$14$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->processDeeplinkI(Lcom/adjust/sdk/AdjustDeeplink;J)V

    return-void
.end method

.method synthetic lambda$processAndResolveDeeplink$15$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V

    const-string p1, "process and resolve deep link"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$processDeeplink$12$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler;->processDeeplinkI(Lcom/adjust/sdk/AdjustDeeplink;J)V

    return-void
.end method

.method synthetic lambda$processDeeplink$13$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda40;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V

    const-string p1, "process deep link"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$removeGlobalCallbackParameter$25$com-adjust-sdk-ActivityHandler(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda44;-><init>(Ljava/lang/String;)V

    const-string p1, "remove global callback parameter"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$removeGlobalCallbackParameters$29$com-adjust-sdk-ActivityHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda50;-><init>()V

    const-string v2, "remove global callback parameters"

    invoke-virtual {v0, v2, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$removeGlobalPartnerParameter$27$com-adjust-sdk-ActivityHandler(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    const-string p1, "remove global partner parameter"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$removeGlobalPartnerParameters$31$com-adjust-sdk-ActivityHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "remove global partner parameters"

    invoke-virtual {v0, v2, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$sendPreinstallReferrer$18$com-adjust-sdk-ActivityHandler()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->sendPreinstallReferrerI()V

    return-void
.end method

.method synthetic lambda$sendPreinstallReferrer$19$com-adjust-sdk-ActivityHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda10;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-string v2, "send preinstall referrer"

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$sendReftagReferrer$16$com-adjust-sdk-ActivityHandler()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->sendReftagReferrerI()V

    return-void
.end method

.method synthetic lambda$sendReftagReferrer$17$com-adjust-sdk-ActivityHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda4;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-string v2, "send referrer"

    invoke-virtual {v0, v1, v2}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method lambda$setCoppaComplianceInDelay$49$com-adjust-sdk-ActivityHandler(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 2
    iget v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iput-boolean p1, v0, Lcom/adjust/sdk/AdjustConfig;->coppaComplianceEnabled:Z

    return-void
.end method

.method synthetic lambda$setEnabled$5$com-adjust-sdk-ActivityHandler(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabledI(Z)V

    return-void
.end method

.method synthetic lambda$setEnabled$6$com-adjust-sdk-ActivityHandler(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    if-eqz p1, :cond_0

    const-string v1, "enable"

    goto :goto_0

    :cond_0
    const-string v1, "disable"

    .line 2
    :goto_0
    new-instance v2, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda3;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method lambda$setExternalDeviceIdInDelay$51$com-adjust-sdk-ActivityHandler(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 2
    iget v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/adjust/sdk/AdjustConfig;->externalDeviceId:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$setOfflineMode$7$com-adjust-sdk-ActivityHandler(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->setOfflineModeI(Z)V

    return-void
.end method

.method synthetic lambda$setOfflineMode$8$com-adjust-sdk-ActivityHandler(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    if-eqz p1, :cond_0

    const-string v1, "put SDK in offline mode"

    goto :goto_0

    :cond_0
    const-string v1, "put SDK back to online mode"

    .line 2
    :goto_0
    new-instance v2, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda36;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method lambda$setPlayStoreKidsComplianceInDelay$50$com-adjust-sdk-ActivityHandler(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    .line 2
    iget v1, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->c:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/adjust/sdk/FirstSessionDelayManager;->a:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getAdjustConfig()Lcom/adjust/sdk/AdjustConfig;

    move-result-object v0

    iput-boolean p1, v0, Lcom/adjust/sdk/AdjustConfig;->playStoreKidsComplianceEnabled:Z

    return-void
.end method

.method synthetic lambda$setPushToken$32$com-adjust-sdk-ActivityHandler(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/adjust/sdk/SharedPreferencesManager;->savePushToken(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez p1, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-direct {p0, p2}, Lcom/adjust/sdk/ActivityHandler;->setPushTokenI(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setPushToken$33$com-adjust-sdk-ActivityHandler(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda5;-><init>(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V

    const-string p1, "set push token"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$trackAdRevenue$40$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustAdRevenue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackAdRevenueI(Lcom/adjust/sdk/AdjustAdRevenue;)V

    return-void
.end method

.method synthetic lambda$trackAdRevenue$41$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustAdRevenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda39;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustAdRevenue;)V

    const-string p1, "track ad revenue"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$trackEvent$3$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Event tracked before first activity resumed.\nIf it was triggered in the Application class, it might timestamp or even send an install long before the user opens the app.\nPlease check https://github.com/adjust/android_sdk#can-i-trigger-an-event-at-application-launch for more information."

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startI()V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventI(Lcom/adjust/sdk/AdjustEvent;)V

    return-void
.end method

.method synthetic lambda$trackEvent$4$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda11;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    const-string p1, "track event"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$trackMeasurementConsent$39$com-adjust-sdk-ActivityHandler(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda45;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda45;-><init>(Z)V

    const-string p1, "track measurement consent"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$trackPlayStoreSubscription$42$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackPlayStoreSubscriptionI(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V

    return-void
.end method

.method synthetic lambda$trackPlayStoreSubscription$43$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda2;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V

    const-string p1, "track play store subscription"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$trackThirdPartySharing$37$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda38;

    invoke-direct {v1, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda38;-><init>(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    const-string p1, "track third party sharing"

    invoke-virtual {v0, p1, v1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/String;Lcom/adjust/sdk/IRunActivityHandler;)V

    return-void
.end method

.method synthetic lambda$verifyAndTrackPlayStorePurchase$46$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->verifyAndTrackPlayStorePurchaseI(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    return-void
.end method

.method synthetic lambda$verifyAndTrackPlayStorePurchase$47$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda6;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    const-string p1, "verify and track play store purchase"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$verifyPlayStorePurchase$44$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->verifyPlayStorePurchaseI(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    return-void
.end method

.method synthetic lambda$verifyPlayStorePurchase$45$com-adjust-sdk-ActivityHandler(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->firstSessionDelayManager:Lcom/adjust/sdk/FirstSessionDelayManager;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda20;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    const-string p1, "verify play store purchase"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/FirstSessionDelayManager;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public launchAttributionResponseTasks(Lcom/adjust/sdk/AttributionResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$11;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$11;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AttributionResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchEventResponseTasks(Lcom/adjust/sdk/EventResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$8;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$8;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/EventResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchPurchaseVerificationResponseTasks(Lcom/adjust/sdk/PurchaseVerificationResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$12;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$12;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PurchaseVerificationResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchSdkClickResponseTasks(Lcom/adjust/sdk/SdkClickResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$9;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$9;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SdkClickResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchSessionResponseTasks(Lcom/adjust/sdk/SessionResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$10;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$10;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/SessionResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityLifecycle(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda41;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :catch_0
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception while executing onActivityLifecycle task"

    .line 22
    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->onActivityLifecycle(Z)V

    return-void
.end method

.method public onPauseI()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopForegroundTimerI()V

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startBackgroundTimerI()V

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Subsession end"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endI()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->onActivityLifecycle(Z)V

    return-void
.end method

.method public onResumeI()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopBackgroundTimerI()V

    .line 3
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startForegroundTimerI()V

    .line 5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Subsession start"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startI()V

    return-void
.end method

.method public processAndResolveDeeplink(Lcom/adjust/sdk/AdjustDeeplink;JLcom/adjust/sdk/OnDeeplinkResolvedListener;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/adjust/sdk/ActivityHandler;->cachedDeeplinkResolutionCallback:Lcom/adjust/sdk/OnDeeplinkResolvedListener;

    .line 2
    iget-object p4, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v0, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda23;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V

    invoke-interface {p4, v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda31;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustDeeplink;J)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processRemoteTriggers(Lcom/adjust/sdk/ResponseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$13;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$13;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGlobalCallbackParameter(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda9;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGlobalCallbackParameterI(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    const-string v1, "Session Callback"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Session Callback parameters are not set"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Key %s does not exist"

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Key %s will be removed"

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalCallbackParametersI()V

    return-void
.end method

.method public removeGlobalCallbackParameters()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda24;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGlobalCallbackParametersI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Session Callback parameters are not set"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalCallbackParametersI()V

    return-void
.end method

.method public removeGlobalPartnerParameter(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda48;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGlobalPartnerParameterI(Ljava/lang/String;)V
    .locals 3

    const-string v0, "key"

    const-string v1, "Session Partner"

    .line 1
    invoke-static {p1, v0, v1}, Lcom/adjust/sdk/Util;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Session Partner parameters are not set"

    invoke-interface {p1, v1, v0}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Key %s does not exist"

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Key %s will be removed"

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalPartnerParametersI()V

    return-void
.end method

.method public removeGlobalPartnerParameters()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda17;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeGlobalPartnerParametersI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Session Partner parameters are not set"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    .line 7
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeGlobalPartnerParametersI()V

    return-void
.end method

.method public sendInstallReferrer(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$6;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLicenseVerificationData(Lcom/adjust/sdk/LicenseData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$7;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$7;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/LicenseData;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPreinstallReferrer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda25;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendReftagReferrer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda35;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAskingAttribution(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$5;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCoppaComplianceInDelay(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda49;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda26;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExternalDeviceIdInDelay(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda13;-><init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOfflineMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda42;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlayStoreKidsComplianceInDelay(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda51;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPushToken(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda12;-><init>(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public teardown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerOnce;->teardown()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/adjust/sdk/scheduler/TimerCycle;->teardown()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->teardown()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->teardown()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Lcom/adjust/sdk/IAttributionHandler;->teardown()V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Lcom/adjust/sdk/ISdkClickHandler;->teardown()V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    if-eqz v0, :cond_6

    .line 20
    invoke-interface {v0}, Lcom/adjust/sdk/IPurchaseVerificationHandler;->teardown()V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    if-eqz v0, :cond_8

    .line 23
    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->callbackParameters:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    iget-object v0, v0, Lcom/adjust/sdk/GlobalParameters;->partnerParameters:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    :cond_8
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->teardownActivityStateS()V

    .line 32
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->teardownAttributionS()V

    .line 33
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->teardownAllGlobalParametersS()V

    .line 34
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->teardownEventMetadataS()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 37
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 38
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->foregroundTimer:Lcom/adjust/sdk/scheduler/TimerCycle;

    .line 39
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    .line 40
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->backgroundTimer:Lcom/adjust/sdk/scheduler/TimerOnce;

    .line 41
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->internalState:Lcom/adjust/sdk/ActivityHandler$InternalState;

    .line 42
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->deviceInfo:Lcom/adjust/sdk/DeviceInfo;

    .line 43
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    .line 44
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 45
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 46
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->purchaseVerificationHandler:Lcom/adjust/sdk/IPurchaseVerificationHandler;

    .line 47
    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->globalParameters:Lcom/adjust/sdk/GlobalParameters;

    return-void
.end method

.method public trackAdRevenue(Lcom/adjust/sdk/AdjustAdRevenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda21;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustAdRevenue;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda0;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackMeasurementConsent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda27;-><init>(Lcom/adjust/sdk/ActivityHandler;Z)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackPlayStoreSubscription(Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda37;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustPlayStoreSubscription;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackThirdPartySharing(Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda33;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tryTrackMeasurementConsentI(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->canTrackMeasurementConsentI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackMeasurementConsentI(Z)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedLastMeasurementConsentTrack:Ljava/lang/Boolean;

    return-void
.end method

.method public tryTrackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->canTrackThirdPartySharingI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackThirdPartySharingI(Lcom/adjust/sdk/AdjustThirdPartySharing;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAdjustThirdPartySharingArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAttributionI(Lcom/adjust/sdk/AdjustAttribution;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, v1, Lcom/adjust/sdk/ActivityState;->askingAttribution:Z

    if-eqz v1, :cond_1

    return v0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 11
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 16
    new-instance v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v4, v4, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/adjust/sdk/ActivityHandler$3;

    invoke-direct {v4, v2, p1}, Lcom/adjust/sdk/ActivityHandler$3;-><init>(Ljava/util/ArrayList;Lcom/adjust/sdk/AdjustAttribution;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_3
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->cachedAttributionReadTimeoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 39
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->adjustConfig:Lcom/adjust/sdk/AdjustConfig;

    iget-object v2, v2, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/adjust/sdk/ActivityHandler$4;

    invoke-direct {v2, v3, p1}, Lcom/adjust/sdk/ActivityHandler$4;-><init>(Ljava/util/ArrayList;Lcom/adjust/sdk/AdjustAttribution;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    invoke-virtual {p1, v1}, Lcom/adjust/sdk/AdjustAttribution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    .line 65
    :cond_6
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->attribution:Lcom/adjust/sdk/AdjustAttribution;

    .line 66
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeAttributionI()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 67
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 68
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public verifyAndTrackPlayStorePurchase(Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda34;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustEvent;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyPlayStorePurchase(Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->executor:Lcom/adjust/sdk/scheduler/ThreadExecutor;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$$ExternalSyntheticLambda19;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/AdjustPlayStorePurchase;Lcom/adjust/sdk/OnPurchaseVerificationFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method
