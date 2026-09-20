.class public final Lcom/applovin/exoplayer2/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/c/c$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Landroid/media/MediaCodec$CryptoInfo;

.field private final j:Lcom/applovin/exoplayer2/c/c$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 80
    sget v1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/applovin/exoplayer2/c/c$a;

    invoke-direct {v1, v0, v3}, Lcom/applovin/exoplayer2/c/c$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/applovin/exoplayer2/c/c$1;)V

    move-object v3, v1

    :cond_0
    iput-object v3, p0, Lcom/applovin/exoplayer2/c/c;->j:Lcom/applovin/exoplayer2/c/c$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->d:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 144
    iput-object v0, p0, Lcom/applovin/exoplayer2/c/c;->d:[I

    .line 145
    iget-object v1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->d:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public a(I[I[I[B[BIII)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/applovin/exoplayer2/c/c;->f:I

    .line 94
    iput-object p2, p0, Lcom/applovin/exoplayer2/c/c;->d:[I

    .line 95
    iput-object p3, p0, Lcom/applovin/exoplayer2/c/c;->e:[I

    .line 96
    iput-object p4, p0, Lcom/applovin/exoplayer2/c/c;->b:[B

    .line 97
    iput-object p5, p0, Lcom/applovin/exoplayer2/c/c;->a:[B

    .line 98
    iput p6, p0, Lcom/applovin/exoplayer2/c/c;->c:I

    .line 99
    iput p7, p0, Lcom/applovin/exoplayer2/c/c;->g:I

    .line 100
    iput p8, p0, Lcom/applovin/exoplayer2/c/c;->h:I

    .line 103
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 104
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 105
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 106
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 107
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 108
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 109
    sget p1, Lcom/applovin/exoplayer2/l/ai;->a:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->j:Lcom/applovin/exoplayer2/c/c$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/c/c$a;

    invoke-static {p1, p7, p8}, Lcom/applovin/exoplayer2/c/c$a;->a(Lcom/applovin/exoplayer2/c/c$a;II)V

    :cond_0
    return-void
.end method
