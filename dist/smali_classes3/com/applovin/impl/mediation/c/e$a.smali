.class Lcom/applovin/impl/mediation/c/e$a;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/c/e;

.field private final b:J

.field private final c:I

.field private final d:Lcom/applovin/impl/mediation/a/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/c/e;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/a/a;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/applovin/impl/mediation/c/e$a;->a:Lcom/applovin/impl/mediation/c/e;

    .line 245
    invoke-static {p1}, Lcom/applovin/impl/mediation/c/e;->b(Lcom/applovin/impl/mediation/c/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/e;->c(Lcom/applovin/impl/mediation/c/e;)Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/c/e$a;->b:J

    .line 248
    iput p2, p0, Lcom/applovin/impl/mediation/c/e$a;->c:I

    .line 249
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/mediation/a/a;

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/e$a;->d:Lcom/applovin/impl/mediation/a/a;

    .line 250
    iput-object p3, p0, Lcom/applovin/impl/mediation/c/e$a;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/e$a;)J
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/applovin/impl/mediation/c/e$a;->b:J

    return-wide v0
.end method

.method private a(Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 9

    .line 320
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    .line 321
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e$a;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/d/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Lorg/json/JSONObject;

    move-result-object v0

    .line 322
    new-instance v3, Lcom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;

    invoke-direct {v3, v0}, Lcom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;-><init>(Lorg/json/JSONObject;)V

    .line 323
    new-instance v0, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->j()Landroid/os/Bundle;

    move-result-object v4

    move-object v1, v0

    move-object v2, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;-><init>(Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;Lcom/applovin/mediation/MaxMediatedNetworkInfo;Landroid/os/Bundle;ZJLcom/applovin/mediation/MaxError;)V

    .line 324
    iget-object p1, p0, Lcom/applovin/impl/mediation/c/e$a;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/e;->h(Lcom/applovin/impl/mediation/c/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/e$a;Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 235
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/mediation/c/e$a;->a(Lcom/applovin/impl/mediation/a/a;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/c/e$a;Ljava/lang/String;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/c/e$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/c/e$a;)Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/c/e$a;)I
    .locals 0

    .line 235
    iget p0, p0, Lcom/applovin/impl/mediation/c/e$a;->c:I

    return p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/c/e$a;)Ljava/util/List;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/c/e$a;)Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/sdk/y;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/mediation/a/a;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->d:Lcom/applovin/impl/mediation/a/a;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/mediation/c/e$a;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/applovin/impl/mediation/c/e$a;->f:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e$a;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e$a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading ad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/applovin/impl/mediation/c/e$a;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e$a;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e$a;->d:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/a/a;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "started to load ad"

    .line 259
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/c/e$a;->a(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e$a;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c/e;->d(Lcom/applovin/impl/mediation/c/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 262
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/c/e$a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->x()Landroid/app/Activity;

    move-result-object v0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/c/e$a;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ap()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e$a;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-static {v2}, Lcom/applovin/impl/mediation/c/e;->e(Lcom/applovin/impl/mediation/c/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/c/e$a;->d:Lcom/applovin/impl/mediation/a/a;

    new-instance v4, Lcom/applovin/impl/mediation/c/e$a$1;

    iget-object v5, p0, Lcom/applovin/impl/mediation/c/e$a;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-static {v5}, Lcom/applovin/impl/mediation/c/e;->f(Lcom/applovin/impl/mediation/c/e;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/applovin/impl/mediation/c/e$a$1;-><init>(Lcom/applovin/impl/mediation/c/e$a;Lcom/applovin/impl/mediation/ads/a$a;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
