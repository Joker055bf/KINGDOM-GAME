.class public Lcom/applovin/impl/sdk/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/s;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/Long;

.field private final h:J

.field private final i:I

.field private final j:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/s;)V
    .locals 6

    .line 1301
    iput-object p1, p0, Lcom/applovin/impl/sdk/s$a;->a:Lcom/applovin/impl/sdk/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1303
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1304
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    invoke-static {p1}, Lcom/applovin/impl/sdk/s;->b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1307
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/applovin/impl/sdk/s$a;->b:Ljava/lang/String;

    .line 1308
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/sdk/s$a;->c:Ljava/lang/String;

    .line 1309
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/applovin/impl/sdk/s$a;->i:I

    .line 1310
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/applovin/impl/sdk/s$a;->d:Ljava/lang/String;

    .line 1311
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->toShortSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/applovin/impl/sdk/s$a;->e:Ljava/lang/String;

    .line 1312
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/impl/sdk/s$a;->h:J

    .line 1313
    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$a;->g:Ljava/lang/Long;

    .line 1314
    iget p1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/applovin/impl/sdk/s$a;->j:I

    .line 1317
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/s$a;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1299
    throw p1
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V
    .locals 0

    .line 1287
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/s$a;-><init>(Lcom/applovin/impl/sdk/s;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Long;
    .locals 4

    .line 1323
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->g:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->a:Lcom/applovin/impl/sdk/s;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s;->e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->g:Lcom/applovin/impl/sdk/c/d;

    iget-wide v2, p0, Lcom/applovin/impl/sdk/s$a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1292
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/applovin/impl/sdk/s$a;->g:Ljava/lang/Long;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1295
    iget-wide v0, p0, Lcom/applovin/impl/sdk/s$a;->h:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    .line 1296
    iget v0, p0, Lcom/applovin/impl/sdk/s$a;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1297
    iget v0, p0, Lcom/applovin/impl/sdk/s$a;->j:I

    return v0
.end method
