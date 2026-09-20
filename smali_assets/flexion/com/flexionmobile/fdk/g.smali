.class public Lcom/flexionmobile/fdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/flexionmobile/fdk/FdkAndroidLogger;


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/flexionmobile/fdk/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexionmobile/fdk/g;->a:Ljava/lang/String;

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    sget-object v1, Lcom/flexionmobile/fdk/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flexionmobile/fdk/g;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "sdk-type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "unity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic b(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/g;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/flexionmobile/fdk/i;->c(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    invoke-static {}, Lcom/flexionmobile/fdk/i;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v1, "Restarting game Process"

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lcom/flexionmobile/fdk/activity/GameRestartActivity;->triggerRebirth(Landroid/content/Context;[Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$wVvzpn_GZtm3D_DUnHczAkNqGfA(Lcom/flexionmobile/fdk/g;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/g;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/fdk/g;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget-object p2, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flexionmobile/fdk/g;->d:Landroid/app/Activity;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flexionmobile/fdk/g;->d:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    sget-object p2, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivitySaveInstanceState called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flexionmobile/fdk/g;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexionmobile/fdk/g;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$g$wVvzpn_GZtm3D_DUnHczAkNqGfA;

    invoke-direct {v1, p0, p1}, Lcom/flexionmobile/fdk/-$$Lambda$g$wVvzpn_GZtm3D_DUnHczAkNqGfA;-><init>(Lcom/flexionmobile/fdk/g;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/flexionmobile/fdk/g;->b:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->d(Ljava/lang/String;)V

    return-void
.end method
