.class public abstract Lcom/google/android/gms/internal/ads/zzuu;
.super Lcom/google/android/gms/internal/ads/zzij;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:F

.field private zzB:Ljava/util/ArrayDeque;

.field private zzC:Lcom/google/android/gms/internal/ads/zzuq;

.field private zzD:Lcom/google/android/gms/internal/ads/zzun;

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:J

.field private zzL:Z

.field private zzM:J

.field private zzN:I

.field private zzO:I

.field private zzP:Ljava/nio/ByteBuffer;

.field private zzQ:Z

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:Z

.field private zzV:Z

.field private zzW:I

.field private zzX:I

.field private zzY:I

.field private zzZ:Z

.field protected zza:Lcom/google/android/gms/internal/ads/zzin;

.field private zzaa:Z

.field private zzab:Z

.field private zzac:J

.field private zzad:Z

.field private zzae:Z

.field private zzaf:Z

.field private zzag:Lcom/google/android/gms/internal/ads/zzut;

.field private zzah:J

.field private zzai:Z

.field private zzaj:Z

.field private zzak:Z

.field private zzal:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzui;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzuw;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzih;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzih;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzih;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzub;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zztb;

.field private final zzm:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzn:Lcom/google/android/gms/internal/ads/zzv;

.field private zzo:Lcom/google/android/gms/internal/ads/zzv;

.field private zzp:Lcom/google/android/gms/internal/ads/zzth;

.field private zzq:Lcom/google/android/gms/internal/ads/zzth;

.field private zzr:Lcom/google/android/gms/internal/ads/zzmk;

.field private zzs:Landroid/media/MediaCrypto;

.field private zzt:J

.field private zzu:F

.field private zzv:F

.field private zzw:Lcom/google/android/gms/internal/ads/zzuk;

.field private zzx:Lcom/google/android/gms/internal/ads/zzv;

.field private zzy:Landroid/media/MediaFormat;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzuu;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzuw;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzij;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzc:Lcom/google/android/gms/internal/ads/zzui;

    .line 14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zze:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzih;

    const/4 p2, 0x0

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzih;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzih;

    .line 6
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzih;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzih;

    const/4 p3, 0x2

    .line 7
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzih;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:Lcom/google/android/gms/internal/ads/zzih;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzub;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzi:Lcom/google/android/gms/internal/ads/zzub;

    .line 9
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzu:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzv:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzt:J

    new-instance p5, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zzut;->zza:Lcom/google/android/gms/internal/ads/zzut;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzih;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzub;->zzc:Ljava/nio/ByteBuffer;

    .line 12
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zztb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zztb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzl:Lcom/google/android/gms/internal/ads/zztb;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzA:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzE:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzM:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzah:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzK:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzin;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    return-void
.end method

.method private final zzao()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzat()V

    return-void
.end method

.method private final zzat()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzU:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzi:Lcom/google/android/gms/internal/ads/zzub;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:Lcom/google/android/gms/internal/ads/zzih;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzl:Lcom/google/android/gms/internal/ads/zztb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztb;->zzb()V

    return-void
.end method

.method private final zzau()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaK()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaI()V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzav()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzav()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuk;->zzk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaN()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaN()V

    .line 4
    throw v0
.end method

.method private final zzaw()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v2

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzah:J

    return-void
.end method

.method private final zzax(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzH()Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzf:Lcom/google/android/gms/internal/ads/zzih;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzij;->zzO(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzam(Lcom/google/android/gms/internal/ads/zzlh;)Lcom/google/android/gms/internal/ads/zzio;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzic;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzay(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzt:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzt:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected static zzbd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzN:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzbg()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbh()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbi()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzP:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zze()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzv:F

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzI()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzuu;->zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzA:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbl()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzuk;->zzp(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzA:F

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzbk()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbp()V

    :goto_0
    return v1
.end method

.method private final zzbl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaI()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    return-void
.end method

.method private final zzbm()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzar()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaI()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzav()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbp()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzav()V

    return-void
.end method

.method private final zzbn(Lcom/google/android/gms/internal/ads/zzut;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzut;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzai:Z

    :cond_0
    return-void
.end method

.method private final zzbo()Lcom/google/android/gms/internal/ads/zzut;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzut;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    return-object v0
.end method

.method private final zzbp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzth;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    return-void
.end method

.method private final zzbq(JJ)Z
    .locals 4

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzafu;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected zzA(JZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzut;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    if-nez p4, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzat()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaJ()Z

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzut;->zze:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzff;->zzb()V

    return-void
.end method

.method protected zzD()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzut;->zza:Lcom/google/android/gms/internal/ads/zzut;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbn(Lcom/google/android/gms/internal/ads/zzut;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzao()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzau()Z

    return-void
.end method

.method protected zzE()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzao()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    .line 3
    throw v1
.end method

.method public final zzT(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzL:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzuu;->zzah(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public zzV(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzu:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzv:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzuu;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    return-void
.end method

.method public zzX(JJ)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1e

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzar()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v13

    move v3, v14

    :goto_0
    move-object v4, v15

    goto/16 :goto_27

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_1
    move-object v4, v15

    goto/16 :goto_2d

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1e

    const/4 v11, 0x2

    if-nez v1, :cond_2

    .line 2
    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzuu;->zzax(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1e

    if-eqz v1, :cond_18

    :try_start_5
    const-string v1, "bypassRender"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z

    xor-int/2addr v1, v13

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzi:Lcom/google/android/gms/internal/ads/zzub;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzub;->zzp()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_a

    if-eqz v1, :cond_4

    :try_start_6
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzub;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzub;->zzo()I

    move-result v10

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzub;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzG()J

    move-result-wide v1
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzub;->zzn()J

    move-result-wide v12

    .line 6
    invoke-direct {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzuu;->zzbq(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzic;->zzb()Z

    move-result v18

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    .line 41
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 7
    :try_start_8
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v19, v4

    move-wide/from16 v4, p3

    move-object/from16 v21, v11

    move-object/from16 v17, v12

    move-wide/from16 v11, v19

    move/from16 v14, v18

    move-object/from16 v15, v17

    .line 8
    :try_start_9
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzuu;->zzaq(JJLcom/google/android/gms/internal/ads/zzuk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzub;->zzn()J

    move-result-wide v1
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2

    move-object/from16 v15, p0

    .line 9
    :try_start_a
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzuu;->zzaV(J)V

    .line 10
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    goto :goto_5

    :cond_3
    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v2, v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_27

    :catch_3
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_2c

    :catch_4
    move-exception v0

    move-object v2, v0

    move v3, v14

    move-object v4, v15

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_27

    :cond_4
    move-object/from16 v21, v11

    :goto_5
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_8

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    :try_start_b
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_5
    const/4 v14, 0x1

    .line 132
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzT:Z

    if-eqz v1, :cond_6

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzh:Lcom/google/android/gms/internal/ads/zzih;

    move-object/from16 v2, v21

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzub;->zzq(Lcom/google/android/gms/internal/ads/zzih;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_7

    const/4 v13, 0x0

    :try_start_c
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzT:Z

    goto :goto_6

    :cond_6
    move-object/from16 v2, v21

    const/4 v13, 0x0

    :goto_6
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzU:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzub;->zzp()Z

    move-result v1

    if-nez v1, :cond_7

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzao()V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzU:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    if-eqz v1, :cond_17

    goto :goto_8

    :cond_7
    :goto_7
    move/from16 v27, v14

    move v14, v13

    move/from16 v13, v27

    goto/16 :goto_3

    :cond_8
    :goto_8
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    xor-int/2addr v1, v14

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzH()Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzh:Lcom/google/android/gms/internal/ads/zzih;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    .line 17
    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    .line 18
    invoke-virtual {v15, v1, v3, v13}, Lcom/google/android/gms/internal/ads/zzij;->zzO(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I

    move-result v4

    const/4 v12, -0x5

    if-eq v4, v12, :cond_14

    const/4 v5, -0x4

    if-eq v4, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzcW()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    goto/16 :goto_a

    .line 38
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzic;->zzb()Z

    move-result v4

    if-eqz v4, :cond_b

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    goto/16 :goto_a

    :cond_b
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzcW()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzic;->zzd()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 20
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v4

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    :cond_d
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_5

    const-string v5, "audio/opus"

    if-eqz v4, :cond_f

    :try_start_d
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_5

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    :try_start_e
    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzv;

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    .line 22
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    .line 24
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 25
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafu;->zze([B)I

    move-result v4

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    :cond_e
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v6, 0x0

    .line 27
    invoke-virtual {v15, v4, v6}, Lcom/google/android/gms/internal/ads/zzuu;->zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z

    .line 28
    :cond_f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzih;->zzl()V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 29
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzic;->zze()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzih;->zza:Lcom/google/android/gms/internal/ads/zzv;

    .line 30
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzuu;->zzas(Lcom/google/android/gms/internal/ads/zzih;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzG()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzafu;->zzf(JJ)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzl:Lcom/google/android/gms/internal/ads/zztb;

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zztb;->zza(Lcom/google/android/gms/internal/ads/zzih;Ljava/util/List;)V

    :cond_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzub;->zzp()Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_9

    .line 34
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzG()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzub;->zzn()J

    move-result-wide v6

    .line 32
    invoke-direct {v15, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzbq(JJ)Z

    move-result v6

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    .line 33
    invoke-direct {v15, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzuu;->zzbq(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_13

    .line 34
    :goto_9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzub;->zzq(Lcom/google/android/gms/internal/ads/zzih;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_13
    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzT:Z

    goto :goto_a

    .line 37
    :cond_14
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzam(Lcom/google/android/gms/internal/ads/zzlh;)Lcom/google/android/gms/internal/ads/zzio;

    .line 36
    :cond_15
    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzub;->zzp()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzih;->zzl()V

    :cond_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzub;->zzp()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    if-nez v1, :cond_7

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzU:Z

    if-eqz v1, :cond_17

    goto/16 :goto_7

    .line 40
    :cond_17
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_5

    move v3, v13

    move v1, v14

    move-object v4, v15

    goto/16 :goto_24

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v1, v0

    move v3, v13

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v2, v0

    move v1, v14

    move-object v4, v15

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v4, v15

    :goto_c
    const/4 v1, 0x1

    :goto_d
    const/4 v3, 0x0

    goto/16 :goto_27

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object v4, v15

    :goto_e
    const/4 v3, 0x0

    goto/16 :goto_2d

    :catch_a
    move-exception v0

    move/from16 v27, v14

    move v14, v13

    move/from16 v13, v27

    :goto_f
    move-object v2, v0

    move v3, v13

    move v1, v14

    goto/16 :goto_0

    :cond_18
    const/4 v12, -0x5

    move/from16 v27, v14

    move v14, v13

    move/from16 v13, v27

    .line 37
    :try_start_f
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1c

    if-eqz v1, :cond_46

    .line 42
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v9

    const-string v1, "drainAndFeed"

    .line 43
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_10
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_18

    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    :try_start_11
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbg()Z

    move-result v1
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_18

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_24

    :try_start_12
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 45
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzuk;->zzf(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v4

    if-gez v4, :cond_1e

    const/4 v1, -0x2

    if-ne v4, v1, :cond_1a

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzab:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_5

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_13
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzuk;->zzg()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzE:I

    if-eqz v2, :cond_19

    const-string v2, "width"

    .line 66
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_19

    const-string v2, "height"

    .line 67
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_19

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzI:Z

    goto :goto_12

    .line 107
    :cond_19
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzy:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzz:Z

    goto :goto_12

    :cond_1a
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzJ:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    if-nez v1, :cond_1b

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    if-ne v1, v11, :cond_1c

    .line 74
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    :cond_1c
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzK:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1d

    const-wide/16 v1, 0x64

    add-long/2addr v4, v1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdn;->zza()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_1d

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    :cond_1d
    :goto_11
    move-wide v1, v9

    move-object v4, v15

    goto/16 :goto_1c

    .line 46
    :cond_1e
    iget-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v11, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    sub-long/2addr v7, v11

    iput-wide v7, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzI:Z

    if-eqz v5, :cond_1f

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzI:Z

    .line 64
    invoke-interface {v6, v4, v13}, Lcom/google/android/gms/internal/ads/zzuk;->zzc(IZ)V

    :goto_12
    move-wide v1, v9

    move-object v4, v15

    goto/16 :goto_18

    .line 47
    :cond_1f
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_20

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_20

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    goto :goto_11

    :cond_20
    iput v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    .line 48
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzuk;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzP:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_21

    .line 49
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzP:Ljava/nio/ByteBuffer;

    .line 50
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    :cond_21
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzut;->zze:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzff;->zze(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    if-nez v1, :cond_22

    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzai:Z

    if-eqz v4, :cond_22

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzy:Landroid/media/MediaFormat;

    if-eqz v4, :cond_22

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 53
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzut;->zze:Lcom/google/android/gms/internal/ads/zzff;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzff;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    :cond_22
    if-eqz v1, :cond_23

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_13

    .line 69
    :cond_23
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzz:Z

    if-eqz v1, :cond_24

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_24

    .line 53
    :goto_13
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_5

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    :try_start_14
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzy:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v4}, Lcom/google/android/gms/internal/ads/zzuu;->zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzz:Z

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzai:Z
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_5

    :cond_24
    :try_start_15
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_18

    if-nez v1, :cond_26

    :try_start_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzG()J

    move-result-wide v7
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_5

    cmp-long v1, v4, v7

    if-gez v1, :cond_25

    goto :goto_14

    :cond_25
    move v1, v13

    goto :goto_15

    :cond_26
    :goto_14
    move v1, v14

    :goto_15
    :try_start_17
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzQ:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 56
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzut;->zzf:J
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_18

    cmp-long v1, v4, v2

    if-eqz v1, :cond_27

    :try_start_18
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_5

    cmp-long v1, v4, v1

    if-gtz v1, :cond_27

    move v1, v14

    goto :goto_16

    :cond_27
    move v1, v13

    :goto_16
    :try_start_19
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzR:Z

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzP:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzO:I

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget v12, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v4, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzQ:Z

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzR:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzuu;->zzo:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_18

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x1

    .line 58
    :try_start_1a
    move-object/from16 v18, v1

    check-cast v18, Lcom/google/android/gms/internal/ads/zzv;
    :try_end_1a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_18

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v20, v3

    move-wide/from16 v2, p1

    move-wide/from16 v22, v4

    move-wide/from16 v4, p3

    move-wide/from16 v24, v9

    move v9, v12

    move/from16 v10, v17

    move-object/from16 v26, v11

    move-wide/from16 v11, v22

    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v18

    .line 59
    :try_start_1b
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzuu;->zzaq(JJLcom/google/android/gms/internal/ads/zzuk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_17

    if-eqz v1, :cond_2c

    move-object/from16 v1, v26

    .line 60
    :try_start_1c
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_1c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_d

    move-object/from16 v4, p0

    :try_start_1d
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzuu;->zzaV(J)V

    .line 61
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    const/4 v14, 0x1

    goto :goto_17

    :cond_28
    const/4 v14, 0x0

    :goto_17
    if-nez v14, :cond_29

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzaa:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzR:Z

    if-eqz v1, :cond_29

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdn;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzK:J

    .line 63
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbi()V

    if-eqz v14, :cond_2a

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    goto :goto_1b

    :cond_2a
    move-wide/from16 v1, v24

    .line 68
    :goto_18
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzuu;->zzay(J)Z

    move-result v3
    :try_end_1d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_b

    if-nez v3, :cond_2b

    goto :goto_1c

    :cond_2b
    move-wide v9, v1

    move-object v15, v4

    const/4 v11, 0x2

    const/4 v12, -0x5

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_10

    :catch_b
    move-exception v0

    :goto_19
    move-object v2, v0

    goto/16 :goto_c

    :catch_c
    move-exception v0

    :goto_1a
    move-object v1, v0

    goto/16 :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_19

    :catch_e
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1a

    :cond_2c
    move-object/from16 v4, p0

    :goto_1b
    move-wide/from16 v1, v24

    :goto_1c
    :try_start_1e
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-eqz v5, :cond_44

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_44

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    if-eqz v3, :cond_2d

    goto/16 :goto_21

    .line 77
    :cond_2d
    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/internal/ads/zzuk;

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I
    :try_end_1e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_15

    if-gez v3, :cond_2e

    .line 78
    :try_start_1f
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzuk;->zze()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    if-ltz v3, :cond_44

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    .line 79
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzuk;->zzh(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzic;->zza()V
    :try_end_1f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_b

    :cond_2e
    :try_start_20
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I
    :try_end_20
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_20 .. :try_end_20} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_15

    const/4 v13, 0x1

    if-ne v3, v13, :cond_30

    :try_start_21
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzJ:Z

    if-nez v1, :cond_2f

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzaa:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    .line 114
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzuk;->zza(IIIJI)V

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbh()V

    :cond_2f
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I
    :try_end_21
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_21 .. :try_end_21} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_f

    goto/16 :goto_21

    :catch_f
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_d

    :cond_30
    :try_start_22
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzH:Z
    :try_end_22
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_22 .. :try_end_22} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_13

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    :try_start_23
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzH:Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;
    :try_end_23
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_23 .. :try_end_23} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_12

    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    :try_start_24
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzuu;->zzb:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    const/4 v7, 0x0

    const/16 v8, 0x26

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 82
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzuk;->zza(IIIJI)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbh()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    goto/16 :goto_1f

    :cond_31
    const/4 v3, 0x0

    .line 113
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    if-ne v6, v13, :cond_33

    move v14, v3

    :goto_1d
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_24
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_24 .. :try_end_24} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_12

    .line 128
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    :try_start_25
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_32

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    .line 85
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;
    :try_end_25
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_25 .. :try_end_25} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_12

    .line 117
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    :try_start_26
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :cond_32
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    :cond_33
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_26 .. :try_end_26} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_12

    .line 127
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    :try_start_27
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzH()Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v7
    :try_end_27
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_27 .. :try_end_27} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_12

    :try_start_28
    new-instance v8, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v8, v4, v7}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzlh;)V

    .line 89
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzuk;->zzi(Ljava/lang/Runnable;)V
    :try_end_28
    .catch Lcom/google/android/gms/internal/ads/zzig; {:try_start_28 .. :try_end_28} :catch_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_28 .. :try_end_28} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_28} :catch_12

    :try_start_29
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/4 v9, -0x3

    if-ne v8, v9, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzcW()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v1

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    goto/16 :goto_22

    :cond_34
    const/4 v14, -0x5

    if-ne v8, v14, :cond_36

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    if-ne v5, v12, :cond_35

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    .line 94
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    .line 95
    :cond_35
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzam(Lcom/google/android/gms/internal/ads/zzlh;)Lcom/google/android/gms/internal/ads/zzio;

    goto/16 :goto_1f

    :cond_36
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zzb()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v1

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    if-ne v1, v12, :cond_37

    .line 120
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    :cond_37
    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzad:Z

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    if-nez v1, :cond_38

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbm()V

    goto/16 :goto_22

    :cond_38
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzJ:Z

    if-nez v1, :cond_45

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzaa:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    .line 122
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzuk;->zza(IIIJI)V

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbh()V

    goto/16 :goto_22

    :cond_39
    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    if-nez v8, :cond_3a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zzc()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 112
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zza()V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    if-ne v5, v12, :cond_43

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    goto/16 :goto_1f

    :cond_3a
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    .line 96
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzaT(Lcom/google/android/gms/internal/ads/zzih;)Z

    move-result v10

    if-nez v10, :cond_43

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzih;->zzk()Z

    move-result v10

    if-eqz v10, :cond_3b

    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzih;->zzb:Lcom/google/android/gms/internal/ads/zzie;

    .line 97
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzie;->zzc(I)V

    :cond_3b
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z

    if-eqz v6, :cond_3c

    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzut;->zze:Lcom/google/android/gms/internal/ads/zzff;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_29
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_29 .. :try_end_29} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_29} :catch_12

    .line 125
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    :try_start_2a
    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v6, v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z

    :cond_3c
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    .line 99
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzcW()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zzd()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 100
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbo()Lcom/google/android/gms/internal/ads/zzut;

    move-result-object v6

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    .line 101
    :cond_3e
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzih;->zzl()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzic;->zze()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 102
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzas(Lcom/google/android/gms/internal/ads/zzih;)V

    :cond_3f
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z

    if-eqz v6, :cond_41

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J
    :try_end_2a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2a .. :try_end_2a} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_2a} :catch_12

    cmp-long v6, v8, v14

    if-gtz v6, :cond_40

    :try_start_2b
    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    add-long/2addr v12, v14

    iput-wide v12, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    :cond_40
    iput-wide v8, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z

    .line 103
    :cond_41
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzaR(Lcom/google/android/gms/internal/ads/zzih;)V

    .line 104
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzaS(Lcom/google/android/gms/internal/ads/zzih;)I

    move-result v11

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    add-long/2addr v12, v8

    if-eqz v10, :cond_42

    .line 108
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzuk;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    const/4 v8, 0x0

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzih;->zzb:Lcom/google/android/gms/internal/ads/zzie;

    move v7, v8

    move-object v8, v9

    move-wide v9, v12

    .line 109
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzuk;->zzb(IILcom/google/android/gms/internal/ads/zzie;JI)V

    goto :goto_1e

    .line 105
    :cond_42
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzuk;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzN:I

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzih;->zzc:Ljava/nio/ByteBuffer;
    :try_end_2b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2b} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2b} :catch_14

    .line 124
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    .line 106
    :try_start_2c
    move-object v9, v7

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    move v7, v8

    move v8, v9

    move-wide v9, v12

    .line 107
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzuk;->zza(IIIJI)V

    .line 110
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbh()V
    :try_end_2c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2c .. :try_end_2c} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_14

    const/4 v5, 0x1

    :try_start_2d
    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 111
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzin;->zzc:I
    :try_end_2d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2d .. :try_end_2d} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_2d} :catch_10

    add-int/2addr v7, v5

    :try_start_2e
    iput v7, v6, Lcom/google/android/gms/internal/ads/zzin;->zzc:I

    goto :goto_1f

    :catch_10
    move-exception v0

    move-object v2, v0

    move v1, v5

    goto/16 :goto_27

    :catch_11
    move-exception v0

    move-object v5, v0

    .line 90
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzuu;->zzal(Ljava/lang/Exception;)V

    .line 91
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzuu;->zzax(I)Z

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzav()V

    .line 113
    :cond_43
    :goto_1f
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzuu;->zzay(J)Z

    move-result v5

    if-eqz v5, :cond_45

    goto/16 :goto_1c

    :catch_12
    move-exception v0

    goto :goto_20

    :catch_13
    move-exception v0

    const/4 v3, 0x0

    :goto_20
    move-object v2, v0

    move v1, v13

    goto :goto_27

    :cond_44
    :goto_21
    const/4 v3, 0x0

    .line 126
    :cond_45
    :goto_22
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2e .. :try_end_2e} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_2e} :catch_14

    const/4 v1, 0x1

    goto :goto_24

    :catch_14
    move-exception v0

    goto :goto_23

    :catch_15
    move-exception v0

    const/4 v3, 0x0

    :goto_23
    move-object v2, v0

    goto/16 :goto_4

    :catch_16
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_2c

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto :goto_23

    :catch_18
    move-exception v0

    move v3, v13

    move-object v4, v15

    move-object v2, v0

    move v1, v14

    goto :goto_27

    :cond_46
    move v3, v13

    move-object v4, v15

    .line 69
    :try_start_2f
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 130
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzin;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzij;->zzP(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzin;->zzd:I
    :try_end_2f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2f .. :try_end_2f} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_2f} :catch_1a

    const/4 v1, 0x1

    .line 131
    :try_start_30
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzax(I)Z

    .line 40
    :goto_24
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzin;->zza()V
    :try_end_30
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_30 .. :try_end_30} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_30} :catch_19

    return-void

    :catch_19
    move-exception v0

    goto :goto_26

    :catch_1a
    move-exception v0

    const/4 v1, 0x1

    goto :goto_26

    :catch_1b
    move-exception v0

    goto/16 :goto_2c

    :catch_1c
    move-exception v0

    move v3, v13

    move v1, v14

    goto :goto_25

    :catch_1d
    move-exception v0

    move v3, v13

    goto :goto_2b

    :catch_1e
    move-exception v0

    move v1, v13

    move v3, v14

    :goto_25
    move-object v4, v15

    :goto_26
    move-object v2, v0

    .line 133
    :goto_27
    instance-of v5, v2, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_47

    goto :goto_28

    .line 134
    :cond_47
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 135
    array-length v7, v6

    if-lez v7, :cond_4b

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.MediaCodec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 137
    :goto_28
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzuu;->zzal(Ljava/lang/Exception;)V

    if-eqz v5, :cond_48

    .line 138
    move-object v5, v2

    check-cast v5, Landroid/media/MediaCodec$CodecException;

    .line 139
    invoke-virtual {v5}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v5

    if-eqz v5, :cond_48

    move v14, v1

    goto :goto_29

    :cond_48
    move v14, v3

    :goto_29
    if-eqz v14, :cond_49

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaI()V

    :cond_49
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;

    .line 141
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzaP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzun;)Lcom/google/android/gms/internal/ads/zzum;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzum;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_4a

    const/16 v2, 0xfa6

    goto :goto_2a

    :cond_4a
    const/16 v2, 0xfa3

    :goto_2a
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 142
    invoke-virtual {v4, v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/zzij;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v1

    throw v1

    .line 136
    :cond_4b
    throw v2

    :catch_1f
    move-exception v0

    move v3, v14

    :goto_2b
    move-object v4, v15

    :goto_2c
    move-object v1, v0

    .line 131
    :goto_2d
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 143
    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzE(I)I

    move-result v5

    .line 144
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzij;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v1

    .line 145
    throw v1
.end method

.method public zzY()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzae:Z

    return v0
.end method

.method protected final zzaA()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v9, "MediaCodecRenderer"

    .line 1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v0, :cond_15

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    if-nez v0, :cond_15

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v10, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzuu;->zzaB(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzao()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzi:Lcom/google/android/gms/internal/ads/zzub;

    .line 4
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzub;->zzm(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzi:Lcom/google/android/gms/internal/ads/zzub;

    const/16 v1, 0x20

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzub;->zzm(I)V

    .line 4
    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    return-void

    .line 3
    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzth;->zza()Lcom/google/android/gms/internal/ads/zztg;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    const-string v13, "Failed to initialize decoder: "

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_0 .. :try_end_0} :catch_4

    .line 60
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :try_start_1
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v15, 0x0

    if-nez v0, :cond_5

    :try_start_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    .line 8
    invoke-virtual {v8, v0, v14, v12}, Lcom/google/android/gms/internal/ads/zzuu;->zzad(Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    .line 12
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzun;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v15, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzC:Lcom/google/android/gms/internal/ads/zzuq;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v0

    .line 60
    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzuq;

    const v2, -0xc34e

    .line 13
    invoke-direct {v1, v14, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 12
    :cond_5
    :goto_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 15
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_3 .. :try_end_3} :catch_4

    .line 59
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_4
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v0, :cond_13

    .line 17
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzun;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_4 .. :try_end_4} :catch_4

    .line 58
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_5
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzun;

    .line 18
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzuu;->zzaQ(Lcom/google/android/gms/internal/ads/zzv;)Z

    .line 19
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzaC(Lcom/google/android/gms/internal/ads/zzun;)Z

    move-result v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_15

    :try_start_6
    const-string v0, "createCodec:"

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_7
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzv:F

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzI()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-virtual {v8, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzuu;->zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzuu;->zze:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    .line 22
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v4

    .line 23
    invoke-virtual {v8, v7, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzuu;->zzaf(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzuh;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    if-lt v12, v15, :cond_7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzK()Lcom/google/android/gms/internal/ads/zzpq;

    move-result-object v12

    .line 25
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpq;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v12

    .line 26
    sget-object v15, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v12, v15}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Landroid/media/MediaFormat;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v18, v6

    :try_start_8
    const-string v6, "log-session-id"

    .line 27
    invoke-virtual {v12}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v6, v12}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v12, v7

    move-object/from16 v11, v18

    goto/16 :goto_9

    :cond_7
    move-object/from16 v18, v6

    :goto_3
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    new-instance v12, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzc:Lcom/google/android/gms/internal/ads/zzui;

    .line 30
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzui;->zzb(Lcom/google/android/gms/internal/ads/zzuh;)Lcom/google/android/gms/internal/ads/zzuk;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzus;

    const/4 v12, 0x0

    .line 31
    invoke-direct {v6, v8, v12}, Lcom/google/android/gms/internal/ads/zzus;-><init>(Lcom/google/android/gms/internal/ads/zzuu;[B)V

    .line 32
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzuk;->zzm(Lcom/google/android/gms/internal/ads/zzuj;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzL:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 33
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v19

    .line 36
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzun;->zzc(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v6, 0x2

    if-nez v0, :cond_8

    const-string v0, "Format exceeds selected codec\'s capabilities [%s, %s]"

    new-array v12, v6, [Ljava/lang/Object;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v12, v17

    const/4 v15, 0x1

    aput-object v2, v12, v15

    .line 38
    sget-object v15, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    invoke-static {v15, v0, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iput v3, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzA:F

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_a

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-T585"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-A510"

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-A520"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-J700"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v6

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    iput v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzE:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_b

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzF:Z

    const/4 v12, 0x0

    iput-boolean v12, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzG:Z

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v12, v1, :cond_d

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    :goto_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_e

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_e
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzun;->zzf:Z

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzJ:Z

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :try_start_b
    check-cast v0, Lcom/google/android/gms/internal/ads/zzuk;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zze()I

    move-result v0

    if-ne v0, v6, :cond_10

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v0

    const-wide/16 v21, 0x3e8

    add-long v0, v0, v21

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzM:J

    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 47
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzin;->zza:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzin;->zza:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    sub-long v15, v19, v4

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, v19

    move-object v12, v7

    move-object/from16 v11, v18

    move-wide v6, v15

    .line 48
    :try_start_c
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzuu;->zzaj(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzuh;JJ)V

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v12, v7

    move-object/from16 v11, v18

    .line 33
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 34
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    .line 58
    :goto_9
    :try_start_d
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuq;

    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v14, v0, v2, v12}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzun;)V

    .line 54
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzal(Ljava/lang/Exception;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzC:Lcom/google/android/gms/internal/ads/zzuq;

    if-nez v0, :cond_11

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzC:Lcom/google/android/gms/internal/ads/zzuq;

    goto :goto_a

    .line 55
    :cond_11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzuq;->zza(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzC:Lcom/google/android/gms/internal/ads/zzuq;

    .line 56
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_b
    move-object v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_12
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzC:Lcom/google/android/gms/internal/ads/zzuq;

    .line 57
    throw v0

    :cond_13
    move-object v1, v15

    .line 48
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    return-void

    .line 14
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuq;

    const v1, -0xc34f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    invoke-direct {v0, v14, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzuq; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v0

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v8, v0, v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzij;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object v0

    .line 62
    throw v0

    :cond_15
    :goto_c
    return-void
.end method

.method protected final zzaB(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzuu;->zzae(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaC(Lcom/google/android/gms/internal/ads/zzun;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final zzaD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    return v0
.end method

.method protected final zzaE()Lcom/google/android/gms/internal/ads/zzuk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    return-object v0
.end method

.method protected final zzaF()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method protected final zzaG()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzy:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final zzaH()Lcom/google/android/gms/internal/ads/zzun;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;

    return-object v0
.end method

.method protected final zzaI()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzuk;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzin;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzin;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :try_start_1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzun;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzak(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzs:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaO()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzs:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaO()V

    .line 6
    throw v1
.end method

.method protected final zzaJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzau()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    :cond_0
    return v0
.end method

.method protected zzaK()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzF:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzab:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzG:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzaa:Z

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbp()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zziw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    .line 2
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    return v2
.end method

.method protected zzaL()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzaM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    return-wide v0
.end method

.method protected zzaN()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbh()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbi()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaw()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzM:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzaa:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzK:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzH:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzI:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzQ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzR:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzV:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzak:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzal:J

    return-void
.end method

.method protected final zzaO()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaN()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzy:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzab:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzA:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzE:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzJ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzV:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    return-void
.end method

.method protected zzaP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzun;)Lcom/google/android/gms/internal/ads/zzum;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzum;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzum;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzun;)V

    return-object v0
.end method

.method protected zzaQ(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaR(Lcom/google/android/gms/internal/ads/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    return-void
.end method

.method protected zzaS(Lcom/google/android/gms/internal/ads/zzih;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zzaT(Lcom/google/android/gms/internal/ads/zzih;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzaU()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzah:J

    return-wide v0
.end method

.method protected zzaV(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzah:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzut;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzut;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzut;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbn(Lcom/google/android/gms/internal/ads/zzut;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzaW()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzQ()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbg()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzM:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzL()Lcom/google/android/gms/internal/ads/zzdn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdn;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzM:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method protected final zzaX()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzu:F

    return v0
.end method

.method protected final zzaY()Lcom/google/android/gms/internal/ads/zzmk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzr:Lcom/google/android/gms/internal/ads/zzmk;

    return-object v0
.end method

.method protected final zzaZ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    return v0
.end method

.method public final zzab(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzd:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzuu;->zzac(Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzij;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected abstract zzac(Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zzv;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzuy;
        }
    .end annotation
.end method

.method protected abstract zzad(Lcom/google/android/gms/internal/ads/zzuw;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzuy;
        }
    .end annotation
.end method

.method protected zzae(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzaf(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzuh;
.end method

.method protected zzag(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzio;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzah(JJZ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzij;->zzT(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaj(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzuh;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzak(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzam(Lcom/google/android/gms/internal/ads/zzlh;)Lcom/google/android/gms/internal/ads/zzio;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzaf:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlh;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "video/x-vnd.on2.vp9"

    .line 5
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    :cond_1
    move-object v9, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlh;->zza:Lcom/google/android/gms/internal/ads/zzth;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzq:Lcom/google/android/gms/internal/ads/zzth;

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzS:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzU:Z

    return-object v5

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-nez v1, :cond_3

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzB:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzaA()V

    return-object v5

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzD:Lcom/google/android/gms/internal/ads/zzun;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzun;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v4, v8

    check-cast v4, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzp:Lcom/google/android/gms/internal/ads/zzth;

    if-ne v4, p1, :cond_11

    .line 11
    invoke-virtual {p0, v2, v8, v9}, Lcom/google/android/gms/internal/ads/zzuu;->zzag(Lcom/google/android/gms/internal/ads/zzun;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzio;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzio;->zzd:I

    const/4 v7, 0x3

    if-eqz v6, :cond_d

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eq v6, v0, :cond_9

    if-eq v6, v11, :cond_5

    .line 12
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzuu;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    if-eq p1, v4, :cond_e

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbk()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    .line 14
    :cond_5
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzuu;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzV:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzW:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzE:I

    if-eq v10, v11, :cond_8

    if-ne v10, v0, :cond_7

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-ne v10, v12, :cond_7

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-ne v10, v12, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    :cond_8
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzH:Z

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    if-eq p1, v4, :cond_e

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbk()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    .line 16
    :cond_9
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzuu;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_a

    :goto_1
    move v11, v10

    goto :goto_3

    :cond_a
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzx:Lcom/google/android/gms/internal/ads/zzv;

    if-eq p1, v4, :cond_b

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbk()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzZ:Z

    if-eqz p1, :cond_e

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzX:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzG:Z

    if-eqz p1, :cond_c

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    goto :goto_3

    :cond_c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    goto :goto_2

    .line 18
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbl()V

    :cond_e
    :goto_2
    move v11, v3

    :goto_3
    if-eqz v6, :cond_10

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzw:Lcom/google/android/gms/internal/ads/zzuk;

    if-ne p1, v1, :cond_f

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzY:I

    if-ne p1, v7, :cond_10

    :cond_f
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v10, 0x0

    move-object v6, p1

    .line 19
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    :cond_10
    return-object v5

    .line 20
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzbl()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v6, p1

    .line 21
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    .line 1
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzij;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zziw;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap()V
    .locals 0

    return-void
.end method

.method protected abstract zzaq(JJLcom/google/android/gms/internal/ads/zzuk;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation
.end method

.method protected zzar()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzas(Lcom/google/android/gms/internal/ads/zzih;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzaz()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzaj:Z

    return-void
.end method

.method protected final zzba()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    return-wide v0
.end method

.method protected final zzbb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzut;->zzd:J

    return-wide v0
.end method

.method protected final zzbc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzut;->zzc:J

    return-wide v0
.end method

.method final synthetic zzbe(Lcom/google/android/gms/internal/ads/zzlh;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:Lcom/google/android/gms/internal/ads/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzm:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzij;->zzO(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method final synthetic zzbf()Lcom/google/android/gms/internal/ads/zzmk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzr:Lcom/google/android/gms/internal/ads/zzmk;

    return-object v0
.end method

.method public final zzu()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzx(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzmk;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzr:Lcom/google/android/gms/internal/ads/zzmk;

    :cond_0
    return-void
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzin;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zzin;

    return-void
.end method

.method protected zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwk;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzut;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzut;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzut;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzbn(Lcom/google/android/gms/internal/ads/zzut;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzaj:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzap()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzk:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzah:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzut;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzut;-><init>(JJJ)V

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzuu;->zzbn(Lcom/google/android/gms/internal/ads/zzut;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzag:Lcom/google/android/gms/internal/ads/zzut;

    .line 7
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzut;->zzd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzap()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzut;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzac:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzut;-><init>(JJJ)V

    .line 5
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
