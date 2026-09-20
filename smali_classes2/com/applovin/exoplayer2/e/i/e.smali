.class public final Lcom/applovin/exoplayer2/e/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# static fields
.field public static final a:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private final b:I

.field private final c:Lcom/applovin/exoplayer2/e/i/f;

.field private final d:Lcom/applovin/exoplayer2/l/y;

.field private final e:Lcom/applovin/exoplayer2/l/y;

.field private final f:Lcom/applovin/exoplayer2/l/x;

.field private g:Lcom/applovin/exoplayer2/e/j;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public static synthetic $r8$lambda$GMyNRC-Av_5cGJyHn2R5MKloaRk()[Lcom/applovin/exoplayer2/e/h;
    .locals 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/i/e;->a()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/applovin/exoplayer2/e/i/e$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/i/e$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/i/e;->a:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 124
    :cond_0
    iput p1, p0, Lcom/applovin/exoplayer2/e/i/e;->b:I

    .line 125
    new-instance p1, Lcom/applovin/exoplayer2/e/i/f;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/f;-><init>(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    .line 126
    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->d:Lcom/applovin/exoplayer2/l/y;

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    const-wide/16 v0, -0x1

    .line 128
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/e;->i:J

    .line 130
    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    .line 131
    new-instance v0, Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/e;->f:Lcom/applovin/exoplayer2/l/x;

    return-void
.end method

.method private static a(IJ)I
    .locals 4

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 360
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private a(JZ)V
    .locals 7

    .line 261
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/e;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/applovin/exoplayer2/e/i/e;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 267
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    .line 268
    invoke-virtual {v5}, Lcom/applovin/exoplayer2/e/i/f;->c()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 275
    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/e/i/f;->c()J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-eqz p3, :cond_4

    .line 276
    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/e;->g:Lcom/applovin/exoplayer2/e/j;

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/e;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v2, v1

    .line 277
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/exoplayer2/e/i/e;->b(JZ)Lcom/applovin/exoplayer2/e/v;

    move-result-object p1

    .line 276
    invoke-interface {p3, p1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    goto :goto_1

    .line 280
    :cond_4
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->g:Lcom/applovin/exoplayer2/e/j;

    new-instance p2, Lcom/applovin/exoplayer2/e/v$b;

    invoke-direct {p2, v3, v4}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    .line 282
    :goto_1
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/e;->m:Z

    return-void
.end method

.method private static synthetic a()[Lcom/applovin/exoplayer2/e/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    .line 48
    new-instance v1, Lcom/applovin/exoplayer2/e/i/e;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/i/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/applovin/exoplayer2/e/i;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lcom/applovin/exoplayer2/e/i;->d([BII)V

    .line 243
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 244
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->m()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 252
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    .line 253
    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/e/i;->c(I)V

    .line 254
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/i/e;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 255
    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/i/e;->i:J

    :cond_0
    return v1

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/l/y;->e(I)V

    .line 248
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/y;->v()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 250
    invoke-interface {p1, v2}, Lcom/applovin/exoplayer2/e/i;->c(I)V

    goto :goto_0
.end method

.method private b(JZ)Lcom/applovin/exoplayer2/e/v;
    .locals 11

    .line 347
    iget v0, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/i/f;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/applovin/exoplayer2/e/i/e;->a(IJ)I

    move-result v8

    .line 348
    new-instance v0, Lcom/applovin/exoplayer2/e/d;

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/e;->i:J

    iget v9, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/applovin/exoplayer2/e/d;-><init>(JJIIZ)V

    return-object v0
.end method

.method private c(Lcom/applovin/exoplayer2/e/i;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/e;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 289
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    .line 290
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    .line 291
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 293
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/e;->b(Lcom/applovin/exoplayer2/e/i;)I

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :cond_2
    const/4 v5, 0x1

    .line 299
    :try_start_0
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    .line 300
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v6

    const/4 v7, 0x2

    .line 299
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/applovin/exoplayer2/e/i;->b([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 301
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6, v1}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 302
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->i()I

    move-result v6

    .line 303
    invoke-static {v6}, Lcom/applovin/exoplayer2/e/i/f;->a(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 310
    :cond_3
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    .line 311
    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v6

    const/4 v7, 0x4

    .line 310
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/applovin/exoplayer2/e/i;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 314
    :cond_4
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->f:Lcom/applovin/exoplayer2/l/x;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/l/x;->a(I)V

    .line 315
    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/e;->f:Lcom/applovin/exoplayer2/l/x;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/l/x;->c(I)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6

    int-to-long v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, -0x6

    .line 326
    invoke-interface {p1, v6, v5}, Lcom/applovin/exoplayer2/e/i;->b(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    goto :goto_1

    .line 318
    :cond_6
    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/e;->k:Z

    const-string v1, "Malformed ADTS stream"

    const/4 v6, 0x0

    .line 319
    invoke-static {v1, v6}, Lcom/applovin/exoplayer2/ai;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    move v1, v2

    .line 337
    :goto_2
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    if-lez v1, :cond_8

    int-to-long v0, v1

    .line 339
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    goto :goto_3

    .line 341
    :cond_8
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/e;->j:I

    .line 343
    :goto_3
    iput-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/e;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/e;->g:Lcom/applovin/exoplayer2/e/j;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->d()J

    move-result-wide v0

    .line 209
    iget p2, p0, Lcom/applovin/exoplayer2/e/i/e;->b:I

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    and-int/2addr p2, v3

    if-eqz p2, :cond_0

    const-wide/16 v5, -0x1

    cmp-long p2, v0, v5

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v3

    :goto_1
    if-eqz p2, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/e;->c(Lcom/applovin/exoplayer2/e/i;)V

    .line 217
    :cond_2
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/e;->d:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object p2

    const/16 v2, 0x800

    invoke-interface {p1, p2, v4, v2}, Lcom/applovin/exoplayer2/e/i;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 219
    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i/e;->a(JZ)V

    if-eqz v2, :cond_4

    return p2

    .line 225
    :cond_4
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/e;->d:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v4}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 226
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/e;->d:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/l/y;->c(I)V

    .line 228
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/e;->l:Z

    if-nez p1, :cond_5

    .line 230
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/e;->h:J

    const/4 p2, 0x4

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/exoplayer2/e/i/f;->a(JI)V

    .line 231
    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/e;->l:Z

    .line 235
    :cond_5
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/e;->d:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/l/y;)V

    return v4
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/e;->l:Z

    .line 195
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/f;->a()V

    .line 196
    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/i/e;->h:J

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .locals 4

    .line 187
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/e;->g:Lcom/applovin/exoplayer2/e/j;

    .line 188
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/e;->c:Lcom/applovin/exoplayer2/e/i/f;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/ad$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    .line 189
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->a()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/e;->b(Lcom/applovin/exoplayer2/e/i;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lcom/applovin/exoplayer2/e/i;->d([BII)V

    .line 147
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5, v1}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 148
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->i()I

    move-result v5

    .line 149
    invoke-static {v5}, Lcom/applovin/exoplayer2/e/i/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 155
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    .line 156
    invoke-interface {p1, v3}, Lcom/applovin/exoplayer2/e/i;->c(I)V

    :goto_0
    move v2, v1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->e:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v5

    invoke-interface {p1, v5, v1, v6}, Lcom/applovin/exoplayer2/e/i;->d([BII)V

    .line 164
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->f:Lcom/applovin/exoplayer2/l/x;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->a(I)V

    .line 165
    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/e;->f:Lcom/applovin/exoplayer2/l/x;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/l/x;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 172
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    .line 173
    invoke-interface {p1, v3}, Lcom/applovin/exoplayer2/e/i;->c(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 175
    invoke-interface {p1, v6}, Lcom/applovin/exoplayer2/e/i;->c(I)V

    add-int/2addr v4, v5

    :goto_1
    sub-int v5, v3, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
