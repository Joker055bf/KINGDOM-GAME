.class public Lcom/applovin/impl/sdk/array/ArrayService;
.super Lcom/applovin/array/apphub/aidl/IAppHubDirectDownloadServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;,
        Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;
    }
.end annotation


# static fields
.field private static final MAX_RECONNECT_RETRY_COUNT:I = 0x3

.field private static final SERVICE_INTENT_CLASS_NAME:Ljava/lang/String; = "com.applovin.oem.am.android.external.AppHubService"

.field private static final SERVICE_INTENT_FILTER_ACTION:Ljava/lang/String; = "com.applovin.am.intent.action.APPHUB_SERVICE"

.field private static final TAG:Ljava/lang/String; = "ArrayService"


# instance fields
.field private appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

.field private final appHubServiceIntent:Landroid/content/Intent;

.field private appHubVersionCode:J

.field private currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

.field private currentRetryCount:I

.field private final dataCollector:Lcom/applovin/impl/sdk/array/ArrayDataCollector;

.field private isDirectDownloadEnabled:Z

.field private final logger:Lcom/applovin/impl/sdk/y;

.field private randomUserToken:Ljava/lang/String;

.field private final sdk:Lcom/applovin/impl/sdk/p;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/applovin/array/apphub/aidl/IAppHubDirectDownloadServiceCallback$Stub;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubVersionCode:J

    .line 84
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->sdk:Lcom/applovin/impl/sdk/p;

    .line 85
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    .line 86
    new-instance v0, Lcom/applovin/impl/sdk/array/ArrayDataCollector;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/array/ArrayDataCollector;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->dataCollector:Lcom/applovin/impl/sdk/array/ArrayDataCollector;

    .line 87
    invoke-direct {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->createAppHubServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->bindAppHubService()V

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->w()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    new-instance v0, Lcom/applovin/impl/sdk/array/ArrayService$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/array/ArrayService$1;-><init>(Lcom/applovin/impl/sdk/array/ArrayService;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    return-void
.end method

.method static synthetic access$000(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    return-object p0
.end method

.method static synthetic access$002(Lcom/applovin/impl/sdk/array/ArrayService;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applovin/impl/sdk/array/ArrayService;)Lcom/applovin/array/apphub/aidl/IAppHubService;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/applovin/impl/sdk/array/ArrayService;Lcom/applovin/array/apphub/aidl/IAppHubService;)Lcom/applovin/array/apphub/aidl/IAppHubService;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/applovin/impl/sdk/array/ArrayService;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->bindAppHubService()V

    return-void
.end method

.method private bindAppHubService()V
    .locals 5

    .line 278
    iget v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentRetryCount:I

    const/4 v1, 0x3

    const-string v2, "ArrayService"

    if-le v0, v1, :cond_1

    .line 280
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "Exceeded maximum retry count"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "Attempting connection to App Hub service..."

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    iget v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentRetryCount:I

    .line 290
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubServiceIntent:Landroid/content/Intent;

    new-instance v4, Lcom/applovin/impl/sdk/array/ArrayService$2;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/array/ArrayService$2;-><init>(Lcom/applovin/impl/sdk/array/ArrayService;)V

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "App Hub not available"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v3, "Failed to bind to service"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private createAppHubServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.applovin.am.intent.action.APPHUB_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 269
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.applovin.oem.am.android.external.AppHubService"

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 264
    :cond_1
    :goto_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "ArrayService"

    const-string v2, "App Hub not available"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isOneClickDownloadEnabled()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "array_one_click_download"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public collectAppHubData()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->isAppHubInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v1, "ArrayService"

    const-string v2, "Collecting data..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->dataCollector:Lcom/applovin/impl/sdk/array/ArrayDataCollector;

    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->maybeCollectAppHubVersionCode(Lcom/applovin/array/apphub/aidl/IAppHubService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubVersionCode:J

    .line 181
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->dataCollector:Lcom/applovin/impl/sdk/array/ArrayDataCollector;

    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->maybeCollectDirectDownloadEnabled(Lcom/applovin/array/apphub/aidl/IAppHubService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->isDirectDownloadEnabled:Z

    .line 182
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->dataCollector:Lcom/applovin/impl/sdk/array/ArrayDataCollector;

    iget-object v1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/array/ArrayDataCollector;->maybeCollectRandomUserToken(Lcom/applovin/array/apphub/aidl/IAppHubService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->randomUserToken:Ljava/lang/String;

    return-void
.end method

.method public getAppHubVersionCode()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubVersionCode:J

    return-wide v0
.end method

.method public getRandomUserToken()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->randomUserToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAppHubInstalled()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectDownloadEnabled()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->isDirectDownloadEnabled:Z

    return v0
.end method

.method public onAppDetailsDismissed(Ljava/lang/String;)V
    .locals 2

    .line 218
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "ArrayService"

    const-string v1, "App details dismissed"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    if-nez p1, :cond_1

    return-void

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$400(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onAppDetailsDismissed()V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    return-void
.end method

.method public onAppDetailsShown(Ljava/lang/String;)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "ArrayService"

    const-string v1, "App details shown"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    if-nez p1, :cond_1

    return-void

    .line 212
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$400(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onAppDetailsDisplayed()V

    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "ArrayService"

    const-string v1, "Download started"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encountered error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ArrayService"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    if-nez p1, :cond_1

    return-void

    .line 196
    :cond_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$600(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 198
    invoke-static {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$400(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onFailure()V

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    :cond_2
    return-void
.end method

.method public startDirectInstallOrDownloadProcess(Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;)V
    .locals 6

    .line 122
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->isAppHubInstalled()Z

    move-result v0

    const-string v1, "ArrayService"

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Cannot begin Direct Install / Download process - service disconnected"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-interface {p2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onFailure()V

    return-void

    .line 129
    :cond_1
    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;->isDirectDownloadEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Cannot begin Direct Install / Download process - missing token"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    invoke-interface {p2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onFailure()V

    return-void

    .line 138
    :cond_3
    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;->getDirectDownloadToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;->getDirectDownloadParameters()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, v2, p1, p2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    .line 141
    iget-wide v2, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubVersionCode:J

    const-wide/16 v4, 0x21

    cmp-long p1, v2, v4

    if-ltz p1, :cond_5

    invoke-direct {p0}, Lcom/applovin/impl/sdk/array/ArrayService;->isOneClickDownloadEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 143
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Starting Direct Install process"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$200(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-static {v2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p1, v0, v2, p0}, Lcom/applovin/array/apphub/aidl/IAppHubService;->directInstall(Ljava/lang/String;Landroid/os/Bundle;Lcom/applovin/array/apphub/aidl/IAppHubDirectDownloadServiceCallback;)V

    .line 145
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Direct Install started"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Starting Direct Download Activity"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    iget-wide v2, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubVersionCode:J

    const-wide/16 v4, 0x15

    cmp-long p1, v2, v4

    if-ltz p1, :cond_7

    .line 153
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$200(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-static {v2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$500(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p1, v0, v2, p0}, Lcom/applovin/array/apphub/aidl/IAppHubService;->showDirectDownloadAppDetailsWithExtra(Ljava/lang/String;Landroid/os/Bundle;Lcom/applovin/array/apphub/aidl/IAppHubDirectDownloadServiceCallback;)V

    goto :goto_0

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->appHubService:Lcom/applovin/array/apphub/aidl/IAppHubService;

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    invoke-static {v0}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;->access$200(Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/applovin/array/apphub/aidl/IAppHubService;->showDirectDownloadAppDetails(Ljava/lang/String;Lcom/applovin/array/apphub/aidl/IAppHubDirectDownloadServiceCallback;)V

    .line 160
    :goto_0
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v0, "Activity started"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 165
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/applovin/impl/sdk/array/ArrayService;->logger:Lcom/applovin/impl/sdk/y;

    const-string v2, "Failed to begin Direct Install / Download process"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/applovin/impl/sdk/array/ArrayService;->currentDownloadState:Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadState;

    .line 167
    invoke-interface {p2}, Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;->onFailure()V

    :cond_9
    :goto_1
    return-void
.end method
