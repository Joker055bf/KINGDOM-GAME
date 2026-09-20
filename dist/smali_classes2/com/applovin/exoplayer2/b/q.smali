.class public Lcom/applovin/exoplayer2/b/q;
.super Lcom/applovin/exoplayer2/f/j;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/l/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/q$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/applovin/exoplayer2/b/g$a;

.field private final d:Lcom/applovin/exoplayer2/b/h;

.field private e:I

.field private f:Z

.field private g:Lcom/applovin/exoplayer2/v;

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/applovin/exoplayer2/ar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZLandroid/os/Handler;Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/b/h;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/f/j;-><init>(ILcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZF)V

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/q;->b:Landroid/content/Context;

    .line 243
    iput-object p7, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    .line 244
    new-instance p1, Lcom/applovin/exoplayer2/b/g$a;

    invoke-direct {p1, p5, p6}, Lcom/applovin/exoplayer2/b/g$a;-><init>(Landroid/os/Handler;Lcom/applovin/exoplayer2/b/g;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    .line 245
    new-instance p1, Lcom/applovin/exoplayer2/b/q$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/applovin/exoplayer2/b/q$a;-><init>(Lcom/applovin/exoplayer2/b/q;Lcom/applovin/exoplayer2/b/q$1;)V

    invoke-interface {p7, p1}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/b/h$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/k;ZLandroid/os/Handler;Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/b/h;)V
    .locals 8

    .line 203
    sget-object v2, Lcom/applovin/exoplayer2/f/g$b;->a:Lcom/applovin/exoplayer2/f/g$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/b/q;-><init>(Landroid/content/Context;Lcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZLandroid/os/Handler;Lcom/applovin/exoplayer2/b/g;Lcom/applovin/exoplayer2/b/h;)V

    return-void
.end method

.method private R()V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/q;->A()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/b/h;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 797
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/b/q;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->j:Z

    :cond_1
    return-void
.end method

.method private static S()Z
    .locals 2

    .line 811
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    const-string v0, "ZTE B2017G"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AXON 7 mini"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    .line 738
    iget-object p1, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 743
    sget p1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 747
    :cond_1
    iget p1, p2, Lcom/applovin/exoplayer2/v;->m:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/b/q;)Lcom/applovin/exoplayer2/b/g$a;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/b/q;)Lcom/applovin/exoplayer2/ar$a;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/applovin/exoplayer2/b/q;->m:Lcom/applovin/exoplayer2/ar$a;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 823
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    .line 824
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->c:Ljava/lang/String;

    .line 825
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 826
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "herolte"

    .line 827
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 828
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 560
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected B()V
    .locals 1

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->j:Z

    return-void
.end method

.method protected C()V
    .locals 1

    .line 601
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->C()V

    .line 602
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->b()V

    return-void
.end method

.method protected D()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->c()V
    :try_end_0
    .catch Lcom/applovin/exoplayer2/b/h$e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 664
    iget-object v1, v0, Lcom/applovin/exoplayer2/b/h$e;->c:Lcom/applovin/exoplayer2/v;

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/b/h$e;->b:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/exoplayer2/b/q;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0
.end method

.method protected a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F
    .locals 4

    .line 399
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 400
    iget v3, v3, Lcom/applovin/exoplayer2/v;->z:I

    if-eq v3, v0, :cond_0

    .line 402
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float/2addr p1, p2

    :goto_1
    return p1
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)I
    .locals 5

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v0

    .line 716
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 721
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 722
    invoke-virtual {p1, p2, v3}, Lcom/applovin/exoplayer2/f/i;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v4

    iget v4, v4, Lcom/applovin/exoplayer2/c/h;->d:I

    if-eqz v4, :cond_1

    .line 723
    invoke-direct {p0, p1, v3}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation

    .line 270
    iget-object v0, p2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/u;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-static {v1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    .line 274
    :cond_0
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    move v0, v1

    .line 275
    :goto_0
    iget v2, p2, Lcom/applovin/exoplayer2/v;->E:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 276
    :goto_1
    invoke-static {p2}, Lcom/applovin/exoplayer2/b/q;->c(Lcom/applovin/exoplayer2/v;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 279
    iget-object v7, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    .line 280
    invoke-interface {v7, p2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    .line 281
    invoke-static {}, Lcom/applovin/exoplayer2/f/l;->a()Lcom/applovin/exoplayer2/f/i;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 282
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/applovin/exoplayer2/as;->a(III)I

    move-result p1

    return p1

    :cond_4
    const-string v2, "audio/raw"

    .line 286
    iget-object v7, p2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v2, p2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    invoke-static {v3}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    iget v7, p2, Lcom/applovin/exoplayer2/v;->y:I

    iget v8, p2, Lcom/applovin/exoplayer2/v;->z:I

    const/4 v9, 0x2

    .line 291
    invoke-static {v9, v7, v8}, Lcom/applovin/exoplayer2/l/ai;->b(III)Lcom/applovin/exoplayer2/v;

    move-result-object v7

    .line 290
    invoke-interface {v2, v7}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 292
    invoke-static {v3}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    .line 295
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    invoke-static {v3}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    .line 300
    invoke-static {v9}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    .line 303
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/i;

    .line 304
    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/f/i;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 307
    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/f/i;->c(Lcom/applovin/exoplayer2/v;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v5, 0x10

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x3

    .line 312
    :goto_2
    invoke-static {v6, v5, v0}, Lcom/applovin/exoplayer2/as;->a(III)I

    move-result p1

    return p1
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 764
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 766
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel-count"

    .line 767
    iget v1, p1, Lcom/applovin/exoplayer2/v;->y:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sample-rate"

    .line 768
    iget v1, p1, Lcom/applovin/exoplayer2/v;->z:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 769
    iget-object p2, p1, Lcom/applovin/exoplayer2/v;->n:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 771
    invoke-static {v0, p2, p3}, Lcom/applovin/exoplayer2/l/t;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 773
    sget p2, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const-string p2, "priority"

    const/4 p3, 0x0

    .line 774
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_0

    .line 775
    invoke-static {}, Lcom/applovin/exoplayer2/b/q;->S()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "operating-rate"

    .line 776
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 779
    :cond_0
    sget p2, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    const-string p2, "audio/ac4"

    iget-object p3, p1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ac4-is-sync"

    const/4 p3, 0x1

    .line 782
    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 784
    :cond_1
    sget p2, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    iget p3, p1, Lcom/applovin/exoplayer2/v;->y:I

    iget p1, p1, Lcom/applovin/exoplayer2/v;->z:I

    const/4 p4, 0x4

    .line 786
    invoke-static {p4, p3, p1}, Lcom/applovin/exoplayer2/l/ai;->b(III)Lcom/applovin/exoplayer2/v;

    move-result-object p1

    .line 785
    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/b/h;->b(Lcom/applovin/exoplayer2/v;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "pcm-encoding"

    .line 788
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;
    .locals 8

    .line 372
    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/f/i;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v0

    .line 374
    iget v1, v0, Lcom/applovin/exoplayer2/c/h;->e:I

    .line 375
    invoke-direct {p0, p1, p3}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;)I

    move-result v2

    iget v3, p0, Lcom/applovin/exoplayer2/b/q;->e:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 379
    new-instance v1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 383
    :cond_1
    iget p1, v0, Lcom/applovin/exoplayer2/c/h;->d:I

    :goto_0
    move v6, p1

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object v1
.end method

.method protected a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 429
    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/w;->b:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v1, p1, v0}, Lcom/applovin/exoplayer2/b/g$a;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/h;)V

    return-object v0
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/q;->u()[Lcom/applovin/exoplayer2/v;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/b/q;->e:I

    .line 357
    iget-object v0, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/q;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->f:Z

    .line 358
    iget-object v0, p1, Lcom/applovin/exoplayer2/f/i;->c:Ljava/lang/String;

    iget v1, p0, Lcom/applovin/exoplayer2/b/q;->e:I

    .line 359
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/applovin/exoplayer2/b/q;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    .line 361
    iget-object v0, p1, Lcom/applovin/exoplayer2/f/i;->b:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 364
    :goto_1
    iput-object v0, p0, Lcom/applovin/exoplayer2/b/q;->g:Lcom/applovin/exoplayer2/v;

    .line 365
    invoke-static {p1, p4, p2, p3}, Lcom/applovin/exoplayer2/f/g$a;->a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaFormat;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;)Lcom/applovin/exoplayer2/f/g$a;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/f/k;",
            "Lcom/applovin/exoplayer2/v;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation

    .line 319
    iget-object v0, p2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v1, p2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-static {}, Lcom/applovin/exoplayer2/f/l;->a()Lcom/applovin/exoplayer2/f/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 327
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 331
    invoke-interface {p1, v0, p3, v1}, Lcom/applovin/exoplayer2/f/k;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 333
    invoke-static {v2, p2}, Lcom/applovin/exoplayer2/f/l;->a(Ljava/util/List;Lcom/applovin/exoplayer2/v;)Ljava/util/List;

    move-result-object p2

    const-string v2, "audio/eac3-joc"

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 338
    invoke-interface {p1, p2, p3, v1}, Lcom/applovin/exoplayer2/f/k;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 337
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    .line 342
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 699
    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 691
    :pswitch_0
    check-cast p2, Lcom/applovin/exoplayer2/ar$a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/b/q;->m:Lcom/applovin/exoplayer2/ar$a;

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/b/h;->a(I)V

    goto :goto_0

    .line 685
    :pswitch_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/b/h;->b(Z)V

    goto :goto_0

    .line 681
    :cond_0
    check-cast p2, Lcom/applovin/exoplayer2/b/k;

    .line 682
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/b/k;)V

    goto :goto_0

    .line 677
    :cond_1
    check-cast p2, Lcom/applovin/exoplayer2/b/d;

    .line 678
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/b/d;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/b/h;->a(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/f/j;->a(JZ)V

    .line 508
    iget-boolean p3, p0, Lcom/applovin/exoplayer2/b/q;->l:Z

    if-eqz p3, :cond_0

    .line 509
    iget-object p3, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/b/h;->k()V

    goto :goto_0

    .line 511
    :cond_0
    iget-object p3, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/b/h;->j()V

    .line 514
    :goto_0
    iput-wide p1, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/q;->i:Z

    .line 516
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/q;->j:Z

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/am;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/am;)V

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/c/g;)V
    .locals 4

    .line 588
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-wide v0, p1, Lcom/applovin/exoplayer2/c/g;->d:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 593
    iget-wide v0, p1, Lcom/applovin/exoplayer2/c/g;->d:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    :cond_0
    const/4 p1, 0x0

    .line 595
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/q;->i:Z

    :cond_1
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->g:Lcom/applovin/exoplayer2/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/q;->G()Lcom/applovin/exoplayer2/f/g;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 445
    :cond_1
    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget v0, p1, Lcom/applovin/exoplayer2/v;->A:I

    goto :goto_0

    .line 448
    :cond_2
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 450
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 451
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->c(I)I

    move-result v0

    goto :goto_0

    .line 456
    :cond_4
    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    iget v0, p1, Lcom/applovin/exoplayer2/v;->A:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 460
    :goto_0
    new-instance v4, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v4}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    .line 462
    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/v$a;->f(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    .line 463
    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/v$a;->m(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    iget v3, p1, Lcom/applovin/exoplayer2/v;->B:I

    .line 464
    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/v$a;->n(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    iget v3, p1, Lcom/applovin/exoplayer2/v;->C:I

    .line 465
    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/v$a;->o(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    const-string v3, "channel-count"

    .line 466
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/v$a;->k(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 467
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->l(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    .line 468
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->a()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    .line 469
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->f:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/applovin/exoplayer2/v;->y:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/applovin/exoplayer2/v;->y:I

    if-ge v0, v3, :cond_6

    .line 472
    iget v0, p1, Lcom/applovin/exoplayer2/v;->y:I

    new-array v2, v0, [I

    move v0, v1

    .line 473
    :goto_1
    iget v3, p1, Lcom/applovin/exoplayer2/v;->y:I

    if-ge v0, v3, :cond_6

    .line 474
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 479
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p2, p1, v1, v2}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;I[I)V
    :try_end_0
    .catch Lcom/applovin/exoplayer2/b/h$a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 481
    iget-object p2, p1, Lcom/applovin/exoplayer2/b/h$a;->a:Lcom/applovin/exoplayer2/v;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/b/q;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 421
    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/g$a;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/g$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 6

    .line 411
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/b/g$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 496
    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(ZZ)V

    .line 497
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/b/g$a;->a(Lcom/applovin/exoplayer2/c/e;)V

    .line 498
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/q;->v()Lcom/applovin/exoplayer2/at;

    move-result-object p1

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/at;->b:Z

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/b/h;->g()V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/b/h;->h()V

    :goto_0
    return-void
.end method

.method protected a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 619
    invoke-static {p6}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->g:Lcom/applovin/exoplayer2/v;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 624
    invoke-static {p5}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/g;

    invoke-interface {p1, p7, p3}, Lcom/applovin/exoplayer2/f/g;->a(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 630
    invoke-interface {p5, p7, p3}, Lcom/applovin/exoplayer2/f/g;->a(IZ)V

    .line 632
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    iget p3, p1, Lcom/applovin/exoplayer2/c/e;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/applovin/exoplayer2/c/e;->f:I

    .line 633
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/b/h;->b()V

    return p2

    .line 639
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/applovin/exoplayer2/b/h;->a(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/applovin/exoplayer2/b/h$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/applovin/exoplayer2/b/h$e; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 650
    invoke-interface {p5, p7, p3}, Lcom/applovin/exoplayer2/f/g;->a(IZ)V

    .line 652
    :cond_3
    iget-object p1, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    iget p3, p1, Lcom/applovin/exoplayer2/c/e;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/applovin/exoplayer2/c/e;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 644
    iget-boolean p2, p1, Lcom/applovin/exoplayer2/b/h$e;->b:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/applovin/exoplayer2/b/q;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 641
    iget-object p2, p1, Lcom/applovin/exoplayer2/b/h$b;->c:Lcom/applovin/exoplayer2/v;

    iget-boolean p3, p1, Lcom/applovin/exoplayer2/b/h$b;->b:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/b/q;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected b(Lcom/applovin/exoplayer2/v;)Z
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/b/h;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/applovin/exoplayer2/l/s;
    .locals 0

    return-object p0
.end method

.method public c_()J
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/q;->d_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/q;->R()V

    .line 573
    :cond_0
    iget-wide v0, p0, Lcom/applovin/exoplayer2/b/q;->h:J

    return-wide v0
.end method

.method public d()Lcom/applovin/exoplayer2/am;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->f()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    return-object v0
.end method

.method protected p()V
    .locals 1

    .line 521
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->p()V

    .line 522
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->a()V

    return-void
.end method

.method protected q()V
    .locals 1

    .line 527
    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/q;->R()V

    .line 528
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->i()V

    .line 529
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->q()V

    return-void
.end method

.method protected r()V
    .locals 3

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->k:Z

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    :try_start_1
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/g$a;->b(Lcom/applovin/exoplayer2/c/e;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/b/g$a;->b(Lcom/applovin/exoplayer2/c/e;)V

    .line 542
    throw v0

    :catchall_1
    move-exception v0

    .line 539
    :try_start_2
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 541
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/b/g$a;->b(Lcom/applovin/exoplayer2/c/e;)V

    .line 543
    throw v0

    :catchall_2
    move-exception v0

    .line 541
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/q;->c:Lcom/applovin/exoplayer2/b/g$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/q;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/b/g$a;->b(Lcom/applovin/exoplayer2/c/e;)V

    .line 542
    throw v0
.end method

.method protected s()V
    .locals 3

    const/4 v0, 0x0

    .line 549
    :try_start_0
    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/b/q;->k:Z

    if-eqz v1, :cond_0

    .line 552
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->k:Z

    .line 553
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->l()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 551
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/b/q;->k:Z

    if-eqz v2, :cond_1

    .line 552
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/q;->k:Z

    .line 553
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->l()V

    .line 555
    :cond_1
    throw v1
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/q;->d:Lcom/applovin/exoplayer2/b/h;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/b/h;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/applovin/exoplayer2/f/j;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
