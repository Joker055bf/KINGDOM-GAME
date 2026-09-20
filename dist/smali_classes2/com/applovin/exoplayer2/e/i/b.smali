.class public final Lcom/applovin/exoplayer2/e/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# instance fields
.field private final a:Lcom/applovin/exoplayer2/l/x;

.field private final b:Lcom/applovin/exoplayer2/l/y;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/exoplayer2/e/x;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/applovin/exoplayer2/v;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/applovin/exoplayer2/l/x;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->a:Lcom/applovin/exoplayer2/l/x;

    .line 84
    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->a:[B

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    .line 87
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;[BI)Z
    .locals 2

    .line 166
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget v1, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/applovin/exoplayer2/l/y;->a([BII)V

    .line 168
    iget p1, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/l/y;)Z
    .locals 5

    .line 180
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 181
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/b;->h:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/b;->h:Z

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->h()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 187
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/b;->h:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    .line 190
    :cond_3
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/b;->h:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->a:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->a(I)V

    .line 199
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->a:Lcom/applovin/exoplayer2/l/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/b;->a(Lcom/applovin/exoplayer2/l/x;)Lcom/applovin/exoplayer2/b/b$a;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/applovin/exoplayer2/b/b$a;->d:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    iget v2, v2, Lcom/applovin/exoplayer2/v;->y:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/applovin/exoplayer2/b/b$a;->c:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    iget v2, v2, Lcom/applovin/exoplayer2/v;->z:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/applovin/exoplayer2/b/b$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    iget-object v2, v2, Lcom/applovin/exoplayer2/v;->l:Ljava/lang/String;

    .line 203
    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    new-instance v1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->d:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->a(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/exoplayer2/b/b$a;->a:Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->f(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    iget v2, v0, Lcom/applovin/exoplayer2/b/b$a;->d:I

    .line 208
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->k(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    iget v2, v0, Lcom/applovin/exoplayer2/b/b$a;->c:I

    .line 209
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->l(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->c:Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/v$a;->a()Lcom/applovin/exoplayer2/v;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    .line 212
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/v;)V

    .line 214
    :cond_1
    iget v1, v0, Lcom/applovin/exoplayer2/b/b$a;->e:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/b;->k:I

    .line 217
    iget v0, v0, Lcom/applovin/exoplayer2/b/b$a;->f:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->j:Lcom/applovin/exoplayer2/v;

    iget v2, v2, Lcom/applovin/exoplayer2/v;->z:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/b;->i:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    .line 93
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    .line 94
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/b;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    return-void
.end method

.method public a(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 108
    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .locals 1

    .line 100
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->a()V

    .line 101
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->d:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/applovin/exoplayer2/e/j;->a(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/y;)V
    .locals 10

    .line 114
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    if-lez v0, :cond_5

    .line 116
    iget v0, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->a()I

    move-result v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/b;->k:I

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v2, p1, v0}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    .line 136
    iget v2, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    .line 137
    iget v7, p0, Lcom/applovin/exoplayer2/e/i/b;->k:I

    if-ne v2, v7, :cond_0

    .line 138
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 139
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    .line 140
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/b;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/i/b;->l:J

    .line 142
    :cond_2
    iput v1, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lcom/applovin/exoplayer2/e/i/b;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/b;->c()V

    .line 128
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->d(I)V

    .line 129
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->e:Lcom/applovin/exoplayer2/e/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {v0, v1, v3}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/l/y;I)V

    .line 130
    iput v2, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    goto :goto_0

    .line 118
    :cond_4
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/b;->b(Lcom/applovin/exoplayer2/l/y;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput v3, p0, Lcom/applovin/exoplayer2/e/i/b;->f:I

    .line 120
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 121
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/b;->b:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 122
    iput v2, p0, Lcom/applovin/exoplayer2/e/i/b;->g:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
