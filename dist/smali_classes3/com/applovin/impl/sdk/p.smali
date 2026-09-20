.class public Lcom/applovin/impl/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/applovin/impl/sdk/p;

.field public static b:Lcom/applovin/impl/sdk/p;

.field protected static c:Landroid/content/Context;

.field private static final e:J

.field private static final f:Z

.field private static g:Lcom/applovin/impl/sdk/a;


# instance fields
.field private A:Lcom/applovin/impl/sdk/s;

.field private B:Lcom/applovin/impl/sdk/q;

.field private C:Lcom/applovin/impl/sdk/r;

.field private D:Lcom/applovin/impl/sdk/c/e;

.field private E:Lcom/applovin/impl/sdk/o;

.field private F:Lcom/applovin/impl/sdk/utils/q;

.field private G:Lcom/applovin/impl/sdk/e;

.field private H:Lcom/applovin/impl/sdk/d;

.field private I:Lcom/applovin/impl/sdk/v;

.field private J:Lcom/applovin/impl/sdk/d/c;

.field private K:Lcom/applovin/impl/sdk/SessionTracker;

.field private L:Lcom/applovin/impl/sdk/w;

.field private M:Lcom/applovin/impl/sdk/ae;

.field private N:Lcom/applovin/impl/sdk/network/d;

.field private O:Lcom/applovin/impl/sdk/m;

.field private P:Lcom/applovin/impl/sdk/utils/o;

.field private Q:Lcom/applovin/impl/sdk/k;

.field private R:Lcom/applovin/impl/b/a/b;

.field private S:Lcom/applovin/impl/a/a/a;

.field private T:Lcom/applovin/impl/sdk/a/f;

.field private U:Lcom/applovin/impl/sdk/x;

.field private V:Lcom/applovin/impl/sdk/array/ArrayService;

.field private W:Lcom/applovin/impl/sdk/t;

.field private X:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

.field private Y:Lcom/applovin/impl/sdk/network/k;

.field private Z:Lcom/applovin/impl/sdk/g;

.field private aa:Lcom/applovin/impl/mediation/f;

.field private ab:Lcom/applovin/impl/mediation/e;

.field private ac:Lcom/applovin/impl/mediation/MediationServiceImpl;

.field private ad:Lcom/applovin/mediation/hybridAds/d;

.field private ae:Lcom/applovin/impl/mediation/h;

.field private af:Lcom/applovin/impl/mediation/debugger/b;

.field private ag:Lcom/applovin/impl/sdk/z;

.field private ah:Lcom/applovin/impl/mediation/d;

.field private ai:Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

.field private aj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Ljava/lang/Object;

.field private final al:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final am:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:I

.field private at:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private au:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field private av:Lcom/applovin/sdk/AppLovinSdkConfiguration;

.field protected d:Lcom/applovin/impl/sdk/c/c;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Z

.field private l:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private m:Lcom/applovin/sdk/AppLovinUserSegment;

.field private n:Lcom/applovin/sdk/AppLovinTargetingData;

.field private o:Ljava/lang/String;

.field private p:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private q:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;

.field private r:Lcom/applovin/impl/sdk/EventServiceImpl;

.field private s:Lcom/applovin/impl/sdk/UserServiceImpl;

.field private t:Lcom/applovin/sdk/AppLovinCFService;

.field private u:Lcom/applovin/impl/sdk/VariableServiceImpl;

.field private v:Lcom/applovin/sdk/AppLovinSdk;

.field private w:Lcom/applovin/impl/sdk/y;

.field private x:Lcom/applovin/impl/sdk/e/o;

.field private y:Lcom/applovin/impl/sdk/network/b;

.field private z:Lcom/applovin/impl/sdk/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/applovin/impl/sdk/p;->e:J

    .line 274
    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/p$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/p$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 283
    :goto_0
    sput-boolean v0, Lcom/applovin/impl/sdk/p;->f:Z

    goto :goto_1

    :catchall_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AppLovinSdk"

    const-string v2, "Running on older Java version."

    .line 279
    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    .line 283
    sput-boolean v0, Lcom/applovin/impl/sdk/p;->f:Z

    .line 284
    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->al:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->an:Z

    .line 248
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ao:Z

    .line 249
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ap:Z

    .line 251
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->aq:Z

    .line 252
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ar:Z

    .line 253
    iput v0, p0, Lcom/applovin/impl/sdk/p;->as:I

    return-void
.end method

.method public static A()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/applovin/impl/sdk/p;->f:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/applovin/impl/sdk/a;
    .locals 1

    .line 1222
    sget-object v0, Lcom/applovin/impl/sdk/p;->g:Lcom/applovin/impl/sdk/a;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Lcom/applovin/impl/sdk/a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/applovin/impl/sdk/p;->g:Lcom/applovin/impl/sdk/a;

    .line 1227
    :cond_0
    sget-object p0, Lcom/applovin/impl/sdk/p;->g:Lcom/applovin/impl/sdk/a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->av:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinSdkConfiguration;)Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->av:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object p1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1083
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/p;->a(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1099
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 1100
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1078
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1088
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1090
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    .line 1091
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "string"

    .line 1092
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1094
    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/p;->a(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->aj:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/p;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/p;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "error_messages"

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 932
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AppLovinSdk"

    .line 934
    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/p;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/p;->ar:Z

    return p1
.end method

.method private ay()V
    .locals 6

    .line 638
    new-instance v0, Lcom/applovin/impl/sdk/e/i;

    iget v1, p0, Lcom/applovin/impl/sdk/p;->as:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/applovin/impl/sdk/p;->as:I

    new-instance v2, Lcom/applovin/impl/sdk/p$4;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/p$4;-><init>(Lcom/applovin/impl/sdk/p;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/applovin/impl/sdk/e/i;-><init>(ILcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/e/i$a;)V

    .line 747
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->l:Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "initialization_delay_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 748
    sget-object v2, Lcom/applovin/impl/sdk/c/b;->eq:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 749
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    int-to-long v4, v1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;J)V

    return-void
.end method

.method private az()V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->N:Lcom/applovin/impl/sdk/network/d;

    new-instance v1, Lcom/applovin/impl/sdk/p$6;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/p$6;-><init>(Lcom/applovin/impl/sdk/p;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/d;->a(Lcom/applovin/impl/sdk/network/d$a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/o;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    const-string v0, "eaf"

    const-string v1, ""

    .line 967
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 969
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 971
    invoke-static {v1}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 974
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/p;Lorg/json/JSONObject;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/b/a/b;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->R:Lcom/applovin/impl/b/a/b;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 754
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinSdk"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    new-instance p1, Lcom/applovin/impl/sdk/e/n;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/e/n;-><init>(Lcom/applovin/impl/sdk/p;)V

    .line 757
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/applovin/impl/sdk/p;->az()V

    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/p;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/p;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/applovin/impl/sdk/p;->an:Z

    return p0
.end method

.method static synthetic i(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/network/d;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/applovin/impl/sdk/p;->N:Lcom/applovin/impl/sdk/network/d;

    return-object p0
.end method

.method public static y()Landroid/content/Context;
    .locals 1

    .line 116
    sget-object v0, Lcom/applovin/impl/sdk/p;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static z()J
    .locals 2

    .line 120
    sget-wide v0, Lcom/applovin/impl/sdk/p;->e:J

    return-wide v0
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->h:Ljava/lang/String;

    return-object v0
.end method

.method public C()Lcom/applovin/sdk/AppLovinSdkSettings;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->l:Lcom/applovin/sdk/AppLovinSdkSettings;

    return-object v0
.end method

.method public D()Lcom/applovin/sdk/AppLovinUserSegment;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->m:Lcom/applovin/sdk/AppLovinUserSegment;

    return-object v0
.end method

.method public E()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->p:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object v0
.end method

.method public F()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->q:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;

    return-object v0
.end method

.method public G()Lcom/applovin/impl/sdk/EventServiceImpl;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->r:Lcom/applovin/impl/sdk/EventServiceImpl;

    return-object v0
.end method

.method public H()Lcom/applovin/impl/sdk/UserServiceImpl;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->s:Lcom/applovin/impl/sdk/UserServiceImpl;

    return-object v0
.end method

.method public I()Lcom/applovin/sdk/AppLovinCFService;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->t:Lcom/applovin/sdk/AppLovinCFService;

    return-object v0
.end method

.method public J()Lcom/applovin/impl/sdk/VariableServiceImpl;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->u:Lcom/applovin/impl/sdk/VariableServiceImpl;

    return-object v0
.end method

.method public K()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->v:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method public L()Lcom/applovin/impl/sdk/y;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    return-object v0
.end method

.method public M()Lcom/applovin/impl/sdk/e/o;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    return-object v0
.end method

.method public N()Lcom/applovin/impl/sdk/c/c;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    return-object v0
.end method

.method public O()Lcom/applovin/impl/sdk/network/b;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->y:Lcom/applovin/impl/sdk/network/b;

    return-object v0
.end method

.method public P()Lcom/applovin/impl/sdk/d/g;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->z:Lcom/applovin/impl/sdk/d/g;

    return-object v0
.end method

.method public Q()Lcom/applovin/impl/sdk/s;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->A:Lcom/applovin/impl/sdk/s;

    return-object v0
.end method

.method public R()Lcom/applovin/impl/sdk/q;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->B:Lcom/applovin/impl/sdk/q;

    return-object v0
.end method

.method public S()Lcom/applovin/impl/sdk/r;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->C:Lcom/applovin/impl/sdk/r;

    return-object v0
.end method

.method public T()Lcom/applovin/impl/sdk/o;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->E:Lcom/applovin/impl/sdk/o;

    return-object v0
.end method

.method public U()Lcom/applovin/impl/sdk/e;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->G:Lcom/applovin/impl/sdk/e;

    return-object v0
.end method

.method public V()Lcom/applovin/impl/sdk/d;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->H:Lcom/applovin/impl/sdk/d;

    return-object v0
.end method

.method public W()Lcom/applovin/impl/sdk/v;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->I:Lcom/applovin/impl/sdk/v;

    return-object v0
.end method

.method public X()Lcom/applovin/impl/sdk/d/c;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->J:Lcom/applovin/impl/sdk/d/c;

    return-object v0
.end method

.method public Y()Lcom/applovin/impl/sdk/SessionTracker;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->K:Lcom/applovin/impl/sdk/SessionTracker;

    return-object v0
.end method

.method public Z()Lcom/applovin/impl/sdk/w;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->L:Lcom/applovin/impl/sdk/w;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/b<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/sdk/c/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    .line 1062
    invoke-static {p1, p2, p3, p4}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->an:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->ao:Z

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->b()V

    .line 618
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->E:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/o;->a(J)V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/e;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/a/f;)V
    .locals 2

    .line 592
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 594
    :cond_0
    sget-object p1, Lcom/applovin/impl/sdk/c/a;->a:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    .line 595
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/e;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 600
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string v0, "AppLovinSdk"

    const-string v1, "All required adapters initialized"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/o;->e()V

    .line 605
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->k()V

    :cond_2
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 295
    new-instance v0, Lcom/applovin/impl/sdk/p$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/p$1;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->at:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->v:Lcom/applovin/sdk/AppLovinSdk;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    .locals 7

    .line 313
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->h:Ljava/lang/String;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/p;->j:J

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->an:Z

    .line 316
    iput-object p2, p0, Lcom/applovin/impl/sdk/p;->l:Lcom/applovin/sdk/AppLovinSdkSettings;

    .line 317
    new-instance v1, Lcom/applovin/impl/sdk/j;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/j;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/p;->m:Lcom/applovin/sdk/AppLovinUserSegment;

    .line 318
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/p;->n:Lcom/applovin/sdk/AppLovinTargetingData;

    .line 319
    new-instance v1, Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;-><init>(Ljava/util/List;Lcom/applovin/impl/sdk/p;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/p;->av:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    .line 320
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/applovin/impl/sdk/p;->c:Landroid/content/Context;

    .line 323
    instance-of v1, p3, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v3, p3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/p;->i:Ljava/lang/ref/WeakReference;

    :cond_0
    const-string v1, "HSrCHRtOan6wp2kwOIGJC1RDtuSrF2mWVbio2aBcMHX9KF3iTJ1lLSzCKP1ZSo5yNolPNw1kCTtWpxELFF4ah1"

    .line 328
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "AppLovinSdk"

    if-eqz v1, :cond_1

    .line 330
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->k:Z

    .line 331
    sput-object p0, Lcom/applovin/impl/sdk/p;->b:Lcom/applovin/impl/sdk/p;

    goto :goto_0

    .line 333
    :cond_1
    sget-object v1, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/p;

    if-nez v1, :cond_2

    .line 335
    sput-object p0, Lcom/applovin/impl/sdk/p;->a:Lcom/applovin/impl/sdk/p;

    goto :goto_0

    :cond_2
    const-string v1, "Multiple SDK instances detected"

    .line 339
    invoke-static {v3, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 344
    new-instance v4, Lcom/applovin/impl/sdk/c/e;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/c/e;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    .line 346
    new-instance v4, Lcom/applovin/impl/sdk/c/c;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/c/c;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    .line 347
    new-instance v4, Lcom/applovin/impl/sdk/y;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/y;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    .line 349
    new-instance v4, Lcom/applovin/impl/sdk/v;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/v;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->I:Lcom/applovin/impl/sdk/v;

    .line 350
    new-instance v4, Lcom/applovin/impl/sdk/e;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->G:Lcom/applovin/impl/sdk/e;

    .line 351
    new-instance v4, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/EventServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->r:Lcom/applovin/impl/sdk/EventServiceImpl;

    .line 352
    new-instance v4, Lcom/applovin/impl/sdk/UserServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/UserServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->s:Lcom/applovin/impl/sdk/UserServiceImpl;

    .line 353
    new-instance v4, Lcom/applovin/impl/sdk/p$2;

    invoke-direct {v4, p0, p0}, Lcom/applovin/impl/sdk/p$2;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->t:Lcom/applovin/sdk/AppLovinCFService;

    .line 354
    new-instance v4, Lcom/applovin/impl/sdk/VariableServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/VariableServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->u:Lcom/applovin/impl/sdk/VariableServiceImpl;

    .line 355
    new-instance v4, Lcom/applovin/impl/sdk/d/c;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/d/c;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->J:Lcom/applovin/impl/sdk/d/c;

    .line 356
    new-instance v4, Lcom/applovin/impl/sdk/e/o;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/e/o;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    .line 357
    new-instance v4, Lcom/applovin/impl/sdk/network/b;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/network/b;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->y:Lcom/applovin/impl/sdk/network/b;

    .line 358
    new-instance v4, Lcom/applovin/impl/sdk/d/g;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/d/g;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->z:Lcom/applovin/impl/sdk/d/g;

    .line 359
    new-instance v4, Lcom/applovin/impl/sdk/a/f;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/a/f;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->T:Lcom/applovin/impl/sdk/a/f;

    .line 360
    new-instance v4, Lcom/applovin/impl/sdk/utils/o;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/utils/o;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->P:Lcom/applovin/impl/sdk/utils/o;

    .line 362
    sget-object v4, Lcom/applovin/impl/sdk/c/b;->dE:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    new-instance v4, Lcom/applovin/impl/sdk/s;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/s;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->A:Lcom/applovin/impl/sdk/s;

    .line 365
    new-instance v4, Lcom/applovin/impl/sdk/r;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/r;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->C:Lcom/applovin/impl/sdk/r;

    goto :goto_1

    .line 369
    :cond_3
    new-instance v4, Lcom/applovin/impl/sdk/q;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/q;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->B:Lcom/applovin/impl/sdk/q;

    .line 372
    :goto_1
    new-instance v4, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->p:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 373
    new-instance v4, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->q:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdService;

    .line 374
    new-instance v4, Lcom/applovin/impl/sdk/SessionTracker;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/SessionTracker;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->K:Lcom/applovin/impl/sdk/SessionTracker;

    .line 375
    new-instance v4, Lcom/applovin/impl/sdk/w;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->L:Lcom/applovin/impl/sdk/w;

    .line 376
    new-instance v4, Lcom/applovin/impl/sdk/ae;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/ae;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->M:Lcom/applovin/impl/sdk/ae;

    .line 377
    new-instance v4, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->X:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    .line 378
    new-instance v4, Lcom/applovin/impl/sdk/g;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/g;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->Z:Lcom/applovin/impl/sdk/g;

    .line 379
    new-instance v4, Lcom/applovin/impl/mediation/f;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/f;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->aa:Lcom/applovin/impl/mediation/f;

    .line 380
    new-instance v4, Lcom/applovin/impl/mediation/e;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/e;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    .line 381
    new-instance v4, Lcom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/MediationServiceImpl;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ac:Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 382
    new-instance v4, Lcom/applovin/mediation/hybridAds/d;

    invoke-direct {v4, p0}, Lcom/applovin/mediation/hybridAds/d;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ad:Lcom/applovin/mediation/hybridAds/d;

    .line 383
    new-instance v4, Lcom/applovin/impl/sdk/z;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ag:Lcom/applovin/impl/sdk/z;

    .line 384
    new-instance v4, Lcom/applovin/impl/mediation/debugger/b;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/debugger/b;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->af:Lcom/applovin/impl/mediation/debugger/b;

    .line 385
    new-instance v4, Lcom/applovin/impl/mediation/h;

    invoke-direct {v4}, Lcom/applovin/impl/mediation/h;-><init>()V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ae:Lcom/applovin/impl/mediation/h;

    .line 386
    new-instance v4, Lcom/applovin/impl/mediation/d;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/d;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ah:Lcom/applovin/impl/mediation/d;

    .line 387
    new-instance v4, Lcom/applovin/impl/sdk/o;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/o;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->E:Lcom/applovin/impl/sdk/o;

    .line 388
    new-instance v4, Lcom/applovin/impl/sdk/utils/o;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/utils/o;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->P:Lcom/applovin/impl/sdk/utils/o;

    .line 389
    new-instance v4, Lcom/applovin/impl/sdk/k;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/k;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->Q:Lcom/applovin/impl/sdk/k;

    .line 390
    new-instance v4, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->ai:Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    .line 391
    new-instance v4, Lcom/applovin/impl/b/a/b;

    invoke-direct {v4, p0}, Lcom/applovin/impl/b/a/b;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->R:Lcom/applovin/impl/b/a/b;

    .line 392
    new-instance v4, Lcom/applovin/impl/a/a/a;

    invoke-direct {v4, p0}, Lcom/applovin/impl/a/a/a;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->S:Lcom/applovin/impl/a/a/a;

    .line 393
    new-instance v4, Lcom/applovin/impl/sdk/x;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/x;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->U:Lcom/applovin/impl/sdk/x;

    .line 394
    new-instance v4, Lcom/applovin/impl/sdk/array/ArrayService;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/array/ArrayService;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->V:Lcom/applovin/impl/sdk/array/ArrayService;

    .line 395
    new-instance v4, Lcom/applovin/impl/sdk/t;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/t;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->W:Lcom/applovin/impl/sdk/t;

    .line 397
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "use_new_postback_manager"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 398
    sget-object v5, Lcom/applovin/impl/sdk/c/b;->db:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v5}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 399
    :cond_4
    new-instance v4, Lcom/applovin/impl/sdk/network/f;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/network/f;-><init>(Lcom/applovin/impl/sdk/p;)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v4, Lcom/applovin/impl/sdk/network/g;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/network/g;-><init>(Lcom/applovin/impl/sdk/p;)V

    :goto_3
    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->Y:Lcom/applovin/impl/sdk/network/k;

    .line 402
    sget-object v4, Lcom/applovin/impl/sdk/c/b;->bG:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 404
    new-instance v4, Lcom/applovin/impl/sdk/d;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->H:Lcom/applovin/impl/sdk/d;

    .line 408
    :cond_6
    new-instance v4, Lcom/applovin/impl/sdk/m;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/m;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->O:Lcom/applovin/impl/sdk/m;

    .line 411
    new-instance v4, Lcom/applovin/impl/sdk/utils/q;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/utils/q;-><init>(Lcom/applovin/impl/sdk/p;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->F:Lcom/applovin/impl/sdk/utils/q;

    .line 419
    iget-object v4, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    sget-object v5, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;)V

    .line 421
    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkSettings;->isExceptionHandlerEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->au:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 423
    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->addSdk(Lcom/applovin/impl/sdk/p;)V

    .line 424
    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->enable()V

    .line 427
    :cond_7
    sget-object v4, Lcom/applovin/impl/sdk/c/b;->dp:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 429
    new-instance v4, Lcom/applovin/impl/sdk/network/d;

    invoke-direct {v4, p3}, Lcom/applovin/impl/sdk/network/d;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/applovin/impl/sdk/p;->N:Lcom/applovin/impl/sdk/network/d;

    .line 432
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_9

    const-string v4, "Unable to find AppLovin SDK key. Please add  meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml."

    .line 434
    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Called with an invalid SDK key from: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x56

    if-eq v4, v6, :cond_a

    invoke-static {p3, p0}, Lcom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Landroid/content/Context;Lcom/applovin/impl/sdk/p;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Please double-check that you entered your SDK key correctly ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ") : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/utils/Utils;->isProguardRulesOmitted()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Failed to find class for name: com.applovin.sdk.AppLovinSdk. Please ensure proguard rules have not been omitted from the build."

    .line 451
    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_b
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/Utils;->hasAndroidCoreJsonLibrary(Lcom/applovin/impl/sdk/p;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "Detected non-Android core JSON library. Please double-check that none of your third party libraries include custom implementation of org.json.JSONObject."

    .line 457
    invoke-static {v3, p1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_c
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/Utils;->isVerboseLoggingEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 464
    invoke-virtual {p2, v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 467
    :cond_d
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->N()Lcom/applovin/impl/sdk/c/c;

    move-result-object p1

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->ah:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdkSettings;->isVerboseLoggingEnabled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    .line 470
    const-class p1, Lcom/applovin/impl/adview/d;

    .line 476
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 477
    iget-object p2, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p3, Lcom/applovin/impl/sdk/c/d;->d:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p2, p3, v2, p1}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_e

    .line 480
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ap:Z

    .line 481
    iget-object p2, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object v4, Lcom/applovin/impl/sdk/c/d;->d:Lcom/applovin/impl/sdk/c/d;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5, p1}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    goto :goto_4

    .line 486
    :cond_e
    iget-object p2, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object v4, Lcom/applovin/impl/sdk/c/d;->d:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5, p1}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    .line 493
    :goto_4
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->e:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 496
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string p2, "Initializing SDK for non-maiden launch"

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_f
    iput-boolean v0, p0, Lcom/applovin/impl/sdk/p;->aq:Z

    goto :goto_5

    .line 501
    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string p2, "Initializing SDK for maiden launch"

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_11
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->e:Lcom/applovin/impl/sdk/c/d;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 506
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->s:Lcom/applovin/impl/sdk/c/d;

    iget-object p3, p0, Lcom/applovin/impl/sdk/p;->R:Lcom/applovin/impl/b/a/b;

    invoke-virtual {p3}, Lcom/applovin/impl/b/a/b;->b()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 510
    :goto_5
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->f:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, p2, v2}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 511
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 513
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/Utils;->toVersionCode(Ljava/lang/String;)I

    move-result p1

    .line 516
    sget p2, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    if-le p2, p1, :cond_13

    .line 518
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->f:Lcom/applovin/impl/sdk/c/d;

    sget-object p3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    goto :goto_6

    .line 523
    :cond_12
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object p2, Lcom/applovin/impl/sdk/c/d;->f:Lcom/applovin/impl/sdk/c/d;

    sget-object p3, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 526
    :cond_13
    :goto_6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/i;->a(Landroid/content/Context;)Z

    move-result p1

    .line 529
    sget-object p2, Lcom/applovin/impl/sdk/c/b;->dq:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_14

    if-eqz p1, :cond_15

    .line 531
    :cond_14
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->b()V

    .line 534
    :cond_15
    sget-object p2, Lcom/applovin/impl/sdk/c/b;->dp:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_17

    if-nez p1, :cond_17

    .line 537
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string p2, "SDK initialized with no internet connection - listening for connection"

    invoke-virtual {p1, v3, p2}, Lcom/applovin/impl/sdk/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_16
    invoke-direct {p0}, Lcom/applovin/impl/sdk/p;->az()V

    .line 541
    :cond_17
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;>;)V"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->af:Lcom/applovin/impl/mediation/debugger/b;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 546
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 548
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/p;->an:Z

    .line 549
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/p;->ao:Z

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    if-nez p1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    sget-object p1, Lcom/applovin/impl/sdk/c/a;->a:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    .line 557
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object p1, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/o;->e()V

    .line 560
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->k()V

    goto :goto_0

    .line 565
    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/c/a;->b:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 567
    new-instance v2, Lcom/applovin/impl/sdk/e/z;

    new-instance v0, Lcom/applovin/impl/sdk/p$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/p$3;-><init>(Lcom/applovin/impl/sdk/p;)V

    const/4 v1, 0x1

    invoke-direct {v2, p0, v1, v0}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/p;ZLjava/lang/Runnable;)V

    .line 582
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    const-string v1, "AppLovinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Waiting for required adapters to init: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " - timing out in "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "ms..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->x:Lcom/applovin/impl/sdk/e/o;

    sget-object v3, Lcom/applovin/impl/sdk/e/o$a;->l:Lcom/applovin/impl/sdk/e/o$a;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;JZ)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 550
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/applovin/impl/sdk/c/b;Lcom/applovin/mediation/MaxAdFormat;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ")Z"
        }
    .end annotation

    .line 1020
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/p;->c(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/applovin/mediation/MaxAdFormat;)Z
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->aj:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->aj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public aa()Lcom/applovin/impl/sdk/ae;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->M:Lcom/applovin/impl/sdk/ae;

    return-object v0
.end method

.method public ab()Lcom/applovin/impl/sdk/m;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->O:Lcom/applovin/impl/sdk/m;

    return-object v0
.end method

.method public ac()Lcom/applovin/impl/sdk/utils/o;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->P:Lcom/applovin/impl/sdk/utils/o;

    return-object v0
.end method

.method public ad()Lcom/applovin/impl/sdk/k;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->Q:Lcom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public ae()Lcom/applovin/impl/b/a/b;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->R:Lcom/applovin/impl/b/a/b;

    return-object v0
.end method

.method public af()Lcom/applovin/impl/a/a/a;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->S:Lcom/applovin/impl/a/a/a;

    return-object v0
.end method

.method public ag()Lcom/applovin/impl/sdk/a/f;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->T:Lcom/applovin/impl/sdk/a/f;

    return-object v0
.end method

.method public ah()Lcom/applovin/impl/sdk/x;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->U:Lcom/applovin/impl/sdk/x;

    return-object v0
.end method

.method public ai()Lcom/applovin/impl/sdk/array/ArrayService;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->V:Lcom/applovin/impl/sdk/array/ArrayService;

    return-object v0
.end method

.method public aj()Lcom/applovin/impl/sdk/t;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->W:Lcom/applovin/impl/sdk/t;

    return-object v0
.end method

.method public ak()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->X:Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    return-object v0
.end method

.method public al()Lcom/applovin/impl/sdk/network/k;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->Y:Lcom/applovin/impl/sdk/network/k;

    return-object v0
.end method

.method public am()Lcom/applovin/impl/sdk/g;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->Z:Lcom/applovin/impl/sdk/g;

    return-object v0
.end method

.method public an()Lcom/applovin/impl/mediation/f;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->aa:Lcom/applovin/impl/mediation/f;

    return-object v0
.end method

.method public ao()Lcom/applovin/impl/mediation/e;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    return-object v0
.end method

.method public ap()Lcom/applovin/impl/mediation/MediationServiceImpl;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ac:Lcom/applovin/impl/mediation/MediationServiceImpl;

    return-object v0
.end method

.method public aq()Lcom/applovin/mediation/hybridAds/d;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ad:Lcom/applovin/mediation/hybridAds/d;

    return-object v0
.end method

.method public ar()Lcom/applovin/impl/mediation/h;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ae:Lcom/applovin/impl/mediation/h;

    return-object v0
.end method

.method public as()Lcom/applovin/impl/mediation/debugger/b;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->af:Lcom/applovin/impl/mediation/debugger/b;

    return-object v0
.end method

.method public at()Lcom/applovin/impl/sdk/z;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ag:Lcom/applovin/impl/sdk/z;

    return-object v0
.end method

.method public au()Lcom/applovin/impl/mediation/d;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ah:Lcom/applovin/impl/mediation/d;

    return-object v0
.end method

.method public av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ai:Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    return-object v0
.end method

.method public aw()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ap:Z

    return v0
.end method

.method public ax()Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->av:Lcom/applovin/sdk/AppLovinSdkConfiguration;

    return-object v0
.end method

.method public b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;TT;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->b(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 626
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/p;->an:Z

    .line 629
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/e/o;->d()V

    .line 631
    invoke-direct {p0}, Lcom/applovin/impl/sdk/p;->ay()V

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/applovin/impl/sdk/c/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting plugin version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->dT:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->c(Lcom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1168
    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->w:Lcom/applovin/impl/sdk/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting user id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/Utils;->kilobytesToByes(I)I

    move-result v3

    if-le v0, v3, :cond_1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Provided user id longer than supported ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/Utils;->kilobytesToByes(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maximum)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->F:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->an:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/applovin/impl/sdk/p;->o:Ljava/lang/String;

    .line 1208
    sget-object p1, Lcom/applovin/impl/sdk/c/d;->I:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/sdk/c/d;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->ak:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->ao:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 1

    .line 784
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/p;->k:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .line 792
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "max"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    const-string v0, "com.unity3d.player.UnityPlayerActivity"

    .line 800
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->checkClassExistence(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 3

    .line 808
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->C()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "eifc"

    .line 809
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 811
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "iOf8gUDWef"

    .line 812
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "AppLovinSdk"

    const-string v2, "Invalid internal features code. Please contact your account manager to get the code."

    .line 816
    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public i()V
    .locals 3

    .line 827
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->D:Lcom/applovin/impl/sdk/c/e;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->f:Lcom/applovin/impl/sdk/c/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 828
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/Utils;->toVersionCode(Ljava/lang/String;)I

    move-result v1

    .line 832
    sget v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    if-ge v2, v1, :cond_0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current version ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is older than earlier installed version ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), which may cause compatibility issues."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->O:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->a()V

    return-void
.end method

.method public k()V
    .locals 5

    .line 854
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->R:Lcom/applovin/impl/b/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->at:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-eqz v0, :cond_4

    .line 862
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 864
    iput-object v2, p0, Lcom/applovin/impl/sdk/p;->at:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    .line 865
    iput-object v2, p0, Lcom/applovin/impl/sdk/p;->au:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    .line 866
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    sget-object v2, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_SUCCESS:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;)V

    goto :goto_0

    .line 872
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->au:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    if-ne v1, v0, :cond_2

    return-void

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->ab:Lcom/applovin/impl/mediation/e;

    sget-object v3, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;)V

    .line 877
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->ap:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    iput-object v2, p0, Lcom/applovin/impl/sdk/p;->at:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    goto :goto_0

    .line 884
    :cond_3
    iput-object v0, p0, Lcom/applovin/impl/sdk/p;->au:Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    .line 889
    :goto_0
    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aq:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 891
    new-instance v3, Lcom/applovin/impl/sdk/p$5;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/p$5;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    invoke-static {v3, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method public l()V
    .locals 6

    const-string v0, "AppLovinSdk"

    const-string v1, "Resetting SDK state..."

    .line 940
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->z:Lcom/applovin/impl/sdk/d/g;

    sget-object v1, Lcom/applovin/impl/sdk/d/f;->i:Lcom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    .line 945
    iget-object v2, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->c()V

    .line 946
    iget-object v2, p0, Lcom/applovin/impl/sdk/p;->d:Lcom/applovin/impl/sdk/c/c;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/c;->a()V

    .line 949
    iget-object v2, p0, Lcom/applovin/impl/sdk/p;->z:Lcom/applovin/impl/sdk/d/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/g;->a()V

    .line 951
    iget-object v2, p0, Lcom/applovin/impl/sdk/p;->z:Lcom/applovin/impl/sdk/d/g;

    sget-object v3, Lcom/applovin/impl/sdk/d/f;->i:Lcom/applovin/impl/sdk/d/f;

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/d/g;->b(Lcom/applovin/impl/sdk/d/f;J)V

    .line 955
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->al:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->b()V

    goto :goto_0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->al:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/util/Map;)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->S:Lcom/applovin/impl/a/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a/a;->b()V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->F:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->F:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->F:Lcom/applovin/impl/sdk/utils/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/q;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->n:Lcom/applovin/sdk/AppLovinTargetingData;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinTargetingDataImpl;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .line 1214
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->I:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1215
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->o:Ljava/lang/String;

    return-object v0
.end method

.method public t()Landroid/app/Activity;
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/applovin/impl/sdk/p;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreSdk{sdkKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->ao:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/sdk/p;->ap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1241
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/p;->aq:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1246
    iget-boolean v0, p0, Lcom/applovin/impl/sdk/p;->ar:Z

    return v0
.end method

.method public w()Lcom/applovin/impl/sdk/a;
    .locals 1

    .line 1252
    sget-object v0, Lcom/applovin/impl/sdk/p;->g:Lcom/applovin/impl/sdk/a;

    return-object v0
.end method

.method public x()Landroid/app/Activity;
    .locals 1

    .line 1263
    invoke-static {}, Lcom/applovin/impl/sdk/p;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/p;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/p;->t()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
