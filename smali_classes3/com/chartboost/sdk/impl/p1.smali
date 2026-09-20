.class public abstract Lcom/chartboost/sdk/impl/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lcom/chartboost/sdk/impl/e4;

.field public B:Lcom/chartboost/sdk/impl/e6;

.field public final C:Lcom/chartboost/sdk/internal/Model/a;

.field public D:Lcom/chartboost/sdk/impl/c4;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:F

.field public J:F

.field public K:Z

.field public final L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public M:Z

.field public N:Z

.field public final O:Landroid/content/Context;

.field public final P:Lcom/chartboost/sdk/impl/y2;

.field public final Q:Lcom/chartboost/sdk/impl/o1;

.field public final R:Lcom/chartboost/sdk/impl/g1;

.field public final S:Lcom/chartboost/sdk/impl/k1;

.field public T:Lcom/chartboost/sdk/Mediation;

.field public U:Lcom/chartboost/sdk/impl/k2;

.field public V:Lcom/chartboost/sdk/impl/f6;

.field public final a:Landroid/os/Handler;

.field public final b:Lcom/chartboost/sdk/impl/l1;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public static synthetic $r8$lambda$l-tkXPEYjFtUB4NpRU_oRrd8UMA(Lcom/chartboost/sdk/impl/p1;)V
    .locals 0

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/p1;->x()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/y2;Lcom/chartboost/sdk/impl/o1;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/k1;Lcom/chartboost/sdk/Mediation;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->c:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p1;->f:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p1;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/p1;->h:J

    .line 10
    iput-wide v2, p0, Lcom/chartboost/sdk/impl/p1;->i:J

    .line 11
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->j:Z

    .line 14
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->k:I

    .line 15
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->l:I

    .line 16
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->m:I

    .line 17
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->n:I

    .line 18
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->o:I

    .line 20
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->p:I

    .line 21
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->q:I

    .line 22
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->r:I

    .line 23
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->s:I

    .line 25
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->t:I

    .line 26
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->u:I

    .line 27
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->v:I

    .line 28
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->w:I

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->x:I

    const/4 v3, 0x1

    .line 31
    iput-boolean v3, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    .line 32
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    .line 34
    sget-object v2, Lcom/chartboost/sdk/impl/e4;->b:Lcom/chartboost/sdk/impl/e4;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p1;->A:Lcom/chartboost/sdk/impl/e4;

    .line 41
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->E:I

    .line 42
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->F:I

    .line 43
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->G:I

    .line 44
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->H:I

    const/4 v2, 0x0

    .line 46
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->I:F

    .line 47
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->J:F

    .line 49
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    .line 53
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p1;->L:Ljava/util/Map;

    .line 55
    iput-boolean v3, p0, Lcom/chartboost/sdk/impl/p1;->M:Z

    iput-boolean v3, p0, Lcom/chartboost/sdk/impl/p1;->N:Z

    .line 745
    new-instance v2, Lcom/chartboost/sdk/impl/p1$c;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/p1$c;-><init>(Lcom/chartboost/sdk/impl/p1;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p1;->U:Lcom/chartboost/sdk/impl/k2;

    .line 773
    new-instance v2, Lcom/chartboost/sdk/impl/p1$d;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/p1$d;-><init>(Lcom/chartboost/sdk/impl/p1;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/p1;->V:Lcom/chartboost/sdk/impl/f6;

    .line 774
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p1;->O:Landroid/content/Context;

    .line 775
    iput-object p3, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    .line 776
    iput-object p4, p0, Lcom/chartboost/sdk/impl/p1;->b:Lcom/chartboost/sdk/impl/l1;

    .line 777
    iput-object p2, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    .line 778
    iput-object p5, p0, Lcom/chartboost/sdk/impl/p1;->P:Lcom/chartboost/sdk/impl/y2;

    .line 779
    iput-object p6, p0, Lcom/chartboost/sdk/impl/p1;->Q:Lcom/chartboost/sdk/impl/o1;

    .line 780
    iput-object p7, p0, Lcom/chartboost/sdk/impl/p1;->R:Lcom/chartboost/sdk/impl/g1;

    .line 781
    iput-object p8, p0, Lcom/chartboost/sdk/impl/p1;->S:Lcom/chartboost/sdk/impl/k1;

    .line 782
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    .line 783
    invoke-static {p1}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c4;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p1;->D:Lcom/chartboost/sdk/impl/c4;

    .line 784
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->d:Z

    .line 785
    iput-object p9, p0, Lcom/chartboost/sdk/impl/p1;->T:Lcom/chartboost/sdk/Mediation;

    return-void
.end method

.method private synthetic x()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->j:Z

    if-nez v0, :cond_0

    const-string v0, "CBViewProtocol"

    const-string v1, "Webview seems to be taking more time loading the html content, so closing the view."

    .line 2
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/chartboost/sdk/impl/i2;

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->i()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->n()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/chartboost/sdk/impl/p1;->T:Lcom/chartboost/sdk/Mediation;

    const-string/jumbo v3, "show_timeout_error"

    const-string v4, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    .line 6
    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 10
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->j:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/p1;->i:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total web view load response time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/chartboost/sdk/impl/p1;->i:J

    iget-wide v3, p0, Lcom/chartboost/sdk/impl/p1;->h:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBViewProtocol"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->b(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->d()V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->c:Z

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/p1$b;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/p1$b;-><init>(Lcom/chartboost/sdk/impl/p1;Lcom/chartboost/sdk/impl/e6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/p1;->c:Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, v0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/p1;->O:Landroid/content/Context;

    invoke-static {v2}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c4;

    move-result-object v2

    iget-object v3, v0, Lcom/chartboost/sdk/impl/e6;->a:Lcom/chartboost/sdk/impl/c4;

    if-eq v2, v3, :cond_2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/e6;->a(ZLcom/chartboost/sdk/internal/Model/a;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    new-instance v2, Lcom/chartboost/sdk/impl/p1$a;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/impl/p1$a;-><init>(Lcom/chartboost/sdk/impl/p1;Lcom/chartboost/sdk/impl/e6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->F:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->w()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->F:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->F:I

    :cond_0
    return-void
.end method

.method public E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v2, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    if-ne v1, v2, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->H()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    return-void
.end method

.method public F()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->E:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->w()V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->u()V

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->w()V

    .line 5
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->E:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->E:I

    :cond_0
    return-void
.end method

.method public G()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->P:Lcom/chartboost/sdk/impl/y2;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/y2;->a()Lcom/chartboost/sdk/impl/z2;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z2;->a:Ljava/io/File;

    const/4 v1, 0x0

    const-string v2, "CBViewProtocol"

    if-nez v0, :cond_0

    const-string v0, "External Storage path is unavailable or media not mounted"

    .line 3
    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return v1

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p1;->g:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid template being passed in the response "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v3, v3, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/k;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->p:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "No html data found in memory"

    .line 18
    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return v1

    .line 22
    :cond_2
    iput-object v0, p0, Lcom/chartboost/sdk/impl/p1;->f:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/p1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/p1$$ExternalSyntheticLambda0;-><init>(Lcom/chartboost/sdk/impl/p1;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/impl/p1;->x:I

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    :cond_2
    :goto_0
    return-void
.end method

.method public J()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->h()V

    return-void
.end method

.method public K()Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->e()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    .line 5
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object v0

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/p1;->N:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/chartboost/sdk/impl/p1;->M:Z

    if-nez v2, :cond_1

    .line 9
    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object v0

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/p1;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/z5;)Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    :cond_2
    return-object v1
.end method

.method public a(Landroid/view/Window;)I
    .locals 1

    const v0, 0x1020002

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public abstract a(Landroid/content/Context;Lcom/chartboost/sdk/impl/z5;)Lcom/chartboost/sdk/impl/e6;
.end method

.method public a(Landroid/view/ViewGroup;)Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/chartboost/sdk/impl/p1;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/z5;)Lcom/chartboost/sdk/impl/e6;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/chartboost/sdk/impl/p1;->J:F

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 18
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->a(Landroid/view/Window;)I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->o:I

    .line 28
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->k:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->l:I

    if-nez v0, :cond_2

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/p1;->b(Landroid/content/Context;)V

    .line 32
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 33
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->l:I

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->o:I

    sub-int/2addr v0, v1

    .line 35
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->m:I

    if-ne p1, v1, :cond_3

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->n:I

    if-eq v0, v1, :cond_4

    .line 36
    :cond_3
    iput p1, p0, Lcom/chartboost/sdk/impl/p1;->m:I

    .line 37
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->n:I

    :cond_4
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/e4;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/chartboost/sdk/impl/p1;->A:Lcom/chartboost/sdk/impl/e4;

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->e()V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->e()V

    :goto_0
    return-void
.end method

.method public final a(Lcom/chartboost/sdk/internal/Model/a;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p1, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    if-ne v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/chartboost/sdk/impl/l1$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/chartboost/sdk/impl/m1;->h:Lcom/chartboost/sdk/impl/m1;

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/l1$b;-><init>(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/m1;)V

    .line 51
    iput-object p1, v0, Lcom/chartboost/sdk/impl/l1$b;->d:Lcom/chartboost/sdk/internal/Model/a;

    .line 52
    iget-object p1, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/chartboost/sdk/internal/Model/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    const-string v1, "allowOrientationChange"

    .line 40
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    .line 43
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forceOrientation"

    .line 44
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/p1;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    .line 46
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->c()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/Boolean;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/internal/Model/a;->a(Lorg/json/JSONObject;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public b(F)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/chartboost/sdk/impl/p1;->I:F

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 12
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->k:I

    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/chartboost/sdk/impl/p1;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/i2;

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->i()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->n()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/impl/p1;->T:Lcom/chartboost/sdk/Mediation;

    const-string/jumbo v1, "show_webview_error"

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    .line 4
    invoke-static {v6}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    const-string v0, "CBViewProtocol"

    .line 8
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/p1;->j:Z

    .line 10
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/p1;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "portrait"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "landscape"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "error"

    return-object p1

    :cond_0
    const-string p1, "portrait"

    return-object p1

    :cond_1
    const-string p1, "landscape"

    return-object p1

    :cond_2
    const-string p1, "none"

    return-object p1
.end method

.method public c()V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->b:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    invoke-static {v0}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 31
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p1;->j:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 15
    iget v3, p0, Lcom/chartboost/sdk/impl/p1;->o:I

    sub-int/2addr v1, v3

    .line 16
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 19
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->p:I

    .line 20
    iput v1, p0, Lcom/chartboost/sdk/impl/p1;->q:I

    add-int/2addr v3, v2

    .line 21
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->r:I

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->s:I

    .line 25
    iput v2, p0, Lcom/chartboost/sdk/impl/p1;->t:I

    .line 26
    iput v1, p0, Lcom/chartboost/sdk/impl/p1;->u:I

    .line 27
    iput v3, p0, Lcom/chartboost/sdk/impl/p1;->v:I

    .line 28
    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->w:I

    return-void

    .line 29
    :cond_1
    :goto_0
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->p:I

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->t:I

    .line 30
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->q:I

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->u:I

    .line 31
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->r:I

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->v:I

    .line 32
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->s:I

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->w:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    const-string v0, "CBViewProtocol"

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->R:Lcom/chartboost/sdk/impl/g1;

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lcom/chartboost/sdk/impl/c1;

    sget-object v2, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v2, v4}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V

    .line 35
    iget-object v2, p0, Lcom/chartboost/sdk/impl/p1;->R:Lcom/chartboost/sdk/impl/g1;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/g1;->a(Lcom/chartboost/sdk/impl/c1;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###### Sending VAST Tracking Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###### Sending VAST Tracking Event Failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->d:Z

    .line 5
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    sget-object v1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->b()V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->s()V

    .line 12
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->I()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/internal/Model/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CBWebViewProtocol sendWebViewEvents"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->L:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->L:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 3
    iget-object v3, p0, Lcom/chartboost/sdk/impl/p1;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/p1;->L:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "CBViewProtocol"

    const-string v3, "Destroying the webview object and cleaning up the references"

    .line 11
    invoke-static {v1, v3}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 13
    iput-object v2, v0, Lcom/chartboost/sdk/impl/e6;->b:Lcom/chartboost/sdk/impl/s1;

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->c:Lcom/chartboost/sdk/impl/q1;

    if-eqz v1, :cond_2

    .line 16
    iput-object v2, v0, Lcom/chartboost/sdk/impl/e6;->c:Lcom/chartboost/sdk/impl/q1;

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 18
    iput-object v2, v0, Lcom/chartboost/sdk/impl/e6;->d:Landroid/widget/RelativeLayout;

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->g()V

    return-void

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->l()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/p1;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e6;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/impl/c0;->b()Lcom/chartboost/sdk/impl/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/c0;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Unknown Webview warning message"

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview warning occurred closing the webview"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CBViewProtocol"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->t()V

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->m()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->d()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 3
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->t:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->u:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->v:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->w:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->d()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 3
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->p:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->q:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->r:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->s:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/chartboost/sdk/internal/Model/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->Q:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o1;->a()Lcom/chartboost/sdk/impl/f4;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f4;->getImpression()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->m()Lcom/chartboost/sdk/internal/Model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 1
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->m:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->n:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 1
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/p1;->y:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "allowOrientationChange"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->z:I

    .line 3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/p1;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceOrientation"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 1
    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->k:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "width"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/chartboost/sdk/impl/p1;->l:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->I:F

    return v0
.end method

.method public s()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->J:F

    return v0
.end method

.method public t()Lcom/chartboost/sdk/impl/e6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->B:Lcom/chartboost/sdk/impl/e6;

    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->G:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->o()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->G:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->G:I

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/p1;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->u()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->H:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/internal/Model/a;->F()V

    .line 3
    iget v0, p0, Lcom/chartboost/sdk/impl/p1;->H:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/p1;->H:I

    :cond_0
    return-void
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->A:Lcom/chartboost/sdk/impl/e4;

    sget-object v1, Lcom/chartboost/sdk/impl/e4;->d:Lcom/chartboost/sdk/impl/e4;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/p1;->C:Lcom/chartboost/sdk/internal/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    sget-object v1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    if-ne v0, v1, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->f()V

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/p1;->e()V

    return v2
.end method

.method public abstract z()V
.end method
