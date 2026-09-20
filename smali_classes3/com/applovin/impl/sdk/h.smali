.class public Lcom/applovin/impl/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/h$a;,
        Lcom/applovin/impl/sdk/h$b;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final m:Lcom/applovin/impl/sdk/h;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/applovin/impl/sdk/p;

.field private i:Ljava/lang/Thread;

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/applovin/impl/sdk/h;->a:I

    .line 56
    new-instance v0, Lcom/applovin/impl/sdk/h;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/h;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/h;->m:Lcom/applovin/impl/sdk/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "applovin-anr-detector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Landroid/os/HandlerThread;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/h;->j:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/sdk/h;->k:J

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/h;->l:J

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 226
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/h;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->i:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/applovin/impl/sdk/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/p;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 210
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fA:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/applovin/impl/sdk/h;->m:Lcom/applovin/impl/sdk/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/h;->b(Lcom/applovin/impl/sdk/p;)V

    goto :goto_0

    .line 217
    :cond_0
    sget-object p0, Lcom/applovin/impl/sdk/h;->m:Lcom/applovin/impl/sdk/h;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/h;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private b()V
    .locals 5

    const-string v0, "applovin-anr-detector"

    const-string v1, "ANR reported with code "

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/h;->c()Ljava/net/URL;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 107
    sget v3, Lcom/applovin/impl/sdk/h;->a:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    .line 109
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 110
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 111
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    .line 112
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 113
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 115
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Failed to report ANR"

    .line 120
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/p;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    .line 69
    new-instance v0, Lcom/applovin/impl/sdk/h$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/h$1;-><init>(Lcom/applovin/impl/sdk/h;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fB:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/h;->j:J

    .line 79
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fC:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/h;->k:J

    .line 80
    sget-object v0, Lcom/applovin/impl/sdk/c/b;->fD:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/h;->l:J

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->c:Landroid/os/Handler;

    .line 84
    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 86
    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->c:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/sdk/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/h$b;-><init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/h$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/h;->e:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/applovin/impl/sdk/h$a;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/h$a;-><init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/h$1;)V

    iget-wide v1, p0, Lcom/applovin/impl/sdk/h;->l:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/h;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/applovin/impl/sdk/h;->k:J

    return-wide v0
.end method

.method private c()Ljava/net/URL;
    .locals 11

    const-string v0, ""

    .line 127
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 137
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :catchall_1
    move-object v4, v2

    .line 146
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/p;->Z()Lcom/applovin/impl/sdk/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/w;->c()Ljava/lang/Object;

    move-result-object v5

    .line 148
    instance-of v6, v5, Lcom/applovin/impl/sdk/ad/e;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "None"

    if-eqz v6, :cond_0

    .line 150
    :try_start_3
    check-cast v5, Lcom/applovin/impl/sdk/ad/e;

    const-string v6, "AppLovin"

    .line 152
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 154
    :cond_0
    instance-of v6, v5, Lcom/applovin/impl/mediation/a/a;

    if-eqz v6, :cond_1

    .line 156
    check-cast v5, Lcom/applovin/impl/mediation/a/a;

    .line 157
    invoke-virtual {v5}, Lcom/applovin/impl/mediation/a/a;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v5}, Lcom/applovin/impl/mediation/a/a;->getCreativeId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    move-object v6, v5

    .line 164
    :goto_1
    iget-object v8, p0, Lcom/applovin/impl/sdk/h;->i:Ljava/lang/Thread;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_2

    .line 166
    iget-object v7, p0, Lcom/applovin/impl/sdk/h;->i:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v3

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 171
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    sget-object v10, Lcom/applovin/impl/sdk/c/b;->bm:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?type=anr&platform=android&package_name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 174
    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&applovin_random_token="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    .line 175
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&compass_random_token="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    .line 176
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/p;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&model="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 177
    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&brand="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 178
    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&brand_name="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 179
    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&hardware="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 180
    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&revision="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 181
    invoke-static {v8}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "&app_version="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_3

    .line 182
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_3
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_version_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_4

    .line 183
    iget v3, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 184
    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&api_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs_ad_network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-static {v6}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs_ad_creative_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-static {v5}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&top_main_method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-static {v7}, Lcom/applovin/impl/sdk/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&aei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ax:Lcom/applovin/impl/sdk/c/b;

    .line 190
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&mei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/h;->h:Lcom/applovin/impl/sdk/p;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->ay:Lcom/applovin/impl/sdk/c/b;

    .line 191
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catch_0
    return-object v2
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/h;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/applovin/impl/sdk/h;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/h;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/applovin/impl/sdk/h;->j:J

    return-wide v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/h;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/applovin/impl/sdk/h;->a()V

    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/h;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/applovin/impl/sdk/h;->b()V

    return-void
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/h;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/applovin/impl/sdk/h;->l:J

    return-wide v0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/h;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/applovin/impl/sdk/h;->e:Landroid/os/Handler;

    return-object p0
.end method
