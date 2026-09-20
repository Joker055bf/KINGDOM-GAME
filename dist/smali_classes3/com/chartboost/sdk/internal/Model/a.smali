.class public Lcom/chartboost/sdk/internal/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lcom/chartboost/sdk/impl/c6;

.field public final B:Lcom/chartboost/sdk/impl/k1;

.field public final C:Lcom/chartboost/sdk/Mediation;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public a:Lcom/chartboost/sdk/impl/k3;

.field public b:Lcom/chartboost/sdk/impl/l3;

.field public final c:Lcom/chartboost/sdk/impl/j;

.field public final d:Lcom/chartboost/sdk/impl/y2;

.field public final e:Lcom/chartboost/sdk/impl/g1;

.field public final f:Lcom/chartboost/sdk/impl/u4;

.field public final g:Landroid/os/Handler;

.field public final h:Lcom/chartboost/sdk/impl/l1;

.field public final i:Lcom/chartboost/sdk/impl/n1;

.field public final j:Lcom/chartboost/sdk/impl/o1;

.field public final k:Lcom/chartboost/sdk/impl/r1;

.field public final l:Lcom/chartboost/sdk/impl/u;

.field public final m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/Boolean;

.field public final p:Ljava/lang/String;

.field public final q:Lcom/chartboost/sdk/impl/h0;

.field public final r:Lcom/chartboost/sdk/impl/k;

.field public final s:Landroid/content/SharedPreferences;

.field public t:Ljava/lang/Runnable;

.field public u:Lcom/chartboost/sdk/impl/p1;

.field public final v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/lang/Boolean;

.field public final x:Landroid/content/Context;

.field public y:Lcom/chartboost/sdk/impl/i1;

.field public z:Lcom/chartboost/sdk/impl/f4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/u;Lcom/chartboost/sdk/impl/y2;Lcom/chartboost/sdk/impl/g1;Lcom/chartboost/sdk/impl/u4;Landroid/content/SharedPreferences;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/n1;Lcom/chartboost/sdk/impl/o1;Lcom/chartboost/sdk/impl/r1;Lcom/chartboost/sdk/impl/j;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/chartboost/sdk/impl/c6;Lcom/chartboost/sdk/impl/k1;Lcom/chartboost/sdk/Mediation;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/chartboost/sdk/internal/Model/a;->o:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->E:Z

    .line 29
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->F:Z

    .line 30
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->G:Z

    .line 32
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->I:Z

    .line 33
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->J:Z

    move-object v3, p1

    .line 55
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->x:Landroid/content/Context;

    move-object v3, p2

    .line 56
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->q:Lcom/chartboost/sdk/impl/h0;

    move-object v3, p3

    .line 57
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    .line 58
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    move-object v3, p5

    .line 59
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->d:Lcom/chartboost/sdk/impl/y2;

    move-object v3, p6

    .line 60
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->e:Lcom/chartboost/sdk/impl/g1;

    move-object v3, p7

    .line 61
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->f:Lcom/chartboost/sdk/impl/u4;

    move-object v3, p9

    .line 62
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->g:Landroid/os/Handler;

    move-object v3, p10

    .line 63
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->h:Lcom/chartboost/sdk/impl/l1;

    move-object/from16 v3, p11

    .line 64
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->i:Lcom/chartboost/sdk/impl/n1;

    move-object/from16 v3, p12

    .line 65
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->j:Lcom/chartboost/sdk/impl/o1;

    move-object/from16 v3, p13

    .line 66
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->k:Lcom/chartboost/sdk/impl/r1;

    move-object v3, p4

    .line 67
    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    .line 68
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v4, p17

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/chartboost/sdk/internal/Model/a;->v:Ljava/lang/ref/WeakReference;

    .line 69
    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    sget-object v3, Lcom/chartboost/sdk/impl/h3;->e:Lcom/chartboost/sdk/impl/h3;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->w:Ljava/lang/Boolean;

    .line 70
    sget-object v1, Lcom/chartboost/sdk/impl/l3;->b:Lcom/chartboost/sdk/impl/l3;

    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    .line 71
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->D:Z

    .line 72
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    .line 73
    iput-boolean v4, v0, Lcom/chartboost/sdk/internal/Model/a;->J:Z

    .line 74
    sget-object v1, Lcom/chartboost/sdk/impl/k3;->f:Lcom/chartboost/sdk/impl/k3;

    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    move-object/from16 v1, p15

    .line 75
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 76
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->p:Ljava/lang/String;

    .line 77
    iput-boolean v2, v0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->s:Landroid/content/SharedPreferences;

    move-object/from16 v1, p18

    .line 79
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->A:Lcom/chartboost/sdk/impl/c6;

    move-object/from16 v1, p19

    .line 80
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->B:Lcom/chartboost/sdk/impl/k1;

    move-object/from16 v1, p20

    .line 81
    iput-object v1, v0, Lcom/chartboost/sdk/internal/Model/a;->C:Lcom/chartboost/sdk/Mediation;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    sget-object v0, Lcom/chartboost/sdk/internal/Model/a$a;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/k3;->e:Lcom/chartboost/sdk/impl/k3;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->C()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->B()V

    :goto_0
    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->l()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/chartboost/sdk/impl/k3;->c:Lcom/chartboost/sdk/impl/k3;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/k3;->b:Lcom/chartboost/sdk/impl/k3;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/k3;->d:Lcom/chartboost/sdk/impl/k3;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    return-void
.end method

.method public final D()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v11, Lcom/chartboost/sdk/impl/b6;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->x:Landroid/content/Context;

    iget-object v3, p0, Lcom/chartboost/sdk/internal/Model/a;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/chartboost/sdk/internal/Model/a;->h:Lcom/chartboost/sdk/impl/l1;

    iget-object v5, p0, Lcom/chartboost/sdk/internal/Model/a;->j:Lcom/chartboost/sdk/impl/o1;

    iget-object v6, p0, Lcom/chartboost/sdk/internal/Model/a;->d:Lcom/chartboost/sdk/impl/y2;

    iget-object v7, p0, Lcom/chartboost/sdk/internal/Model/a;->B:Lcom/chartboost/sdk/impl/k1;

    iget-object v8, p0, Lcom/chartboost/sdk/internal/Model/a;->A:Lcom/chartboost/sdk/impl/c6;

    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->t()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/chartboost/sdk/internal/Model/a;->C:Lcom/chartboost/sdk/Mediation;

    move-object v0, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/chartboost/sdk/impl/b6;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/o1;Lcom/chartboost/sdk/impl/y2;Lcom/chartboost/sdk/impl/k1;Lcom/chartboost/sdk/impl/c6;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    iput-object v11, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v10, Lcom/chartboost/sdk/impl/t1;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->x:Landroid/content/Context;

    iget-object v3, p0, Lcom/chartboost/sdk/internal/Model/a;->d:Lcom/chartboost/sdk/impl/y2;

    iget-object v4, p0, Lcom/chartboost/sdk/internal/Model/a;->e:Lcom/chartboost/sdk/impl/g1;

    iget-object v5, p0, Lcom/chartboost/sdk/internal/Model/a;->g:Landroid/os/Handler;

    iget-object v6, p0, Lcom/chartboost/sdk/internal/Model/a;->h:Lcom/chartboost/sdk/impl/l1;

    iget-object v7, p0, Lcom/chartboost/sdk/internal/Model/a;->j:Lcom/chartboost/sdk/impl/o1;

    iget-object v8, p0, Lcom/chartboost/sdk/internal/Model/a;->B:Lcom/chartboost/sdk/impl/k1;

    iget-object v9, p0, Lcom/chartboost/sdk/internal/Model/a;->C:Lcom/chartboost/sdk/Mediation;

    move-object v0, v10

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/chartboost/sdk/impl/t1;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/impl/y2;Lcom/chartboost/sdk/impl/g1;Landroid/os/Handler;Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/impl/o1;Lcom/chartboost/sdk/impl/k1;Lcom/chartboost/sdk/Mediation;)V

    iput-object v10, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    :goto_0
    return-void
.end method

.method public E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    const-string v1, "CBImpression"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->J()V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "reinitializing -- no view protocol exists!!"

    .line 6
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "reinitializing -- view not yet created"

    .line 8
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public F()V
    .locals 8

    .line 1
    new-instance v6, Lcom/chartboost/sdk/impl/i1;

    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->f:Lcom/chartboost/sdk/impl/u4;

    .line 2
    invoke-interface {v0}, Lcom/chartboost/sdk/impl/u4;->a()Lcom/chartboost/sdk/impl/w4;

    move-result-object v3

    sget-object v4, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/api/video-complete"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/i1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Lcom/chartboost/sdk/impl/i1$a;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reward"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency-name"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "force_close"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cgn"

    invoke-virtual {v6, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->l()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->s()F

    move-result v1

    .line 16
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->r()F

    move-result v0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "TotalDuration: %f PlaybackTime: %f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "total_time"

    invoke-virtual {v6, v4, v3}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    const-string v4, "playback_time"

    if-gtz v3, :cond_2

    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    div-float/2addr v1, v2

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->e:Lcom/chartboost/sdk/impl/g1;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/g1;->a(Lcom/chartboost/sdk/impl/c1;)V

    return-void
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    return v0
.end method

.method public H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->q:Lcom/chartboost/sdk/impl/h0;

    invoke-interface {v0, v1, p0}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;)V

    return-void
.end method

.method public final a(Lcom/chartboost/sdk/impl/i1;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/i1;
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->s()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "to"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cgn"

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "creative"

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    sget-object v2, Lcom/chartboost/sdk/impl/k3;->c:Lcom/chartboost/sdk/impl/k3;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/chartboost/sdk/impl/k3;->d:Lcom/chartboost/sdk/impl/k3;

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 95
    :cond_4
    sget-object v2, Lcom/chartboost/sdk/impl/k3;->e:Lcom/chartboost/sdk/impl/k3;

    if-ne v0, v2, :cond_8

    const-string v0, ""

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 97
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->l()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->s()F

    move-result v1

    .line 103
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->r()F

    move-result v0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "TotalDuration: %f PlaybackTime: %f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 105
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string/jumbo v4, "total_time"

    invoke-virtual {p1, v4, v3}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    const-string v4, "playback_time"

    if-gtz v3, :cond_7

    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    div-float/2addr v1, v2

    .line 110
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_2
    if-eqz p2, :cond_9

    const-string v0, "click_coordinates"

    .line 118
    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_9
    iget-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->n()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 123
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->j()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "retarget_reinstall"

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/i1;
    .locals 7

    .line 64
    new-instance v6, Lcom/chartboost/sdk/impl/i1;

    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->f:Lcom/chartboost/sdk/impl/u4;

    .line 65
    invoke-interface {v0}, Lcom/chartboost/sdk/impl/u4;->a()Lcom/chartboost/sdk/impl/w4;

    move-result-object v3

    sget-object v4, Lcom/chartboost/sdk/impl/h4;->d:Lcom/chartboost/sdk/impl/h4;

    const-string v1, "https://live.chartboost.com"

    const-string v2, "/api/click"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/i1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Lcom/chartboost/sdk/impl/i1$a;)V

    .line 68
    invoke-virtual {p0, v6, p1}, Lcom/chartboost/sdk/internal/Model/a;->a(Lcom/chartboost/sdk/impl/i1;Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/i1;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;
    .locals 2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/p1;->a(Landroid/view/ViewGroup;)Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/p1;->K()Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tryCreatingView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CBImpression"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    sget-object p1, Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/u;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "Impression callback is null on at click success"

    .line 34
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/p1;->K:Z

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->q:Lcom/chartboost/sdk/impl/h0;

    invoke-interface {v0, v1, p0, p1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/h0;Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/internal/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/chartboost/sdk/internal/Model/a;->t:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    goto :goto_0

    :cond_0
    const-string p1, "CBImpression"

    const-string p2, "Impression callback is null on at click failure"

    .line 38
    invoke-static {p1, p2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->G()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->e()V

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/internal/Model/a;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 59
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/internal/Model/a;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/impl/i1;

    move-result-object p2

    iput-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->y:Lcom/chartboost/sdk/impl/i1;

    .line 60
    iget-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->i:Lcom/chartboost/sdk/impl/n1;

    iget-object p3, p0, Lcom/chartboost/sdk/internal/Model/a;->x:Landroid/content/Context;

    invoke-virtual {p2, p3, p0, p1}, Lcom/chartboost/sdk/impl/n1;->a(Landroid/content/Context;Lcom/chartboost/sdk/internal/Model/a;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->i:Lcom/chartboost/sdk/impl/n1;

    sget-object p3, Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1, p3}, Lcom/chartboost/sdk/impl/n1;->a(Lcom/chartboost/sdk/internal/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/internal/Model/CBError$CBClickError;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 63
    invoke-static {}, Lcom/chartboost/sdk/impl/c0;->b()Lcom/chartboost/sdk/impl/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/c0;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/Boolean;)Z
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v0, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_5

    iget-boolean p2, p0, Lcom/chartboost/sdk/internal/Model/a;->E:Z

    if-eqz p2, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/k;->k()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->h()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/internal/Model/a;->i:Lcom/chartboost/sdk/impl/n1;

    iget-object v3, p0, Lcom/chartboost/sdk/internal/Model/a;->x:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/n1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    .line 13
    :try_start_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/chartboost/sdk/internal/Model/a;->o:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    .line 15
    :cond_2
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->o:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 19
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "CBImpression onClick"

    invoke-static {v2, p2}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p2, v0

    .line 22
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    .line 25
    iput-boolean v1, p0, Lcom/chartboost/sdk/internal/Model/a;->J:Z

    .line 26
    iget-boolean v1, p0, Lcom/chartboost/sdk/internal/Model/a;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Lcom/chartboost/sdk/internal/Model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    return v0

    :cond_5
    :goto_3
    return v1
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "Impression callback is null on ad dismiss"

    .line 5
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/internal/Model/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    const-string v1, "CBImpression"

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f4;->a()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    iget-object v2, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception raised while cleaning up views"

    .line 7
    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->z:Lcom/chartboost/sdk/impl/f4;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/chartboost/sdk/internal/Model/a;->a:Lcom/chartboost/sdk/impl/k3;

    sget-object v3, Lcom/chartboost/sdk/impl/k3;->e:Lcom/chartboost/sdk/impl/k3;

    if-eq v2, v3, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->f()V

    :cond_2
    const-string v0, "Destroying the view"

    .line 15
    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->c()V

    .line 2
    iget-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    const-string v0, "CBImpression"

    const-string v1, "Destroying the view and view data"

    .line 6
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    sget-object v1, Lcom/chartboost/sdk/impl/l3;->d:Lcom/chartboost/sdk/impl/l3;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->h:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/l1;->d()Lcom/chartboost/sdk/impl/o1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->b()V

    .line 5
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/o1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/chartboost/sdk/impl/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    return-object v0
.end method

.method public h()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->w:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l()Lcom/chartboost/sdk/impl/e6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/chartboost/sdk/impl/p1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    .line 3
    sget-object v1, Lcom/chartboost/sdk/impl/h3;->c:Lcom/chartboost/sdk/impl/h3;

    if-ne v0, v1, :cond_0

    const-string v0, "CBImpression"

    const-string v1, "didCompleteInterstitial delegate used to be sent here"

    .line 4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/h3;->d:Lcom/chartboost/sdk/impl/h3;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/internal/Model/a;->r:Lcom/chartboost/sdk/impl/k;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->o()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/impl/u;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->E:Z

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->t:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->E:Z

    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->y()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->J:Z

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->h:Lcom/chartboost/sdk/impl/l1;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/l1;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->q:Lcom/chartboost/sdk/impl/h0;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/internal/Model/a;Lcom/chartboost/sdk/impl/h0;)V

    return-void
.end method

.method public t()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->l:Lcom/chartboost/sdk/impl/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/internal/Model/a;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/impl/i2;

    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->c:Lcom/chartboost/sdk/impl/j;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/impl/h3;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/h3;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/chartboost/sdk/internal/Model/a;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/chartboost/sdk/internal/Model/a;->C:Lcom/chartboost/sdk/Mediation;

    const-string/jumbo v2, "show_null_callback_mgr_error"

    const-string v3, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Mediation;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    :goto_0
    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->t()Lcom/chartboost/sdk/impl/e6;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/chartboost/sdk/internal/Model/a;->I:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/chartboost/sdk/internal/Model/a;->I:Z

    .line 3
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->B()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->F:Z

    return-void
.end method

.method public x()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/internal/Model/a;->u:Lcom/chartboost/sdk/impl/p1;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/chartboost/sdk/internal/Model/a;->I:Z

    if-eqz v2, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->I:Z

    .line 4
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/p1;->C()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/chartboost/sdk/internal/Model/a;->H:Z

    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/l3;->b:Lcom/chartboost/sdk/impl/l3;

    iput-object v0, p0, Lcom/chartboost/sdk/internal/Model/a;->b:Lcom/chartboost/sdk/impl/l3;

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->A()V

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->D()V

    .line 4
    invoke-virtual {p0}, Lcom/chartboost/sdk/internal/Model/a;->m()Lcom/chartboost/sdk/impl/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/p1;->G()Z

    move-result v0

    return v0
.end method
