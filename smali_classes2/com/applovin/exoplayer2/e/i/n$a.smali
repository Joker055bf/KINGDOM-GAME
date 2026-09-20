.class final Lcom/applovin/exoplayer2/e/i/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/applovin/exoplayer2/e/x;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/x;)V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->a:Lcom/applovin/exoplayer2/e/x;

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 536
    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->l:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/n$a;->m:Z

    .line 540
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/n$a;->b:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/n$a;->k:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 541
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->a:Lcom/applovin/exoplayer2/e/x;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, 0x20

    if-gt v0, p0, :cond_0

    const/16 v0, 0x23

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x27

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x28

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


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->f:Z

    .line 472
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->g:Z

    .line 473
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->h:Z

    .line 474
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->i:Z

    .line 475
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    return-void
.end method

.method public a(JIIJZ)V
    .locals 1

    const/4 v0, 0x0

    .line 480
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->g:Z

    .line 481
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->h:Z

    .line 482
    iput-wide p5, p0, Lcom/applovin/exoplayer2/e/i/n$a;->e:J

    .line 483
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->d:I

    .line 484
    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->b:J

    .line 486
    invoke-static {p4}, Lcom/applovin/exoplayer2/e/i/n$a;->c(I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 487
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->i:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    if-nez p1, :cond_1

    if-eqz p7, :cond_0

    .line 489
    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/e/i/n$a;->a(I)V

    .line 491
    :cond_0
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->i:Z

    .line 493
    :cond_1
    invoke-static {p4}, Lcom/applovin/exoplayer2/e/i/n$a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 494
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->h:Z

    .line 495
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    :cond_2
    const/16 p1, 0x10

    if-lt p4, p1, :cond_3

    const/16 p1, 0x15

    if-gt p4, p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, v0

    .line 500
    :goto_0
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->c:Z

    if-nez p1, :cond_4

    const/16 p1, 0x9

    if-gt p4, p1, :cond_5

    :cond_4
    move v0, p2

    .line 501
    :cond_5
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->f:Z

    return-void
.end method

.method public a(JIZ)V
    .locals 2

    .line 517
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->g:Z

    if-eqz v0, :cond_0

    .line 519
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->c:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->m:Z

    const/4 p1, 0x0

    .line 520
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->j:Z

    goto :goto_0

    .line 521
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->g:Z

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p4, :cond_2

    .line 523
    iget-boolean p4, p0, Lcom/applovin/exoplayer2/e/i/n$a;->i:Z

    if-eqz p4, :cond_2

    .line 525
    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->b:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 526
    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/e/i/n$a;->a(I)V

    .line 528
    :cond_2
    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->b:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->k:J

    .line 529
    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->e:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->l:J

    .line 530
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->c:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->m:Z

    const/4 p1, 0x1

    .line 531
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->i:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 505
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n$a;->f:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    .line 506
    iget v1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 508
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->g:Z

    .line 509
    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/n$a;->f:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 511
    iput v1, p0, Lcom/applovin/exoplayer2/e/i/n$a;->d:I

    :cond_2
    :goto_1
    return-void
.end method
