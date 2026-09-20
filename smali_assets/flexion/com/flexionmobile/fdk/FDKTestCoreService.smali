.class public Lcom/flexionmobile/fdk/FDKTestCoreService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flexionmobile/fdk/CoreServiceInternal;


# static fields
.field private static final BILLING_TIMEOUT_SECONDS:J = 0x78L

.field private static final LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

.field private static final TAG:Ljava/lang/String; = "FlexionBridge"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final fdkPhoenix:Lcom/flexionmobile/fdk/g;

.field private remoteService:Lcom/flexionmobile/sdk/FDKTestBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "FlexionBridge"

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/flexionmobile/fdk/g;

    invoke-direct {v0}, Lcom/flexionmobile/fdk/g;-><init>()V

    iput-object v0, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->fdkPhoenix:Lcom/flexionmobile/fdk/g;

    return-void
.end method

.method static synthetic access$000()Lcom/flexionmobile/fdk/FdkAndroidLogger;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    return-object v0
.end method

.method private getMetaData()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Lcom/flexionmobile/fdk/FDKTestCoreService;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic lambda$initApplication$1(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 6

    sget-object v0, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Flexion Application initialization started..."

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/flexionmobile/fdk/i;->i()V

    sget-object v2, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flexion Application initialization successfully finished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$V5A6HWEztfQZN8jjfSyGN2t-Ntc;

    invoke-direct {v0, p0}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$V5A6HWEztfQZN8jjfSyGN2t-Ntc;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-static {v0}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 1

    const-string v0, "Flexion Application initialization successfully finished."

    invoke-static {v0}, Lcom/flexionmobile/fdk/InitSuccessResult;->of(Ljava/lang/String;)Lcom/flexionmobile/fdk/InitSuccessResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v1, "Initialize Flexion Startup Flow timed out."

    invoke-static {v0, v1}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onAuthenticationFinished$4(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 1

    const-string v0, "Flexion Startup Flow initialization successfully finished."

    invoke-static {v0}, Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;->of(Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onAuthenticationFinished$5(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_NOT_INITIALIZED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v1, "Startup flow failed."

    invoke-static {v0, v1}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onAuthenticationFinished$6(Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2

    sget-object v0, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_NOT_STARTED:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string v1, "Startup flow could not be started."

    invoke-static {v0, v1}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private registerPhoenix(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/flexionmobile/fdk/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Application;

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->fdkPhoenix:Lcom/flexionmobile/fdk/g;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/flexionmobile/fdk/i;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->fdkPhoenix:Lcom/flexionmobile/fdk/g;

    invoke-virtual {v0}, Lcom/flexionmobile/fdk/g;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public initApplication(Landroid/content/Context;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitErrorResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/FDKTestCoreService;->registerPhoenix(Landroid/content/Context;)V

    sget-object p1, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string p3, "Registered Flexion lifecycle callbacks"

    invoke-virtual {p1, p3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$w68dCh5f21n8ZFsAlFdZSF-Q2xY;

    invoke-direct {p3, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$w68dCh5f21n8ZFsAlFdZSF-Q2xY;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initStartupFlow(Landroid/app/Activity;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/flexionmobile/fdk/i;->m()V

    iget-object v0, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$Wqao1wupDPa_n0LrZCgldwBAx_c;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$Wqao1wupDPa_n0LrZCgldwBAx_c;-><init>(Lcom/flexionmobile/fdk/FDKTestCoreService;Lcom/flexionmobile/fdk/ResultHandler;Landroid/app/Activity;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$initStartupFlow$3$FDKTestCoreService(Lcom/flexionmobile/fdk/ResultHandler;Landroid/app/Activity;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 7

    const-string v0, "Could not bind to remote service!"

    const-string v1, "Fatal error:"

    const-wide/16 v2, 0x78

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lcom/flexionmobile/fdk/i;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/flexionmobile/fdk/i;->l()V

    new-instance p2, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$6cErj2bJfPr1h_xx-PH3HeBwMkc;

    invoke-direct {p2, p1}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$6cErj2bJfPr1h_xx-PH3HeBwMkc;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-static {p2}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v2, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v3, "Flexion Startup Flow initialization started..."

    invoke-virtual {v2, v3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v4

    iput-object v4, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->remoteService:Lcom/flexionmobile/sdk/FDKTestBillingService;

    if-nez v4, :cond_1

    sget-object p2, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    invoke-static {p2, v0}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/flexionmobile/fdk/d;

    invoke-direct {v5, p0}, Lcom/flexionmobile/fdk/d;-><init>(Lcom/flexionmobile/fdk/FDKTestCoreService;)V

    invoke-virtual {v4, v5}, Lcom/flexionmobile/fdk/eventbus/EventBus;->register(Lcom/flexionmobile/fdk/eventbus/EventListener;)V

    invoke-static {}, Lcom/flexionmobile/fdk/eventbus/EventBus;->getInstance()Lcom/flexionmobile/fdk/eventbus/EventBus;

    move-result-object v4

    new-instance v5, Lcom/flexionmobile/fdk/e;

    invoke-direct {v5, p0, p3, p1}, Lcom/flexionmobile/fdk/e;-><init>(Lcom/flexionmobile/fdk/FDKTestCoreService;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V

    invoke-virtual {v4, v5}, Lcom/flexionmobile/fdk/eventbus/EventBus;->register(Lcom/flexionmobile/fdk/eventbus/EventListener;)V

    new-instance p3, Landroid/content/Intent;

    const-string v4, "com.flexionmobile.fdk.activity.ExternalFlexionActivity"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p3, p2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/flexionmobile/fdk/activity/FlexionProxyActivity;

    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "startupFlowMode"

    const-string v6, "launchExternal"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "startupFlowStarted"

    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "FDK_REQUEST_CODE"

    const/16 v3, 0x1d6b

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "TARGET_INTENT"

    invoke-virtual {v4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/flexionmobile/fdk/exception/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    sget-object p3, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    invoke-virtual {p3, v1, p2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->ERROR:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    invoke-static {p2, v0}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object p2

    goto :goto_1

    :catch_2
    move-exception p2

    sget-object p3, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    invoke-virtual {p3, v1, p2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;->FLOW_ACTIVITY_NOT_FOUND:Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;

    const-string p3, "Target activity not found, failing init flow!"

    invoke-static {p2, p3}, Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;->of(Lcom/flexionmobile/fdk/InitStartupFlowErrorResult$ResponseCode;Ljava/lang/String;)Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Lcom/flexionmobile/fdk/ResultHandler;->accept(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onAuthenticationFinished(Landroid/os/Bundle;Lcom/flexionmobile/fdk/ResultHandler;Lcom/flexionmobile/fdk/ResultHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowSuccessResult;",
            ">;",
            "Lcom/flexionmobile/fdk/ResultHandler<",
            "Lcom/flexionmobile/fdk/InitStartupFlowErrorResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "startupFlowStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "startupFlowResultCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "startupFlowMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    if-nez v2, :cond_0

    sget-object p3, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flexion Startup Flow initialization successfully finished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds. Launch mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/flexionmobile/fdk/i;->k()V

    new-instance p1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$9a0LG9GcOxeyMzjXWkMg_Twd1Hs;

    invoke-direct {p1, p2}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$9a0LG9GcOxeyMzjXWkMg_Twd1Hs;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    :goto_0
    invoke-static {p1}, Lcom/flexionmobile/fdk/k;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne v2, p1, :cond_1

    invoke-static {}, Lcom/flexionmobile/fdk/i;->l()V

    new-instance p1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$W2mX3QNHdcAcXTSsSzBQMSj3oMw;

    invoke-direct {p1, p3}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$W2mX3QNHdcAcXTSsSzBQMSj3oMw;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v2, p1, :cond_2

    invoke-static {}, Lcom/flexionmobile/fdk/i;->l()V

    new-instance p1, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$ZaCDVhYfwBj4qwJbuEhyS-cRSBk;

    invoke-direct {p1, p3}, Lcom/flexionmobile/fdk/-$$Lambda$FDKTestCoreService$ZaCDVhYfwBj4qwJbuEhyS-cRSBk;-><init>(Lcom/flexionmobile/fdk/ResultHandler;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onExternalFlexionActivityStarted()V
    .locals 4

    const-string v0, "com.flexionmobile.fdk.apptoken"

    :try_start_0
    invoke-direct {p0}, Lcom/flexionmobile/fdk/FDKTestCoreService;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/flexionmobile/fdk/b;->a()Lcom/flexionmobile/fdk/b;

    move-result-object v1

    iget-object v2, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->fdkPhoenix:Lcom/flexionmobile/fdk/g;

    invoke-virtual {v2}, Lcom/flexionmobile/fdk/g;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flexionmobile/sdk/FDKTestBillingService;->initStartupFlow(Ljava/lang/String;)Lcom/flexionmobile/sdk/parcel/StartupData;

    move-result-object v0

    const-string v1, "FlexionBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved startupData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/flexionmobile/sdk/parcel/StartupData;->getAuthIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/flexionmobile/fdk/FDKTestCoreService;->fdkPhoenix:Lcom/flexionmobile/fdk/g;

    invoke-virtual {v1}, Lcom/flexionmobile/fdk/g;->a()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x1e33

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lcom/flexionmobile/fdk/FDKTestCoreService;->LOG:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Error during ExternalFlexionActivity start: "

    invoke-virtual {v1, v2, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
