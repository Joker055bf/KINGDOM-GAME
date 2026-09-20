.class public final Lcom/applovin/exoplayer2/l/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[J

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 32
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l/af;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    .line 38
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/af;->a(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    return-void
.end method

.method private a(JZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    .line 111
    :goto_0
    iget v3, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    if-lez v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    iget v4, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    aget-wide v4, v3, v4

    sub-long v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    if-nez p3, :cond_1

    neg-long v5, v3

    cmp-long v1, v5, v1

    if-ltz v1, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/af;->d()Ljava/lang/Object;

    move-result-object v0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static a(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 173
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private b(J)V
    .locals 3

    .line 133
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    if-lez v0, :cond_0

    .line 134
    iget v1, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 135
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    aget-wide v1, v0, v1

    cmp-long p1, p1, v1

    if-gtz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/af;->a()V

    :cond_0
    return-void
.end method

.method private b(JLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 165
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    iget v1, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 166
    iget-object v3, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    aput-wide p1, v3, v0

    .line 167
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 168
    iput v1, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 124
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->b(Z)V

    .line 125
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 126
    aput-object v4, v0, v2

    add-int/2addr v2, v1

    .line 127
    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    .line 128
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    return-object v3
.end method

.method private e()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 143
    iget v1, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 147
    new-array v2, v1, [J

    .line 148
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/af;->a(I)[Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v3, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    sub-int/2addr v0, v3

    .line 152
    iget-object v4, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v3, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v3, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    if-lez v3, :cond_1

    .line 156
    iget-object v4, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v3, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    :cond_1
    iput-object v2, p0, Lcom/applovin/exoplayer2/l/af;->a:[J

    .line 160
    iput-object v1, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    .line 161
    iput v5, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 81
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/l/af;->a(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 54
    :try_start_0
    iput v0, p0, Lcom/applovin/exoplayer2/l/af;->c:I

    .line 55
    iput v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    .line 56
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/af;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/l/af;->b(J)V

    .line 48
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/af;->e()V

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/l/af;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget v0, p0, Lcom/applovin/exoplayer2/l/af;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/af;->d()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
