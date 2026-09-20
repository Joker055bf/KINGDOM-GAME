.class public Lcom/ironsource/mediationsdk/T;
.super Lcom/ironsource/mediationsdk/s;

# interfaces
.implements Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;
.implements Lcom/ironsource/mediationsdk/U;
.implements Lcom/ironsource/mediationsdk/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/T$a;
    }
.end annotation


# instance fields
.field private A:Lcom/ironsource/mediationsdk/utils/f;

.field private B:Z

.field private final C:J

.field private final D:Ljava/lang/Runnable;

.field d:Lcom/ironsource/mediationsdk/utils/k;

.field e:Lcom/ironsource/lifecycle/a/a;

.field f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field g:Lcom/ironsource/mediationsdk/model/i;

.field h:Lcom/ironsource/mediationsdk/V;

.field i:I

.field final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/V;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/ironsource/mediationsdk/j;

.field l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/j$a;",
            ">;"
        }
    .end annotation
.end field

.field m:J

.field final n:Z

.field final o:Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;

.field private p:Lcom/ironsource/mediationsdk/T$a;

.field private q:I

.field private r:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/V;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Lorg/json/JSONObject;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Lcom/ironsource/mediationsdk/h;

.field private x:Lcom/ironsource/mediationsdk/c/b;

.field private y:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ironsource/mediationsdk/utils/k;Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/utils/k;",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/ironsource/mediationsdk/s;-><init>(Ljava/util/HashSet;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    sget-object p3, Lcom/ironsource/mediationsdk/T$a;->a:Lcom/ironsource/mediationsdk/T$a;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    const-string p3, ""

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/T;->B:Z

    new-instance p4, Lcom/ironsource/mediationsdk/T$3;

    invoke-direct {p4, p0}, Lcom/ironsource/mediationsdk/T$3;-><init>(Lcom/ironsource/mediationsdk/T;)V

    iput-object p4, p0, Lcom/ironsource/mediationsdk/T;->D:Ljava/lang/Runnable;

    iput-object p0, p0, Lcom/ironsource/mediationsdk/T;->o:Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;

    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ext1"

    aput-object v3, v2, p3

    const-string v3, "Prog_BN"

    aput-object v3, v2, v0

    aput-object v2, v1, p3

    const p3, 0x14570

    invoke-virtual {p0, p3, v1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isAuctionEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/ironsource/mediationsdk/utils/o;->b(I)I

    move-result p3

    iput p3, p0, Lcom/ironsource/mediationsdk/T;->i:I

    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object p3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/k;->e()I

    move-result v0

    iput v0, p3, Lcom/ironsource/mediationsdk/o;->a:I

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/ironsource/mediationsdk/h;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/k;->h()Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    const-string v1, "banner"

    invoke-direct {p3, v1, v0, p0}, Lcom/ironsource/mediationsdk/h;-><init>(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/c;Lcom/ironsource/mediationsdk/g;)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->w:Lcom/ironsource/mediationsdk/h;

    :cond_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/T;->a(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/T;->b(Ljava/util/List;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/T;->m:J

    sget-object p1, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/k;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/T;->n:Z

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/k;->j()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ironsource/mediationsdk/T;->C:J

    new-instance p1, Lcom/ironsource/lifecycle/a/a;

    invoke-static {}, Lcom/ironsource/lifecycle/d;->a()Lcom/ironsource/lifecycle/d;

    move-result-object p2

    new-instance p3, Lcom/ironsource/mediationsdk/server/b;

    invoke-direct {p3}, Lcom/ironsource/mediationsdk/server/b;-><init>()V

    invoke-direct {p1, p4, p2, p3}, Lcom/ironsource/lifecycle/a/a;-><init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/d;Lcom/ironsource/mediationsdk/server/b;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/T;->e:Lcom/ironsource/lifecycle/a/a;

    return-void
.end method

.method private static a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bannerLayout"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to bannerAdData, exception =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;)V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->h:Lcom/ironsource/mediationsdk/T$a;

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->c:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/T;->b(Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;I[[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/T;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/V;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->g()Z

    move-result v3

    const-string v4, ","

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/T;->n:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/ironsource/mediationsdk/bidding/a;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->i()I

    move-result v4

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/ironsource/mediationsdk/bidding/a;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBidderInterface;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lcom/ironsource/mediationsdk/V;->getBiddingData(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    new-array v4, v3, [[Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "reason"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Missing bidding data"

    aput-object v6, v5, v3

    aput-object v5, v4, v7

    const v3, 0x14461

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/mediationsdk/V;->a(I[[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->g()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->i()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/T;Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/T;->b(Z)V

    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/V;Lcom/ironsource/mediationsdk/c/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->i()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->x:Lcom/ironsource/mediationsdk/c/b;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/c/b;ILcom/ironsource/mediationsdk/c/b;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/c/b;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/c/b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/ironsource/mediationsdk/j;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/k;->h()Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v1

    iget v1, v1, Lcom/ironsource/mediationsdk/utils/c;->g:I

    invoke-direct {p1, v0, v1}, Lcom/ironsource/mediationsdk/j;-><init>(Ljava/util/List;I)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/T;->k:Lcom/ironsource/mediationsdk/j;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auction waterfallString = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [[Ljava/lang/Object;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "errorCode"

    aput-object p3, p2, v3

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v2

    aput-object p2, p1, v3

    new-array p2, v1, [Ljava/lang/Object;

    const-string v4, "duration"

    aput-object v4, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v2

    aput-object p2, p1, v2

    const/16 p2, 0xdad

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    sget-object p1, Lcom/ironsource/mediationsdk/T$a;->e:Lcom/ironsource/mediationsdk/T$a;

    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->h:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->e:Lcom/ironsource/lifecycle/a/a;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/utils/k;->g()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ironsource/lifecycle/a/a;->a(J)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const-string v5, "No candidates available for auctioning"

    invoke-direct {v4, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v4, v3}, Lcom/ironsource/mediationsdk/o;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    new-array p1, v2, [[Ljava/lang/Object;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    aput-object p2, p1, v3

    const/16 p2, 0xc27

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    sget-object p1, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    return-void

    :cond_1
    new-array v0, v2, [[Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ext1"

    aput-object v4, v1, v3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    aput-object v1, v0, v3

    const/16 p3, 0xdb6

    invoke-virtual {p0, p3, v0}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->w:Lcom/ironsource/mediationsdk/h;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/ironsource/mediationsdk/T;->k:Lcom/ironsource/mediationsdk/j;

    iget v6, p0, Lcom/ironsource/mediationsdk/T;->i:I

    iget-object v7, p0, Lcom/ironsource/mediationsdk/T;->b:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->i()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/ironsource/mediationsdk/h;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/j;ILcom/ironsource/mediationsdk/IronSourceSegment;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    return-void

    :cond_2
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "mAuctionHandler is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 7

    const-string v0, "ext1"

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "BANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "SMART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "LARGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v2, "RECTANGLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "bannerAdSize"

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x6

    :try_start_1
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "custom_banner_size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Adaptive=true"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " , Adaptive=true"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0xc81

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc26

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc27

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc28

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0xdad

    if-eq p0, v0, :cond_1

    const/16 v0, 0xdae

    if-eq p0, v0, :cond_1

    const/16 v0, 0xdb2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    if-ne v1, p1, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set state from \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/ironsource/mediationsdk/T;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 7

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/T;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void

    :cond_0
    new-instance v1, Lcom/ironsource/mediationsdk/bidding/b;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/bidding/b;-><init>()V

    new-instance v3, Lcom/ironsource/mediationsdk/T$5;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/ironsource/mediationsdk/T$5;-><init>(Lcom/ironsource/mediationsdk/T;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/16 p1, 0xdc0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/T;->C:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/mediationsdk/bidding/b;->a(Ljava/util/List;Lcom/ironsource/mediationsdk/bidding/b$a;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v2

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v0, v0}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;ZZ)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v2, Lcom/ironsource/mediationsdk/V;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    iget v8, p0, Lcom/ironsource/mediationsdk/T;->i:I

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->o()Z

    move-result v9

    move-object v3, v2

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/V;-><init>(Lcom/ironsource/mediationsdk/utils/k;Lcom/ironsource/mediationsdk/U;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;IZ)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t load adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->e:Lcom/ironsource/mediationsdk/T$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->d:Lcom/ironsource/mediationsdk/T$a;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    :goto_0
    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->c:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/ironsource/mediationsdk/utils/f;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/f;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ironsource/mediationsdk/T;->q:I

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/o;->b(I)I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/T;->i:I

    if-eqz p1, :cond_3

    const/16 p1, 0xbc3

    goto :goto_1

    :cond_3
    const/16 p1, 0xbb9

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/T;->a()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->f()V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->e()V

    return-void

    :cond_5
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wrong state - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/List;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v11, p0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "waterfall.size() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_6

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/ironsource/mediationsdk/c/b;

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/V;

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->a()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    iget-object v2, v0, Lcom/ironsource/mediationsdk/V;->d:Lcom/ironsource/mediationsdk/model/a;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v9, Lcom/ironsource/mediationsdk/V;

    iget-object v1, v11, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/V;->d:Lcom/ironsource/mediationsdk/model/a;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iget v5, v11, Lcom/ironsource/mediationsdk/T;->i:I

    iget-object v6, v11, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    iget-object v7, v11, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    iget v8, v11, Lcom/ironsource/mediationsdk/T;->v:I

    iget-object v2, v11, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->o()Z

    move-result v16

    move-object v0, v9

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object v14, v9

    move-object/from16 v9, v17

    move/from16 v17, v13

    move v13, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/mediationsdk/V;-><init>(Lcom/ironsource/mediationsdk/utils/k;Lcom/ironsource/mediationsdk/U;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/AbstractAdapter;ILjava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;Z)V

    iput-boolean v13, v14, Lcom/ironsource/mediationsdk/ac;->e:Z

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/j$a;->a:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move/from16 v17, v13

    move v13, v10

    goto :goto_1

    :cond_1
    move/from16 v17, v13

    move v13, v10

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not find matching smash for auction response item - item = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_1
    iget-object v0, v11, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/V;

    const-string v1, "1"

    const-string v2, "2"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/V;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Lcom/ironsource/mediationsdk/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move/from16 v1, v17

    if-eq v1, v0, :cond_5

    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v13, v1, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateWaterfall() - next waterfall is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 10

    iget v0, p0, Lcom/ironsource/mediationsdk/T;->q:I

    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/V;

    iget-boolean v4, v1, Lcom/ironsource/mediationsdk/ac;->e:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loading smash - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ironsource/mediationsdk/T;->q:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/V;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/V;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/c/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a()Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/T;->g:Lcom/ironsource/mediationsdk/model/i;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/ironsource/mediationsdk/V;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/i;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Empty waterfall"

    goto :goto_1

    :cond_4
    const-string v0, "Mediation No fill"

    :goto_1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v4, "errorReason = "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/T;->f(Lcom/ironsource/mediationsdk/V;)V

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result v1

    const-string v2, "duration"

    const/16 v4, 0x25e

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    new-array v1, v1, [[Ljava/lang/Object;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "errorCode"

    aput-object v8, v7, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v7, v1, v6

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "reason"

    aput-object v8, v7, v6

    aput-object v0, v7, v3

    aput-object v7, v1, v3

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v6

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/f;->a(Lcom/ironsource/mediationsdk/utils/f;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v3

    aput-object v7, v1, v5

    const/16 v2, 0xc27

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v2, v1, v6}, Lcom/ironsource/mediationsdk/o;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void

    :cond_5
    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    sget-object v7, Lcom/ironsource/mediationsdk/T$a;->h:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, v1, v7}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v3, [[Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/f;->a(Lcom/ironsource/mediationsdk/utils/f;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v3

    aput-object v5, v1, v6

    const/16 v2, 0xc81

    invoke-virtual {p0, v2, v1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v1, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v2, v1, v3}, Lcom/ironsource/mediationsdk/o;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->e:Lcom/ironsource/lifecycle/a/a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/k;->g()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/lifecycle/a/a;->a(J)V

    return-void

    :cond_6
    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/T;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/T;->c(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method

.method private f(Lcom/ironsource/mediationsdk/V;)V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/V;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/V;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/V;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->g()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/ironsource/mediationsdk/c/b;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/mediationsdk/c/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ISBannerSize;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private j()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->g:Lcom/ironsource/mediationsdk/model/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/i;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->d:Lcom/ironsource/mediationsdk/T$a;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->e:Lcom/ironsource/mediationsdk/T$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private n()Z
    .locals 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->h:Lcom/ironsource/mediationsdk/T$a;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private o()Z
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->e:Lcom/ironsource/mediationsdk/T$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method a()V
    .locals 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/mediationsdk/T$4;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/T$4;-><init>(Lcom/ironsource/mediationsdk/T;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Auction failed | moving to fallback waterfall (error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p4, p0, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/mediationsdk/T;->v:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->f()V

    const/4 p3, 0x3

    new-array p3, p3, [[Ljava/lang/Object;

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "duration"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x1

    aput-object p5, v0, p6

    aput-object v0, p3, v2

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "errorCode"

    aput-object v0, p5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p6

    aput-object p5, p3, p6

    new-array p1, p4, [Ljava/lang/Object;

    const-string p5, "reason"

    aput-object p5, p1, v2

    aput-object p2, p1, p6

    aput-object p1, p3, p4

    const/16 p1, 0xdad

    invoke-virtual {p0, p1, p3}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->d:Lcom/ironsource/mediationsdk/T$a;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->e()V

    return-void

    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wrong state - mCurrentState = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void
.end method

.method a(I[[Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/ironsource/mediationsdk/T;->i:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method a(I[[Ljava/lang/Object;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(ZZI)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->j()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/T;->a(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->g:Lcom/ironsource/mediationsdk/model/i;

    if-eqz v3, :cond_1

    const-string v3, "placement"

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "auctionId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3

    const-string p3, "genericParams"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p1}, Lcom/ironsource/mediationsdk/T;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "auctionTrials"

    iget v3, p0, Lcom/ironsource/mediationsdk/T;->v:I

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "auctionFallback"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    invoke-virtual {v2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p2, :cond_5

    array-length p3, p2

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_5

    aget-object v4, p2, v3

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v4, v1

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_5
    new-instance p2, Lcom/ironsource/mediationsdk/a/c;

    invoke-direct {p2, p1, v2}, Lcom/ironsource/mediationsdk/a/c;-><init>(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/a/d;->d()Lcom/ironsource/mediationsdk/a/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/a/d;->b(Lcom/ironsource/mediationsdk/a/c;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/model/i;)V
    .locals 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/T;->a_()V

    sget-object v0, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->c:Lcom/ironsource/mediationsdk/T$a;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;Lcom/ironsource/mediationsdk/T$a;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/o;->b()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/ironsource/mediationsdk/T$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/mediationsdk/T$1;-><init>(Lcom/ironsource/mediationsdk/T;Lcom/ironsource/mediationsdk/model/i;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-static {p1}, Lcom/ironsource/mediationsdk/r;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "can\'t load banner - %s"

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "banner is null"

    goto :goto_0

    :cond_0
    const-string p1, "banner is destroyed"

    :goto_0
    aput-object p1, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/i;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    if-nez p2, :cond_3

    const-string p2, "placement is null"

    goto :goto_2

    :cond_3
    const-string p2, "placement name is empty"

    :goto_2
    aput-object p2, p1, v2

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/r$a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/r$a;->a()V

    return-void

    :cond_6
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "can\'t load banner - already has pending invocation"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_7
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "can\'t load banner - loadBanner already called and still in progress"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method a(Lcom/ironsource/mediationsdk/T$a;)V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "from \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->z:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/ironsource/mediationsdk/V;)V
    .locals 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/n;->d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc28

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->m()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/V;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smash = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    const-string v4, "ext1"

    const-string v5, "errorCode"

    const-string v6, "reason"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "invoked with auctionId: "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " and the current id is "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v2, v7, [[Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v5, v3, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    aput-object v3, v2, v10

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v6, v3, v10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong auction id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " State - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    aput-object v3, v2, v9

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v10

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v3, v2, v8

    const v3, 0x14573

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/mediationsdk/V;->a(I[[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->l()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->h:Lcom/ironsource/mediationsdk/V;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/V;->c()V

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/mediationsdk/T;->f(Lcom/ironsource/mediationsdk/V;)V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/T;->h:Lcom/ironsource/mediationsdk/V;

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v2, :cond_2

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-virtual {v2, v3, v11}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_2
    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/ironsource/mediationsdk/j$a;->e:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {v2, v3, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/c/b;

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/c/b;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->i()I

    move-result v3

    iget-object v4, v0, Lcom/ironsource/mediationsdk/T;->x:Lcom/ironsource/mediationsdk/c/b;

    invoke-static {v2, v3, v4}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/c/b;ILcom/ironsource/mediationsdk/c/b;)V

    iget-object v11, v0, Lcom/ironsource/mediationsdk/T;->w:Lcom/ironsource/mediationsdk/h;

    iget-object v12, v0, Lcom/ironsource/mediationsdk/T;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v3, v12

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v13, v0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->i()I

    move-result v14

    iget-object v15, v0, Lcom/ironsource/mediationsdk/T;->x:Lcom/ironsource/mediationsdk/c/b;

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/mediationsdk/c/b;Lcom/ironsource/mediationsdk/c/b;)V

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/k;->h()Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/ironsource/mediationsdk/utils/c;->t:Z

    if-nez v3, :cond_4

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/V;Lcom/ironsource/mediationsdk/c/b;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "onLoadSuccess winner instance "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " missing from waterfall. auctionId = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v11, v0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    new-array v2, v7, [[Ljava/lang/Object;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v5, v3, v10

    const/16 v5, 0x3f2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    aput-object v3, v2, v10

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v6, v3, v10

    const-string v5, "Loaded missing"

    aput-object v5, v3, v9

    aput-object v3, v2, v9

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v10

    aput-object v1, v3, v9

    aput-object v3, v2, v8

    const v1, 0x14575

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object v2, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    const-string v3, "duration"

    if-ne v1, v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2, v10}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    new-array v1, v9, [[Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/f;->a(Lcom/ironsource/mediationsdk/utils/f;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v10

    goto :goto_1

    :cond_5
    new-array v1, v8, [[Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v10

    const-string v4, "banner is destroyed"

    aput-object v4, v2, v9

    aput-object v2, v1, v10

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/f;->a(Lcom/ironsource/mediationsdk/utils/f;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v9

    :goto_1
    const/16 v2, 0xc26

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, v0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v1, v2, v9}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;Z)V

    :cond_7
    const-string v1, "bannerReloadSucceeded"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->sendAutomationLog(Ljava/lang/String;)V

    new-array v1, v9, [[Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v3, v2, v10

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->A:Lcom/ironsource/mediationsdk/utils/f;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/f;->a(Lcom/ironsource/mediationsdk/utils/f;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v1, v10

    const/16 v2, 0xc2c

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/T;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xd48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/o;->a()Lcom/ironsource/mediationsdk/utils/o;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/ironsource/mediationsdk/utils/o;->a(I)V

    sget-object v1, Lcom/ironsource/mediationsdk/T$a;->h:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    iget-object v1, v0, Lcom/ironsource/mediationsdk/T;->e:Lcom/ironsource/lifecycle/a/a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/k;->g()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/lifecycle/a/a;->a(J)V

    return-void

    :cond_9
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wrong state - mCurrentState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/V;)V
    .locals 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invoked with auctionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and the current id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array v0, p1, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    aput-object v2, v0, v4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "reason"

    aput-object v2, p1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Wrong auction "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/ironsource/mediationsdk/V;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " State - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    aput-object p1, v0, v3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "ext1"

    aput-object v2, p1, v4

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    aput-object p1, v0, v1

    const p1, 0x14573

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/mediationsdk/V;->a(I[[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/ironsource/mediationsdk/j$a;->b:Lcom/ironsource/mediationsdk/j$a;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->e()V

    return-void

    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "wrong state - mCurrentState = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/c/b;Lorg/json/JSONObject;Lorg/json/JSONObject;IJILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/c/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/c/b;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "IJI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auctionId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/T;->u:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/T;->s:Ljava/lang/String;

    iput p6, p0, Lcom/ironsource/mediationsdk/T;->v:I

    iput-object p3, p0, Lcom/ironsource/mediationsdk/T;->x:Lcom/ironsource/mediationsdk/c/b;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/T;->t:Lorg/json/JSONObject;

    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x2

    const/4 p6, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, p4, [[Ljava/lang/Object;

    new-array v1, p4, [Ljava/lang/Object;

    const-string v2, "errorCode"

    aput-object v2, v1, v0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    aput-object p9, v1, p6

    aput-object v1, p3, v0

    new-array p9, p4, [Ljava/lang/Object;

    const-string v1, "reason"

    aput-object v1, p9, v0

    aput-object p10, p9, p6

    aput-object p9, p3, p6

    const p9, 0x157c2

    invoke-virtual {p0, p9, p3}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    :cond_0
    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0, p5, p3}, Lcom/ironsource/mediationsdk/T;->a(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->a:Lcom/ironsource/mediationsdk/utils/a;

    sget-object p5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p3, p5}, Lcom/ironsource/mediationsdk/utils/a;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-array p1, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "auctionId"

    aput-object p4, p3, v0

    aput-object p2, p3, p6

    aput-object p3, p1, v0

    const/16 p2, 0xdb2

    invoke-virtual {p0, p2, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->b:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->d:Lcom/ironsource/mediationsdk/T$a;

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 p2, 0x20d

    const-string p3, "Ad unit is capped"

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-static {}, Lcom/ironsource/mediationsdk/o;->a()Lcom/ironsource/mediationsdk/o;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p2, p3, p1, v0}, Lcom/ironsource/mediationsdk/o;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    :cond_1
    return-void

    :cond_2
    new-array p2, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p5, "duration"

    aput-object p5, p3, v0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p3, p6

    aput-object p3, p2, v0

    const/16 p3, 0xdae

    invoke-virtual {p0, p3, p2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    sget-object p3, Lcom/ironsource/mediationsdk/T$a;->d:Lcom/ironsource/mediationsdk/T$a;

    if-ne p2, p3, :cond_3

    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->f:Lcom/ironsource/mediationsdk/T$a;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/ironsource/mediationsdk/T$a;->g:Lcom/ironsource/mediationsdk/T$a;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T$a;)V

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/T;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p6, [[Ljava/lang/Object;

    new-array p3, p4, [Ljava/lang/Object;

    const-string p4, "ext1"

    aput-object p4, p3, v0

    aput-object p1, p3, p6

    aput-object p3, p2, v0

    const/16 p1, 0xdb7

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->e()V

    return-void

    :cond_4
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wrong state - mCurrentState = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "troubleshoot event - check if the banner is visible and has focus"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    const p1, 0x14638

    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/T;I)V

    iget-object p1, p0, Lcom/ironsource/mediationsdk/T;->f:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setWindowFocusChangedListener(Lcom/ironsource/mediationsdk/IronSourceBannerLayout$a;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/V;)V
    .locals 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc2a

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->m()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public final c(Lcom/ironsource/mediationsdk/V;)V
    .locals 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc29

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->m()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public final d(Lcom/ironsource/mediationsdk/V;)V
    .locals 5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ironsource/mediationsdk/n;->a()Lcom/ironsource/mediationsdk/n;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/T;->c:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/n;->c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reason"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "banner is destroyed"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    move-object v0, v1

    :goto_0
    const/16 v1, 0xc2b

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->m()I

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;I)V

    return-void
.end method

.method public final e(Lcom/ironsource/mediationsdk/V;)V
    .locals 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/T;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->d:Lcom/ironsource/mediationsdk/utils/k;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/k;->h()Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/utils/c;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/T;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/c/b;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/T;->a(Lcom/ironsource/mediationsdk/V;Lcom/ironsource/mediationsdk/c/b;)V

    :cond_0
    const/16 p1, 0xc2f

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/T;->a(I[[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong state - mCurrentState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/V;->k()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "errorCode"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "reason"

    aput-object v5, v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wrong State - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/T;->p:Lcom/ironsource/mediationsdk/T$a;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "ext1"

    aput-object v5, v2, v4

    aput-object p1, v2, v3

    aput-object v2, v0, v1

    const p1, 0x14573

    goto :goto_0
.end method
