.class public Lcom/chartboost/sdk/impl/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/p2$a;
    }
.end annotation


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public D:I

.field public E:I

.field public F:J

.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Z

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static C()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "Android"

    return-object v0
.end method

.method public static J()Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    :try_start_0
    const-string v0, "audio"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/chartboost/sdk/impl/e3;Lcom/chartboost/sdk/impl/g5;Ljava/lang/String;Lcom/chartboost/sdk/impl/i4;Ljava/lang/String;)Lcom/chartboost/sdk/impl/p2;
    .locals 12

    move-object/from16 v0, p4

    const-string v1, "Android "

    .line 6
    new-instance v2, Lcom/chartboost/sdk/impl/p2;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/p2;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    const-string v3, ""

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 20
    :try_start_0
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->c()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->f()I

    move-result v6

    .line 22
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->d()I

    move-result v7

    .line 23
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->e()I

    move-result v8

    .line 24
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->a()I

    move-result v9

    .line 25
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/g5;->b()J

    move-result-wide v10

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    const-wide/16 v10, -0x1

    move-object v5, v3

    move v7, v4

    move v8, v7

    move v9, v8

    .line 28
    :goto_0
    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/p2;->p(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/impl/p2;->d(I)V

    move-object/from16 v5, p5

    .line 30
    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/p2;->a(Ljava/lang/String;)V

    const-string v5, "9.2.0"

    .line 31
    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/p2;->e(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/p2;->a(Z)V

    const-string/jumbo v4, "us_privacy"

    .line 33
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/i4;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 35
    invoke-interface {v4}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/p2;->b(Ljava/lang/String;)V

    :cond_2
    const-string v4, "gdpr"

    .line 38
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/i4;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 40
    invoke-interface {v4}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/p2;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "-1"

    .line 42
    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/p2;->d(Ljava/lang/String;)V

    :goto_1
    const-string v4, "coppa"

    .line 45
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/i4;->a(Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 47
    invoke-interface {v0}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :cond_4
    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/p2;->c(Ljava/lang/String;)V

    .line 52
    :goto_2
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->d(Landroid/content/Context;)Lcom/chartboost/sdk/impl/p2$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 54
    iget v3, v0, Lcom/chartboost/sdk/impl/p2$a;->a:I

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/p2;->b(I)V

    .line 55
    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/p2$a;->b:Z

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->b(Z)V

    .line 58
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/impl/p2;->a(Lcom/chartboost/sdk/impl/e3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->h(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->g(Ljava/lang/String;)V

    move-object v0, p3

    .line 60
    invoke-virtual {v2, p3}, Lcom/chartboost/sdk/impl/p2;->f(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/chartboost/sdk/impl/p2;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->i(Ljava/lang/String;)V

    .line 62
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->j(Ljava/lang/String;)V

    .line 63
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->k(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->m(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/chartboost/sdk/impl/p2;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->n(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->l(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->o(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/p2;->b(J)V

    .line 69
    invoke-static {}, Lcom/chartboost/sdk/impl/p2;->b()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/p2;->a(J)V

    .line 70
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->c(I)V

    .line 71
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->c(Z)V

    .line 72
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p2;->a(I)V

    .line 73
    invoke-virtual {v2, v7}, Lcom/chartboost/sdk/impl/p2;->f(I)V

    .line 74
    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/p2;->g(I)V

    .line 75
    invoke-virtual {v2, v9}, Lcom/chartboost/sdk/impl/p2;->e(I)V

    .line 76
    invoke-virtual {v2, v10, v11}, Lcom/chartboost/sdk/impl/p2;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method public static a(Lcom/chartboost/sdk/impl/e3;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e3;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e3;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e3;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "unknown"

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    const-string v0, "audio"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v2, p0

    if-lez v2, :cond_3

    aget-object p0, p0, v0

    .line 9
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    return v0
.end method

.method public static b()J
    .locals 5

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 24
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v0, 0x100000

    div-long/2addr v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "audio"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)Lcom/chartboost/sdk/impl/p2$a;
    .locals 2

    :try_start_0
    const-string v0, "batterymanager"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result p0

    .line 15
    new-instance v1, Lcom/chartboost/sdk/impl/p2$a;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/p2$a;-><init>()V

    .line 16
    iput v0, v1, Lcom/chartboost/sdk/impl/p2$a;->a:I

    .line 17
    iput-boolean p0, v1, Lcom/chartboost/sdk/impl/p2$a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 2

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/.chartboost"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/chartboost/sdk/impl/p2;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->q:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->p:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->b:I

    return v0
.end method

.method public E()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/p2;->F:J

    return-wide v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->E:I

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->C:I

    return v0
.end method

.method public I()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->D:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->z:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/p2;->B:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p2;->e:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->v:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/p2;->A:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p2;->w:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->x:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/chartboost/sdk/impl/p2;->F:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->h:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p2;->y:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p2;->e:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->b:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->f:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->E:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->d:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->C:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->t:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/chartboost/sdk/impl/p2;->D:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->n:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->z:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->i:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->v:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->r:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->j:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p2;->w:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->t:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->k:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->u:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->l:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->r:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->m:Ljava/lang/String;

    return-void
.end method

.method public o()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/p2;->B:J

    return-wide v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->s:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->j:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p2;->a:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p2;->y:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Environment{session_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', app_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', chartboost_sdk_version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', chartboost_sdk_autocache_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p2;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chartboost_sdk_gdpr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', chartboost_sdk_ccpa=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_make=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_os_version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_platform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_language=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_timezone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_connection_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_orientation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p2;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_battery_level=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_charging_status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p2;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_volume=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_mute=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p2;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_audio_output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device_storage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/p2;->A:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_low_memory_warning=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/p2;->B:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device_up_time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p2;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', session_impression_interstitial_count=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', session_impression_rewarded_count=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', session_impression_banner_count=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/p2;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', session_duration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/p2;->F:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->m:Ljava/lang/String;

    return-object v0
.end method

.method public v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/chartboost/sdk/impl/p2;->A:J

    return-wide v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->s:Ljava/lang/String;

    return-object v0
.end method

.method public x()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p2;->x:I

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p2;->o:Ljava/lang/String;

    return-object v0
.end method
