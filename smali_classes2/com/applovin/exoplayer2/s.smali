.class final Lcom/applovin/exoplayer2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/applovin/exoplayer2/ah$d;
.implements Lcom/applovin/exoplayer2/ao$a;
.implements Lcom/applovin/exoplayer2/h/n$a;
.implements Lcom/applovin/exoplayer2/j/j$a;
.implements Lcom/applovin/exoplayer2/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/s$b;,
        Lcom/applovin/exoplayer2/s$a;,
        Lcom/applovin/exoplayer2/s$c;,
        Lcom/applovin/exoplayer2/s$f;,
        Lcom/applovin/exoplayer2/s$g;,
        Lcom/applovin/exoplayer2/s$e;,
        Lcom/applovin/exoplayer2/s$d;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Lcom/applovin/exoplayer2/s$g;

.field private L:J

.field private M:I

.field private N:Z

.field private O:Lcom/applovin/exoplayer2/p;

.field private P:J

.field private final a:[Lcom/applovin/exoplayer2/ar;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/exoplayer2/ar;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/applovin/exoplayer2/as;

.field private final d:Lcom/applovin/exoplayer2/j/j;

.field private final e:Lcom/applovin/exoplayer2/j/k;

.field private final f:Lcom/applovin/exoplayer2/aa;

.field private final g:Lcom/applovin/exoplayer2/k/d;

.field private final h:Lcom/applovin/exoplayer2/l/o;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Looper;

.field private final k:Lcom/applovin/exoplayer2/ba$c;

.field private final l:Lcom/applovin/exoplayer2/ba$a;

.field private final m:J

.field private final n:Z

.field private final o:Lcom/applovin/exoplayer2/m;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/exoplayer2/s$c;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/applovin/exoplayer2/l/d;

.field private final r:Lcom/applovin/exoplayer2/s$e;

.field private final s:Lcom/applovin/exoplayer2/af;

.field private final t:Lcom/applovin/exoplayer2/ah;

.field private final u:Lcom/applovin/exoplayer2/z;

.field private final v:J

.field private w:Lcom/applovin/exoplayer2/av;

.field private x:Lcom/applovin/exoplayer2/al;

.field private y:Lcom/applovin/exoplayer2/s$d;

.field private z:Z


# direct methods
.method public static synthetic $r8$lambda$UVu6ogh3PiEYsDvWTB6P-eGQNC8(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->f(Lcom/applovin/exoplayer2/ao;)V

    return-void
.end method

.method public static synthetic $r8$lambda$twNzVbXUybsqAVx7nWSq2WUWTLc(Lcom/applovin/exoplayer2/s;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->K()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/j/k;Lcom/applovin/exoplayer2/aa;Lcom/applovin/exoplayer2/k/d;IZLcom/applovin/exoplayer2/a/a;Lcom/applovin/exoplayer2/av;Lcom/applovin/exoplayer2/z;JZLandroid/os/Looper;Lcom/applovin/exoplayer2/l/d;Lcom/applovin/exoplayer2/s$e;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p16

    .line 233
    iput-object v8, v0, Lcom/applovin/exoplayer2/s;->r:Lcom/applovin/exoplayer2/s$e;

    .line 234
    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    .line 235
    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->d:Lcom/applovin/exoplayer2/j/j;

    move-object v8, p3

    .line 236
    iput-object v8, v0, Lcom/applovin/exoplayer2/s;->e:Lcom/applovin/exoplayer2/j/k;

    move-object v9, p4

    .line 237
    iput-object v9, v0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    .line 238
    iput-object v3, v0, Lcom/applovin/exoplayer2/s;->g:Lcom/applovin/exoplayer2/k/d;

    move/from16 v10, p6

    .line 239
    iput v10, v0, Lcom/applovin/exoplayer2/s;->E:I

    move/from16 v10, p7

    .line 240
    iput-boolean v10, v0, Lcom/applovin/exoplayer2/s;->F:Z

    move-object/from16 v10, p9

    .line 241
    iput-object v10, v0, Lcom/applovin/exoplayer2/s;->w:Lcom/applovin/exoplayer2/av;

    move-object/from16 v10, p10

    .line 242
    iput-object v10, v0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    .line 243
    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->v:J

    .line 244
    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->P:J

    move/from16 v5, p13

    .line 245
    iput-boolean v5, v0, Lcom/applovin/exoplayer2/s;->A:Z

    .line 246
    iput-object v7, v0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    .line 248
    invoke-interface {p4}, Lcom/applovin/exoplayer2/aa;->e()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/applovin/exoplayer2/s;->m:J

    .line 249
    invoke-interface {p4}, Lcom/applovin/exoplayer2/aa;->f()Z

    move-result v5

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/s;->n:Z

    .line 251
    invoke-static {p3}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/j/k;)Lcom/applovin/exoplayer2/al;

    move-result-object v5

    iput-object v5, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 252
    new-instance v5, Lcom/applovin/exoplayer2/s$d;

    iget-object v6, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/s$d;-><init>(Lcom/applovin/exoplayer2/al;)V

    iput-object v5, v0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    .line 253
    array-length v5, v1

    new-array v5, v5, [Lcom/applovin/exoplayer2/as;

    iput-object v5, v0, Lcom/applovin/exoplayer2/s;->c:[Lcom/applovin/exoplayer2/as;

    const/4 v5, 0x0

    .line 254
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 255
    aget-object v6, v1, v5

    invoke-interface {v6, v5}, Lcom/applovin/exoplayer2/ar;->a(I)V

    .line 256
    iget-object v6, v0, Lcom/applovin/exoplayer2/s;->c:[Lcom/applovin/exoplayer2/as;

    aget-object v8, v1, v5

    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->b()Lcom/applovin/exoplayer2/as;

    move-result-object v8

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Lcom/applovin/exoplayer2/m;

    invoke-direct {v1, p0, v7}, Lcom/applovin/exoplayer2/m;-><init>(Lcom/applovin/exoplayer2/m$a;Lcom/applovin/exoplayer2/l/d;)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    .line 260
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/aq;->b()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->b:Ljava/util/Set;

    .line 261
    new-instance v1, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    .line 262
    new-instance v1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    .line 263
    invoke-virtual {p2, p0, v3}, Lcom/applovin/exoplayer2/j/j;->a(Lcom/applovin/exoplayer2/j/j$a;Lcom/applovin/exoplayer2/k/d;)V

    const/4 v1, 0x1

    .line 265
    iput-boolean v1, v0, Lcom/applovin/exoplayer2/s;->N:Z

    .line 267
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    new-instance v2, Lcom/applovin/exoplayer2/af;

    invoke-direct {v2, v4, v1}, Lcom/applovin/exoplayer2/af;-><init>(Lcom/applovin/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    .line 269
    new-instance v2, Lcom/applovin/exoplayer2/ah;

    invoke-direct {v2, p0, v4, v1}, Lcom/applovin/exoplayer2/ah;-><init>(Lcom/applovin/exoplayer2/ah$d;Lcom/applovin/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    .line 273
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->i:Landroid/os/HandlerThread;

    .line 274
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 275
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->j:Landroid/os/Looper;

    .line 276
    invoke-interface {v7, v1, p0}, Lcom/applovin/exoplayer2/l/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/applovin/exoplayer2/l/o;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    return-void
.end method

.method private A()V
    .locals 1

    .line 2132
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ae;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->B:Z

    return-void
.end method

.method private B()Z
    .locals 6

    .line 2138
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2141
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->B:Z

    if-eqz v0, :cond_1

    return v1

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 2148
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2149
    iget-wide v2, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 2150
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->g:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private C()Z
    .locals 6

    .line 2155
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2156
    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    .line 2159
    :goto_0
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 2160
    aget-object v3, v3, v1

    .line 2161
    iget-object v4, v0, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v4, v4, v1

    .line 2162
    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 2164
    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->g()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2165
    invoke-direct {p0, v3, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/ad;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private D()V
    .locals 3

    .line 2269
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->E()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->D:Z

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->e(J)V

    .line 2273
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->G()V

    return-void
.end method

.method private E()Z
    .locals 9

    .line 2277
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2282
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->e()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/applovin/exoplayer2/s;->d(J)J

    move-result-wide v6

    .line 2284
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2285
    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->b(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 2287
    :cond_1
    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 2286
    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->b(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->b:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 2288
    :goto_0
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    .line 2289
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v8, v0, Lcom/applovin/exoplayer2/am;->b:F

    .line 2288
    invoke-interface/range {v3 .. v8}, Lcom/applovin/exoplayer2/aa;->a(JJF)Z

    move-result v0

    return v0
.end method

.method private F()Z
    .locals 6

    .line 2293
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2297
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->e()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private G()V
    .locals 2

    .line 2305
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2306
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->D:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    .line 2307
    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2308
    :goto_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/al;->g:Z

    if-eq v0, v1, :cond_2

    .line 2309
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/al;->a(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    :cond_2
    return-void
.end method

.method private H()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2385
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->a([Z)V

    return-void
.end method

.method private I()J
    .locals 2

    .line 2484
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->q:J

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private J()Z
    .locals 1

    .line 2503
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/al;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic K()Ljava/lang/Boolean;
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->z:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 1081
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    .line 1082
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/ba$c;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/ba$c;->j:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1085
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->d()J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ba$c;->g:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->b(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    .line 1086
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba$a;->c()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    .line 1228
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 1225
    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1238
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->j()V

    const/4 v0, 0x0

    .line 1239
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->C:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 1240
    iget-object p5, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget p5, p5, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 1241
    :cond_0
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1245
    :cond_1
    iget-object p5, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p5}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    .line 1248
    iget-object v3, v2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1251
    :cond_2
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 1259
    invoke-virtual {v2, p2, p3}, Lcom/applovin/exoplayer2/ad;->a(J)J

    move-result-wide p4

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    .line 1260
    :cond_4
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length p4, p1

    move p5, v0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v5, p1, p5

    .line 1261
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ar;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 1265
    :goto_3
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    if-eq p1, v2, :cond_6

    .line 1266
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->f()Lcom/applovin/exoplayer2/ad;

    goto :goto_3

    .line 1268
    :cond_6
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ad;)Z

    .line 1269
    invoke-virtual {v2, v3, v4}, Lcom/applovin/exoplayer2/ad;->c(J)V

    .line 1270
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->H()V

    :cond_7
    if-eqz v2, :cond_a

    .line 1276
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ad;)Z

    .line 1277
    iget-boolean p1, v2, Lcom/applovin/exoplayer2/ad;->d:Z

    if-nez p1, :cond_8

    .line 1278
    iget-object p1, v2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    .line 1279
    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/ae;->a(J)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    iput-object p1, v2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    goto :goto_4

    .line 1280
    :cond_8
    iget-boolean p1, v2, Lcom/applovin/exoplayer2/ad;->e:Z

    if-eqz p1, :cond_9

    .line 1281
    iget-object p1, v2, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->b(J)J

    move-result-wide p1

    .line 1282
    iget-object p3, v2, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    iget-wide p4, p0, Lcom/applovin/exoplayer2/s;->m:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/s;->n:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/applovin/exoplayer2/h/n;->a(JZ)V

    move-wide p2, p1

    .line 1285
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/s;->b(J)V

    .line 1286
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->D()V

    goto :goto_5

    .line 1289
    :cond_a
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->g()V

    .line 1290
    invoke-direct {p0, p2, p3}, Lcom/applovin/exoplayer2/s;->b(J)V

    .line 1293
    :goto_5
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->h(Z)V

    .line 1294
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    return-wide p2
.end method

.method private a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/applovin/exoplayer2/h/p$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1450
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1451
    invoke-static {}, Lcom/applovin/exoplayer2/al;->a()Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1453
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->F:Z

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ba;->b(Z)I

    move-result v6

    .line 1454
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1455
    invoke-virtual/range {v3 .. v8}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1458
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1459
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v3

    .line 1461
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1462
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    iget-object v0, v3, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v0, v4}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    .line 1465
    iget p1, v3, Lcom/applovin/exoplayer2/h/p$a;->c:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    iget v4, v3, Lcom/applovin/exoplayer2/h/p$a;->b:I

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/ba$a;->b(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1466
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$a;->f()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    .line 1469
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/ba;",
            "Lcom/applovin/exoplayer2/s$g;",
            "ZIZ",
            "Lcom/applovin/exoplayer2/ba$c;",
            "Lcom/applovin/exoplayer2/ba$a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 2803
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$g;->a:Lcom/applovin/exoplayer2/ba;

    .line 2804
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 2808
    :cond_0
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 2816
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/applovin/exoplayer2/s$g;->b:I

    iget-wide v5, v0, Lcom/applovin/exoplayer2/s$g;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2817
    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2823
    invoke-virtual {p0, v10}, Lcom/applovin/exoplayer2/ba;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 2828
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 2831
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/ba$a;->f:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/applovin/exoplayer2/ba$a;->c:I

    move-object/from16 v11, p5

    .line 2832
    invoke-virtual {v10, v2, v11}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v2

    iget v2, v2, Lcom/applovin/exoplayer2/ba$c;->p:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2833
    invoke-virtual {v10, v3}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 2837
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v3, v1, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 2838
    iget-wide v4, v0, Lcom/applovin/exoplayer2/s$g;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2839
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 2847
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 2848
    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2861
    invoke-virtual {p0, v0, v8}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v3, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2858
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 2321
    iget-boolean v1, v0, Lcom/applovin/exoplayer2/s;->N:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 2324
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/applovin/exoplayer2/s;->N:Z

    .line 2325
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->A()V

    .line 2326
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->h:Lcom/applovin/exoplayer2/h/ad;

    .line 2327
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v3, v3, Lcom/applovin/exoplayer2/al;->i:Lcom/applovin/exoplayer2/j/k;

    .line 2328
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v4, Lcom/applovin/exoplayer2/al;->j:Ljava/util/List;

    .line 2329
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ah;->a()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2330
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2333
    sget-object v3, Lcom/applovin/exoplayer2/h/ad;->a:Lcom/applovin/exoplayer2/h/ad;

    goto :goto_2

    .line 2334
    :cond_2
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->h()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v3

    :goto_2
    if-nez v1, :cond_3

    .line 2337
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->e:Lcom/applovin/exoplayer2/j/k;

    goto :goto_3

    .line 2338
    :cond_3
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v4

    .line 2339
    :goto_3
    iget-object v7, v4, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    invoke-direct {p0, v7}, Lcom/applovin/exoplayer2/s;->a([Lcom/applovin/exoplayer2/j/d;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v7

    if-eqz v1, :cond_4

    .line 2341
    iget-object v8, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v8, v8, Lcom/applovin/exoplayer2/ae;->c:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_4

    .line 2343
    iget-object v8, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    .line 2344
    invoke-virtual {v8, v5, v6}, Lcom/applovin/exoplayer2/ae;->b(J)Lcom/applovin/exoplayer2/ae;

    move-result-object v8

    iput-object v8, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    :cond_4
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_4

    .line 2346
    :cond_5
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v7}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2348
    sget-object v1, Lcom/applovin/exoplayer2/h/ad;->a:Lcom/applovin/exoplayer2/h/ad;

    .line 2349
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->e:Lcom/applovin/exoplayer2/j/k;

    .line 2350
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v4

    :cond_6
    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    :goto_4
    if-eqz p8, :cond_7

    .line 2353
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/s$d;->b(I)V

    .line 2355
    :cond_7
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 2360
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->I()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 2355
    invoke-virtual/range {v1 .. v13}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/h/p$a;JJJJLcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;Ljava/util/List;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    return-object v1
.end method

.method private a([Lcom/applovin/exoplayer2/j/d;)Lcom/applovin/exoplayer2/common/a/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/applovin/exoplayer2/j/d;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/g/a;",
            ">;"
        }
    .end annotation

    .line 2368
    new-instance v0, Lcom/applovin/exoplayer2/common/a/s$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/common/a/s$a;-><init>()V

    .line 2370
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    .line 2372
    invoke-interface {v5, v2}, Lcom/applovin/exoplayer2/j/d;->a(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    .line 2373
    iget-object v6, v5, Lcom/applovin/exoplayer2/v;->j:Lcom/applovin/exoplayer2/g/a;

    if-nez v6, :cond_0

    .line 2374
    new-instance v5, Lcom/applovin/exoplayer2/g/a;

    new-array v6, v2, [Lcom/applovin/exoplayer2/g/a$a;

    invoke-direct {v5, v6}, Lcom/applovin/exoplayer2/g/a;-><init>([Lcom/applovin/exoplayer2/g/a$a;)V

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/common/a/s$a;->b(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    goto :goto_1

    .line 2376
    :cond_0
    iget-object v4, v5, Lcom/applovin/exoplayer2/v;->j:Lcom/applovin/exoplayer2/g/a;

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/common/a/s$a;->b(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 2381
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s$a;->a()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/s;)Lcom/applovin/exoplayer2/l/o;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    return-object p0
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/s$g;Lcom/applovin/exoplayer2/af;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/s$f;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 2516
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    new-instance v0, Lcom/applovin/exoplayer2/s$f;

    .line 2518
    invoke-static {}, Lcom/applovin/exoplayer2/al;->a()Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/applovin/exoplayer2/s$f;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJZZZ)V

    return-object v0

    .line 2525
    :cond_0
    iget-object v12, v8, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 2526
    iget-object v13, v12, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 2527
    invoke-static {v8, v11}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v14

    .line 2529
    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v14, :cond_1

    goto :goto_0

    .line 2531
    :cond_1
    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->s:J

    goto :goto_1

    .line 2530
    :cond_2
    :goto_0
    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->c:J

    :goto_1
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v12

    move v12, v6

    move-object/from16 v6, p7

    .line 2541
    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2552
    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->b(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    move/from16 v2, v19

    move v3, v2

    move/from16 v4, v20

    goto :goto_4

    .line 2555
    :cond_3
    iget-wide v1, v9, Lcom/applovin/exoplayer2/s$g;->c:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    .line 2556
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2557
    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v6, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    move-wide v0, v15

    move/from16 v2, v19

    goto :goto_2

    .line 2559
    :cond_4
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2560
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v6, v12

    move/from16 v2, v20

    .line 2564
    :goto_2
    iget v3, v8, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    move/from16 v3, v20

    goto :goto_3

    :cond_5
    move/from16 v3, v19

    :goto_3
    move/from16 v4, v19

    :goto_4
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    goto :goto_6

    :cond_6
    move-object/from16 v21, v12

    move v12, v6

    .line 2566
    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2568
    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->b(Z)I

    move-result v0

    :goto_5
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_6
    move-object/from16 v6, v21

    goto/16 :goto_9

    .line 2569
    :cond_7
    invoke-virtual {v7, v13}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v12, :cond_9

    .line 2573
    iget-object v5, v8, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v13

    move-object/from16 v6, p0

    .line 2574
    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2585
    invoke-virtual {v7, v10}, Lcom/applovin/exoplayer2/ba;->b(Z)I

    move-result v0

    move/from16 v4, v20

    goto :goto_7

    .line 2590
    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    move/from16 v4, v19

    :goto_7
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v29, v27

    goto :goto_6

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    .line 2595
    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    goto :goto_5

    :cond_a
    if-eqz v14, :cond_c

    .line 2599
    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    move-object/from16 v6, v21

    iget-object v1, v6, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    .line 2600
    iget-object v0, v8, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget v1, v11, Lcom/applovin/exoplayer2/ba$a;->c:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$c;->p:I

    iget-object v1, v8, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v2, v6, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 2601
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2604
    invoke-virtual/range {p7 .. p7}, Lcom/applovin/exoplayer2/ba$a;->c()J

    move-result-wide v0

    add-long v4, v15, v0

    .line 2605
    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v3, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2607
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2608
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2609
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v13, v1

    move-wide v0, v2

    goto :goto_8

    :cond_b
    move-wide v0, v15

    :goto_8
    move v3, v12

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v20

    goto :goto_9

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move v3, v12

    move-wide v0, v15

    move/from16 v27, v19

    move/from16 v28, v27

    move/from16 v29, v28

    :goto_9
    if-eq v3, v12, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2619
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2624
    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2625
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_a

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    .line 2631
    :goto_a
    invoke-virtual {v2, v7, v13, v0, v1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v2

    .line 2632
    iget v3, v2, Lcom/applovin/exoplayer2/h/p$a;->e:I

    if-eq v3, v12, :cond_f

    iget v3, v6, Lcom/applovin/exoplayer2/h/p$a;->e:I

    if-eq v3, v12, :cond_e

    iget v3, v2, Lcom/applovin/exoplayer2/h/p$a;->b:I

    iget v4, v6, Lcom/applovin/exoplayer2/h/p$a;->e:I

    if-lt v3, v4, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v3, v19

    goto :goto_c

    :cond_f
    :goto_b
    move/from16 v3, v20

    .line 2639
    :goto_c
    iget-object v4, v6, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2642
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2643
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v5

    if-nez v5, :cond_10

    if-eqz v3, :cond_10

    move/from16 v3, v20

    goto :goto_d

    :cond_10
    move/from16 v3, v19

    .line 2647
    :goto_d
    invoke-virtual {v7, v13, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    if-eqz v4, :cond_13

    if-nez v14, :cond_13

    cmp-long v4, v15, v25

    if-nez v4, :cond_13

    .line 2652
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v2, Lcom/applovin/exoplayer2/h/p$a;->b:I

    .line 2653
    invoke-virtual {v11, v4}, Lcom/applovin/exoplayer2/ba$a;->e(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2654
    :cond_11
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, v6, Lcom/applovin/exoplayer2/h/p$a;->b:I

    .line 2655
    invoke-virtual {v11, v4}, Lcom/applovin/exoplayer2/ba$a;->e(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move/from16 v19, v20

    :cond_13
    if-nez v3, :cond_14

    if-eqz v19, :cond_15

    :cond_14
    move-object v2, v6

    .line 2660
    :cond_15
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2661
    invoke-virtual {v2, v6}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2662
    iget-wide v0, v8, Lcom/applovin/exoplayer2/al;->s:J

    goto :goto_e

    .line 2664
    :cond_16
    iget-object v0, v2, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    .line 2666
    iget v0, v2, Lcom/applovin/exoplayer2/h/p$a;->c:I

    iget v1, v2, Lcom/applovin/exoplayer2/h/p$a;->b:I

    invoke-virtual {v11, v1}, Lcom/applovin/exoplayer2/ba$a;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 2667
    invoke-virtual/range {p7 .. p7}, Lcom/applovin/exoplayer2/ba$a;->f()J

    move-result-wide v0

    goto :goto_e

    :cond_17
    const-wide/16 v0, 0x0

    :cond_18
    :goto_e
    move-wide/from16 v23, v0

    .line 2672
    new-instance v0, Lcom/applovin/exoplayer2/s$f;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/applovin/exoplayer2/s$f;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJZZZ)V

    return-object v0
.end method

.method static a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IZLjava/lang/Object;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)Ljava/lang/Object;
    .locals 9

    .line 2891
    invoke-virtual {p5, p4}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p4

    .line 2893
    invoke-virtual {p5}, Lcom/applovin/exoplayer2/ba;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 2896
    invoke-virtual/range {v3 .. v8}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2902
    :cond_0
    invoke-virtual {p5, v4}, Lcom/applovin/exoplayer2/ba;->a(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 2904
    :cond_2
    invoke-virtual {p6, p4}, Lcom/applovin/exoplayer2/ba;->a(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private a(F)V
    .locals 5

    .line 1727
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1729
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1731
    invoke-interface {v4, p1}, Lcom/applovin/exoplayer2/j/d;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1734
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2409
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v1, v1, p1

    .line 2410
    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2413
    :cond_0
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    .line 2414
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    .line 2415
    :goto_0
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v3

    .line 2416
    iget-object v6, v3, Lcom/applovin/exoplayer2/j/k;->b:[Lcom/applovin/exoplayer2/at;

    aget-object v6, v6, p1

    .line 2418
    iget-object v3, v3, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    aget-object v3, v3, p1

    .line 2419
    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;

    move-result-object v7

    .line 2421
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    move v14, v5

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    .line 2425
    :goto_2
    iget v3, v0, Lcom/applovin/exoplayer2/s;->J:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/applovin/exoplayer2/s;->J:I

    .line 2426
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2427
    iget-object v3, v2, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/applovin/exoplayer2/s;->L:J

    .line 2434
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v12

    .line 2435
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ad;->a()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 2427
    invoke-interface/range {v2 .. v13}, Lcom/applovin/exoplayer2/ar;->a(Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JZZJJ)V

    .line 2436
    new-instance v2, Lcom/applovin/exoplayer2/s$1;

    invoke-direct {v2, v0}, Lcom/applovin/exoplayer2/s$1;-><init>(Lcom/applovin/exoplayer2/s;)V

    const/16 v3, 0xb

    invoke-interface {v1, v3, v2}, Lcom/applovin/exoplayer2/ar;->a(ILjava/lang/Object;)V

    .line 2453
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/ar;)V

    if-eqz v14, :cond_4

    .line 2456
    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->e()V

    :cond_4
    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->d(I)V

    .line 1101
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/l/o;->a(IJ)Z

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/am;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2255
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 2257
    :cond_0
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p3, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/am;)Lcom/applovin/exoplayer2/al;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 2259
    :cond_1
    iget p3, p1, Lcom/applovin/exoplayer2/am;->b:F

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/s;->a(F)V

    .line 2260
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    .line 2262
    iget v2, p1, Lcom/applovin/exoplayer2/am;->b:F

    invoke-interface {v1, p2, v2}, Lcom/applovin/exoplayer2/ar;->a(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/am;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2240
    iget v0, p1, Lcom/applovin/exoplayer2/am;->b:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;FZZ)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1630
    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->d_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1631
    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->l()V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ar;J)V
    .locals 1

    .line 2196
    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->i()V

    .line 2197
    instance-of v0, p1, Lcom/applovin/exoplayer2/i/m;

    if-eqz v0, :cond_0

    .line 2198
    check-cast p1, Lcom/applovin/exoplayer2/i/m;

    invoke-virtual {p1, p2, p3}, Lcom/applovin/exoplayer2/i/m;->c(J)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/av;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->w:Lcom/applovin/exoplayer2/av;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V
    .locals 9

    .line 1543
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1548
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    .line 1549
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/applovin/exoplayer2/s$c;

    iget v5, p0, Lcom/applovin/exoplayer2/s;->E:I

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/s;->F:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    move-object v3, p1

    move-object v4, p2

    .line 1548
    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/s$c;

    iget-object v1, v1, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/ao;->a(Z)V

    .line 1558
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1562
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V
    .locals 3

    .line 1887
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1894
    :cond_0
    iget-object v0, p2, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 1895
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    .line 1896
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ba$c;->l:Lcom/applovin/exoplayer2/ab$e;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ab$e;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/z;->a(Lcom/applovin/exoplayer2/ab$e;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    .line 1898
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    iget-object p2, p2, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 1899
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 1898
    invoke-interface {p3, p1, p2}, Lcom/applovin/exoplayer2/z;->a(J)V

    goto :goto_1

    .line 1901
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ba$c;->b:Ljava/lang/Object;

    .line 1903
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1904
    iget-object p2, p4, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 1905
    iget-object p4, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    iget-object p2, p2, Lcom/applovin/exoplayer2/ba$c;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1907
    :goto_0
    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1909
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/z;->a(J)V

    :cond_3
    :goto_1
    return-void

    .line 1889
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    iget p1, p1, Lcom/applovin/exoplayer2/am;->b:F

    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object p2, p2, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    iget p2, p2, Lcom/applovin/exoplayer2/am;->b:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    .line 1890
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object p2, p2, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    :cond_5
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V
    .locals 4

    .line 2776
    iget-object v0, p1, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 2777
    invoke-virtual {p0, v0, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$c;->q:I

    const/4 v0, 0x1

    .line 2778
    invoke-virtual {p0, p2, p3, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p0

    iget-object p0, p0, Lcom/applovin/exoplayer2/ba$a;->b:Ljava/lang/Object;

    .line 2779
    iget-wide v0, p3, Lcom/applovin/exoplayer2/ba$a;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p3, Lcom/applovin/exoplayer2/ba$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 2780
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1794
    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget v5, v11, Lcom/applovin/exoplayer2/s;->E:I

    iget-boolean v6, v11, Lcom/applovin/exoplayer2/s;->F:Z

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    move-object/from16 v1, p1

    .line 1795
    invoke-static/range {v1 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/s$g;Lcom/applovin/exoplayer2/af;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/s$f;

    move-result-object v7

    .line 1804
    iget-object v8, v7, Lcom/applovin/exoplayer2/s$f;->a:Lcom/applovin/exoplayer2/h/p$a;

    .line 1805
    iget-wide v9, v7, Lcom/applovin/exoplayer2/s$f;->c:J

    .line 1806
    iget-boolean v0, v7, Lcom/applovin/exoplayer2/s$f;->d:Z

    .line 1807
    iget-wide v13, v7, Lcom/applovin/exoplayer2/s$f;->b:J

    .line 1808
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 1809
    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v1, v13, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v5

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v15

    :goto_1
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    .line 1811
    :try_start_0
    iget-boolean v1, v7, Lcom/applovin/exoplayer2/s$f;->e:Z

    if-eqz v1, :cond_3

    .line 1812
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v1, v1, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v1, v15, :cond_2

    .line 1813
    invoke-direct {v11, v4}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1815
    :cond_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    :cond_3
    if-nez v16, :cond_4

    .line 1823
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-wide v3, v11, Lcom/applovin/exoplayer2/s;->L:J

    .line 1824
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->t()J

    move-result-wide v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    move v15, v5

    move-wide/from16 v5, v21

    .line 1823
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1825
    invoke-direct {v11, v15}, Lcom/applovin/exoplayer2/s;->f(Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move v15, v5

    const/16 v20, 0x4

    goto/16 :goto_6

    :cond_4
    move/from16 v20, v4

    move v15, v5

    .line 1827
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1829
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 1832
    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v2, v8}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1833
    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v3, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    invoke-virtual {v2, v12, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ae;)Lcom/applovin/exoplayer2/ae;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    .line 1834
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->j()V

    .line 1836
    :cond_5
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto :goto_2

    .line 1838
    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide v13, v0

    .line 1841
    :cond_7
    :goto_3
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v5, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 1846
    iget-boolean v0, v7, Lcom/applovin/exoplayer2/s$f;->f:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_4

    :cond_8
    move-wide/from16 v6, v18

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 1841
    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    if-nez v16, :cond_9

    .line 1849
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_c

    .line 1851
    :cond_9
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 1852
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    .line 1856
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    .line 1857
    invoke-virtual {v1, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ba$a;->f:Z

    if-nez v1, :cond_a

    const/16 v23, 0x1

    goto :goto_5

    :cond_a
    move/from16 v23, v15

    .line 1858
    :goto_5
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/al;->d:J

    .line 1865
    invoke-virtual {v12, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move/from16 v17, v20

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1859
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1869
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->A()V

    .line 1870
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v11, v12, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V

    .line 1872
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v12}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    .line 1875
    iput-object v6, v11, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    .line 1877
    :cond_d
    invoke-direct {v11, v15}, Lcom/applovin/exoplayer2/s;->h(Z)V

    return-void

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v20, v4

    move v15, v5

    .line 1841
    :goto_6
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v5, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 1846
    iget-boolean v1, v7, Lcom/applovin/exoplayer2/s$f;->f:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    .line 1841
    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    if-nez v16, :cond_f

    .line 1849
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_12

    .line 1851
    :cond_f
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 1852
    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    .line 1856
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    .line 1857
    invoke-virtual {v2, v1, v3}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/ba$a;->f:Z

    if-nez v2, :cond_10

    const/16 v23, 0x1

    goto :goto_7

    :cond_10
    const/16 v23, 0x0

    .line 1858
    :goto_7
    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v2, Lcom/applovin/exoplayer2/al;->d:J

    .line 1865
    invoke-virtual {v12, v1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    move/from16 v17, v20

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1859
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1869
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->A()V

    .line 1870
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-direct {v11, v12, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;)V

    .line 1872
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v1, v12}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1875
    iput-object v15, v11, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    :cond_13
    const/4 v1, 0x0

    .line 1877
    invoke-direct {v11, v1}, Lcom/applovin/exoplayer2/s;->h(Z)V

    .line 1878
    throw v0
.end method

.method private declared-synchronized a(Lcom/applovin/exoplayer2/common/base/Supplier;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/d;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 650
    :goto_0
    invoke-interface {p1}, Lcom/applovin/exoplayer2/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    .line 652
    :try_start_1
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v3}, Lcom/applovin/exoplayer2/l/d;->c()V

    .line 653
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    .line 657
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/l/d;->a()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 661
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V
    .locals 2

    .line 2499
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    iget-object p2, p2, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/aa;->a([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/h/ad;[Lcom/applovin/exoplayer2/j/d;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/h/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 748
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    .line 749
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 695
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->a(Lcom/applovin/exoplayer2/s$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 696
    new-instance v0, Lcom/applovin/exoplayer2/s$g;

    new-instance v1, Lcom/applovin/exoplayer2/ap;

    .line 699
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->b(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v2

    .line 700
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/ap;-><init>(Ljava/util/Collection;Lcom/applovin/exoplayer2/h/z;)V

    .line 701
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->a(Lcom/applovin/exoplayer2/s$a;)I

    move-result v2

    .line 702
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->d(Lcom/applovin/exoplayer2/s$a;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    .line 706
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->b(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v1

    .line 707
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object p1

    .line 705
    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/ah;->a(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    .line 708
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 714
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->b()I

    move-result p2

    .line 717
    :cond_0
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->b(Lcom/applovin/exoplayer2/s$a;)Ljava/util/List;

    move-result-object v1

    .line 718
    invoke-static {p1}, Lcom/applovin/exoplayer2/s$a;->c(Lcom/applovin/exoplayer2/s$a;)Lcom/applovin/exoplayer2/h/z;

    move-result-object p1

    .line 715
    invoke-virtual {v0, p2, v1, p1}, Lcom/applovin/exoplayer2/ah;->a(ILjava/util/List;Lcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 p2, 0x0

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 725
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    iget v1, p1, Lcom/applovin/exoplayer2/s$b;->a:I

    iget v2, p1, Lcom/applovin/exoplayer2/s$b;->b:I

    iget v3, p1, Lcom/applovin/exoplayer2/s$b;->c:I

    iget-object p1, p1, Lcom/applovin/exoplayer2/s$b;->d:Lcom/applovin/exoplayer2/h/z;

    .line 726
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/ah;->a(IIILcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 v0, 0x0

    .line 731
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/s$g;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1114
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 1121
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    const/4 v3, 0x1

    iget v4, v11, Lcom/applovin/exoplayer2/s;->E:I

    iget-boolean v5, v11, Lcom/applovin/exoplayer2/s;->F:Z

    iget-object v6, v11, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    move-object/from16 v2, p1

    .line 1122
    invoke-static/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 1133
    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    .line 1134
    invoke-direct {v11, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;

    move-result-object v7

    .line 1135
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/applovin/exoplayer2/h/p$a;

    .line 1136
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1138
    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v16, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v16

    goto/16 :goto_4

    .line 1141
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1142
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1144
    iget-wide v9, v0, Lcom/applovin/exoplayer2/s$g;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    .line 1145
    :goto_1
    iget-object v14, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v15, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v15, v15, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    .line 1146
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v7

    .line 1148
    invoke-virtual {v7}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1149
    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v4, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v5, v7, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v5, v12}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    .line 1151
    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    iget v5, v7, Lcom/applovin/exoplayer2/h/p$a;->b:I

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/ba$a;->b(I)I

    move-result v4

    iget v5, v7, Lcom/applovin/exoplayer2/h/p$a;->c:I

    if-ne v4, v5, :cond_2

    .line 1152
    iget-object v4, v11, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ba$a;->f()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    move-object v9, v7

    move v10, v8

    goto :goto_4

    .line 1157
    :cond_3
    iget-wide v14, v0, Lcom/applovin/exoplayer2/s$g;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    move-wide/from16 v16, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    .line 1162
    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v7, v7, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1164
    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 1167
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v1, v1, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v1, v8, :cond_6

    .line 1168
    invoke-direct {v11, v0}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1170
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    .line 1178
    :cond_7
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v9, v1}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1179
    iget-object v1, v11, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1180
    iget-boolean v7, v1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz v7, :cond_8

    cmp-long v2, v4, v2

    if-eqz v2, :cond_8

    .line 1183
    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    iget-object v2, v11, Lcom/applovin/exoplayer2/s;->w:Lcom/applovin/exoplayer2/av;

    .line 1184
    invoke-interface {v1, v4, v5, v2}, Lcom/applovin/exoplayer2/h/n;->a(JLcom/applovin/exoplayer2/av;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    .line 1187
    :goto_6
    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/h;->a(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v6, v3, Lcom/applovin/exoplayer2/al;->s:J

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/h;->a(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_b

    .line 1191
    :cond_9
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/al;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1211
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    return-void

    :cond_a
    move-wide v1, v4

    .line 1195
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    if-ne v3, v0, :cond_c

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 1196
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    .line 1202
    :try_start_2
    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v5, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    move-object/from16 v1, p0

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1211
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v11, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1218
    throw v0
.end method

.method private a(Ljava/io/IOException;I)V
    .locals 1

    .line 624
    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/p;->a(Ljava/io/IOException;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    .line 625
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 628
    iget-object p2, p2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object p2, p2, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/p;->a(Lcom/applovin/exoplayer2/h/o;)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 630
    invoke-static {p2, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 631
    invoke-direct {p0, p2, p2}, Lcom/applovin/exoplayer2/s;->a(ZZ)V

    .line 632
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    return-void
.end method

.method private a(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 771
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {p3, p4}, Lcom/applovin/exoplayer2/s$d;->c(I)V

    .line 772
    iget-object p3, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/al;->a(ZI)Lcom/applovin/exoplayer2/al;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    const/4 p2, 0x0

    .line 773
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/s;->C:Z

    .line 774
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Z)V

    .line 775
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result p1

    if-nez p1, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->j()V

    .line 777
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->l()V

    goto :goto_0

    .line 779
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->e:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 780
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->i()V

    .line 781
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    goto :goto_0

    .line 782
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->e:I

    if-ne p1, p3, :cond_2

    .line 783
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1325
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->G:Z

    if-eq v0, p1, :cond_1

    .line 1326
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->G:Z

    if-nez p1, :cond_1

    .line 1328
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1329
    invoke-static {v2}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    invoke-interface {v2}, Lcom/applovin/exoplayer2/ar;->n()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1336
    monitor-enter p0

    const/4 p1, 0x1

    .line 1337
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1338
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1339
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1344
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/s;->G:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    .line 1349
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 1350
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/aa;->b()V

    .line 1351
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/s;->b(I)V

    return-void
.end method

.method private a(ZZZZ)V
    .locals 34

    move-object/from16 v1, p0

    .line 1374
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/applovin/exoplayer2/l/o;->d(I)V

    const/4 v2, 0x0

    .line 1375
    iput-object v2, v1, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    const/4 v3, 0x0

    .line 1376
    iput-boolean v3, v1, Lcom/applovin/exoplayer2/s;->C:Z

    .line 1377
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->b()V

    const-wide/16 v4, 0x0

    .line 1378
    iput-wide v4, v1, Lcom/applovin/exoplayer2/s;->L:J

    .line 1379
    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    .line 1381
    :try_start_0
    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ar;)V
    :try_end_0
    .catch Lcom/applovin/exoplayer2/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 1384
    invoke-static {v7, v8, v0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 1388
    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 1389
    iget-object v8, v1, Lcom/applovin/exoplayer2/s;->b:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1391
    :try_start_1
    invoke-interface {v0}, Lcom/applovin/exoplayer2/ar;->n()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 1394
    invoke-static {v7, v0, v8}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1399
    :cond_2
    iput v3, v1, Lcom/applovin/exoplayer2/s;->J:I

    .line 1401
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 1402
    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v4, v4, Lcom/applovin/exoplayer2/al;->s:J

    .line 1404
    iget-object v6, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v6, v6, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v7, v1, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    .line 1406
    :cond_3
    iget-object v6, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v6, v6, Lcom/applovin/exoplayer2/al;->s:J

    goto :goto_6

    .line 1405
    :cond_4
    :goto_5
    iget-object v6, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v6, v6, Lcom/applovin/exoplayer2/al;->c:J

    :goto_6
    if-eqz p2, :cond_6

    .line 1409
    iput-object v2, v1, Lcom/applovin/exoplayer2/s;->K:Lcom/applovin/exoplayer2/s$g;

    .line 1410
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    .line 1411
    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;)Landroid/util/Pair;

    move-result-object v0

    .line 1412
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/applovin/exoplayer2/h/p$a;

    .line 1413
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1415
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v4, v0}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_7

    :cond_5
    move v0, v3

    :goto_7
    move-object/from16 v22, v4

    move-wide/from16 v30, v5

    move-wide v12, v7

    goto :goto_8

    :cond_6
    move-object/from16 v22, v0

    move v0, v3

    move-wide/from16 v30, v4

    move-wide v12, v6

    .line 1420
    :goto_8
    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/af;->g()V

    .line 1421
    iput-boolean v3, v1, Lcom/applovin/exoplayer2/s;->D:Z

    .line 1423
    new-instance v3, Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v10, v4, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v4, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->e:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 1430
    :cond_7
    iget-object v2, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->f:Lcom/applovin/exoplayer2/p;

    :goto_9
    move-object/from16 v17, v2

    const/16 v18, 0x0

    if-eqz v0, :cond_8

    .line 1432
    sget-object v2, Lcom/applovin/exoplayer2/h/ad;->a:Lcom/applovin/exoplayer2/h/ad;

    goto :goto_a

    :cond_8
    iget-object v2, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->h:Lcom/applovin/exoplayer2/h/ad;

    :goto_a
    move-object/from16 v19, v2

    if-eqz v0, :cond_9

    .line 1433
    iget-object v2, v1, Lcom/applovin/exoplayer2/s;->e:Lcom/applovin/exoplayer2/j/k;

    goto :goto_b

    :cond_9
    iget-object v2, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->i:Lcom/applovin/exoplayer2/j/k;

    :goto_b
    move-object/from16 v20, v2

    if-eqz v0, :cond_a

    .line 1434
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->g()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->j:Ljava/util/List;

    :goto_c
    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/al;->l:Z

    move/from16 v23, v0

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->m:I

    move/from16 v24, v0

    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    move-object/from16 v25, v0

    const-wide/16 v28, 0x0

    iget-boolean v0, v1, Lcom/applovin/exoplayer2/s;->I:Z

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object v9, v3

    move-object/from16 v11, v22

    move-wide/from16 v14, v30

    move/from16 v16, v4

    move-wide/from16 v26, v30

    invoke-direct/range {v9 .. v33}, Lcom/applovin/exoplayer2/al;-><init>(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;JJILcom/applovin/exoplayer2/p;ZLcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;Ljava/util/List;Lcom/applovin/exoplayer2/h/p$a;ZILcom/applovin/exoplayer2/am;JJJZZ)V

    iput-object v3, v1, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    if-eqz p3, :cond_b

    .line 1445
    iget-object v0, v1, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->c()V

    :cond_b
    return-void
.end method

.method private a([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2389
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2390
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 2393
    :goto_0
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2394
    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/j/k;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->b:Ljava/util/Set;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2395
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->n()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2399
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2400
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/j/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2401
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/s;->a(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 2404
    iput-boolean p1, v0, Lcom/applovin/exoplayer2/ad;->g:Z

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/al;Lcom/applovin/exoplayer2/ba$a;)Z
    .locals 2

    .line 2683
    iget-object v0, p0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 2684
    iget-object p0, p0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    .line 2685
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/ba$a;->f:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private a(Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/ad;)Z
    .locals 2

    .line 2175
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2181
    iget-object p2, p2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-boolean p2, p2, Lcom/applovin/exoplayer2/ae;->f:Z

    if-eqz p2, :cond_1

    iget-boolean p2, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/applovin/exoplayer2/i/m;

    if-nez p2, :cond_0

    .line 2184
    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->h()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z
    .locals 4

    .line 1091
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p2, p2, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 1095
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    .line 1096
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ba$c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/ba$c;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/ba$c;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private static a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2708
    iget-object v2, v0, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    .line 2711
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 2713
    :cond_0
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/h;->b(J)J

    move-result-wide v1

    .line 2715
    :goto_0
    new-instance v3, Lcom/applovin/exoplayer2/s$g;

    iget-object v4, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    .line 2719
    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ao;->a()Lcom/applovin/exoplayer2/ba;

    move-result-object v4

    iget-object v5, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    .line 2720
    invoke-virtual {v5}, Lcom/applovin/exoplayer2/ao;->g()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 2716
    invoke-static/range {v1 .. v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$g;ZIZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    .line 2730
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2731
    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2732
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2730
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    .line 2734
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ao;->f()J

    move-result-wide v1

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    .line 2735
    invoke-static {v8, p0, v9, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V

    :cond_2
    return v12

    .line 2740
    :cond_3
    iget-object v2, v0, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    .line 2744
    :cond_4
    iget-object v3, v0, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->f()J

    move-result-wide v3

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    .line 2746
    invoke-static {v8, p0, v9, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)V

    return v12

    .line 2749
    :cond_5
    iput v2, v0, Lcom/applovin/exoplayer2/s$c;->b:I

    .line 2750
    iget-object v2, v0, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    .line 2751
    iget-boolean v2, v10, Lcom/applovin/exoplayer2/ba$a;->f:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/applovin/exoplayer2/ba$a;->c:I

    .line 2752
    invoke-virtual {v1, v2, v9}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v2

    iget v2, v2, Lcom/applovin/exoplayer2/ba$c;->p:I

    iget-object v3, v0, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    .line 2753
    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 2757
    iget-wide v1, v0, Lcom/applovin/exoplayer2/s$c;->c:J

    .line 2758
    invoke-virtual/range {p6 .. p6}, Lcom/applovin/exoplayer2/ba$a;->c()J

    move-result-wide v3

    add-long v5, v1, v3

    .line 2759
    iget-object v1, v0, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    .line 2760
    invoke-virtual {v8, v1, v10}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v4, v1, Lcom/applovin/exoplayer2/ba$a;->c:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2762
    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2763
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2764
    invoke-virtual {v8, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2765
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2763
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/applovin/exoplayer2/s$c;->a(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/s;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->H:Z

    return p1
.end method

.method private static a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2909
    invoke-interface {p0}, Lcom/applovin/exoplayer2/j/d;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2910
    :goto_0
    new-array v2, v1, [Lcom/applovin/exoplayer2/v;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2912
    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/j/d;->a(I)Lcom/applovin/exoplayer2/v;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(I)V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v0, p1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->a(I)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    :cond_0
    return-void
.end method

.method private b(IILcom/applovin/exoplayer2/h/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    .line 737
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/ah;->a(IILcom/applovin/exoplayer2/h/z;)Lcom/applovin/exoplayer2/ba;

    move-result-object p1

    const/4 p2, 0x0

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private b(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/ad;->a(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 1304
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m;->a(J)V

    .line 1305
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 1306
    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1307
    iget-wide v2, p0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ar;->a(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1310
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->r()V

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    .line 1316
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;Z)V

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/ao;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1473
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1475
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ao;)V

    goto :goto_0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/applovin/exoplayer2/s$c;

    invoke-direct {v1, p1}, Lcom/applovin/exoplayer2/s$c;-><init>(Lcom/applovin/exoplayer2/ao;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1480
    :cond_1
    new-instance v0, Lcom/applovin/exoplayer2/s$c;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/s$c;-><init>(Lcom/applovin/exoplayer2/ao;)V

    .line 1481
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v3, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget v5, p0, Lcom/applovin/exoplayer2/s;->E:I

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/s;->F:Z

    iget-object v7, p0, Lcom/applovin/exoplayer2/s;->k:Lcom/applovin/exoplayer2/ba$c;

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->l:Lcom/applovin/exoplayer2/ba$a;

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$c;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ba;IZLcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1493
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->a(Z)V

    :goto_0
    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1636
    invoke-static {p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/m;->b(Lcom/applovin/exoplayer2/ar;)V

    .line 1640
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;)V

    .line 1641
    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->m()V

    .line 1642
    iget p1, p0, Lcom/applovin/exoplayer2/s;->J:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/s;->J:I

    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 753
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 755
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 757
    invoke-interface {v4, p1}, Lcom/applovin/exoplayer2/j/d;->a(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 760
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(JJ)Z
    .locals 1

    .line 1105
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->I:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->H:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1109
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/s;->a(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 815
    iput p1, p0, Lcom/applovin/exoplayer2/s;->E:I

    .line 816
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 817
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->f(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 819
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->h(Z)V

    return-void
.end method

.method private c(J)V
    .locals 5

    .line 2188
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2189
    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2190
    invoke-direct {p0, v3, p1, p2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1567
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1572
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->N:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1574
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->N:Z

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    .line 1579
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v0

    .line 1580
    iget v1, p0, Lcom/applovin/exoplayer2/s;->M:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1582
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 1583
    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->b:I

    if-gt v4, v0, :cond_3

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->b:I

    if-ne v4, v0, :cond_4

    iget-wide v3, v3, Lcom/applovin/exoplayer2/s$c;->c:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 1589
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_0

    .line 1592
    :cond_4
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1593
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 1595
    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->b:I

    if-lt v4, v0, :cond_6

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->b:I

    if-ne v4, v0, :cond_7

    iget-wide v4, v3, Lcom/applovin/exoplayer2/s$c;->c:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1602
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1603
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 1607
    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->d:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget v4, v3, Lcom/applovin/exoplayer2/s$c;->b:I

    if-ne v4, v0, :cond_d

    iget-wide v4, v3, Lcom/applovin/exoplayer2/s$c;->c:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_d

    iget-wide v4, v3, Lcom/applovin/exoplayer2/s$c;->c:J

    cmp-long v4, v4, p3

    if-gtz v4, :cond_d

    .line 1613
    :try_start_0
    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    iget-object v4, v3, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/ao;->h()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v3, v3, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/ao;->j()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1616
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1622
    :goto_4
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1623
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/s$c;

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1615
    iget-object p2, v3, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ao;->h()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, v3, Lcom/applovin/exoplayer2/s$c;->a:Lcom/applovin/exoplayer2/ao;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/ao;->j()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1616
    :cond_b
    iget-object p2, p0, Lcom/applovin/exoplayer2/s;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1620
    :cond_c
    throw p1

    .line 1626
    :cond_d
    iput v1, p0, Lcom/applovin/exoplayer2/s;->M:I

    :cond_e
    :goto_5
    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/ao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1499
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->e()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->j:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 1500
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ao;)V

    .line 1501
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget p1, p1, Lcom/applovin/exoplayer2/al;->e:I

    if-ne p1, v1, :cond_2

    .line 1504
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    goto :goto_0

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/applovin/exoplayer2/h/n;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2203
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/h/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2207
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    .line 2208
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    .line 2209
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/am;->b:F

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    .line 2208
    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/ad;->a(FLcom/applovin/exoplayer2/ba;)V

    .line 2211
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->h()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    .line 2210
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V

    .line 2212
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2214
    iget-object v0, p1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ae;->b:J

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->b(J)V

    .line 2215
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->H()V

    .line 2216
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->b:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v0, Lcom/applovin/exoplayer2/al;->c:J

    iget-object p1, p1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v7, p1, Lcom/applovin/exoplayer2/ae;->b:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    .line 2217
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 2225
    :cond_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->D()V

    return-void
.end method

.method private c(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 790
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->A:Z

    .line 791
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->A()V

    .line 792
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/s;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 795
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->f(Z)V

    const/4 p1, 0x0

    .line 796
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->h(Z)V

    :cond_0
    return-void
.end method

.method private static c(Lcom/applovin/exoplayer2/ar;)Z
    .locals 0

    .line 2918
    invoke-interface {p0}, Lcom/applovin/exoplayer2/ar;->d_()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(J)J
    .locals 5

    .line 2488
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2492
    :cond_0
    iget-wide v3, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 2493
    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/ad;->b(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 2494
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private d(Lcom/applovin/exoplayer2/ao;)V
    .locals 3

    .line 1512
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->e()Landroid/os/Looper;

    move-result-object v0

    .line 1513
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 1514
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1515
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->a(Z)V

    return-void

    .line 1518
    :cond_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    const/4 v2, 0x0

    .line 1519
    invoke-interface {v1, v0, v2}, Lcom/applovin/exoplayer2/l/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/applovin/exoplayer2/l/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/s$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/s$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/exoplayer2/s;Lcom/applovin/exoplayer2/ao;)V

    .line 1520
    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lcom/applovin/exoplayer2/h/n;)V
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/h/n;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2233
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/af;->a(J)V

    .line 2234
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->D()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 801
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->I:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 804
    :cond_0
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->I:Z

    .line 805
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->e:I

    if-nez p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 809
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    goto :goto_1

    .line 807
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->b(Z)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    :goto_1
    return-void
.end method

.method private e(Lcom/applovin/exoplayer2/ao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1532
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1536
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->b()Lcom/applovin/exoplayer2/ao$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ao;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ao$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1538
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->a(Z)V

    .line 1539
    throw v1
.end method

.method private e(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 824
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/s;->F:Z

    .line 825
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 826
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->f(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 828
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->h(Z)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(Lcom/applovin/exoplayer2/al;)V

    .line 673
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    invoke-static {v0}, Lcom/applovin/exoplayer2/s$d;->a(Lcom/applovin/exoplayer2/s$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->r:Lcom/applovin/exoplayer2/s$e;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/s$e;->onPlaybackInfoUpdate(Lcom/applovin/exoplayer2/s$d;)V

    .line 675
    new-instance v0, Lcom/applovin/exoplayer2/s$d;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/s$d;-><init>(Lcom/applovin/exoplayer2/al;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    :cond_0
    return-void
.end method

.method private synthetic f(Lcom/applovin/exoplayer2/ao;)V
    .locals 2

    .line 1523
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->e(Lcom/applovin/exoplayer2/ao;)V
    :try_end_0
    .catch Lcom/applovin/exoplayer2/p; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 1525
    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1526
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private f(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    .line 835
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->s:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 836
    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JZZ)J

    move-result-wide v3

    .line 841
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/al;->c:J

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v1, Lcom/applovin/exoplayer2/al;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 843
    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->y:Lcom/applovin/exoplayer2/s$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/s$d;->a(I)V

    const/4 v0, 0x0

    .line 681
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    .line 686
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/aa;->a()V

    .line 687
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 688
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->g:Lcom/applovin/exoplayer2/k/d;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/k/d;->a()Lcom/applovin/exoplayer2/k/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/k/aa;)V

    .line 689
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    return-void
.end method

.method private g(Z)Z
    .locals 11

    .line 1751
    iget v0, p0, Lcom/applovin/exoplayer2/s;->J:I

    if-nez v0, :cond_0

    .line 1753
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->s()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1758
    :cond_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/al;->g:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 1765
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object p1, p1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p0, p1, v2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1766
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/z;->b()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v9, v2

    .line 1768
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    .line 1769
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/ae;->i:Z

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v0

    .line 1773
    :goto_1
    iget-object v3, p1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/p$a;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    if-nez v2, :cond_6

    if-nez p1, :cond_6

    .line 1774
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    .line 1777
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->I()J

    move-result-wide v5

    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    .line 1778
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    iget v7, p1, Lcom/applovin/exoplayer2/am;->b:F

    iget-boolean v8, p0, Lcom/applovin/exoplayer2/s;->C:Z

    .line 1776
    invoke-interface/range {v4 .. v10}, Lcom/applovin/exoplayer2/aa;->a(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    move v0, v1

    :cond_7
    return v0
.end method

.method private h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    .line 743
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->d()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    const/4 v1, 0x1

    .line 742
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Z)V

    return-void
.end method

.method private h(Z)V
    .locals 5

    .line 2461
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2463
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    .line 2464
    :goto_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->k:Lcom/applovin/exoplayer2/h/p$a;

    .line 2465
    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/h/p$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2467
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v3, v1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/h/p$a;)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 2469
    :cond_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    if-nez v0, :cond_2

    .line 2471
    iget-wide v3, v1, Lcom/applovin/exoplayer2/al;->s:J

    goto :goto_1

    .line 2472
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->d()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/applovin/exoplayer2/al;->q:J

    .line 2473
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->I()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/applovin/exoplayer2/al;->r:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 2474
    iget-boolean p1, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz p1, :cond_4

    .line 2478
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->h()Lcom/applovin/exoplayer2/h/ad;

    move-result-object p1

    .line 2479
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v0

    .line 2477
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/j/k;)V

    :cond_4
    return-void
.end method

.method private i()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->C:Z

    .line 855
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->a()V

    .line 856
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 857
    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 858
    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->b()V

    .line 865
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 866
    invoke-static {v3}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    .line 873
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->f(Z)V

    return-void
.end method

.method private l()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 884
    :cond_0
    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 885
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/h/n;->c()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    .line 888
    invoke-direct {p0, v6, v7}, Lcom/applovin/exoplayer2/s;->b(J)V

    .line 891
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/al;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 893
    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    goto :goto_2

    .line 902
    :cond_2
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    .line 904
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    .line 903
    :goto_1
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/m;->a(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 905
    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ad;->b(J)J

    move-result-wide v0

    .line 906
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v2, v2, Lcom/applovin/exoplayer2/al;->s:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/applovin/exoplayer2/s;->c(JJ)V

    .line 907
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iput-wide v0, v2, Lcom/applovin/exoplayer2/al;->s:J

    .line 911
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->b()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 912
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/applovin/exoplayer2/al;->q:J

    .line 913
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->I()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/exoplayer2/al;->r:J

    .line 916
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/al;->l:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    .line 918
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    iget v0, v0, Lcom/applovin/exoplayer2/am;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 920
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    .line 922
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->o()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->I()J

    move-result-wide v3

    .line 921
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/z;->a(JJ)F

    move-result v0

    .line 923
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/am;->b:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    .line 924
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v2, v2, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/am;->a(F)Lcom/applovin/exoplayer2/am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/m;->a(Lcom/applovin/exoplayer2/am;)V

    .line 925
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->n:Lcom/applovin/exoplayer2/am;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    .line 927
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/am;->b:F

    .line 925
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;FZZ)V

    :cond_5
    return-void
.end method

.method private m()V
    .locals 5

    .line 935
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 937
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 939
    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/d;->h()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 942
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private n()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 947
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->q:Lcom/applovin/exoplayer2/l/d;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/l/d;->b()J

    move-result-wide v1

    .line 948
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->u()V

    .line 950
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1f

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_e

    .line 957
    :cond_0
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    .line 960
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/applovin/exoplayer2/s;->a(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    .line 964
    invoke-static {v9}, Lcom/applovin/exoplayer2/l/ah;->a(Ljava/lang/String;)V

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->l()V

    .line 970
    iget-boolean v9, v3, Lcom/applovin/exoplayer2/ad;->d:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long/2addr v13, v10

    .line 972
    iget-object v9, v3, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    iget-object v15, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v10, v15, Lcom/applovin/exoplayer2/al;->s:J

    iget-wide v7, v0, Lcom/applovin/exoplayer2/s;->m:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/applovin/exoplayer2/s;->n:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/applovin/exoplayer2/h/n;->a(JZ)V

    move v8, v5

    move v9, v8

    move v7, v12

    .line 974
    :goto_0
    iget-object v10, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    .line 975
    aget-object v10, v10, v7

    .line 976
    invoke-static {v10}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    .line 982
    :cond_2
    iget-wide v4, v0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/applovin/exoplayer2/ar;->a(JJ)V

    if-eqz v8, :cond_3

    .line 983
    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->A()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v12

    .line 989
    :goto_1
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v12

    :goto_2
    if-nez v4, :cond_5

    .line 990
    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v12

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 992
    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->z()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->A()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v4, v12

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    move v9, v12

    :goto_6
    if-nez v4, :cond_9

    .line 995
    invoke-interface {v10}, Lcom/applovin/exoplayer2/ar;->k()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 999
    :cond_a
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/h/n;->e_()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1002
    :cond_b
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v4, v4, Lcom/applovin/exoplayer2/ae;->e:J

    if-eqz v8, :cond_d

    .line 1003
    iget-boolean v7, v3, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz v7, :cond_d

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v4, v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v7, v7, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v4, v4, v7

    if-gtz v4, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    move v4, v12

    :goto_8
    if-eqz v4, :cond_e

    .line 1008
    iget-boolean v5, v0, Lcom/applovin/exoplayer2/s;->B:Z

    if-eqz v5, :cond_e

    .line 1009
    iput-boolean v12, v0, Lcom/applovin/exoplayer2/s;->B:Z

    .line 1010
    iget-object v5, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v5, v5, Lcom/applovin/exoplayer2/al;->m:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/applovin/exoplayer2/s;->a(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    .line 1016
    iget-object v4, v3, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/ae;->i:Z

    if-eqz v4, :cond_f

    .line 1017
    invoke-direct {v0, v6}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1018
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->j()V

    goto :goto_9

    .line 1019
    :cond_f
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    .line 1020
    invoke-direct {v0, v9}, Lcom/applovin/exoplayer2/s;->g(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1021
    invoke-direct {v0, v5}, Lcom/applovin/exoplayer2/s;->b(I)V

    const/4 v4, 0x0

    .line 1022
    iput-object v4, v0, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    .line 1023
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1024
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->i()V

    goto :goto_9

    .line 1026
    :cond_10
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->e:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/applovin/exoplayer2/s;->J:I

    if-nez v4, :cond_11

    .line 1027
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->s()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    .line 1028
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v4

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/s;->C:Z

    const/4 v4, 0x2

    .line 1029
    invoke-direct {v0, v4}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1030
    iget-boolean v4, v0, Lcom/applovin/exoplayer2/s;->C:Z

    if-eqz v4, :cond_13

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->m()V

    .line 1032
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->u:Lcom/applovin/exoplayer2/z;

    invoke-interface {v4}, Lcom/applovin/exoplayer2/z;->a()V

    .line 1034
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->j()V

    .line 1037
    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v4, v4, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_18

    move v4, v12

    .line 1038
    :goto_a
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    .line 1039
    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v7, v7, v4

    .line 1040
    invoke-interface {v7}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v7

    iget-object v8, v3, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    .line 1041
    iget-object v7, v0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/applovin/exoplayer2/ar;->k()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1044
    :cond_16
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v3, v3, Lcom/applovin/exoplayer2/al;->g:Z

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v3, Lcom/applovin/exoplayer2/al;->r:J

    const-wide/32 v7, 0x7a120

    cmp-long v3, v3, v7

    if-gez v3, :cond_18

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->F()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_b

    .line 1050
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1053
    :cond_18
    :goto_b
    iget-boolean v3, v0, Lcom/applovin/exoplayer2/s;->I:Z

    iget-object v4, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/al;->o:Z

    if-eq v3, v4, :cond_19

    .line 1054
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v4, v0, Lcom/applovin/exoplayer2/s;->I:Z

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/al;->b(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1058
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v3, v5, :cond_1b

    :cond_1a
    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    :cond_1b
    const-wide/16 v3, 0xa

    .line 1060
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s;->b(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_d

    .line 1061
    :cond_1c
    iget v3, v0, Lcom/applovin/exoplayer2/s;->J:I

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v3, v3, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v3, v6, :cond_1d

    const-wide/16 v3, 0x3e8

    .line 1062
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/exoplayer2/s;->a(JJ)V

    goto :goto_c

    .line 1064
    :cond_1d
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/l/o;->d(I)V

    :goto_c
    move v1, v12

    .line 1066
    :goto_d
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/al;->p:Z

    if-eq v2, v1, :cond_1e

    .line 1067
    iget-object v2, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/al;->c(Z)Lcom/applovin/exoplayer2/al;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 1069
    :cond_1e
    iput-boolean v12, v0, Lcom/applovin/exoplayer2/s;->H:Z

    .line 1071
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->a()V

    return-void

    .line 953
    :cond_1f
    :goto_e
    iget-object v1, v0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/l/o;->d(I)V

    return-void
.end method

.method private o()J
    .locals 4

    .line 1075
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v1, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/h/p$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v2, v2, Lcom/applovin/exoplayer2/al;->s:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1355
    invoke-direct {p0, v1, v0, v1, v0}, Lcom/applovin/exoplayer2/s;->a(ZZZZ)V

    .line 1360
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/aa;->c()V

    .line 1361
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/s;->b(I)V

    .line 1362
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1363
    monitor-enter p0

    .line 1364
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/s;->z:Z

    .line 1365
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private q()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1646
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->o:Lcom/applovin/exoplayer2/m;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m;->d()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/am;->b:F

    .line 1648
    iget-object v1, v10, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    .line 1649
    iget-object v2, v10, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    .line 1653
    iget-boolean v4, v1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1657
    :cond_0
    iget-object v4, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v4, v4, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v1, v0, v4}, Lcom/applovin/exoplayer2/ad;->b(FLcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;

    move-result-object v13

    .line 1658
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/applovin/exoplayer2/j/k;->a(Lcom/applovin/exoplayer2/j/k;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_6

    .line 1671
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v6

    .line 1672
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ad;)Z

    move-result v16

    .line 1674
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v7, v0, [Z

    .line 1675
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v14, v0, Lcom/applovin/exoplayer2/al;->s:J

    move-object v12, v6

    move-object/from16 v17, v7

    .line 1676
    invoke-virtual/range {v12 .. v17}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ[Z)J

    move-result-wide v12

    .line 1678
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->e:I

    if-eq v0, v8, :cond_1

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    move v14, v9

    .line 1681
    :goto_1
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v1, v0, Lcom/applovin/exoplayer2/al;->b:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/al;->c:J

    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v2, v0, Lcom/applovin/exoplayer2/al;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    .line 1682
    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v0

    iput-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    if-eqz v14, :cond_2

    .line 1690
    invoke-direct {v10, v12, v13}, Lcom/applovin/exoplayer2/s;->b(J)V

    .line 1693
    :cond_2
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    .line 1694
    :goto_2
    iget-object v1, v10, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    .line 1695
    aget-object v1, v1, v9

    .line 1696
    invoke-static {v1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v2

    aput-boolean v2, v0, v9

    .line 1697
    iget-object v2, v11, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v2, v2, v9

    .line 1698
    aget-boolean v3, v0, v9

    if-eqz v3, :cond_4

    .line 1699
    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1701
    invoke-direct {v10, v1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ar;)V

    goto :goto_3

    .line 1702
    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    .line 1704
    iget-wide v2, v10, Lcom/applovin/exoplayer2/s;->L:J

    invoke-interface {v1, v2, v3}, Lcom/applovin/exoplayer2/ar;->a(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1708
    :cond_5
    invoke-direct {v10, v0}, Lcom/applovin/exoplayer2/s;->a([Z)V

    goto :goto_4

    .line 1711
    :cond_6
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ad;)Z

    .line 1712
    iget-boolean v0, v1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz v0, :cond_7

    .line 1713
    iget-object v0, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v2, v0, Lcom/applovin/exoplayer2/ae;->b:J

    iget-wide v4, v10, Lcom/applovin/exoplayer2/s;->L:J

    .line 1714
    invoke-virtual {v1, v4, v5}, Lcom/applovin/exoplayer2/ad;->b(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1715
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ)J

    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 1718
    invoke-direct {v10, v5}, Lcom/applovin/exoplayer2/s;->h(Z)V

    .line 1719
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget v0, v0, Lcom/applovin/exoplayer2/al;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 1720
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->D()V

    .line 1721
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/s;->l()V

    .line 1722
    iget-object v0, v10, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    :cond_8
    return-void

    :cond_9
    move v4, v9

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    move v3, v4

    .line 1666
    :cond_a
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method private r()V
    .locals 5

    .line 1739
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1741
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1743
    invoke-interface {v4}, Lcom/applovin/exoplayer2/j/d;->g()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1746
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private s()Z
    .locals 5

    .line 1784
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 1785
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/ae;->e:J

    .line 1786
    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/al;->s:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 1789
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->J()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t()J
    .locals 9

    .line 1915
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1919
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->a()J

    move-result-wide v1

    .line 1920
    iget-boolean v3, v0, Lcom/applovin/exoplayer2/ad;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 1923
    :goto_0
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 1924
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    .line 1925
    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v4

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 1929
    :cond_2
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/ar;->h()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 1933
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method private u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v0, v0, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ah;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1944
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->v()V

    .line 1945
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->w()V

    .line 1946
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->x()V

    .line 1947
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method private v()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1951
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/af;->a(J)V

    .line 1952
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->L:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/af;->a(JLcom/applovin/exoplayer2/al;)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1956
    iget-object v4, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->c:[Lcom/applovin/exoplayer2/as;

    iget-object v6, p0, Lcom/applovin/exoplayer2/s;->d:Lcom/applovin/exoplayer2/j/j;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->f:Lcom/applovin/exoplayer2/aa;

    .line 1960
    invoke-interface {v1}, Lcom/applovin/exoplayer2/aa;->d()Lcom/applovin/exoplayer2/k/b;

    move-result-object v7

    iget-object v8, p0, Lcom/applovin/exoplayer2/s;->t:Lcom/applovin/exoplayer2/ah;

    iget-object v10, p0, Lcom/applovin/exoplayer2/s;->e:Lcom/applovin/exoplayer2/j/k;

    move-object v9, v0

    .line 1957
    invoke-virtual/range {v4 .. v10}, Lcom/applovin/exoplayer2/af;->a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/k/b;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/j/k;)Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    .line 1964
    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->b:J

    invoke-interface {v2, p0, v3, v4}, Lcom/applovin/exoplayer2/h/n;->a(Lcom/applovin/exoplayer2/h/n$a;J)V

    .line 1965
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-ne v0, v1, :cond_0

    .line 1966
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->b(J)V

    :cond_0
    const/4 v0, 0x0

    .line 1968
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/s;->h(Z)V

    .line 1971
    :cond_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->D:Z

    if-eqz v0, :cond_2

    .line 1974
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/s;->D:Z

    .line 1975
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->G()V

    goto :goto_0

    .line 1977
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->D()V

    :goto_0
    return-void
.end method

.method private w()V
    .locals 9

    .line 1982
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1987
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->B:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 2011
    :cond_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->C()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 2015
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/applovin/exoplayer2/s;->L:J

    .line 2016
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->g()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    .line 2021
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v0

    .line 2022
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->e()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    .line 2023
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v5

    .line 2025
    iget-boolean v6, v1, Lcom/applovin/exoplayer2/ad;->d:Z

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/applovin/exoplayer2/ad;->a:Lcom/applovin/exoplayer2/h/n;

    .line 2026
    invoke-interface {v6}, Lcom/applovin/exoplayer2/h/n;->c()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-eqz v2, :cond_4

    .line 2030
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v0

    .line 2029
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/s;->c(J)V

    return-void

    :cond_4
    move v2, v4

    .line 2033
    :goto_0
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 2034
    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/j/k;->a(I)Z

    move-result v3

    .line 2035
    invoke-virtual {v5, v2}, Lcom/applovin/exoplayer2/j/k;->a(I)Z

    move-result v6

    if-eqz v3, :cond_7

    .line 2036
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/ar;->j()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2037
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->c:[Lcom/applovin/exoplayer2/as;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/applovin/exoplayer2/as;->a()I

    move-result v3

    const/4 v7, -0x2

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    .line 2038
    :goto_1
    iget-object v7, v0, Lcom/applovin/exoplayer2/j/k;->b:[Lcom/applovin/exoplayer2/at;

    aget-object v7, v7, v2

    .line 2039
    iget-object v8, v5, Lcom/applovin/exoplayer2/j/k;->b:[Lcom/applovin/exoplayer2/at;

    aget-object v8, v8, v2

    if-eqz v6, :cond_6

    .line 2040
    invoke-virtual {v8, v7}, Lcom/applovin/exoplayer2/at;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_7

    .line 2046
    :cond_6
    iget-object v3, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    aget-object v3, v3, v2

    .line 2048
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v6

    .line 2046
    invoke-direct {p0, v3, v6, v7}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void

    .line 1990
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ae;->i:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/s;->B:Z

    if-eqz v1, :cond_d

    .line 1991
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v5, v1

    if-ge v4, v5, :cond_d

    .line 1992
    aget-object v1, v1, v4

    .line 1993
    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v5, v5, v4

    if-eqz v5, :cond_c

    .line 1997
    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v6

    if-ne v6, v5, :cond_c

    .line 1998
    invoke-interface {v1}, Lcom/applovin/exoplayer2/ar;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2001
    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v5, v5, Lcom/applovin/exoplayer2/ae;->e:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v5, v5, Lcom/applovin/exoplayer2/ae;->e:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b

    .line 2002
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->a()J

    move-result-wide v5

    iget-object v7, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v7, v7, Lcom/applovin/exoplayer2/ae;->e:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v2

    .line 2004
    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ar;J)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private x()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2056
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    .line 2057
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ad;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2062
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->H()V

    :cond_1
    :goto_0
    return-void
.end method

.method private y()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2068
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2069
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->i()Lcom/applovin/exoplayer2/j/k;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 2071
    :goto_0
    iget-object v5, p0, Lcom/applovin/exoplayer2/s;->a:[Lcom/applovin/exoplayer2/ar;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    .line 2072
    aget-object v8, v5, v3

    .line 2073
    invoke-static {v8}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/ar;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 2077
    :cond_0
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->f()Lcom/applovin/exoplayer2/h/x;

    move-result-object v5

    iget-object v6, v0, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    .line 2078
    :goto_1
    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/j/k;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    .line 2083
    :cond_2
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->j()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2085
    iget-object v5, v1, Lcom/applovin/exoplayer2/j/k;->c:[Lcom/applovin/exoplayer2/j/d;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/j/d;)[Lcom/applovin/exoplayer2/v;

    move-result-object v9

    .line 2086
    iget-object v5, v0, Lcom/applovin/exoplayer2/ad;->c:[Lcom/applovin/exoplayer2/h/x;

    aget-object v10, v5, v3

    .line 2089
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->b()J

    move-result-wide v11

    .line 2090
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->a()J

    move-result-wide v13

    .line 2086
    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/ar;->a([Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JJ)V

    goto :goto_2

    .line 2091
    :cond_3
    invoke-interface {v8}, Lcom/applovin/exoplayer2/ar;->A()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2093
    invoke-direct {p0, v8}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ar;)V

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private z()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2104
    :goto_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2107
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->f()V

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/af;->c()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    .line 2110
    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/af;->f()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    .line 2111
    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v4, v2, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v5, v2, Lcom/applovin/exoplayer2/ae;->b:J

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v7, v2, Lcom/applovin/exoplayer2/ae;->c:J

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-wide v9, v2, Lcom/applovin/exoplayer2/ae;->b:J

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v3, p0

    .line 2112
    invoke-direct/range {v3 .. v12}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/p$a;JJJZI)Lcom/applovin/exoplayer2/al;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 2119
    iget-object v4, v2, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v5, v1, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    iget-object v6, v1, Lcom/applovin/exoplayer2/al;->a:Lcom/applovin/exoplayer2/ba;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v7, v0, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v3 .. v9}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;J)V

    .line 2125
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->A()V

    .line 2126
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->l()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->b(I)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/applovin/exoplayer2/l/o;->a(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(IILcom/applovin/exoplayer2/h/z;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x14

    .line 362
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/applovin/exoplayer2/l/o;->a(IIILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 363
    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 280
    iput-wide p1, p0, Lcom/applovin/exoplayer2/s;->P:J

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/am;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x10

    .line 459
    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 460
    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public declared-synchronized a(Lcom/applovin/exoplayer2/ao;)V
    .locals 2

    monitor-enter p0

    .line 379
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 380
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ao;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/applovin/exoplayer2/ba;IJ)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    new-instance v1, Lcom/applovin/exoplayer2/s$g;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/s$g;-><init>(Lcom/applovin/exoplayer2/ba;IJ)V

    const/4 p1, 0x3

    .line 317
    invoke-interface {v0, p1, v1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 318
    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/n;)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/y;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public a(Ljava/util/List;IJLcom/applovin/exoplayer2/h/z;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/ah$c;",
            ">;IJ",
            "Lcom/applovin/exoplayer2/h/z;",
            ")V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    new-instance v8, Lcom/applovin/exoplayer2/s$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/s$a;-><init>(Ljava/util/List;Lcom/applovin/exoplayer2/h/z;IJLcom/applovin/exoplayer2/s$1;)V

    const/16 p1, 0x11

    .line 339
    invoke-interface {v0, p1, v8}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 342
    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/applovin/exoplayer2/l/o;->a(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x1

    .line 297
    invoke-interface {v0, v1, p1, p2}, Lcom/applovin/exoplayer2/l/o;->a(III)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 298
    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->b(I)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public b(Lcom/applovin/exoplayer2/h/n;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/o$a;->a()V

    return-void
.end method

.method public declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->z:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    .line 420
    new-instance v0, Lcom/applovin/exoplayer2/s$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/s$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/exoplayer2/s;)V

    iget-wide v1, p0, Lcom/applovin/exoplayer2/s;->v:J

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/common/base/Supplier;J)V

    .line 421
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/s;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 417
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/os/Looper;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->j:Landroid/os/Looper;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/l/o;->c(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 468
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    .line 547
    :pswitch_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->k()V

    goto/16 :goto_7

    .line 544
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->d(Z)V

    goto/16 :goto_7

    .line 541
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Z)V

    goto/16 :goto_7

    .line 538
    :pswitch_3
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->h()V

    goto/16 :goto_7

    .line 535
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/z;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/h/z;)V

    goto/16 :goto_7

    .line 532
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/z;

    invoke-direct {p0, v5, v6, p1}, Lcom/applovin/exoplayer2/s;->b(IILcom/applovin/exoplayer2/h/z;)V

    goto/16 :goto_7

    .line 529
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$b;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$b;)V

    goto/16 :goto_7

    .line 526
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/applovin/exoplayer2/s$a;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$a;I)V

    goto/16 :goto_7

    .line 523
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$a;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$a;)V

    goto/16 :goto_7

    .line 514
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/am;

    invoke-direct {p0, p1, v3}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/am;Z)V

    goto/16 :goto_7

    .line 520
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/ao;)V

    goto/16 :goto_7

    .line 517
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/ao;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/ao;)V

    goto/16 :goto_7

    .line 498
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/applovin/exoplayer2/s;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 483
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->e(Z)V

    goto/16 :goto_7

    .line 480
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(I)V

    goto/16 :goto_7

    .line 511
    :pswitch_f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->q()V

    goto/16 :goto_7

    .line 508
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->d(Lcom/applovin/exoplayer2/h/n;)V

    goto/16 :goto_7

    .line 505
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->c(Lcom/applovin/exoplayer2/h/n;)V

    goto/16 :goto_7

    .line 550
    :pswitch_12
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->p()V

    return v4

    .line 502
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/applovin/exoplayer2/s;->a(ZZ)V

    goto/16 :goto_7

    .line 495
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/av;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/av;)V

    goto/16 :goto_7

    .line 492
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/am;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->b(Lcom/applovin/exoplayer2/am;)V

    goto/16 :goto_7

    .line 489
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/s$g;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/s;->a(Lcom/applovin/exoplayer2/s$g;)V

    goto/16 :goto_7

    .line 486
    :pswitch_17
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->n()V

    goto/16 :goto_7

    .line 473
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/applovin/exoplayer2/s;->a(ZIZI)V

    goto/16 :goto_7

    .line 470
    :pswitch_19
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->g()V
    :try_end_0
    .catch Lcom/applovin/exoplayer2/p; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/applovin/exoplayer2/d/f$a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/applovin/exoplayer2/ai; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/applovin/exoplayer2/k/j; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/applovin/exoplayer2/h/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 607
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    .line 612
    :cond_6
    invoke-static {p1, v2}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/RuntimeException;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    .line 613
    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    invoke-direct {p0, v4, v3}, Lcom/applovin/exoplayer2/s;->a(ZZ)V

    .line 615
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    goto/16 :goto_7

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    .line 604
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    .line 602
    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_3
    move-exception p1

    .line 600
    iget v0, p1, Lcom/applovin/exoplayer2/k/j;->a:I

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Ljava/io/IOException;I)V

    goto/16 :goto_7

    :catch_4
    move-exception p1

    .line 585
    iget v0, p1, Lcom/applovin/exoplayer2/ai;->b:I

    if-ne v0, v4, :cond_8

    .line 587
    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ai;->a:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v0, 0xbbb

    :goto_5
    move v2, v0

    goto :goto_6

    .line 590
    :cond_8
    iget v0, p1, Lcom/applovin/exoplayer2/ai;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 592
    iget-boolean v0, p1, Lcom/applovin/exoplayer2/ai;->a:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    goto :goto_5

    :cond_9
    const/16 v0, 0xbbc

    goto :goto_5

    .line 598
    :cond_a
    :goto_6
    invoke-direct {p0, p1, v2}, Lcom/applovin/exoplayer2/s;->a(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_5
    move-exception p1

    .line 582
    iget v0, p1, Lcom/applovin/exoplayer2/d/f$a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/s;->a(Ljava/io/IOException;I)V

    goto :goto_7

    :catch_6
    move-exception p1

    .line 557
    iget v2, p1, Lcom/applovin/exoplayer2/p;->a:I

    if-ne v2, v4, :cond_b

    .line 558
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->s:Lcom/applovin/exoplayer2/af;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/af;->d()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 562
    iget-object v2, v2, Lcom/applovin/exoplayer2/ad;->f:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->a:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/p;->a(Lcom/applovin/exoplayer2/h/o;)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    .line 565
    :cond_b
    iget-boolean v2, p1, Lcom/applovin/exoplayer2/p;->g:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    .line 566
    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    .line 570
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->h:Lcom/applovin/exoplayer2/l/o;

    const/16 v1, 0x19

    .line 571
    invoke-interface {v0, v1, p1}, Lcom/applovin/exoplayer2/l/o;->a(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;

    move-result-object p1

    .line 570
    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/l/o;->a(Lcom/applovin/exoplayer2/l/o$a;)Z

    goto :goto_7

    .line 573
    :cond_c
    iget-object v2, p0, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    if-eqz v2, :cond_d

    .line 574
    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/p;->addSuppressed(Ljava/lang/Throwable;)V

    .line 575
    iget-object p1, p0, Lcom/applovin/exoplayer2/s;->O:Lcom/applovin/exoplayer2/p;

    .line 577
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    invoke-direct {p0, v4, v3}, Lcom/applovin/exoplayer2/s;->a(ZZ)V

    .line 579
    iget-object v0, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/al;->a(Lcom/applovin/exoplayer2/p;)Lcom/applovin/exoplayer2/al;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/s;->x:Lcom/applovin/exoplayer2/al;

    .line 617
    :goto_7
    invoke-direct {p0}, Lcom/applovin/exoplayer2/s;->f()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
