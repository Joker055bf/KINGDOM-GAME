.class public final Lcom/google/android/gms/internal/ads/zzsd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqc;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private static zzc:I


# instance fields
.field private final zzd:Landroid/media/AudioTrack;

.field private final zze:Lcom/google/android/gms/internal/ads/zzql;

.field private zzf:Lcom/google/android/gms/internal/ads/zzru;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzsk;

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzsc;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzed;

.field private zzl:Z

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private final zzr:Lcom/google/android/gms/internal/ads/zzsh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsd;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzql;Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zze:Lcom/google/android/gms/internal/ads/zzql;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzr:Lcom/google/android/gms/internal/ads/zzsh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzk:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg(Z)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzh:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzi:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzi:I

    .line 5
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsk;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrw;

    const/4 v8, 0x0

    .line 6
    invoke-direct {v2, p0, v8}, Lcom/google/android/gms/internal/ads/zzrw;-><init>(Lcom/google/android/gms/internal/ads/zzsd;[B)V

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzi:I

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    move-object v1, v0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzdn;Landroid/media/AudioTrack;III)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    if-eqz p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzru;

    .line 7
    invoke-direct {p2, p1, p3, v8}, Lcom/google/android/gms/internal/ads/zzru;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzsh;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzf:Lcom/google/android/gms/internal/ads/zzru;

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzg()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {p1, p0, v8}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(Lcom/google/android/gms/internal/ads/zzsd;[B)V

    move-object v8, p1

    :cond_2
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzj:Lcom/google/android/gms/internal/ads/zzsc;

    return-void
.end method

.method static synthetic zzp(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzro;-><init>(Lcom/google/android/gms/internal/ads/zzed;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsd;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_2
    move-object p2, p1

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    .line 3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrp;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(Lcom/google/android/gms/internal/ads/zzed;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsd;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    sget p2, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    :try_start_4
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 7
    throw p0

    :catchall_2
    move-exception p0

    .line 6
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method private final zzt()J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzh:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzm:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzi:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v4, -0x1

    add-long/2addr v0, v4

    .line 2
    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzn:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzl:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzl:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public final zzc(Ljava/nio/ByteBuffer;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzh:Z

    if-nez p3, :cond_0

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzo:I

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zze:Lcom/google/android/gms/internal/ads/zzql;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzql;->zza:I

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzsw;->zzD(ILjava/nio/ByteBuffer;)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzo:I

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzt()J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {p4}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzp:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzp:I

    if-le p4, v0, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzk:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzrn;->zza:Lcom/google/android/gms/internal/ads/zzrn;

    .line 8
    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd(ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 9
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzed;->zze()V

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_5

    const/4 p2, -0x6

    if-eq p1, p2, :cond_3

    const/16 p2, -0x20

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzr:Lcom/google/android/gms/internal/ads/zzsh;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzsi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsi;->zzi()Lcom/google/android/gms/internal/ads/zzpx;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzsi;->zzh(Lcom/google/android/gms/internal/ads/zzps;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsi;->zzi()Lcom/google/android/gms/internal/ads/zzpx;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzpx;->zza(Lcom/google/android/gms/internal/ads/zzps;)V

    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqb;

    .line 14
    invoke-direct {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(IZ)V

    throw p2

    :cond_5
    if-ne p1, p4, :cond_6

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    if-eqz p3, :cond_7

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzm:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzm:J

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzn:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzo:I

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzn:J

    :cond_8
    :goto_2
    return v2
.end method

.method public final zzd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsk;->zze(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public final zze()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzj:Lcom/google/android/gms/internal/ads/zzsc;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsc;->zza()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzf:Lcom/google/android/gms/internal/ads/zzru;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzf:Lcom/google/android/gms/internal/ads/zzru;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzk:Lcom/google/android/gms/internal/ads/zzed;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzsd;->zza:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v4, :cond_3

    const-string v4, "ExoPlayer:AudioTrackReleaseThread"

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzg(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    sget v4, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/android/gms/internal/ads/zzsd;->zzc:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzsd;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzrq;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzed;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    .line 8
    invoke-interface {v4, v5, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 9
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzf(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public final zzg()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public final zzj()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzg:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsk;->zzd(J)Z

    move-result v0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzqa;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzk:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzpq;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpq;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    .line 2
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzo(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method final synthetic zzq()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zzr()Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzd:Landroid/media/AudioTrack;

    return-object v0
.end method

.method final synthetic zzs()Lcom/google/android/gms/internal/ads/zzed;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzk:Lcom/google/android/gms/internal/ads/zzed;

    return-object v0
.end method
