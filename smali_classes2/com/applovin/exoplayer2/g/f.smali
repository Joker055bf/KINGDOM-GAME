.class public final Lcom/applovin/exoplayer2/g/f;
.super Lcom/applovin/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/applovin/exoplayer2/g/c;

.field private final b:Lcom/applovin/exoplayer2/g/e;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/applovin/exoplayer2/g/d;

.field private e:Lcom/applovin/exoplayer2/g/b;

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:Lcom/applovin/exoplayer2/g/a;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/g/e;Landroid/os/Looper;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/applovin/exoplayer2/g/c;->a:Lcom/applovin/exoplayer2/g/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/g/f;-><init>(Lcom/applovin/exoplayer2/g/e;Landroid/os/Looper;Lcom/applovin/exoplayer2/g/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/g/e;Landroid/os/Looper;Lcom/applovin/exoplayer2/g/c;)V
    .locals 1

    const/4 v0, 0x5

    .line 77
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e;-><init>(I)V

    .line 78
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/g/e;

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->b:Lcom/applovin/exoplayer2/g/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p2, p0}, Lcom/applovin/exoplayer2/l/ai;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->c:Landroid/os/Handler;

    .line 81
    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/g/c;

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->a:Lcom/applovin/exoplayer2/g/c;

    .line 82
    new-instance p1, Lcom/applovin/exoplayer2/g/d;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/g/d;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    iput-wide p1, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    return-void
.end method

.method private B()V
    .locals 3

    .line 184
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/g/f;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/g/d;->a()V

    .line 186
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/g/f;->t()Lcom/applovin/exoplayer2/w;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/exoplayer2/g/f;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 189
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/g/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/g/f;->f:Z

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/g/f;->h:J

    iput-wide v1, v0, Lcom/applovin/exoplayer2/g/d;->f:J

    .line 193
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/g/d;->h()V

    .line 194
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->e:Lcom/applovin/exoplayer2/g/b;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/g/b;

    iget-object v1, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/g/b;->a(Lcom/applovin/exoplayer2/g/d;)Lcom/applovin/exoplayer2/g/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/g/a;->a()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/g/f;->a(Lcom/applovin/exoplayer2/g/a;Ljava/util/List;)V

    .line 198
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Lcom/applovin/exoplayer2/g/a;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/g/a;-><init>(Ljava/util/List;)V

    .line 200
    iput-object v0, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    .line 201
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/g/d;->d:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    .line 206
    iget-object v0, v0, Lcom/applovin/exoplayer2/w;->b:Lcom/applovin/exoplayer2/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/v;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/v;->p:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/g/f;->h:J

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/g/a;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/g/f;->b(Lcom/applovin/exoplayer2/g/a;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/g/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/g/a;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/g/a$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/g/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 131
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/g/a;->a(I)Lcom/applovin/exoplayer2/g/a$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/applovin/exoplayer2/g/a$a;->a()Lcom/applovin/exoplayer2/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/applovin/exoplayer2/g/f;->a:Lcom/applovin/exoplayer2/g/c;

    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/g/c;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/applovin/exoplayer2/g/f;->a:Lcom/applovin/exoplayer2/g/c;

    .line 134
    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/g/c;->b(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/g/b;

    move-result-object v1

    .line 137
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/g/a;->a(I)Lcom/applovin/exoplayer2/g/a$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/applovin/exoplayer2/g/a$a;->b()[B

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 138
    iget-object v3, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/g/d;->a()V

    .line 139
    iget-object v3, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/g/d;->f(I)V

    .line 140
    iget-object v3, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    iget-object v3, v3, Lcom/applovin/exoplayer2/g/d;->b:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v2, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/g/d;->h()V

    .line 142
    iget-object v2, p0, Lcom/applovin/exoplayer2/g/f;->d:Lcom/applovin/exoplayer2/g/d;

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/g/b;->a(Lcom/applovin/exoplayer2/g/d;)Lcom/applovin/exoplayer2/g/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-direct {p0, v1, p2}, Lcom/applovin/exoplayer2/g/f;->a(Lcom/applovin/exoplayer2/g/a;Ljava/util/List;)V

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/g/a;->a(I)Lcom/applovin/exoplayer2/g/a$a;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/g/a;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->b:Lcom/applovin/exoplayer2/g/e;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/g/e;->a(Lcom/applovin/exoplayer2/g/a;)V

    return-void
.end method

.method private c(J)Z
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    cmp-long p1, v2, p1

    if-gtz p1, :cond_0

    .line 214
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/g/f;->a(Lcom/applovin/exoplayer2/g/a;)V

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 216
    iput-wide p1, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 219
    :goto_0
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/g/f;->f:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    if-nez p2, :cond_1

    .line 220
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/g/f;->g:Z

    :cond_1
    return p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/g/f;->g:Z

    return v0
.end method

.method public a(Lcom/applovin/exoplayer2/v;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/applovin/exoplayer2/g/f;->a:Lcom/applovin/exoplayer2/g/c;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/g/c;->a(Lcom/applovin/exoplayer2/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget p1, p1, Lcom/applovin/exoplayer2/v;->E:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 98
    invoke-static {p1}, Lcom/applovin/exoplayer2/as;->b(I)I

    move-result p1

    return p1
.end method

.method public a(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/applovin/exoplayer2/g/f;->B()V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/g/f;->c(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    iput-wide p1, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/g/f;->f:Z

    .line 112
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/g/f;->g:Z

    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/applovin/exoplayer2/g/f;->a:Lcom/applovin/exoplayer2/g/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/g/c;->b(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/g/b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/g/f;->e:Lcom/applovin/exoplayer2/g/b;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 175
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/applovin/exoplayer2/g/a;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/g/f;->b(Lcom/applovin/exoplayer2/g/a;)V

    const/4 p1, 0x1

    return p1

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected r()V
    .locals 3

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/applovin/exoplayer2/g/f;->j:Lcom/applovin/exoplayer2/g/a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 157
    iput-wide v1, p0, Lcom/applovin/exoplayer2/g/f;->i:J

    .line 158
    iput-object v0, p0, Lcom/applovin/exoplayer2/g/f;->e:Lcom/applovin/exoplayer2/g/b;

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
