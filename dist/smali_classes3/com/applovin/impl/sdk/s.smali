.class public Lcom/applovin/impl/sdk/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/s$e;,
        Lcom/applovin/impl/sdk/s$g;,
        Lcom/applovin/impl/sdk/s$a;,
        Lcom/applovin/impl/sdk/s$h;,
        Lcom/applovin/impl/sdk/s$f;,
        Lcom/applovin/impl/sdk/s$c;,
        Lcom/applovin/impl/sdk/s$d;,
        Lcom/applovin/impl/sdk/s$j;,
        Lcom/applovin/impl/sdk/s$i;,
        Lcom/applovin/impl/sdk/s$b;
    }
.end annotation


# static fields
.field private static final E:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/utils/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final F:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Lcom/applovin/impl/sdk/p;

.field private final D:Landroid/content/Context;

.field private final a:Lcom/applovin/impl/sdk/s$i;

.field private final b:Lcom/applovin/impl/sdk/s$j;

.field private final c:Lcom/applovin/impl/sdk/s$c;

.field private final d:Lcom/applovin/impl/sdk/s$d;

.field private final e:Lcom/applovin/impl/sdk/s$f;

.field private final f:Lcom/applovin/impl/sdk/s$h;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:D

.field private final j:Z

.field private k:Ljava/lang/String;

.field private l:J

.field private final m:Lcom/applovin/impl/sdk/s$a;

.field private final n:Lcom/applovin/impl/sdk/s$g;

.field private o:Z

.field private p:Lcom/applovin/impl/sdk/s$e;

.field private q:Lcom/applovin/impl/sdk/s$e;

.field private r:Lcom/applovin/impl/sdk/s$e;

.field private s:Lcom/applovin/impl/sdk/s$e;

.field private t:Lcom/applovin/impl/sdk/s$e;

.field private u:Lcom/applovin/impl/sdk/s$e;

.field private v:Lcom/applovin/impl/sdk/s$e;

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/s;->E:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/s;->F:Ljava/util/concurrent/atomic/AtomicReference;

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/s;->G:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/impl/sdk/p;)V
    .locals 10

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    .line 186
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    .line 188
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->er:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->w:I

    .line 189
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->es:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->x:I

    .line 190
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->et:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->y:I

    .line 191
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eu:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->z:I

    .line 192
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ev:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->A:I

    .line 193
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ew:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/s;->B:I

    .line 198
    new-instance v1, Lcom/applovin/impl/sdk/s$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$i;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/s$i;

    .line 199
    new-instance v1, Lcom/applovin/impl/sdk/s$j;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$j;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->b:Lcom/applovin/impl/sdk/s$j;

    .line 200
    new-instance v1, Lcom/applovin/impl/sdk/s$c;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$c;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->c:Lcom/applovin/impl/sdk/s$c;

    .line 201
    new-instance v1, Lcom/applovin/impl/sdk/s$d;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$d;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->d:Lcom/applovin/impl/sdk/s$d;

    .line 202
    new-instance v1, Lcom/applovin/impl/sdk/s$f;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$f;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->e:Lcom/applovin/impl/sdk/s$f;

    .line 203
    new-instance v1, Lcom/applovin/impl/sdk/s$h;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/sdk/s$h;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->f:Lcom/applovin/impl/sdk/s$h;

    .line 205
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isFireOS(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fireos"

    goto :goto_0

    :cond_0
    const-string v1, "android"

    :goto_0
    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->g:Ljava/lang/String;

    .line 207
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->getOrientation(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "portrait"

    .line 210
    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->h:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v1, "landscape"

    .line 214
    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->h:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "none"

    .line 218
    iput-object v1, p0, Lcom/applovin/impl/sdk/s;->h:Ljava/lang/String;

    .line 222
    :goto_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 223
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 225
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v8

    .line 228
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/applovin/impl/sdk/s;->i:D

    const-string v1, "sensor"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const/4 v5, 0x4

    .line 231
    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/s;->j:Z

    .line 233
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    :goto_3
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 239
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 240
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 243
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_5

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 248
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->k:Ljava/lang/String;

    .line 253
    :cond_6
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/s;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 257
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object p1

    const-string v1, "DataProvider"

    const-string v3, "Unable to collect total disk space."

    invoke-virtual {p1, v1, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_7
    :goto_4
    new-instance p1, Lcom/applovin/impl/sdk/s$g;

    invoke-direct {p1, p0, v2}, Lcom/applovin/impl/sdk/s$g;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->n:Lcom/applovin/impl/sdk/s$g;

    .line 264
    new-instance p1, Lcom/applovin/impl/sdk/s$a;

    invoke-direct {p1, p0, v2}, Lcom/applovin/impl/sdk/s$a;-><init>(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$1;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->m:Lcom/applovin/impl/sdk/s$a;

    return-void
.end method

.method static synthetic E()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 62
    sget-object v0, Lcom/applovin/impl/sdk/s;->E:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic F()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 62
    sget-object v0, Lcom/applovin/impl/sdk/s;->F:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic G()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 62
    sget-object v0, Lcom/applovin/impl/sdk/s;->G:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private H()Z
    .locals 2

    .line 720
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "lz}$blpz"

    .line 721
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()Z
    .locals 9

    const-string v0, "&zpz}ld&hyy&Z|yl{|zl{\'hyb"

    const-string v1, "&zk`g&z|"

    const-string v2, "&zpz}ld&k`g&z|"

    const-string v3, "&zpz}ld&qk`g&z|"

    const-string v4, "&mh}h&efjhe&qk`g&z|"

    const-string v5, "&mh}h&efjhe&k`g&z|"

    const-string v6, "&zpz}ld&zm&qk`g&z|"

    const-string v7, "&zpz}ld&k`g&oh`ezhol&z|"

    const-string v8, "&mh}h&efjhe&z|"

    .line 729
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 759
    aget-object v3, v0, v2

    .line 761
    invoke-direct {p0, v3}, Lcom/applovin/impl/sdk/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$c;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/applovin/impl/sdk/s;->c:Lcom/applovin/impl/sdk/s$c;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/s;Lcom/applovin/impl/sdk/s$e;)Lcom/applovin/impl/sdk/s$e;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/applovin/impl/sdk/s;->p:Lcom/applovin/impl/sdk/s$e;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 773
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 775
    fill-array-data v1, :array_0

    .line 777
    new-array v2, v0, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 781
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    const/16 v4, 0x9

    :goto_1
    if-ltz v4, :cond_0

    .line 784
    aget-char v5, v2, v3

    aget v6, v1, v4

    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :array_0
    .array-data 4
        0xb
        0xc
        0xa
        0x3
        0x2
        0x1
        0xf
        0xa
        0xf
        0xe
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/applovin/impl/sdk/s$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/s$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/s;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/s$e;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/applovin/impl/sdk/s;->p:Lcom/applovin/impl/sdk/s$e;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/s;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/applovin/impl/sdk/s;->y:I

    return p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/s;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/s;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/applovin/impl/sdk/s;->B:I

    return p0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/s;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/applovin/impl/sdk/s;->x:I

    return p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/s;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/applovin/impl/sdk/s;->z:I

    return p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/s;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/applovin/impl/sdk/s;->w:I

    return p0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/applovin/impl/sdk/s;->l:J

    return-wide v0
.end method

.method public B()Lcom/applovin/impl/sdk/s$a;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->m:Lcom/applovin/impl/sdk/s$a;

    return-object v0
.end method

.method public C()Lcom/applovin/impl/sdk/s$g;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->n:Lcom/applovin/impl/sdk/s$g;

    return-object v0
.end method

.method public D()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/s;->o:Z

    return v0
.end method

.method public a()Lcom/applovin/impl/sdk/s$b;
    .locals 1

    .line 272
    sget-object v0, Lcom/applovin/impl/sdk/s;->F:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/s$b;

    return-object v0
.end method

.method protected b()Lcom/applovin/impl/sdk/utils/d$a;
    .locals 1

    .line 278
    sget-object v0, Lcom/applovin/impl/sdk/s;->E:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/utils/d$a;

    return-object v0
.end method

.method protected c()Ljava/lang/Integer;
    .locals 1

    .line 284
    sget-object v0, Lcom/applovin/impl/sdk/s;->G:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Lcom/applovin/impl/sdk/utils/d$a;
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/d;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    return-object v0

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dH:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/b;->dG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 352
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/d$a;->a(Ljava/lang/String;)V

    .line 356
    :cond_1
    sget-object v1, Lcom/applovin/impl/sdk/s;->E:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_2
    new-instance v0, Lcom/applovin/impl/sdk/utils/d$a;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/d$a;-><init>()V

    .line 365
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getTestDeviceAdvertisingIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/d$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/applovin/impl/sdk/s;->o:Z

    goto :goto_1

    .line 374
    :cond_4
    iput-boolean v2, p0, Lcom/applovin/impl/sdk/s;->o:Z

    :goto_1
    return-object v0
.end method

.method protected e()V
    .locals 5

    .line 382
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/f;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    new-instance v3, Lcom/applovin/impl/sdk/s$2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/s$2;-><init>(Lcom/applovin/impl/sdk/s;)V

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/sdk/e/f;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/e/f$a;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->d:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    .line 391
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    new-instance v3, Lcom/applovin/impl/sdk/s$3;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/s$3;-><init>(Lcom/applovin/impl/sdk/s;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;ZLjava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->i:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 7

    .line 407
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->u:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->u:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->f(Lcom/applovin/impl/sdk/p;)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lcom/applovin/impl/sdk/s;->B:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->u:Lcom/applovin/impl/sdk/s$e;

    .line 414
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected g()Ljava/lang/Long;
    .locals 9

    .line 420
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->q:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->q:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 428
    new-instance v8, Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v0, p0, Lcom/applovin/impl/sdk/s;->z:I

    int-to-long v5, v0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v8, p0, Lcom/applovin/impl/sdk/s;->q:Lcom/applovin/impl/sdk/s$e;

    .line 430
    invoke-static {v8}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 434
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "DataProvider"

    const-string v3, "Unable to collect free space."

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Ljava/lang/Float;
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->s:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->s:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ac()Lcom/applovin/impl/sdk/utils/o;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ac()Lcom/applovin/impl/sdk/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/o;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v1, p0, Lcom/applovin/impl/sdk/s;->w:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->s:Lcom/applovin/impl/sdk/s$e;

    .line 452
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/Float;
    .locals 7

    .line 458
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->t:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->t:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ac()Lcom/applovin/impl/sdk/utils/o;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ac()Lcom/applovin/impl/sdk/utils/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/o;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v1, p0, Lcom/applovin/impl/sdk/s;->w:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->t:Lcom/applovin/impl/sdk/s$e;

    .line 467
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected j()Ljava/lang/Integer;
    .locals 8

    .line 473
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->v:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->v:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 480
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 484
    new-instance v7, Lcom/applovin/impl/sdk/s$e;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/applovin/impl/sdk/s;->x:I

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v7, p0, Lcom/applovin/impl/sdk/s;->v:Lcom/applovin/impl/sdk/s$e;

    .line 486
    invoke-static {v7}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 490
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "DataProvider"

    const-string v3, "Unable to collect screen brightness"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()J
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "AccessibilityMenuService"

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "SelectToSpeakService"

    .line 515
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x200

    or-long/2addr v1, v3

    :cond_1
    const-string v3, "SoundAmplifierService"

    .line 520
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    :cond_2
    const-string v3, "SpeechToTextAccessibilityService"

    .line 525
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    :cond_3
    const-string v3, "SwitchAccessService"

    .line 530
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x4

    or-long/2addr v1, v3

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_5

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    :cond_5
    const-string v0, "accessibility_enabled"

    .line 541
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    :cond_6
    const-string/jumbo v0, "touch_exploration_enabled"

    .line 546
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    .line 551
    :cond_7
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "accessibility_display_inversion_enabled"

    .line 553
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    :cond_8
    const-string/jumbo v0, "skip_first_use_hints"

    .line 558
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v3, 0x40

    or-long/2addr v1, v3

    :cond_9
    const-string v0, "lock_screen_allow_remote_input"

    .line 564
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v3, 0x800

    or-long/2addr v1, v3

    :cond_a
    const-string v0, "enabled_accessibility_audio_description_by_default"

    .line 569
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v3, 0x1000

    or-long/2addr v1, v3

    :cond_b
    const-string v0, "accessibility_shortcut_on_lock_screen"

    .line 574
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v3, 0x2000

    or-long/2addr v1, v3

    :cond_c
    const-string/jumbo v0, "wear_talkback_enabled"

    .line 579
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v3, 0x4000

    or-long/2addr v1, v3

    :cond_d
    const-string v0, "hush_gesture_used"

    .line 584
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/32 v3, 0x8000

    or-long/2addr v1, v3

    :cond_e
    const-string v0, "high_text_contrast_enabled"

    .line 589
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v3, 0x10000

    or-long/2addr v1, v3

    :cond_f
    const-string v0, "accessibility_display_magnification_enabled"

    .line 594
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-wide/32 v3, 0x20000

    or-long/2addr v1, v3

    :cond_10
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 599
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/32 v3, 0x40000

    or-long/2addr v1, v3

    :cond_11
    const-string v0, "accessibility_captioning_enabled"

    .line 604
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/32 v3, 0x80000

    or-long/2addr v1, v3

    :cond_12
    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 609
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/32 v3, 0x100000

    or-long/2addr v1, v3

    :cond_13
    const-string v0, "accessibility_autoclick_enabled"

    .line 614
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/32 v3, 0x200000

    or-long/2addr v1, v3

    :cond_14
    const-string v0, "accessibility_large_pointer_icon"

    .line 619
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/32 v3, 0x400000

    or-long/2addr v1, v3

    :cond_15
    const-string v0, "reduce_bright_colors_activated"

    .line 624
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/32 v3, 0x800000

    or-long/2addr v1, v3

    :cond_16
    const-string v0, "reduce_bright_colors_persist_across_reboots"

    .line 629
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/32 v3, 0x1000000

    or-long/2addr v1, v3

    :cond_17
    const-string/jumbo v0, "tty_mode_enabled"

    .line 634
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/32 v3, 0x2000000

    or-long/2addr v1, v3

    :cond_18
    const-string v0, "rtt_calling_mode"

    .line 639
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/32 v3, 0x4000000

    or-long/2addr v1, v3

    :cond_19
    return-wide v1
.end method

.method protected l()F
    .locals 4

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 655
    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v1

    const-string v2, "DataProvider"

    const-string v3, "Error collecting font scale"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected m()Z
    .locals 7

    .line 663
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->r:Lcom/applovin/impl/sdk/s$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->a(Lcom/applovin/impl/sdk/s$e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->r:Lcom/applovin/impl/sdk/s$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 668
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/s$e;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isVPNConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v1, p0, Lcom/applovin/impl/sdk/s;->z:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/s$e;-><init>(Lcom/applovin/impl/sdk/s;Ljava/lang/Object;JLcom/applovin/impl/sdk/s$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/s;->r:Lcom/applovin/impl/sdk/s$e;

    .line 670
    invoke-static {v0}, Lcom/applovin/impl/sdk/s$e;->b(Lcom/applovin/impl/sdk/s$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected n()Z
    .locals 5

    .line 679
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->D:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    return v1

    .line 686
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    .line 691
    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/applovin/impl/sdk/s;->C:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect constrained network info."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return v1
.end method

.method protected o()Z
    .locals 2

    const/4 v0, 0x0

    .line 704
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/s;->H()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/s;->I()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catchall_0
    :cond_1
    return v0
.end method

.method public p()Lcom/applovin/impl/sdk/s$i;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->a:Lcom/applovin/impl/sdk/s$i;

    return-object v0
.end method

.method public q()Lcom/applovin/impl/sdk/s$j;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->b:Lcom/applovin/impl/sdk/s$j;

    return-object v0
.end method

.method public r()Lcom/applovin/impl/sdk/s$c;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->c:Lcom/applovin/impl/sdk/s$c;

    return-object v0
.end method

.method public s()Lcom/applovin/impl/sdk/s$d;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->d:Lcom/applovin/impl/sdk/s$d;

    return-object v0
.end method

.method public t()Lcom/applovin/impl/sdk/s$f;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->e:Lcom/applovin/impl/sdk/s$f;

    return-object v0
.end method

.method public u()Lcom/applovin/impl/sdk/s$h;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->f:Lcom/applovin/impl/sdk/s$h;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->h:Ljava/lang/String;

    return-object v0
.end method

.method public x()D
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/applovin/impl/sdk/s;->i:D

    return-wide v0
.end method

.method public y()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/s;->j:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/sdk/s;->k:Ljava/lang/String;

    return-object v0
.end method
