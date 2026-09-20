.class public final Lcom/applovin/exoplayer2/i/m;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/applovin/exoplayer2/i/l;

.field private final c:Lcom/applovin/exoplayer2/i/i;

.field private final d:Lcom/applovin/exoplayer2/w;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/applovin/exoplayer2/v;

.field private j:Lcom/applovin/exoplayer2/i/g;

.field private k:Lcom/applovin/exoplayer2/i/j;

.field private l:Lcom/applovin/exoplayer2/i/k;

.field private m:Lcom/applovin/exoplayer2/i/k;

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;)V
    .locals 1

    .line 104
    sget-object v0, Lcom/applovin/exoplayer2/i/i;->a:Lcom/applovin/exoplayer2/i/i;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/i/m;-><init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;Lcom/applovin/exoplayer2/i/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/i/l;Landroid/os/Looper;Lcom/applovin/exoplayer2/i/i;)V
    .locals 1

    const/4 v0, 0x3

    .line 118
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    .line 119
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/l;

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->b:Lcom/applovin/exoplayer2/i/l;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {p2, p0}, Lcom/applovin/exoplayer2/l/ai;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->a:Landroid/os/Handler;

    .line 122
    iput-object p3, p0, Lcom/applovin/exoplayer2/i/m;->c:Lcom/applovin/exoplayer2/i/i;

    .line 123
    new-instance p1, Lcom/applovin/exoplayer2/w;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->d:Lcom/applovin/exoplayer2/w;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->o:J

    return-void
.end method

.method private B()V
    .locals 2

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->k:Lcom/applovin/exoplayer2/i/j;

    const/4 v1, -0x1

    .line 324
    iput v1, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    .line 325
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/k;->f()V

    .line 327
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/k;->f()V

    .line 331
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;

    :cond_1
    return-void
.end method

.method private C()V
    .locals 1

    .line 336
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->B()V

    .line 337
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/i/g;->d()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    const/4 v0, 0x0

    .line 339
    iput v0, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    return-void
.end method

.method private D()V
    .locals 2

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/m;->g:Z

    .line 344
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->c:Lcom/applovin/exoplayer2/i/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->i:Lcom/applovin/exoplayer2/v;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/v;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/i/i;->b(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    return-void
.end method

.method private E()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->C()V

    .line 349
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->D()V

    return-void
.end method

.method private F()J
    .locals 4

    .line 353
    iget v0, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget v0, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/i/k;->f_()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    iget v1, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/i/k;->a(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private G()V
    .locals 1

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/i/m;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/i/h;)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/m;->i:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->G()V

    .line 399
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->E()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 364
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/i/a;",
            ">;)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->b:Lcom/applovin/exoplayer2/i/l;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i/l;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/m;->f:Z

    return v0
.end method

.method public a(Lcom/applovin/exoplayer2/v;)I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/m;->c:Lcom/applovin/exoplayer2/i/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/i/i;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget p1, p1, Lcom/applovin/exoplayer2/v;->E:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 136
    :goto_0
    invoke-static {p1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    .line 138
    :cond_1
    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/u;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 139
    invoke-static {p1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 141
    invoke-static {p1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1
.end method

.method public a(JJ)V
    .locals 8

    .line 186
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/m;->j()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/applovin/exoplayer2/i/m;->o:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->B()V

    .line 190
    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->f:Z

    .line 193
    :cond_0
    iget-boolean p3, p0, Lcom/applovin/exoplayer2/i/m;->f:Z

    if-eqz p3, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;

    if-nez p3, :cond_2

    .line 198
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p3, p1, p2}, Lcom/applovin/exoplayer2/i/g;->a(J)V

    .line 200
    :try_start_0
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p3}, Lcom/applovin/exoplayer2/i/g;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/i/k;

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;
    :try_end_0
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->a(Lcom/applovin/exoplayer2/i/h;)V

    return-void

    .line 207
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/m;->d_()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 212
    :cond_3
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 215
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->F()J

    move-result-wide v2

    move p3, v1

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    .line 217
    iget p3, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    .line 218
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->F()J

    move-result-wide v2

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v1

    .line 222
    :cond_5
    iget-object v2, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 224
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/i/k;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 225
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->F()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 226
    iget v2, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    if-ne v2, v0, :cond_6

    .line 227
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->E()V

    goto :goto_2

    .line 229
    :cond_6
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->B()V

    .line 230
    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->f:Z

    goto :goto_2

    .line 233
    :cond_7
    iget-wide v4, v2, Lcom/applovin/exoplayer2/i/k;->a:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9

    .line 235
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    if-eqz p3, :cond_8

    .line 236
    invoke-virtual {p3}, Lcom/applovin/exoplayer2/i/k;->f()V

    .line 238
    :cond_8
    invoke-virtual {v2, p1, p2}, Lcom/applovin/exoplayer2/i/k;->a(J)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/i/m;->n:I

    .line 239
    iput-object v2, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    .line 240
    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->m:Lcom/applovin/exoplayer2/i/k;

    move p3, p4

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 247
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p3, p0, Lcom/applovin/exoplayer2/i/m;->l:Lcom/applovin/exoplayer2/i/k;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/i/k;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->a(Ljava/util/List;)V

    .line 252
    :cond_a
    iget p1, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    if-ne p1, v0, :cond_b

    return-void

    .line 257
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->e:Z

    if-nez p1, :cond_13

    .line 258
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->k:Lcom/applovin/exoplayer2/i/j;

    if-nez p1, :cond_d

    .line 260
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/i/g;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/j;

    if-nez p1, :cond_c

    return-void

    .line 264
    :cond_c
    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->k:Lcom/applovin/exoplayer2/i/j;

    .line 266
    :cond_d
    iget p2, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    .line 267
    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/i/j;->a_(I)V

    .line 268
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/i/g;->a(Ljava/lang/Object;)V

    .line 269
    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->k:Lcom/applovin/exoplayer2/i/j;

    .line 270
    iput v0, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    return-void

    .line 274
    :cond_e
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->d:Lcom/applovin/exoplayer2/w;

    invoke-virtual {p0, p2, p1, v1}, Lcom/applovin/exoplayer2/i/m;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_12

    .line 276
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/j;->c()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 277
    iput-boolean p4, p0, Lcom/applovin/exoplayer2/i/m;->e:Z

    .line 278
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/m;->g:Z

    goto :goto_5

    .line 280
    :cond_f
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->d:Lcom/applovin/exoplayer2/w;

    iget-object p2, p2, Lcom/applovin/exoplayer2/w;->b:Lcom/applovin/exoplayer2/v;

    if-nez p2, :cond_10

    return-void

    .line 285
    :cond_10
    iget-wide p2, p2, Lcom/applovin/exoplayer2/v;->p:J

    iput-wide p2, p1, Lcom/applovin/exoplayer2/i/j;->f:J

    .line 286
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/j;->h()V

    .line 287
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->g:Z

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/i/j;->d()Z

    move-result p3

    if-nez p3, :cond_11

    move p3, p4

    goto :goto_4

    :cond_11
    move p3, v1

    :goto_4
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->g:Z

    .line 289
    :goto_5
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/i/m;->g:Z

    if-nez p2, :cond_b

    .line 290
    iget-object p2, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/i/g;->a(Ljava/lang/Object;)V

    .line 291
    iput-object v3, p0, Lcom/applovin/exoplayer2/i/m;->k:Lcom/applovin/exoplayer2/i/j;
    :try_end_1
    .catch Lcom/applovin/exoplayer2/i/h; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_12
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :catch_1
    move-exception p1

    .line 298
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->a(Lcom/applovin/exoplayer2/i/h;)V

    :cond_13
    return-void
.end method

.method protected a(JZ)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->G()V

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->e:Z

    .line 174
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/m;->f:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 175
    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->o:J

    .line 176
    iget p1, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->E()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->B()V

    .line 180
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/i/g;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/i/g;->c()V

    :goto_0
    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 162
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/m;->i:Lcom/applovin/exoplayer2/v;

    .line 163
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/m;->j:Lcom/applovin/exoplayer2/i/g;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 164
    iput p1, p0, Lcom/applovin/exoplayer2/i/m;->h:I

    goto :goto_0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->D()V

    :goto_0
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/m;->j()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 157
    iput-wide p1, p0, Lcom/applovin/exoplayer2/i/m;->o:J

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 377
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 379
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/i/m;->b(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected r()V
    .locals 2

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/applovin/exoplayer2/i/m;->i:Lcom/applovin/exoplayer2/v;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 305
    iput-wide v0, p0, Lcom/applovin/exoplayer2/i/m;->o:J

    .line 306
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->G()V

    .line 307
    invoke-direct {p0}, Lcom/applovin/exoplayer2/i/m;->C()V

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
