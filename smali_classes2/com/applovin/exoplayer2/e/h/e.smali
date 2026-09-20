.class final Lcom/applovin/exoplayer2/e/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I

.field private final k:Lcom/applovin/exoplayer2/l/y;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 58
    iput-object v1, p0, Lcom/applovin/exoplayer2/e/h/e;->j:[I

    .line 60
    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->a:I

    .line 65
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->b:I

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/applovin/exoplayer2/e/h/e;->c:J

    .line 67
    iput-wide v1, p0, Lcom/applovin/exoplayer2/e/h/e;->d:J

    .line 68
    iput-wide v1, p0, Lcom/applovin/exoplayer2/e/h/e;->e:J

    .line 69
    iput-wide v1, p0, Lcom/applovin/exoplayer2/e/h/e;->f:J

    .line 70
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->g:I

    .line 71
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->h:I

    .line 72
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->i:I

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/h/e;->a(Lcom/applovin/exoplayer2/e/i;J)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Z)V

    .line 104
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-gez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    .line 107
    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v4

    .line 106
    invoke-static {p1, v4, v1, v3, v2}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 109
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->o()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 110
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->a()V

    return v2

    .line 114
    :cond_2
    invoke-interface {p1, v2}, Lcom/applovin/exoplayer2/e/i;->b(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 117
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->c()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gez v3, :cond_5

    .line 118
    :cond_4
    invoke-interface {p1, v2}, Lcom/applovin/exoplayer2/e/i;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    goto :goto_2

    :cond_5
    return v1
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/h/e;->a()V

    .line 133
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 134
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    .line 135
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->o()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->a:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 144
    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->b:I

    .line 150
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->t()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/e;->c:J

    .line 151
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/e;->d:J

    .line 152
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/e;->e:J

    .line 153
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/e;->f:J

    .line 154
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/h/e;->g:I

    add-int/lit8 v1, v0, 0x1b

    .line 155
    iput v1, p0, Lcom/applovin/exoplayer2/e/h/e;->h:I

    .line 158
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->a(I)V

    .line 159
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/h/e;->g:I

    invoke-static {p1, v0, v2, v1, p2}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 162
    :cond_3
    :goto_0
    iget p1, p0, Lcom/applovin/exoplayer2/e/h/e;->g:I

    if-ge v2, p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/h/e;->j:[I

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/h/e;->k:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result p2

    aput p2, p1, v2

    .line 164
    iget p1, p0, Lcom/applovin/exoplayer2/e/h/e;->i:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/h/e;->j:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/applovin/exoplayer2/e/h/e;->i:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2
.end method
