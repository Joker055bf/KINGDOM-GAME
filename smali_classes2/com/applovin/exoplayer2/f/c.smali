.class final Lcom/applovin/exoplayer2/f/c;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:Lcom/applovin/exoplayer2/f/f;

.field private final e:Lcom/applovin/exoplayer2/f/f;

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/media/MediaFormat;

.field private i:Landroid/media/MediaFormat;

.field private j:Landroid/media/MediaCodec$CodecException;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/IllegalStateException;


# direct methods
.method public static synthetic $r8$lambda$oore02LfapAs4ccm67HZsDI_GMY(Lcom/applovin/exoplayer2/f/c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->b:Landroid/os/HandlerThread;

    .line 84
    new-instance p1, Lcom/applovin/exoplayer2/f/f;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/f;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->d:Lcom/applovin/exoplayer2/f/f;

    .line 85
    new-instance p1, Lcom/applovin/exoplayer2/f/f;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/f/f;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    .line 86
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->f:Ljava/util/ArrayDeque;

    .line 87
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    return-void
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/f/f;->a(I)V

    .line 298
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/IllegalStateException;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->m:Ljava/lang/IllegalStateException;

    .line 328
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/c;->c(Ljava/lang/Runnable;)V

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 5

    .line 251
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/c;->k:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/f/c;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    return-void

    :cond_1
    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 261
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/c;->a(Ljava/lang/IllegalStateException;)V

    return-void

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->d()V

    .line 266
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/c;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 268
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/c;->a(Ljava/lang/IllegalStateException;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/c;->i:Landroid/media/MediaFormat;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->d:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/f;->c()V

    .line 284
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/f;->c()V

    .line 285
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 286
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/c;->j:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method private synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/f/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()Z
    .locals 4

    .line 292
    iget-wide v0, p0, Lcom/applovin/exoplayer2/f/c;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/c;->l:Z

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

.method private f()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->g()V

    .line 304
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->m:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 311
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/c;->m:Ljava/lang/IllegalStateException;

    .line 312
    throw v0
.end method

.method private h()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lcom/applovin/exoplayer2/f/c;->j:Landroid/media/MediaCodec$CodecException;

    .line 321
    throw v0
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->f()V

    .line 152
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    monitor-exit v0

    return v2

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/f;->a()I

    move-result v1

    if-ltz v1, :cond_2

    .line 157
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/c;->h:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/applovin/exoplayer2/f/c;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 159
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/c;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/c;->h:Landroid/media/MediaFormat;

    .line 167
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 117
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/f/c;->l:Z

    .line 118
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 119
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->d()V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Landroid/media/MediaCodec;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 101
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 106
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-wide v1, p0, Lcom/applovin/exoplayer2/f/c;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/applovin/exoplayer2/f/c;->k:J

    .line 202
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->c:Landroid/os/Handler;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/applovin/exoplayer2/f/c$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/applovin/exoplayer2/f/c$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/exoplayer2/f/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 130
    monitor-exit v0

    return v2

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/c;->f()V

    .line 133
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->d:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->d:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/f;->a()I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/applovin/exoplayer2/f/c;->h:Landroid/media/MediaFormat;

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-object v1

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 231
    :try_start_0
    iput-object p2, p0, Lcom/applovin/exoplayer2/f/c;->j:Landroid/media/MediaCodec$CodecException;

    .line 232
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 210
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->d:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/f/f;->a(I)V

    .line 212
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->i:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/f/c;->a(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/applovin/exoplayer2/f/c;->i:Landroid/media/MediaFormat;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/c;->e:Lcom/applovin/exoplayer2/f/f;

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/f/f;->a(I)V

    .line 224
    iget-object p2, p0, Lcom/applovin/exoplayer2/f/c;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 238
    :try_start_0
    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/f/c;->a(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    .line 239
    iput-object p2, p0, Lcom/applovin/exoplayer2/f/c;->i:Landroid/media/MediaFormat;

    .line 240
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
