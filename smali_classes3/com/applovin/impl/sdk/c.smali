.class public Lcom/applovin/impl/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/p;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/ad/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/applovin/impl/sdk/utils/p;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/c;->c:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p3, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/p;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/c;
    .locals 1

    .line 23
    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/sdk/p;)V

    .line 24
    invoke-interface {p0}, Lcom/applovin/impl/sdk/ad/g;->P()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/applovin/impl/sdk/c;->a(J)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/c;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/ad/g;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/g;

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->b()V

    .line 46
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->bF:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->Y()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/p;

    new-instance v1, Lcom/applovin/impl/sdk/c$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/c$1;-><init>(Lcom/applovin/impl/sdk/c;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/p;->a(JLcom/applovin/impl/sdk/p;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/c;->d:Lcom/applovin/impl/sdk/utils/p;

    return-void
.end method

.method public b()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->d:Lcom/applovin/impl/sdk/utils/p;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/p;->d()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->d:Lcom/applovin/impl/sdk/utils/p;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->b()V

    .line 75
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->a()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-interface {v0}, Lcom/applovin/impl/sdk/ad/g;->R()V

    .line 80
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/d$a;

    if-nez v1, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/d$a;->onAdExpired(Lcom/applovin/impl/sdk/ad/g;)V

    return-void
.end method
