.class final Lcom/applovin/exoplayer2/e/h/i;
.super Lcom/applovin/exoplayer2/e/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/h/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/exoplayer2/e/h/i$a;

.field private b:I

.field private c:Z

.field private d:Lcom/applovin/exoplayer2/e/z$d;

.field private e:Lcom/applovin/exoplayer2/e/z$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/h/h;-><init>()V

    return-void
.end method

.method static a(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static a(BLcom/applovin/exoplayer2/e/h/i$a;)I
    .locals 2

    .line 185
    iget v0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/applovin/exoplayer2/e/h/i;->a(BII)I

    move-result p0

    .line 187
    iget-object v0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->d:[Lcom/applovin/exoplayer2/e/z$c;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/e/z$c;->a:Z

    if-nez p0, :cond_0

    .line 188
    iget-object p0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->a:Lcom/applovin/exoplayer2/e/z$d;

    iget p0, p0, Lcom/applovin/exoplayer2/e/z$d;->g:I

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->a:Lcom/applovin/exoplayer2/e/z$d;

    iget p0, p0, Lcom/applovin/exoplayer2/e/z$d;->h:I

    :goto_0
    return p0
.end method

.method static a(Lcom/applovin/exoplayer2/l/y;J)V
    .locals 6

    .line 169
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->a([B)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->c(I)V

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 178
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 179
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 180
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public static a(Lcom/applovin/exoplayer2/l/y;)Z
    .locals 1

    const/4 v0, 0x1

    .line 45
    :try_start_0
    invoke-static {v0, p0, v0}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/l/y;Z)Z

    move-result p0
    :try_end_0
    .catch Lcom/applovin/exoplayer2/ai; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/e/h/h;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->a:Lcom/applovin/exoplayer2/e/h/i$a;

    .line 56
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->d:Lcom/applovin/exoplayer2/e/z$d;

    .line 57
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->e:Lcom/applovin/exoplayer2/e/z$b;

    :cond_0
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/applovin/exoplayer2/e/h/i;->b:I

    .line 60
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/h/i;->c:Z

    return-void
.end method

.method protected a(Lcom/applovin/exoplayer2/l/y;JLcom/applovin/exoplayer2/e/h/h$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/h/i;->a:Lcom/applovin/exoplayer2/e/h/i$a;

    if-eqz p2, :cond_0

    .line 96
    iget-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->a:Lcom/applovin/exoplayer2/v;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/e/h/i;->c(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/h/i$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->a:Lcom/applovin/exoplayer2/e/h/i$a;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 106
    :cond_1
    iget-object p3, p1, Lcom/applovin/exoplayer2/e/h/i$a;->a:Lcom/applovin/exoplayer2/e/z$d;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p3, Lcom/applovin/exoplayer2/e/z$d;->j:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p1, Lcom/applovin/exoplayer2/e/h/i$a;->c:[B

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance p1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v1, "audio/vorbis"

    .line 114
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->f(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->e:I

    .line 115
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->d(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->d:I

    .line 116
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->e(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->b:I

    .line 117
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->k(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget p3, p3, Lcom/applovin/exoplayer2/e/z$d;->c:I

    .line 118
    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/v$a;->l(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/v$a;->a(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->a()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iput-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->a:Lcom/applovin/exoplayer2/v;

    return p2
.end method

.method protected b(Lcom/applovin/exoplayer2/l/y;)J
    .locals 5

    .line 73
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/h/i;->a:Lcom/applovin/exoplayer2/e/h/i$a;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/e/h/i$a;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/e/h/i;->a(BLcom/applovin/exoplayer2/e/h/i$a;)I

    move-result v0

    .line 82
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/h/i;->c:Z

    if-eqz v3, :cond_1

    iget v1, p0, Lcom/applovin/exoplayer2/e/h/i;->b:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_1
    int-to-long v3, v1

    .line 84
    invoke-static {p1, v3, v4}, Lcom/applovin/exoplayer2/e/h/i;->a(Lcom/applovin/exoplayer2/l/y;J)V

    .line 87
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/h/i;->c:Z

    .line 88
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/i;->b:I

    return-wide v3
.end method

.method c(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/h/i$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/i;->d:Lcom/applovin/exoplayer2/e/z$d;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 129
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->a(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$d;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->d:Lcom/applovin/exoplayer2/e/z$d;

    return-object v0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/h/i;->e:Lcom/applovin/exoplayer2/e/z$b;

    if-nez v2, :cond_1

    .line 134
    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->b(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->e:Lcom/applovin/exoplayer2/e/z$b;

    return-object v0

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v0

    new-array v3, v0, [B

    .line 143
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->b()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v0, v1, Lcom/applovin/exoplayer2/e/z$d;->b:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/z;->a(Lcom/applovin/exoplayer2/l/y;I)[Lcom/applovin/exoplayer2/e/z$c;

    move-result-object v4

    .line 147
    array-length p1, v4

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->a(I)I

    move-result v5

    .line 149
    new-instance p1, Lcom/applovin/exoplayer2/e/h/i$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/h/i$a;-><init>(Lcom/applovin/exoplayer2/e/z$d;Lcom/applovin/exoplayer2/e/z$b;[B[Lcom/applovin/exoplayer2/e/z$c;I)V

    return-object p1
.end method

.method protected c(J)V
    .locals 2

    .line 65
    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/e/h/h;->c(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 66
    :goto_0
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/h/i;->c:Z

    .line 67
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->d:Lcom/applovin/exoplayer2/e/z$d;

    if-eqz p1, :cond_1

    iget p2, p1, Lcom/applovin/exoplayer2/e/z$d;->g:I

    :cond_1
    iput p2, p0, Lcom/applovin/exoplayer2/e/h/i;->b:I

    return-void
.end method
