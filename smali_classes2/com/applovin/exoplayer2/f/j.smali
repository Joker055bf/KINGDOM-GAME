.class public abstract Lcom/applovin/exoplayer2/f/j;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/f/j$a;
    }
.end annotation


# static fields
.field private static final b:[B


# instance fields
.field private A:Lcom/applovin/exoplayer2/v;

.field private B:Landroid/media/MediaFormat;

.field private C:Z

.field private D:F

.field private E:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/applovin/exoplayer2/f/j$a;

.field private G:Lcom/applovin/exoplayer2/f/i;

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Lcom/applovin/exoplayer2/f/e;

.field private T:J

.field private U:I

.field private V:I

.field private W:Ljava/nio/ByteBuffer;

.field private X:Z

.field private Y:Z

.field private Z:Z

.field protected a:Lcom/applovin/exoplayer2/c/e;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:J

.field private ak:J

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Lcom/applovin/exoplayer2/p;

.field private at:J

.field private au:J

.field private av:I

.field private final c:Lcom/applovin/exoplayer2/f/g$b;

.field private final d:Lcom/applovin/exoplayer2/f/k;

.field private final e:Z

.field private final f:F

.field private final g:Lcom/applovin/exoplayer2/c/g;

.field private final h:Lcom/applovin/exoplayer2/c/g;

.field private final i:Lcom/applovin/exoplayer2/c/g;

.field private final j:Lcom/applovin/exoplayer2/f/d;

.field private final k:Lcom/applovin/exoplayer2/l/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/l/af<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/media/MediaCodec$BufferInfo;

.field private final n:[J

.field private final o:[J

.field private final p:[J

.field private q:Lcom/applovin/exoplayer2/v;

.field private r:Lcom/applovin/exoplayer2/v;

.field private s:Lcom/applovin/exoplayer2/d/f;

.field private t:Lcom/applovin/exoplayer2/d/f;

.field private u:Landroid/media/MediaCrypto;

.field private v:Z

.field private w:J

.field private x:F

.field private y:F

.field private z:Lcom/applovin/exoplayer2/f/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 279
    fill-array-data v0, :array_0

    sput-object v0, Lcom/applovin/exoplayer2/f/j;->b:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/applovin/exoplayer2/f/g$b;Lcom/applovin/exoplayer2/f/k;ZF)V
    .locals 1

    .line 378
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    .line 379
    iput-object p2, p0, Lcom/applovin/exoplayer2/f/j;->c:Lcom/applovin/exoplayer2/f/g$b;

    .line 380
    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/f/k;

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->d:Lcom/applovin/exoplayer2/f/k;

    .line 381
    iput-boolean p4, p0, Lcom/applovin/exoplayer2/f/j;->e:Z

    .line 382
    iput p5, p0, Lcom/applovin/exoplayer2/f/j;->f:F

    .line 383
    invoke-static {}, Lcom/applovin/exoplayer2/c/g;->f()Lcom/applovin/exoplayer2/c/g;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->g:Lcom/applovin/exoplayer2/c/g;

    .line 384
    new-instance p1, Lcom/applovin/exoplayer2/c/g;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    .line 385
    new-instance p1, Lcom/applovin/exoplayer2/c/g;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/c/g;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    .line 386
    new-instance p1, Lcom/applovin/exoplayer2/f/d;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/d;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    .line 387
    new-instance p3, Lcom/applovin/exoplayer2/l/af;

    invoke-direct {p3}, Lcom/applovin/exoplayer2/l/af;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    .line 388
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    .line 389
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 390
    iput p3, p0, Lcom/applovin/exoplayer2/f/j;->x:F

    .line 391
    iput p3, p0, Lcom/applovin/exoplayer2/f/j;->y:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 392
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->w:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    .line 393
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->n:[J

    new-array v0, p5, [J

    .line 394
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    new-array p5, p5, [J

    .line 395
    iput-object p5, p0, Lcom/applovin/exoplayer2/f/j;->p:[J

    .line 396
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    .line 397
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    .line 403
    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/f/d;->f(I)V

    .line 404
    iget-object p1, p1, Lcom/applovin/exoplayer2/f/d;->b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 406
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->D:F

    .line 407
    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    .line 408
    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    const/4 p1, -0x1

    .line 409
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    .line 410
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->V:I

    .line 411
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->T:J

    .line 412
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    .line 413
    iput-wide p3, p0, Lcom/applovin/exoplayer2/f/j;->ak:J

    .line 414
    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    .line 415
    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    return-void
.end method

.method private B()V
    .locals 2

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ab:Z

    .line 755
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/d;->a()V

    .line 756
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 757
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->aa:Z

    .line 758
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    return-void
.end method

.method private R()V
    .locals 1

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/f/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->M()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->M()V

    .line 897
    throw v0
.end method

.method private S()Z
    .locals 1

    .line 1161
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->V:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private T()V
    .locals 2

    const/4 v0, -0x1

    .line 1165
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    .line 1166
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private U()V
    .locals 1

    const/4 v0, -0x1

    .line 1170
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->V:I

    const/4 v0, 0x0

    .line 1171
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->W:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private V()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1193
    :cond_0
    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    if-gez v2, :cond_2

    .line 1194
    invoke-interface {v0}, Lcom/applovin/exoplayer2/f/g;->b()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    if-gez v0, :cond_1

    return v1

    .line 1198
    :cond_1
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v4, v0}, Lcom/applovin/exoplayer2/f/g;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    .line 1199
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 1202
    :cond_2
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1205
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->R:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1208
    :cond_3
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ah:Z

    .line 1209
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget v5, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v4 .. v10}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    .line 1210
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->T()V

    .line 1212
    :goto_0
    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    return v1

    .line 1216
    :cond_4
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->P:Z

    if-eqz v0, :cond_5

    .line 1217
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->P:Z

    .line 1218
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/applovin/exoplayer2/f/j;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1219
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    const/4 v5, 0x0

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    .line 1220
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->T()V

    .line 1221
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    return v2

    .line 1227
    :cond_5
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    if-ne v0, v2, :cond_7

    move v0, v1

    .line 1228
    :goto_1
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    iget-object v4, v4, Lcom/applovin/exoplayer2/v;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1229
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    iget-object v4, v4, Lcom/applovin/exoplayer2/v;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1230
    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v5, v5, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1232
    :cond_6
    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1234
    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1236
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->t()Lcom/applovin/exoplayer2/w;

    move-result-object v4

    .line 1240
    :try_start_0
    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v4, v5, v1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result v5
    :try_end_0
    .catch Lcom/applovin/exoplayer2/c/g$a; {:try_start_0 .. :try_end_0} :catch_2

    .line 1250
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->g()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1252
    iget-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    iput-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->ak:J

    :cond_8
    const/4 v6, -0x3

    if-ne v5, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v5, v6, :cond_b

    .line 1259
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    if-ne v0, v3, :cond_a

    .line 1262
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 1263
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1265
    :cond_a
    invoke-virtual {p0, v4}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return v2

    .line 1270
    :cond_b
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/c/g;->c()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1271
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    if-ne v0, v3, :cond_c

    .line 1275
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 1276
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1278
    :cond_c
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    .line 1279
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    if-nez v0, :cond_d

    .line 1280
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    return v1

    .line 1284
    :cond_d
    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->R:Z

    if-eqz v0, :cond_e

    goto :goto_2

    .line 1287
    :cond_e
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ah:Z

    .line 1288
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V

    .line 1294
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->T()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v1

    :catch_0
    move-exception v0

    .line 1297
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1298
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/h;->b(I)I

    move-result v2

    .line 1297
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    .line 1309
    :cond_f
    iget-boolean v4, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/c/g;->d()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1310
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 1311
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    if-ne v0, v3, :cond_10

    .line 1314
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    :cond_10
    return v2

    .line 1319
    :cond_11
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/c/g;->g()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1321
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v4, v4, Lcom/applovin/exoplayer2/c/g;->a:Lcom/applovin/exoplayer2/c/c;

    invoke-virtual {v4, v0}, Lcom/applovin/exoplayer2/c/c;->a(I)V

    .line 1323
    :cond_12
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->I:Z

    if-eqz v0, :cond_14

    if-nez v3, :cond_14

    .line 1324
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->a(Ljava/nio/ByteBuffer;)V

    .line 1325
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_13

    return v2

    .line 1328
    :cond_13
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->I:Z

    .line 1331
    :cond_14
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/c/g;->d:J

    .line 1333
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->S:Lcom/applovin/exoplayer2/f/e;

    if-eqz v0, :cond_15

    .line 1334
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    iget-object v5, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    .line 1335
    invoke-virtual {v0, v4, v5}, Lcom/applovin/exoplayer2/f/e;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/c/g;)J

    move-result-wide v4

    .line 1340
    iget-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->S:Lcom/applovin/exoplayer2/f/e;

    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1343
    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/f/e;->a(Lcom/applovin/exoplayer2/v;)J

    move-result-wide v8

    .line 1341
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    :cond_15
    move-wide v12, v4

    .line 1346
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1347
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_16
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    if-eqz v0, :cond_17

    .line 1350
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v12, v13, v4}, Lcom/applovin/exoplayer2/l/af;->a(JLjava/lang/Object;)V

    .line 1351
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    .line 1353
    :cond_17
    iget-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    .line 1354
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->h()V

    .line 1355
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1356
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/c/g;)V

    .line 1359
    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/c/g;)V

    if-eqz v3, :cond_19

    .line 1362
    :try_start_2
    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget v9, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v11, v0, Lcom/applovin/exoplayer2/c/g;->a:Lcom/applovin/exoplayer2/c/c;

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/f/g;->a(IILcom/applovin/exoplayer2/c/c;JI)V

    goto :goto_3

    .line 1365
    :cond_19
    iget-object v8, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget v9, p0, Lcom/applovin/exoplayer2/f/j;->U:I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->h:Lcom/applovin/exoplayer2/c/g;

    iget-object v0, v0, Lcom/applovin/exoplayer2/c/g;->b:Ljava/nio/ByteBuffer;

    .line 1366
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    const/4 v14, 0x0

    .line 1365
    invoke-interface/range {v8 .. v14}, Lcom/applovin/exoplayer2/f/g;->a(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1373
    :goto_3
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->T()V

    .line 1374
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    .line 1375
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1376
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    iget v1, v0, Lcom/applovin/exoplayer2/c/e;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/applovin/exoplayer2/c/e;->c:I

    return v2

    :catch_1
    move-exception v0

    .line 1369
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1370
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/h;->b(I)I

    move-result v2

    .line 1369
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    .line 1242
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Exception;)V

    .line 1245
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->e(I)Z

    .line 1246
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->R()V

    return v2

    :cond_1a
    :goto_4
    return v1
.end method

.method private W()Z
    .locals 2

    .line 1745
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1746
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    .line 1747
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->J:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1751
    :cond_0
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 1748
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private X()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1768
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1769
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    .line 1770
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->J:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->L:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1774
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 1771
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    const/4 v0, 0x0

    return v0

    .line 1778
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ac()V

    :goto_1
    return v1
.end method

.method private Y()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1790
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1791
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    const/4 v0, 0x3

    .line 1792
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    goto :goto_0

    .line 1795
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ab()V

    :goto_0
    return-void
.end method

.method private Z()V
    .locals 4

    const/4 v0, 0x1

    .line 1923
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ai:Z

    .line 1924
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/f/g;->c()Landroid/media/MediaFormat;

    move-result-object v1

    .line 1925
    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    if-eqz v2, :cond_0

    const-string v2, "width"

    .line 1926
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, "height"

    .line 1927
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1930
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Q:Z

    return-void

    .line 1933
    :cond_0
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->O:Z

    if-eqz v2, :cond_1

    const-string v2, "channel-count"

    .line 1934
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1936
    :cond_1
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->B:Landroid/media/MediaFormat;

    .line 1937
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->C:Z

    return-void
.end method

.method private a(Landroid/media/MediaCrypto;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/j$a;
        }
    .end annotation

    .line 992
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 995
    :try_start_0
    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/f/j;->d(Z)Ljava/util/List;

    move-result-object v0

    .line 996
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    .line 997
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->e:Z

    if-eqz v3, :cond_0

    .line 998
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 999
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1000
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/f/i;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;
    :try_end_0
    .catch Lcom/applovin/exoplayer2/f/l$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1004
    new-instance v0, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 1012
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1020
    :goto_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-nez v0, :cond_6

    .line 1021
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/f/i;

    .line 1022
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 1026
    :cond_3
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to initialize decoder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecRenderer"

    invoke-static {v4, v3, v2}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1032
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1033
    new-instance v3, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    invoke-direct {v3, v4, v2, p2, v0}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZLcom/applovin/exoplayer2/f/i;)V

    .line 1036
    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Exception;)V

    .line 1037
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;

    if-nez v0, :cond_4

    .line 1038
    iput-object v3, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;

    goto :goto_3

    .line 1040
    :cond_4
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;

    .line 1041
    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/f/j$a;->a(Lcom/applovin/exoplayer2/f/j$a;Lcom/applovin/exoplayer2/f/j$a;)Lcom/applovin/exoplayer2/f/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;

    .line 1043
    :goto_3
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 1044
    :cond_5
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->F:Lcom/applovin/exoplayer2/f/j$a;

    throw p1

    .line 1049
    :cond_6
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    return-void

    .line 1013
    :cond_7
    new-instance p1, Lcom/applovin/exoplayer2/f/j$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/applovin/exoplayer2/f/j$a;-><init>(Lcom/applovin/exoplayer2/v;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method private a(Lcom/applovin/exoplayer2/d/f;)V
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/f;->a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V

    .line 1176
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/f/i;Landroid/media/MediaCrypto;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1096
    iget-object v1, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    .line 1098
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x17

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 1100
    :cond_0
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->y:F

    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->u()[Lcom/applovin/exoplayer2/v;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/applovin/exoplayer2/f/j;->a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F

    move-result v0

    .line 1101
    :goto_0
    iget v4, p0, Lcom/applovin/exoplayer2/f/j;->f:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 1104
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "createCodec:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ah;->a(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1107
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;

    move-result-object p2

    .line 1108
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ap:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    if-lt v0, v3, :cond_2

    .line 1109
    new-instance v0, Lcom/applovin/exoplayer2/f/a$a;

    .line 1111
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->a()I

    move-result v3

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/f/j;->aq:Z

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/f/j;->ar:Z

    invoke-direct {v0, v3, v6, v7}, Lcom/applovin/exoplayer2/f/a$a;-><init>(IZZ)V

    .line 1114
    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/f/a$a;->a(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/a;

    move-result-object p2

    goto :goto_2

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->c:Lcom/applovin/exoplayer2/f/g$b;

    invoke-interface {v0, p2}, Lcom/applovin/exoplayer2/f/g$b;->b(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/g;

    move-result-object p2

    .line 1118
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1120
    iput-object p2, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    .line 1121
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->G:Lcom/applovin/exoplayer2/f/i;

    .line 1122
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->D:F

    .line 1123
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    .line 1124
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    .line 1125
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    .line 1126
    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->I:Z

    .line 1127
    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->J:Z

    .line 1128
    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->K:Z

    .line 1129
    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->e(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->L:Z

    .line 1130
    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->M:Z

    .line 1131
    invoke-static {v1}, Lcom/applovin/exoplayer2/f/j;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->N:Z

    .line 1132
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    .line 1133
    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/f/j;->b(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->O:Z

    .line 1135
    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/f/i;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->R:Z

    .line 1136
    invoke-interface {p2}, Lcom/applovin/exoplayer2/f/g;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1137
    iput-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->ac:Z

    .line 1138
    iput v3, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1139
    iget p2, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    if-eqz p2, :cond_5

    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->P:Z

    :cond_6
    const-string p2, "c2.android.mp3.decoder"

    .line 1142
    iget-object p1, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1143
    new-instance p1, Lcom/applovin/exoplayer2/f/e;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->S:Lcom/applovin/exoplayer2/f/e;

    .line 1146
    :cond_7
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->d_()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v8, 0x3e8

    add-long/2addr p1, v8

    iput-wide p1, p0, Lcom/applovin/exoplayer2/f/j;->T:J

    .line 1150
    :cond_8
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    iget p2, p1, Lcom/applovin/exoplayer2/c/e;->a:I

    add-int/2addr p2, v3

    iput p2, p1, Lcom/applovin/exoplayer2/c/e;->a:I

    sub-long v4, v6, v4

    move-object v0, p0

    move-wide v2, v6

    .line 1152
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_7

    if-nez p3, :cond_1

    goto :goto_1

    .line 2076
    :cond_1
    sget v2, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    return v1

    .line 2081
    :cond_2
    sget-object v2, Lcom/applovin/exoplayer2/h;->e:Ljava/util/UUID;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/d/f;->f()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lcom/applovin/exoplayer2/h;->e:Ljava/util/UUID;

    .line 2082
    invoke-interface {p4}, Lcom/applovin/exoplayer2/d/f;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 2088
    :cond_3
    invoke-direct {p0, p4}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object p3

    if-nez p3, :cond_4

    return v1

    .line 2101
    :cond_4
    iget-boolean p3, p3, Lcom/applovin/exoplayer2/d/n;->d:Z

    if-eqz p3, :cond_5

    move p2, v0

    goto :goto_0

    .line 2104
    :cond_5
    iget-object p2, p2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-interface {p4, p2}, Lcom/applovin/exoplayer2/d/f;->a(Ljava/lang/String;)Z

    move-result p2

    .line 2106
    :goto_0
    iget-boolean p1, p1, Lcom/applovin/exoplayer2/f/i;->g:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method private static a(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 2277
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/j;->b(Ljava/lang/IllegalStateException;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 2280
    :cond_0
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2281
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z
    .locals 2

    .line 2362
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->n:Ljava/util/List;

    .line 2363
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 2364
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private aa()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2010
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2023
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->am:Z

    .line 2024
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->D()V

    goto :goto_0

    .line 2012
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ab()V

    goto :goto_0

    .line 2015
    :cond_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->R()V

    .line 2016
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->ac()V

    goto :goto_0

    .line 2019
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->R()V

    :goto_0
    return-void
.end method

.method private ab()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2116
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->J()V

    .line 2117
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->E()V

    return-void
.end method

.method private ac()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2136
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object v1

    iget-object v1, v1, Lcom/applovin/exoplayer2/d/n;->c:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    const/4 v0, 0x0

    .line 2141
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    .line 2142
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    return-void

    :catch_0
    move-exception v0

    .line 2138
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0
.end method

.method private ad()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2240
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 2241
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->t()Lcom/applovin/exoplayer2/w;

    move-result-object v0

    .line 2242
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 2244
    :cond_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 2245
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_5

    const/4 v4, -0x4

    if-eq v2, v4, :cond_2

    const/4 v0, -0x3

    if-ne v2, v0, :cond_1

    return-void

    .line 2271
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2253
    :cond_2
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2254
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    return-void

    .line 2257
    :cond_3
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    if-eqz v2, :cond_4

    .line 2259
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/v;

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    const/4 v4, 0x0

    .line 2260
    invoke-virtual {p0, v2, v4}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    .line 2261
    iput-boolean v3, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    .line 2264
    :cond_4
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/c/g;->h()V

    .line 2265
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/f/d;->a(Lcom/applovin/exoplayer2/c/g;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2266
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->aa:Z

    return-void

    .line 2248
    :cond_5
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/d/f;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/d/f;->a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V

    .line 1181
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    return-void
.end method

.method private b(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1805
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->S()Z

    move-result v0

    const/16 v16, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_b

    .line 1807
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->M:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->ah:Z

    if-eqz v0, :cond_1

    .line 1809
    :try_start_0
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/f/g;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1811
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    .line 1812
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->am:Z

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->J()V

    :cond_0
    return v14

    .line 1819
    :cond_1
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/f/g;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_5

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 1824
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->Z()V

    return v16

    .line 1828
    :cond_2
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->R:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->al:Z

    if-nez v0, :cond_3

    iget v0, v15, Lcom/applovin/exoplayer2/f/j;->ae:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1830
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    :cond_4
    return v14

    .line 1836
    :cond_5
    iget-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->Q:Z

    if-eqz v1, :cond_6

    .line 1837
    iput-boolean v14, v15, Lcom/applovin/exoplayer2/f/j;->Q:Z

    .line 1838
    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1, v0, v14}, Lcom/applovin/exoplayer2/f/g;->a(IZ)V

    return v16

    .line 1840
    :cond_6
    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_7

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 1843
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    return v14

    .line 1847
    :cond_7
    iput v0, v15, Lcom/applovin/exoplayer2/f/j;->V:I

    .line 1848
    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/f/g;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/applovin/exoplayer2/f/j;->W:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 1853
    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1854
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->W:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1856
    :cond_8
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->N:Z

    if-eqz v0, :cond_9

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    iget-wide v0, v15, Lcom/applovin/exoplayer2/f/j;->aj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 1860
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1862
    :cond_9
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->f(J)Z

    move-result v0

    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->X:Z

    .line 1863
    iget-wide v0, v15, Lcom/applovin/exoplayer2/f/j;->ak:J

    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move/from16 v0, v16

    goto :goto_1

    :cond_a
    move v0, v14

    :goto_1
    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->Y:Z

    .line 1865
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->c(J)V

    .line 1869
    :cond_b
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->M:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->ah:Z

    if-eqz v0, :cond_d

    .line 1871
    :try_start_1
    iget-object v5, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget-object v6, v15, Lcom/applovin/exoplayer2/f/j;->W:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->V:I

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/applovin/exoplayer2/f/j;->X:Z

    iget-boolean v13, v15, Lcom/applovin/exoplayer2/f/j;->Y:Z

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v18, v14

    move-object/from16 v14, v17

    .line 1872
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move/from16 v18, v14

    .line 1885
    :catch_2
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    .line 1886
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->am:Z

    if-eqz v0, :cond_c

    .line 1888
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->J()V

    :cond_c
    return v18

    :cond_d
    move/from16 v18, v14

    .line 1893
    iget-object v5, v15, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    iget-object v6, v15, Lcom/applovin/exoplayer2/f/j;->W:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->V:I

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Lcom/applovin/exoplayer2/f/j;->X:Z

    iget-boolean v13, v15, Lcom/applovin/exoplayer2/f/j;->Y:Z

    iget-object v14, v15, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1894
    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_10

    .line 1909
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->d(J)V

    .line 1910
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    move/from16 v14, v16

    goto :goto_3

    :cond_e
    move/from16 v14, v18

    .line 1911
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->U()V

    if-nez v14, :cond_f

    return v16

    .line 1915
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    :cond_10
    return v18
.end method

.method private static b(Lcom/applovin/exoplayer2/f/i;)Z
    .locals 3

    .line 2397
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    .line 2398
    sget v1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    sget v1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v2, 0x11

    if-gt v1, v2, :cond_1

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 2399
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    sget v1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 2401
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 2402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Amazon"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->c:Ljava/lang/String;

    .line 2403
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AFTS"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/f/i;->g:Z

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/IllegalStateException;)Z
    .locals 0

    .line 2286
    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 2309
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 2311
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 2313
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 2314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)Z
    .locals 2

    .line 2475
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    iget p1, p1, Lcom/applovin/exoplayer2/v;->y:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 2477
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    .line 2331
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 2332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 2333
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    const-string v1, "SM-A510"

    .line 2334
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 2335
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->d:Ljava/lang/String;

    const-string v1, "SM-J700"

    .line 2336
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 2338
    :cond_1
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 2339
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const-string p1, "flounder"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    .line 2340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "flounder_lte"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    .line 2341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "grouper"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    .line 2342
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "tilapia"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    .line 2343
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 2148
    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/f;->g()Lcom/applovin/exoplayer2/c/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2149
    instance-of v0, p1, Lcom/applovin/exoplayer2/d/n;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/16 v1, 0x1771

    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    .line 2158
    :cond_1
    :goto_0
    check-cast p1, Lcom/applovin/exoplayer2/d/n;

    return-object p1
.end method

.method private c(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 2177
    iget-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->am:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 2178
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->l()Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    .line 2179
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    iget-object v6, v0, Lcom/applovin/exoplayer2/f/d;->b:Ljava/nio/ByteBuffer;

    iget v7, v15, Lcom/applovin/exoplayer2/f/j;->V:I

    const/4 v8, 0x0

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    .line 2186
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->k()I

    move-result v9

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    .line 2187
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->i()J

    move-result-wide v10

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    .line 2188
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->b()Z

    move-result v12

    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    .line 2189
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->c()Z

    move-result v16

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v17, v3

    move-wide/from16 v3, p3

    move/from16 v13, v16

    move-object/from16 v14, v17

    .line 2179
    invoke-virtual/range {v0 .. v14}, Lcom/applovin/exoplayer2/f/j;->a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->j()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Lcom/applovin/exoplayer2/f/j;->d(J)V

    .line 2193
    iget-object v0, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/d;->a()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move v0, v13

    .line 2201
    :goto_0
    iget-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->al:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 2202
    iput-boolean v1, v15, Lcom/applovin/exoplayer2/f/j;->am:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 2206
    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->aa:Z

    if-eqz v2, :cond_3

    .line 2207
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    iget-object v3, v15, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/f/d;->a(Lcom/applovin/exoplayer2/c/g;)Z

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 2208
    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->aa:Z

    .line 2211
    :cond_3
    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->ab:Z

    if-eqz v2, :cond_5

    .line 2212
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 2218
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->B()V

    .line 2219
    iput-boolean v0, v15, Lcom/applovin/exoplayer2/f/j;->ab:Z

    .line 2220
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->E()V

    .line 2221
    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->Z:Z

    if-nez v2, :cond_5

    return v0

    .line 2228
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/f/j;->ad()V

    .line 2230
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->l()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2231
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->h()V

    .line 2236
    :cond_6
    iget-object v2, v15, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/f/d;->l()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->al:Z

    if-nez v2, :cond_8

    iget-boolean v2, v15, Lcom/applovin/exoplayer2/f/j;->ab:Z

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v14, v0

    goto :goto_2

    :cond_8
    :goto_1
    move v14, v1

    :goto_2
    return v14
.end method

.method protected static c(Lcom/applovin/exoplayer2/v;)Z
    .locals 1

    .line 2048
    iget v0, p0, Lcom/applovin/exoplayer2/v;->E:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/applovin/exoplayer2/v;->E:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private static c(Ljava/lang/IllegalStateException;)Z
    .locals 1

    .line 2291
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 2292
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    .line 1054
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->d:Lcom/applovin/exoplayer2/f/k;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1055
    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;

    move-result-object v0

    .line 1056
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->d:Lcom/applovin/exoplayer2/f/k;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/4 v1, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;

    move-result-object v0

    .line 1063
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1064
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Drm session requires secure decoder for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    iget-object v1, v1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private d(Lcom/applovin/exoplayer2/v;)V
    .locals 2

    .line 1078
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->B()V

    .line 1080
    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    .line 1081
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "audio/mpeg"

    .line 1082
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/opus"

    .line 1083
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1085
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/f/d;->g(I)V

    goto :goto_0

    .line 1087
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/f/d;->g(I)V

    .line 1089
    :goto_0
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .line 2381
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->t()Lcom/applovin/exoplayer2/w;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->g:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 978
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->g:Lcom/applovin/exoplayer2/c/g;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 980
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 982
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->g:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/g;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 983
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    .line 984
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private e(J)Z
    .locals 4

    .line 1156
    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/applovin/exoplayer2/f/j;->w:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private e(Lcom/applovin/exoplayer2/v;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 1702
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1708
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->d_()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1713
    :cond_1
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->y:F

    .line 1714
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->u()[Lcom/applovin/exoplayer2/v;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/f/j;->a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F

    move-result p1

    .line 1715
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->D:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3

    .line 1721
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->Y()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 1723
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->f:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    return v2

    .line 1727
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    .line 1728
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1729
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/f/g;->a(Landroid/os/Bundle;)V

    .line 1730
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->D:F

    :cond_6
    :goto_1
    return v2
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .line 2420
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3

    const-string v0, "hb2000"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    .line 2422
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "stvm8"

    sget-object v1, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 2423
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 2424
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f(J)Z
    .locals 5

    .line 2123
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2125
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2126
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 2

    .line 2434
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.mp3.dec"

    .line 2435
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "samsung"

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->c:Ljava/lang/String;

    .line 2436
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "baffin"

    .line 2437
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "grand"

    .line 2438
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "fortuna"

    .line 2439
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "gprimelte"

    .line 2440
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "j2y18lte"

    .line 2441
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/applovin/exoplayer2/l/ai;->b:Ljava/lang/String;

    const-string v0, "ms01"

    .line 2442
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

.method private static g(Ljava/lang/String;)Z
    .locals 2

    .line 2457
    sget v0, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1641
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->am:Z

    return v0
.end method

.method protected C()V
    .locals 0

    return-void
.end method

.method protected D()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected final E()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->d(Lcom/applovin/exoplayer2/v;)V

    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    .line 543
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    iget-object v0, v0, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    .line 544
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    if-eqz v1, :cond_7

    .line 545
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 547
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/f/j;->c(Lcom/applovin/exoplayer2/d/f;)Lcom/applovin/exoplayer2/d/n;

    move-result-object v1

    if-nez v1, :cond_3

    .line 549
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->e()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 559
    :cond_3
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v4, v1, Lcom/applovin/exoplayer2/d/n;->b:Ljava/util/UUID;

    iget-object v5, v1, Lcom/applovin/exoplayer2/d/n;->c:[B

    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    iget-boolean v1, v1, Lcom/applovin/exoplayer2/d/n;->d:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    .line 566
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->v:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 561
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    .line 569
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/applovin/exoplayer2/d/n;->a:Z

    if-eqz v0, :cond_7

    .line 570
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->c()I

    move-result v0

    if-eq v0, v3, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    return-void

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    .line 573
    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->e()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/f$a;

    .line 574
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    iget v2, v0, Lcom/applovin/exoplayer2/d/f$a;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    .line 584
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->v:Z

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/f/j;->a(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/applovin/exoplayer2/f/j$a; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 586
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object v0

    throw v0

    :cond_8
    :goto_2
    return-void
.end method

.method protected F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final G()Lcom/applovin/exoplayer2/f/g;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    return-object v0
.end method

.method protected final H()Landroid/media/MediaFormat;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->B:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final I()Lcom/applovin/exoplayer2/f/i;
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->G:Lcom/applovin/exoplayer2/f/i;

    return-object v0
.end method

.method protected J()V
    .locals 3

    const/4 v0, 0x0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-eqz v1, :cond_0

    .line 764
    invoke-interface {v1}, Lcom/applovin/exoplayer2/f/g;->e()V

    .line 765
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    iget v2, v1, Lcom/applovin/exoplayer2/c/e;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/applovin/exoplayer2/c/e;->b:I

    .line 766
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->G:Lcom/applovin/exoplayer2/f/i;

    iget-object v1, v1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 769
    :cond_0
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    .line 771
    :try_start_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 772
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :cond_1
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    .line 776
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    .line 777
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->N()V

    return-void

    :catchall_0
    move-exception v1

    .line 775
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    .line 776
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    .line 777
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->N()V

    .line 778
    throw v1

    :catchall_1
    move-exception v1

    .line 769
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    .line 771
    :try_start_2
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 772
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 775
    :cond_2
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    .line 776
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    .line 777
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->N()V

    .line 779
    throw v1

    :catchall_2
    move-exception v1

    .line 775
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->u:Landroid/media/MediaCrypto;

    .line 776
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->b(Lcom/applovin/exoplayer2/d/f;)V

    .line 777
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->N()V

    .line 778
    throw v1
.end method

.method protected final K()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->E()V

    :cond_0
    return v0
.end method

.method protected L()Z
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 880
    :cond_0
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->J:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ai:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->L:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ah:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 887
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->R()V

    return v1

    .line 884
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->J()V

    const/4 v0, 0x1

    return v0
.end method

.method protected M()V
    .locals 4

    .line 903
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->T()V

    .line 904
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->U()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 905
    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->T:J

    const/4 v2, 0x0

    .line 906
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ah:Z

    .line 907
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->ag:Z

    .line 908
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->P:Z

    .line 909
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Q:Z

    .line 910
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->X:Z

    .line 911
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Y:Z

    .line 912
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 913
    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    .line 914
    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->ak:J

    .line 915
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->S:Lcom/applovin/exoplayer2/f/e;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/e;->a()V

    .line 918
    :cond_0
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->ae:I

    .line 919
    iput v2, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    .line 924
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ac:Z

    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    return-void
.end method

.method protected N()V
    .locals 2

    .line 935
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->M()V

    const/4 v0, 0x0

    .line 937
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->as:Lcom/applovin/exoplayer2/p;

    .line 938
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->S:Lcom/applovin/exoplayer2/f/e;

    .line 939
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    .line 940
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->G:Lcom/applovin/exoplayer2/f/i;

    .line 941
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    .line 942
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->B:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->C:Z

    .line 944
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ai:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 945
    iput v1, p0, Lcom/applovin/exoplayer2/f/j;->D:F

    .line 946
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    .line 947
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->I:Z

    .line 948
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->J:Z

    .line 949
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->K:Z

    .line 950
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->L:Z

    .line 951
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->M:Z

    .line 952
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->N:Z

    .line 953
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->O:Z

    .line 954
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->R:Z

    .line 955
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ac:Z

    .line 956
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 957
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->v:Z

    return-void
.end method

.method protected O()F
    .locals 1

    .line 1655
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->x:F

    return v0
.end method

.method protected final P()V
    .locals 1

    const/4 v0, 0x1

    .line 2034
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ao:Z

    return-void
.end method

.method protected final Q()J
    .locals 2

    .line 2043
    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    return-wide v0
.end method

.method protected a(FLcom/applovin/exoplayer2/v;[Lcom/applovin/exoplayer2/v;)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/f/l$b;
        }
    .end annotation
.end method

.method public final a(Lcom/applovin/exoplayer2/v;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->d:Lcom/applovin/exoplayer2/f/k;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;)I

    move-result p1
    :try_end_0
    .catch Lcom/applovin/exoplayer2/f/l$b; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    .line 483
    invoke-virtual {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;
    .locals 7

    .line 1631
    new-instance v6, Lcom/applovin/exoplayer2/c/h;

    iget-object v1, p1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object v6
.end method

.method protected a(Lcom/applovin/exoplayer2/w;)Lcom/applovin/exoplayer2/c/h;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1429
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    .line 1430
    iget-object v1, p1, Lcom/applovin/exoplayer2/w;->b:Lcom/applovin/exoplayer2/v;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/applovin/exoplayer2/v;

    .line 1431
    iget-object v1, v5, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1440
    iget-object p1, p1, Lcom/applovin/exoplayer2/w;->a:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/d/f;)V

    .line 1441
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    .line 1443
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1444
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ab:Z

    return-object v1

    .line 1448
    :cond_0
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-nez p1, :cond_1

    .line 1449
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/j;->E:Ljava/util/ArrayDeque;

    .line 1450
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->E()V

    return-object v1

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->G:Lcom/applovin/exoplayer2/f/i;

    .line 1463
    iget-object v4, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    .line 1464
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1465
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->Y()V

    .line 1466
    new-instance p1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, v1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object p1

    .line 1473
    :cond_2
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->t:Lcom/applovin/exoplayer2/d/f;

    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->s:Lcom/applovin/exoplayer2/d/f;

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_0
    if-eqz v2, :cond_5

    .line 1474
    sget v3, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v0

    :goto_2
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 1476
    invoke-virtual {p0, v1, v4, v5}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/c/h;

    move-result-object v3

    .line 1478
    iget v7, v3, Lcom/applovin/exoplayer2/c/h;->d:I

    const/4 v8, 0x3

    if-eqz v7, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v7, v0, :cond_c

    if-eq v7, v10, :cond_8

    if-ne v7, v8, :cond_7

    .line 1514
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 1517
    :cond_6
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_10

    .line 1518
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->X()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1524
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1497
    :cond_8
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/v;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    .line 1500
    :cond_9
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ac:Z

    .line 1501
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->ad:I

    .line 1502
    iget v7, p0, Lcom/applovin/exoplayer2/f/j;->H:I

    if-eq v7, v10, :cond_b

    if-ne v7, v0, :cond_a

    iget v7, v5, Lcom/applovin/exoplayer2/v;->q:I

    iget v9, v4, Lcom/applovin/exoplayer2/v;->q:I

    if-ne v7, v9, :cond_a

    iget v7, v5, Lcom/applovin/exoplayer2/v;->r:I

    iget v9, v4, Lcom/applovin/exoplayer2/v;->r:I

    if-ne v7, v9, :cond_a

    goto :goto_3

    :cond_a
    move v0, v6

    :cond_b
    :goto_3
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->P:Z

    .line 1507
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_10

    .line 1508
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->X()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1483
    :cond_c
    invoke-direct {p0, v5}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_4
    move v7, v9

    goto :goto_6

    .line 1486
    :cond_d
    iput-object v5, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    if-eqz v2, :cond_e

    .line 1488
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->X()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    .line 1491
    :cond_e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->W()Z

    move-result v0

    if-nez v0, :cond_10

    :goto_5
    move v7, v10

    goto :goto_6

    .line 1480
    :cond_f
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->Y()V

    :cond_10
    move v7, v6

    .line 1527
    :goto_6
    iget v0, v3, Lcom/applovin/exoplayer2/c/h;->d:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-ne v0, p1, :cond_11

    iget p1, p0, Lcom/applovin/exoplayer2/f/j;->af:I

    if-ne p1, v8, :cond_12

    .line 1531
    :cond_11
    new-instance p1, Lcom/applovin/exoplayer2/c/h;

    iget-object v3, v1, Lcom/applovin/exoplayer2/f/i;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/applovin/exoplayer2/c/h;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/v;II)V

    return-object p1

    :cond_12
    return-object v3

    .line 1435
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v5, v0}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/i;Lcom/applovin/exoplayer2/v;Landroid/media/MediaCrypto;F)Lcom/applovin/exoplayer2/f/g$a;
.end method

.method protected a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)Lcom/applovin/exoplayer2/f/h;
    .locals 1

    .line 962
    new-instance v0, Lcom/applovin/exoplayer2/f/h;

    invoke-direct {v0, p1, p2}, Lcom/applovin/exoplayer2/f/h;-><init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)V

    return-object v0
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/f/k;Lcom/applovin/exoplayer2/v;Z)Ljava/util/List;
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
.end method

.method public a(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 729
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->x:F

    .line 730
    iput p2, p0, Lcom/applovin/exoplayer2/f/j;->y:F

    .line 731
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->A:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/j;->e(Lcom/applovin/exoplayer2/v;)Z

    return-void
.end method

.method public a(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 794
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/j;->ao:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 795
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/j;->ao:Z

    .line 796
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->aa()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->as:Lcom/applovin/exoplayer2/p;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 805
    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->am:Z

    if-eqz v2, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->D()V

    return-void

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/f/j;->e(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->E()V

    .line 815
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 816
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ah;->a(Ljava/lang/String;)V

    .line 817
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/f/j;->c(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 818
    :cond_3
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->a()V

    goto :goto_3

    .line 819
    :cond_4
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/j;->z:Lcom/applovin/exoplayer2/f/g;

    if-eqz v2, :cond_7

    .line 820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 821
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/ah;->a(Ljava/lang/String;)V

    .line 822
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/f/j;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 823
    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/f/j;->e(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 824
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->V()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/f/j;->e(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 825
    :cond_6
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->a()V

    goto :goto_3

    .line 827
    :cond_7
    iget-object p3, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    iget p4, p3, Lcom/applovin/exoplayer2/c/e;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->b(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/applovin/exoplayer2/c/e;->d:I

    .line 832
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->e(I)Z

    .line 834
    :goto_3
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/e;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 836
    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 837
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Exception;)V

    .line 838
    sget p2, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    invoke-static {p1}, Lcom/applovin/exoplayer2/f/j;->c(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_8

    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    .line 840
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->J()V

    .line 843
    :cond_9
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->I()Lcom/applovin/exoplayer2/f/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/f/i;)Lcom/applovin/exoplayer2/f/h;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const/16 p3, 0xfa3

    .line 842
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/applovin/exoplayer2/f/j;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    .line 848
    :cond_a
    throw p1

    :cond_b
    const/4 p1, 0x0

    .line 800
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->as:Lcom/applovin/exoplayer2/p;

    .line 801
    throw v0
.end method

.method protected a(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 p1, 0x0

    .line 701
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->al:Z

    .line 702
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->am:Z

    .line 703
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->ao:Z

    .line 704
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->Z:Z

    if-eqz p2, :cond_0

    .line 705
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->j:Lcom/applovin/exoplayer2/f/d;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/f/d;->a()V

    .line 706
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->i:Lcom/applovin/exoplayer2/c/g;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/g;->a()V

    .line 707
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->aa:Z

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->K()Z

    .line 714
    :goto_0
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/af;->b()I

    move-result p2

    const/4 p3, 0x1

    if-lez p2, :cond_1

    .line 715
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/f/j;->an:Z

    .line 717
    :cond_1
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/af;->a()V

    .line 718
    iget p2, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    if-eqz p2, :cond_2

    .line 719
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    .line 720
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->n:[J

    sub-int/2addr p2, p3

    aget-wide p2, v0, p2

    iput-wide p2, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    .line 722
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    :cond_2
    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected final a(Lcom/applovin/exoplayer2/p;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->as:Lcom/applovin/exoplayer2/p;

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->ap:Z

    return-void
.end method

.method protected a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 673
    new-instance p1, Lcom/applovin/exoplayer2/c/e;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/c/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->a:Lcom/applovin/exoplayer2/c/e;

    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 679
    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 680
    iget-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 681
    iput-wide p2, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    .line 682
    iput-wide p4, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    goto :goto_2

    .line 684
    :cond_1
    iget p1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    array-length v1, v1

    if-ne p1, v1, :cond_2

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Too many stream changes, so dropping offset: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    iget v2, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    sub-int/2addr v2, v0

    aget-wide v2, v1, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    .line 690
    iput p1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    .line 692
    :goto_1
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->n:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, p1, v2

    .line 693
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    add-int/lit8 p2, v1, -0x1

    aput-wide p4, p1, p2

    .line 694
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->p:[J

    sub-int/2addr v1, v0

    iget-wide p2, p0, Lcom/applovin/exoplayer2/f/j;->aj:J

    aput-wide p2, p1, v1

    :goto_2
    return-void
.end method

.method protected abstract a(JJLcom/applovin/exoplayer2/f/g;Ljava/nio/ByteBuffer;IIIJZZLcom/applovin/exoplayer2/v;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation
.end method

.method protected a(Lcom/applovin/exoplayer2/f/i;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/applovin/exoplayer2/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->aq:Z

    return-void
.end method

.method protected b(Lcom/applovin/exoplayer2/v;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/l/af;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    if-nez p1, :cond_0

    .line 638
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->C:Z

    if-eqz p2, :cond_0

    .line 643
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->k:Lcom/applovin/exoplayer2/l/af;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/af;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/v;

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 646
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    if-nez p1, :cond_2

    .line 649
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->C:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    if-eqz p1, :cond_3

    .line 650
    :cond_2
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/j;->r:Lcom/applovin/exoplayer2/v;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->B:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/v;Landroid/media/MediaFormat;)V

    .line 651
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/f/j;->C:Z

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 468
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/f/j;->ar:Z

    return-void
.end method

.method protected d(J)V
    .locals 6

    .line 1586
    :goto_0
    iget v0, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->p:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/j;->n:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    .line 1589
    iget-object v3, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    add-int/lit8 v0, v0, -0x1

    .line 1590
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    const/4 v3, 0x1

    .line 1591
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1597
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->o:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1603
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->p:[J

    iget v1, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1609
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->C()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 2

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 737
    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->at:J

    .line 738
    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->au:J

    const/4 v0, 0x0

    .line 739
    iput v0, p0, Lcom/applovin/exoplayer2/f/j;->av:I

    .line 740
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->L()Z

    return-void
.end method

.method protected s()V
    .locals 2

    const/4 v0, 0x0

    .line 746
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->B()V

    .line 747
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/d/f;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/j;->a(Lcom/applovin/exoplayer2/d/f;)V

    .line 750
    throw v1
.end method

.method public z()Z
    .locals 4

    .line 1646
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/j;->q:Lcom/applovin/exoplayer2/v;

    if-eqz v0, :cond_1

    .line 1647
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/f/j;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/j;->S()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/j;->T:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/f/j;->T:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
