.class public Lcom/applovin/impl/mediation/a/d;
.super Lcom/applovin/impl/mediation/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad/g;
.implements Lcom/applovin/impl/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/a/d$a;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/applovin/impl/sdk/b;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/mediation/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lcom/applovin/impl/sdk/p;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/e;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/mediation/a/d;Lcom/applovin/impl/mediation/g;)V
    .locals 7

    .line 54
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->B()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->af()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->V()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/d;->U()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, p1, Lcom/applovin/impl/mediation/a/d;->b:Lcom/applovin/impl/sdk/p;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/e;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    .line 34
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->e:Lcom/applovin/impl/sdk/b;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/b;->a()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/applovin/impl/mediation/a/d;->e:Lcom/applovin/impl/sdk/b;

    :cond_0
    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public C()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->a:Lcom/applovin/impl/mediation/g;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/g;->c()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 87
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->ag()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "template"

    invoke-static {v2, v0, v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->V:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "inacc"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/d;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->a:Lcom/applovin/impl/mediation/g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public H()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public I()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ad_expiration_ms"

    .line 139
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/d;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 142
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->D:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/a/d;->a(Z)V

    return-void
.end method

.method public P()J
    .locals 4

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 130
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->I()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public R()V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->setExpired()V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/a/a;
    .locals 1

    .line 60
    new-instance v0, Lcom/applovin/impl/mediation/a/d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/a/d;-><init>(Lcom/applovin/impl/mediation/a/d;Lcom/applovin/impl/mediation/g;)V

    return-object v0
.end method

.method public a(Lcom/applovin/impl/mediation/a/d$a;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->e:Lcom/applovin/impl/sdk/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/d;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/sdk/b;-><init>(Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/sdk/b$a;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/d;->e:Lcom/applovin/impl/sdk/b;

    .line 182
    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/mediation/a/a;)Z

    .line 183
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->a:Lcom/applovin/impl/mediation/g;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    return-void
.end method

.method public onAdExpired()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/d;->getNativeAd()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->setExpired()V

    :cond_0
    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/a/d;->a(Z)V

    .line 222
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/mediation/a/d$a;

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0, p0}, Lcom/applovin/impl/mediation/a/d$a;->onAdExpiredOld(Lcom/applovin/impl/mediation/a/d;)V

    .line 226
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method
