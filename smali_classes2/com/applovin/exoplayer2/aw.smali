.class public Lcom/applovin/exoplayer2/aw;
.super Lcom/applovin/exoplayer2/d;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/aw$c;,
        Lcom/applovin/exoplayer2/aw$b;,
        Lcom/applovin/exoplayer2/aw$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/applovin/exoplayer2/c/e;

.field private D:Lcom/applovin/exoplayer2/c/e;

.field private E:I

.field private F:Lcom/applovin/exoplayer2/b/d;

.field private G:F

.field private H:Z

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field private J:Z

.field private K:Z

.field private L:Lcom/applovin/exoplayer2/l/aa;

.field private M:Z

.field private N:Z

.field private O:Lcom/applovin/exoplayer2/o;

.field private P:Lcom/applovin/exoplayer2/m/o;

.field protected final b:[Lcom/applovin/exoplayer2/ar;

.field private final c:Lcom/applovin/exoplayer2/l/g;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/applovin/exoplayer2/r;

.field private final f:Lcom/applovin/exoplayer2/aw$b;

.field private final g:Lcom/applovin/exoplayer2/aw$c;

.field private final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/applovin/exoplayer2/an$d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/applovin/exoplayer2/a/a;

.field private final j:Lcom/applovin/exoplayer2/b;

.field private final k:Lcom/applovin/exoplayer2/c;

.field private final l:Lcom/applovin/exoplayer2/ay;

.field private final m:Lcom/applovin/exoplayer2/bb;

.field private final n:Lcom/applovin/exoplayer2/bc;

.field private final o:J

.field private p:Lcom/applovin/exoplayer2/v;

.field private q:Lcom/applovin/exoplayer2/v;

.field private r:Landroid/media/AudioTrack;

.field private s:Ljava/lang/Object;

.field private t:Landroid/view/Surface;

.field private u:Landroid/view/SurfaceHolder;

.field private v:Lcom/applovin/exoplayer2/m/a/i;

.field private w:Z

.field private x:Landroid/view/TextureView;

.field private y:I

.field private z:I


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/aw$a;)V
    .locals 37

    move-object/from16 v15, p0

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/d;-><init>()V

    .line 497
    new-instance v0, Lcom/applovin/exoplayer2/l/g;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/l/g;-><init>()V

    iput-object v0, v15, Lcom/applovin/exoplayer2/aw;->c:Lcom/applovin/exoplayer2/l/g;

    .line 499
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v15, Lcom/applovin/exoplayer2/aw;->d:Landroid/content/Context;

    .line 500
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->b(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/a/a;

    move-result-object v7

    iput-object v7, v15, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    .line 501
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->c(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/aa;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->L:Lcom/applovin/exoplayer2/l/aa;

    .line 502
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->d(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/b/d;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->F:Lcom/applovin/exoplayer2/b/d;

    .line 503
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->e(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v2

    iput v2, v15, Lcom/applovin/exoplayer2/aw;->y:I

    .line 504
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->f(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v2

    iput v2, v15, Lcom/applovin/exoplayer2/aw;->z:I

    .line 505
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->g(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v2

    iput-boolean v2, v15, Lcom/applovin/exoplayer2/aw;->H:Z

    .line 506
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->h(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/applovin/exoplayer2/aw;->o:J

    .line 507
    new-instance v14, Lcom/applovin/exoplayer2/aw$b;

    const/4 v6, 0x0

    invoke-direct {v14, v15, v6}, Lcom/applovin/exoplayer2/aw$b;-><init>(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/aw$1;)V

    iput-object v14, v15, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    .line 508
    new-instance v5, Lcom/applovin/exoplayer2/aw$c;

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/aw$c;-><init>(Lcom/applovin/exoplayer2/aw$1;)V

    iput-object v5, v15, Lcom/applovin/exoplayer2/aw;->g:Lcom/applovin/exoplayer2/aw$c;

    .line 509
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 510
    new-instance v4, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->i(Lcom/applovin/exoplayer2/aw$a;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->j(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/au;

    move-result-object v8

    move-object v9, v4

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    move-object v13, v14

    invoke-interface/range {v8 .. v13}, Lcom/applovin/exoplayer2/au;->a(Landroid/os/Handler;Lcom/applovin/exoplayer2/m/n;Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/i/l;Lcom/applovin/exoplayer2/g/e;)[Lcom/applovin/exoplayer2/ar;

    move-result-object v2

    iput-object v2, v15, Lcom/applovin/exoplayer2/aw;->b:[Lcom/applovin/exoplayer2/ar;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 520
    iput v3, v15, Lcom/applovin/exoplayer2/aw;->G:F

    .line 521
    sget v3, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v8, 0x15

    const/4 v12, 0x0

    if-ge v3, v8, :cond_0

    .line 522
    invoke-direct {v15, v12}, Lcom/applovin/exoplayer2/aw;->d(I)I

    move-result v1

    iput v1, v15, Lcom/applovin/exoplayer2/aw;->E:I

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {v1}, Lcom/applovin/exoplayer2/h;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/applovin/exoplayer2/aw;->E:I

    .line 526
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/applovin/exoplayer2/aw;->I:Ljava/util/List;

    const/4 v13, 0x1

    .line 527
    iput-boolean v13, v15, Lcom/applovin/exoplayer2/aw;->J:Z

    .line 530
    new-instance v1, Lcom/applovin/exoplayer2/an$a$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/an$a$a;-><init>()V

    const/16 v10, 0x8

    new-array v3, v10, [I

    const/16 v9, 0x14

    aput v9, v3, v12

    aput v8, v3, v13

    const/16 v8, 0x16

    const/4 v11, 0x2

    aput v8, v3, v11

    const/16 v8, 0x17

    const/4 v9, 0x3

    aput v8, v3, v9

    const/16 v8, 0x18

    move-object/from16 v22, v0

    const/4 v0, 0x4

    aput v8, v3, v0

    const/16 v8, 0x19

    const/4 v0, 0x5

    aput v8, v3, v0

    const/16 v8, 0x1a

    const/4 v0, 0x6

    aput v8, v3, v0

    const/16 v8, 0x1b

    const/4 v0, 0x7

    aput v8, v3, v0

    .line 532
    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/an$a$a;->a([I)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/an$a$a;->a()Lcom/applovin/exoplayer2/an$a;

    move-result-object v21

    .line 542
    new-instance v8, Lcom/applovin/exoplayer2/r;

    .line 545
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->k(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/j/j;

    move-result-object v3

    .line 546
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->l(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/h/r;

    move-result-object v16

    .line 547
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->m(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/aa;

    move-result-object v17

    .line 548
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->n(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/k/d;

    move-result-object v18

    .line 550
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->o(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v19

    .line 551
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->p(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/av;

    move-result-object v20

    .line 552
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->q(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v23

    .line 553
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->r(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v25

    .line 554
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->s(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/z;

    move-result-object v27

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->t(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v28

    .line 556
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->u(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v30

    .line 557
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->v(Lcom/applovin/exoplayer2/aw$a;)Lcom/applovin/exoplayer2/l/d;

    move-result-object v31

    .line 558
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->i(Lcom/applovin/exoplayer2/aw$a;)Landroid/os/Looper;

    move-result-object v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v8

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v33, v5

    move-object/from16 v5, v17

    move-object/from16 v34, v6

    move-object/from16 v6, v18

    move-object/from16 v35, v0

    move-object v0, v8

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-wide/from16 v10, v23

    move/from16 v23, v12

    move-wide/from16 v12, v25

    move-object/from16 v36, v14

    move-object/from16 v14, v27

    move-wide/from16 v15, v28

    move/from16 v17, v30

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v20, p0

    :try_start_1
    invoke-direct/range {v1 .. v21}, Lcom/applovin/exoplayer2/r;-><init>([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/h/r;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/a/a;ZLcom/applovin/exoplayer2/av;JJLcom/applovin/exoplayer2/z;JZLcom/applovin/exoplayer2/l/d;Landroid/os/Looper;Lcom/applovin/exoplayer2/an;Lcom/applovin/exoplayer2/an$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    move-object/from16 v2, v36

    .line 561
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/an$b;)V

    .line 562
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/q$a;)V

    .line 563
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->w(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 564
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->w(Lcom/applovin/exoplayer2/aw$a;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/r;->b(J)V

    .line 567
    :cond_1
    new-instance v0, Lcom/applovin/exoplayer2/b;

    .line 568
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v4, v35

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/b$b;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->j:Lcom/applovin/exoplayer2/b;

    .line 569
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->x(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/b;->a(Z)V

    .line 570
    new-instance v0, Lcom/applovin/exoplayer2/c;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/c$b;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->k:Lcom/applovin/exoplayer2/c;

    .line 571
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->y(Lcom/applovin/exoplayer2/aw$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v6, v1, Lcom/applovin/exoplayer2/aw;->F:Lcom/applovin/exoplayer2/b/d;

    goto :goto_1

    :cond_2
    move-object/from16 v6, v34

    :goto_1
    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/c;->a(Lcom/applovin/exoplayer2/b/d;)V

    .line 572
    new-instance v0, Lcom/applovin/exoplayer2/ay;

    .line 573
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v4, v2}, Lcom/applovin/exoplayer2/ay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/applovin/exoplayer2/ay$a;)V

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->l:Lcom/applovin/exoplayer2/ay;

    .line 574
    iget-object v2, v1, Lcom/applovin/exoplayer2/aw;->F:Lcom/applovin/exoplayer2/b/d;

    iget v2, v2, Lcom/applovin/exoplayer2/b/d;->d:I

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->g(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ay;->a(I)V

    .line 575
    new-instance v2, Lcom/applovin/exoplayer2/bb;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/bb;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/applovin/exoplayer2/aw;->m:Lcom/applovin/exoplayer2/bb;

    .line 576
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->z(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, v23

    :goto_2
    invoke-virtual {v2, v12}, Lcom/applovin/exoplayer2/bb;->a(Z)V

    .line 577
    new-instance v2, Lcom/applovin/exoplayer2/bc;

    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->a(Lcom/applovin/exoplayer2/aw$a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/bc;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/applovin/exoplayer2/aw;->n:Lcom/applovin/exoplayer2/bc;

    .line 578
    invoke-static/range {p1 .. p1}, Lcom/applovin/exoplayer2/aw$a;->z(Lcom/applovin/exoplayer2/aw$a;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    move/from16 v12, v23

    :goto_3
    invoke-virtual {v2, v12}, Lcom/applovin/exoplayer2/bc;->a(Z)V

    .line 579
    invoke-static {v0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->O:Lcom/applovin/exoplayer2/o;

    .line 580
    sget-object v0, Lcom/applovin/exoplayer2/m/o;->a:Lcom/applovin/exoplayer2/m/o;

    iput-object v0, v1, Lcom/applovin/exoplayer2/aw;->P:Lcom/applovin/exoplayer2/m/o;

    .line 582
    iget v0, v1, Lcom/applovin/exoplayer2/aw;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    .line 583
    iget v0, v1, Lcom/applovin/exoplayer2/aw;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    .line 584
    iget-object v0, v1, Lcom/applovin/exoplayer2/aw;->F:Lcom/applovin/exoplayer2/b/d;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    .line 585
    iget v0, v1, Lcom/applovin/exoplayer2/aw;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    .line 586
    iget v0, v1, Lcom/applovin/exoplayer2/aw;->z:I

    .line 587
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 586
    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    .line 588
    iget-boolean v0, v1, Lcom/applovin/exoplayer2/aw;->H:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v3, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    move-object/from16 v0, v33

    const/4 v2, 0x7

    .line 589
    invoke-direct {v1, v4, v2, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    const/4 v2, 0x6

    const/16 v3, 0x8

    .line 591
    invoke-direct {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    invoke-virtual/range {v22 .. v22}, Lcom/applovin/exoplayer2/l/g;->a()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_4
    iget-object v2, v1, Lcom/applovin/exoplayer2/aw;->c:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/g;->a()Z

    .line 595
    throw v0
.end method

.method private U()V
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->g:Lcom/applovin/exoplayer2/aw$c;

    .line 1668
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    const/16 v2, 0x2710

    .line 1669
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ao;->a(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    .line 1670
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->a(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    .line 1671
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ao;->i()Lcom/applovin/exoplayer2/ao;

    .line 1672
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/m/a/i;->b(Lcom/applovin/exoplayer2/m/a/i$a;)V

    .line 1673
    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->x:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 1676
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    if-eq v0, v2, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1677
    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1679
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->x:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1681
    :goto_0
    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->x:Landroid/view/TextureView;

    .line 1683
    :cond_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 1684
    iget-object v2, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1685
    iput-object v1, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method private W()V
    .locals 3

    .line 1775
    iget v0, p0, Lcom/applovin/exoplayer2/aw;->G:F

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->k:Lcom/applovin/exoplayer2/c;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c;->a()F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    .line 1776
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/applovin/exoplayer2/aw;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private X()V
    .locals 3

    .line 1781
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->H:Z

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/a/a;->a_(Z)V

    .line 1783
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    .line 1784
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/aw;->H:Z

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/an$d;->a_(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 5

    .line 1802
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->t()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1817
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->q()Z

    move-result v0

    .line 1807
    iget-object v3, p0, Lcom/applovin/exoplayer2/aw;->m:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->x()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/bb;->b(Z)V

    .line 1809
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->n:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/bc;->b(Z)V

    goto :goto_2

    .line 1813
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->m:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bb;->b(Z)V

    .line 1814
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->n:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/bc;->b(Z)V

    :goto_2
    return-void
.end method

.method private Z()V
    .locals 4

    .line 1824
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->c:Lcom/applovin/exoplayer2/l/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/g;->d()V

    .line 1825
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->r()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1832
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->r()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 1827
    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->J:Z

    if-nez v1, :cond_1

    .line 1836
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->K:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1837
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/aw;->K:Z

    goto :goto_1

    .line 1834
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(ZI)I
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/aw;->b(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/a/a;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->C:Lcom/applovin/exoplayer2/c/e;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/m/o;)Lcom/applovin/exoplayer2/m/o;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->P:Lcom/applovin/exoplayer2/m/o;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/o;)Lcom/applovin/exoplayer2/o;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->O:Lcom/applovin/exoplayer2/o;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->p:Lcom/applovin/exoplayer2/v;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->I:Ljava/util/List;

    return-object p1
.end method

.method private a(II)V
    .locals 2

    .line 1763
    iget v0, p0, Lcom/applovin/exoplayer2/aw;->A:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/applovin/exoplayer2/aw;->B:I

    if-eq p2, v0, :cond_1

    .line 1764
    :cond_0
    iput p1, p0, Lcom/applovin/exoplayer2/aw;->A:I

    .line 1765
    iput p2, p0, Lcom/applovin/exoplayer2/aw;->B:I

    .line 1766
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->a(II)V

    .line 1768
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    .line 1769
    invoke-interface {v1, p1, p2}, Lcom/applovin/exoplayer2/an$d;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 5

    .line 1843
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->b:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1844
    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 1845
    iget-object v4, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/applovin/exoplayer2/ao;->a(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/applovin/exoplayer2/ao;->a(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->i()Lcom/applovin/exoplayer2/ao;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1690
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1691
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    .line 1692
    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->t:Landroid/view/Surface;

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/aw;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Ljava/lang/Object;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;ZII)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/aw;->a(ZII)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 9

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->b:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 1700
    invoke-interface {v6}, Lcom/applovin/exoplayer2/ar;->a()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1701
    iget-object v7, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    .line 1703
    invoke-virtual {v7, v6}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v6

    .line 1704
    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/ao;->a(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    .line 1705
    invoke-virtual {v5, p1}, Lcom/applovin/exoplayer2/ao;->a(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    .line 1706
    invoke-virtual {v5}, Lcom/applovin/exoplayer2/ao;->i()Lcom/applovin/exoplayer2/ao;

    move-result-object v5

    .line 1701
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1710
    :cond_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->s:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1714
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ao;

    .line 1715
    iget-wide v6, p0, Lcom/applovin/exoplayer2/aw;->o:J

    invoke-virtual {v1, v6, v7}, Lcom/applovin/exoplayer2/ao;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1718
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    move v5, v3

    .line 1722
    :catch_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->s:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->t:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 1724
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 1725
    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->t:Landroid/view/Surface;

    goto :goto_2

    :cond_3
    move v5, v3

    .line 1728
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->s:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 1730
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    new-instance v0, Lcom/applovin/exoplayer2/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/u;-><init>(I)V

    const/16 v1, 0x3eb

    .line 1732
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/RuntimeException;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    .line 1730
    invoke-virtual {p1, v3, v0}, Lcom/applovin/exoplayer2/r;->a(ZLcom/applovin/exoplayer2/p;)V

    :cond_5
    return-void
.end method

.method private a(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    move v0, v1

    .line 1798
    :cond_1
    iget-object p2, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {p2, p1, v0, p3}, Lcom/applovin/exoplayer2/r;->a(ZII)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/aw;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/aw;->H:Z

    return p1
.end method

.method private static b(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/c/e;)Lcom/applovin/exoplayer2/c/e;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->D:Lcom/applovin/exoplayer2/c/e;

    return-object p1
.end method

.method private static b(Lcom/applovin/exoplayer2/ay;)Lcom/applovin/exoplayer2/o;
    .locals 3

    .line 1885
    new-instance v0, Lcom/applovin/exoplayer2/o;

    .line 1887
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ay;->a()I

    move-result v1

    .line 1888
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ay;->b()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/applovin/exoplayer2/o;-><init>(III)V

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->q:Lcom/applovin/exoplayer2/v;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/aw;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/aw;->M:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/aw;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->s:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1750
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->w:Z

    .line 1751
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    .line 1752
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1753
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1754
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1755
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1756
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->a(II)V

    goto :goto_0

    .line 1758
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/applovin/exoplayer2/aw;->a(II)V

    :goto_0
    return-void
.end method

.method private d(I)I
    .locals 9

    .line 1861
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 1864
    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 1871
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    .line 1881
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/aw;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->H:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/aw;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->X()V

    return-void
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/r;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/aw;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->w:Z

    return p0
.end method

.method static synthetic h(Lcom/applovin/exoplayer2/aw;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->W()V

    return-void
.end method

.method static synthetic i(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/ay;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->l:Lcom/applovin/exoplayer2/ay;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/o;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->O:Lcom/applovin/exoplayer2/o;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/exoplayer2/aw;)Lcom/applovin/exoplayer2/l/aa;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/applovin/exoplayer2/aw;->L:Lcom/applovin/exoplayer2/l/aa;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/exoplayer2/aw;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/applovin/exoplayer2/aw;->M:Z

    return p0
.end method

.method static synthetic m(Lcom/applovin/exoplayer2/aw;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Y()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1335
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1336
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public B()J
    .locals 2

    .line 1341
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1342
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public C()J
    .locals 2

    .line 1347
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1348
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public D()Lcom/applovin/exoplayer2/am;
    .locals 1

    .line 1359
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1360
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->D()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    return-object v0
.end method

.method public E()V
    .locals 3

    .line 1392
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1393
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1394
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1395
    iput-object v2, p0, Lcom/applovin/exoplayer2/aw;->r:Landroid/media/AudioTrack;

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->j:Lcom/applovin/exoplayer2/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b;->a(Z)V

    .line 1398
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->l:Lcom/applovin/exoplayer2/ay;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ay;->c()V

    .line 1399
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->m:Lcom/applovin/exoplayer2/bb;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/bb;->b(Z)V

    .line 1400
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->n:Lcom/applovin/exoplayer2/bc;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/bc;->b(Z)V

    .line 1401
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->k:Lcom/applovin/exoplayer2/c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c;->b()V

    .line 1402
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->E()V

    .line 1403
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/a/a;->c()V

    .line 1404
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    .line 1405
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->t:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 1406
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1407
    iput-object v2, p0, Lcom/applovin/exoplayer2/aw;->t:Landroid/view/Surface;

    .line 1409
    :cond_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->M:Z

    if-eqz v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->L:Lcom/applovin/exoplayer2/l/aa;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/aa;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/aa;->b(I)V

    .line 1411
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/aw;->M:Z

    .line 1413
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->I:Ljava/util/List;

    const/4 v0, 0x1

    .line 1414
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->N:Z

    return-void
.end method

.method public F()I
    .locals 1

    .line 1489
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1490
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->F()I

    move-result v0

    return v0
.end method

.method public G()I
    .locals 1

    .line 1495
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1496
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->G()I

    move-result v0

    return v0
.end method

.method public H()J
    .locals 2

    .line 1501
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1502
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public I()J
    .locals 2

    .line 1507
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1508
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public J()J
    .locals 2

    .line 1519
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1520
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->J()J

    move-result-wide v0

    return-wide v0
.end method

.method public K()Z
    .locals 1

    .line 1525
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1526
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->K()Z

    move-result v0

    return v0
.end method

.method public L()I
    .locals 1

    .line 1531
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1532
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->L()I

    move-result v0

    return v0
.end method

.method public M()I
    .locals 1

    .line 1537
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1538
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->M()I

    move-result v0

    return v0
.end method

.method public N()J
    .locals 2

    .line 1543
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1544
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public O()J
    .locals 2

    .line 1549
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1550
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->O()J

    move-result-wide v0

    return-wide v0
.end method

.method public P()Lcom/applovin/exoplayer2/h/ad;
    .locals 1

    .line 1444
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1445
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->P()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lcom/applovin/exoplayer2/j/h;
    .locals 1

    .line 1450
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1451
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->Q()Lcom/applovin/exoplayer2/j/h;

    move-result-object v0

    return-object v0
.end method

.method public R()Lcom/applovin/exoplayer2/ac;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->R()Lcom/applovin/exoplayer2/ac;

    move-result-object v0

    return-object v0
.end method

.method public S()Lcom/applovin/exoplayer2/ba;
    .locals 1

    .line 1483
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1484
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->S()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/applovin/exoplayer2/m/o;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->P:Lcom/applovin/exoplayer2/m/o;

    return-object v0
.end method

.method public V()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;"
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1052
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->I:Ljava/util/List;

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .line 874
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 875
    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result p1

    .line 876
    iget v0, p0, Lcom/applovin/exoplayer2/aw;->G:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    iput p1, p0, Lcom/applovin/exoplayer2/aw;->G:F

    .line 880
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->W()V

    .line 881
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/a/a;->a(F)V

    .line 883
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/an$d;

    .line 884
    invoke-interface {v1, p1}, Lcom/applovin/exoplayer2/an$d;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 1

    .line 1328
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1329
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->i:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/a/a;->d()V

    .line 1330
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/r;->a(IJ)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 697
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    if-nez p1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->v()V

    goto :goto_0

    .line 701
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/aw;->w:Z

    .line 703
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    .line 704
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 705
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 706
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    .line 708
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->a(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 711
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 712
    invoke-direct {p0, p1, p1}, Lcom/applovin/exoplayer2/aw;->a(II)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/SurfaceView;)V
    .locals 2

    .line 727
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 728
    instance-of v0, p1, Lcom/applovin/exoplayer2/m/k;

    if-eqz v0, :cond_0

    .line 729
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    .line 730
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->c(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 732
    :cond_0
    instance-of v0, p1, Lcom/applovin/exoplayer2/m/a/i;

    if-eqz v0, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    .line 734
    move-object v0, p1

    check-cast v0, Lcom/applovin/exoplayer2/m/a/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    .line 735
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->g:Lcom/applovin/exoplayer2/aw$c;

    .line 736
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/ao$b;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    const/16 v1, 0x2710

    .line 737
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->a(I)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    .line 738
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ao;->a(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ao;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ao;->i()Lcom/applovin/exoplayer2/ao;

    .line 740
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/m/a/i;->a(Lcom/applovin/exoplayer2/m/a/i$a;)V

    .line 741
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->v:Lcom/applovin/exoplayer2/m/a/i;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/a/i;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    .line 742
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/aw;->c(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .locals 2

    .line 756
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    if-nez p1, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->v()V

    goto :goto_1

    .line 760
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    .line 761
    iput-object p1, p0, Lcom/applovin/exoplayer2/aw;->x:Landroid/view/TextureView;

    .line 762
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 763
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->f:Lcom/applovin/exoplayer2/aw$b;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 768
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 770
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 771
    invoke-direct {p0, p1, p1}, Lcom/applovin/exoplayer2/aw;->a(II)V

    goto :goto_1

    .line 773
    :cond_3
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Landroid/graphics/SurfaceTexture;)V

    .line 774
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/aw;->a(II)V

    :goto_1
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1084
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/an$d;)V
    .locals 1

    .line 1074
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1077
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->a(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/p;)V
    .locals 1

    .line 1205
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1206
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->a(Lcom/applovin/exoplayer2/h/p;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1271
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1273
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->k:Lcom/applovin/exoplayer2/c;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->t()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/c;->a(ZI)I

    move-result v0

    .line 1275
    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/aw;->b(ZI)I

    move-result v1

    .line 1274
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/aw;->a(ZII)V

    return-void
.end method

.method public b()Lcom/applovin/exoplayer2/p;
    .locals 1

    .line 1120
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1121
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->v()Lcom/applovin/exoplayer2/p;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 719
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    if-eqz p1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->u:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->v()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/SurfaceView;)V
    .locals 0

    .line 750
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->b(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public b(Landroid/view/TextureView;)V
    .locals 1

    .line 781
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    if-eqz p1, :cond_0

    .line 782
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->x:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->v()V

    :cond_0
    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/an$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->b(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/an$d;)V
    .locals 1

    .line 1090
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 1093
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/aw;->b(Lcom/applovin/exoplayer2/an$b;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1310
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1311
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->b(Z)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1304
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1305
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/r;->c(I)V

    return-void
.end method

.method public synthetic e()Lcom/applovin/exoplayer2/ak;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->b()Lcom/applovin/exoplayer2/p;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 607
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->q()Z

    move-result v0

    return v0
.end method

.method public r()Landroid/os/Looper;
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->r()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/applovin/exoplayer2/an$a;
    .locals 1

    .line 1134
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1135
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->s()Lcom/applovin/exoplayer2/an$a;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1106
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1107
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->t()I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .line 1113
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1114
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->u()I

    move-result v0

    return v0
.end method

.method public v()V
    .locals 1

    .line 672
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 673
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->U()V

    const/4 v0, 0x0

    .line 674
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/aw;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 675
    invoke-direct {p0, v0, v0}, Lcom/applovin/exoplayer2/aw;->a(II)V

    return-void
.end method

.method public w()V
    .locals 3

    .line 1140
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1141
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/aw;->x()Z

    move-result v0

    .line 1143
    iget-object v1, p0, Lcom/applovin/exoplayer2/aw;->k:Lcom/applovin/exoplayer2/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/exoplayer2/c;->a(ZI)I

    move-result v1

    .line 1145
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/aw;->b(ZI)I

    move-result v2

    .line 1144
    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/aw;->a(ZII)V

    .line 1146
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->w()V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1280
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1281
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->x()Z

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    .line 1298
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1299
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->y()I

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1316
    invoke-direct {p0}, Lcom/applovin/exoplayer2/aw;->Z()V

    .line 1317
    iget-object v0, p0, Lcom/applovin/exoplayer2/aw;->e:Lcom/applovin/exoplayer2/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/r;->z()Z

    move-result v0

    return v0
.end method
