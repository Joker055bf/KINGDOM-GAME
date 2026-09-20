.class public Lcom/flexionmobile/fdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Lcom/flexionmobile/fdk/FdkAndroidLogger;

.field private static final b:Lcom/flexionmobile/fdk/b;

.field private static c:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private d:Lcom/flexionmobile/sdk/FDKTestBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-class v1, Lcom/flexionmobile/fdk/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flexionmobile/fdk/FdkAndroidLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flexionmobile/fdk/b;->a:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    new-instance v0, Lcom/flexionmobile/fdk/b;

    invoke-direct {v0}, Lcom/flexionmobile/fdk/b;-><init>()V

    sput-object v0, Lcom/flexionmobile/fdk/b;->b:Lcom/flexionmobile/fdk/b;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/flexionmobile/fdk/b;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lcom/flexionmobile/fdk/b;
    .locals 1

    sget-object v0, Lcom/flexionmobile/fdk/b;->b:Lcom/flexionmobile/fdk/b;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.flexionmobile.testapp.CoreService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.flexionmobile.fdktester"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/flexionmobile/fdk/b;->a(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientSessionId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/flexionmobile/fdk/b;->a:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v3, "Binding remote service..."

    invoke-virtual {v2, v3}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->i(Ljava/lang/String;)V

    sget-object v2, Lcom/flexionmobile/fdk/b;->b:Lcom/flexionmobile/fdk/b;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/flexionmobile/fdk/b;->a:Lcom/flexionmobile/fdk/FdkAndroidLogger;

    const-string v2, "Tester app not installed, can\'t continue!"

    invoke-virtual {v0, v2}, Lcom/flexionmobile/fdk/FdkAndroidLogger;->e(Ljava/lang/String;)V

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    sget-object p1, Lcom/flexionmobile/fdk/b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method

.method private synthetic c(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$tP6MGPSRphacPyxj9A0a3wM-3R0(Lcom/flexionmobile/fdk/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexionmobile/fdk/b;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lcom/flexionmobile/sdk/FDKTestBillingService;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flexionmobile/fdk/b;->d:Lcom/flexionmobile/sdk/FDKTestBillingService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/flexionmobile/fdk/b;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/flexionmobile/fdk/-$$Lambda$b$tP6MGPSRphacPyxj9A0a3wM-3R0;

    invoke-direct {v1, p0, p1}, Lcom/flexionmobile/fdk/-$$Lambda$b$tP6MGPSRphacPyxj9A0a3wM-3R0;-><init>(Lcom/flexionmobile/fdk/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/flexionmobile/fdk/b;->c:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/flexionmobile/fdk/exception/b;

    const-string v0, "Could not bind to CTM Application"

    invoke-direct {p1, v0}, Lcom/flexionmobile/fdk/exception/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/flexionmobile/fdk/b;->d:Lcom/flexionmobile/sdk/FDKTestBillingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/flexionmobile/sdk/FDKTestBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flexionmobile/sdk/FDKTestBillingService;

    move-result-object p1

    iput-object p1, p0, Lcom/flexionmobile/fdk/b;->d:Lcom/flexionmobile/sdk/FDKTestBillingService;

    sget-object p1, Lcom/flexionmobile/fdk/b;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/flexionmobile/fdk/b;->d:Lcom/flexionmobile/sdk/FDKTestBillingService;

    return-void
.end method
