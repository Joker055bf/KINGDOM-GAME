.class public Lcom/applovin/impl/mediation/a/c;
.super Lcom/applovin/impl/mediation/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/ad/g;


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private g:Z


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

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/a;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/mediation/g;)V
    .locals 7

    .line 81
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->B()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->af()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->V()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/c;->U()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v6, p1, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/a/a;-><init>(ILjava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/g;Lcom/applovin/impl/sdk/p;)V

    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iget-object p2, p1, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    iget-object p1, p1, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public C()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ad_hidden_timeout_ms"

    .line 95
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    return-wide v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->G:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Z
    .locals 3

    const/4 v0, 0x0

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "schedule_ad_hidden_on_ad_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->H:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public E()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    .line 121
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    return-wide v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->I:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public F()J
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public G()J
    .locals 4

    const-string v0, "fullscreen_display_delay_ms"

    const-wide/16 v1, -0x1

    .line 149
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->u:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public H()J
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->w:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ahdm"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public I()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->v:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string/jumbo v1, "susaode"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    const-string v0, "bcode"

    const-string v1, ""

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    const-string v0, "mcode"

    const-string v1, ""

    .line 183
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public M()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public N()Lcom/applovin/impl/sdk/b/c;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/b/c;

    return-object v0
.end method

.method public O()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public P()J
    .locals 4

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 220
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/a/c;->Q()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public Q()J
    .locals 5

    const-wide/16 v0, -0x1

    const-string v2, "ad_expiration_ms"

    .line 226
    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->b(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 229
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->b:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->C:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/applovin/impl/mediation/a/c;->g:Z

    return-void
.end method

.method public S()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/applovin/impl/mediation/a/c;->f:Z

    return v0
.end method

.method public a(Lcom/applovin/impl/mediation/g;)Lcom/applovin/impl/mediation/a/a;
    .locals 1

    .line 90
    new-instance v0, Lcom/applovin/impl/mediation/a/c;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/a/c;-><init>(Lcom/applovin/impl/mediation/a/c;Lcom/applovin/impl/mediation/g;)V

    return-object v0
.end method

.method public a(Lcom/applovin/impl/sdk/b/c;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/applovin/impl/mediation/a/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/a/c;->f:Z

    return-void
.end method
