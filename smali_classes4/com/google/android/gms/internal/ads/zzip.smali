.class public final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method synthetic constructor <init>(FFJFJJF[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    const p3, 0x3f7851ec

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    const p3, 0x3f83d70a

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    return-void
.end method

.method private final zzf()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    return-void
.end method

.method private static zzg(JJF)J
    .locals 0

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77

    mul-float/2addr p0, p2

    const p2, 0x3a831200

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zza:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    .line 2
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:J

    .line 3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->zzd:F

    const v0, 0x3f7851ec

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->zze:F

    const p1, 0x3f83d70a

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zzf()V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    return-void
.end method

.method public final zzd(JJ)F
    .locals 16

    move-object/from16 v0, p0

    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    sub-long v5, p1, p3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    goto :goto_0

    :cond_0
    const v1, 0x3f7fbe77

    .line 8
    invoke-static {v7, v8, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzip;->zzg(JJF)J

    move-result-wide v7

    .line 1
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    sub-long/2addr v5, v7

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    invoke-static {v7, v8, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzip;->zzg(JJF)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    .line 3
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    cmp-long v1, v5, v3

    const-wide/16 v5, 0x3e8

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-ltz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    return v1

    .line 4
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzl:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzm:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzip;->zzn:J

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    cmp-long v1, v9, v7

    const v9, 0x33d6bf95

    const/high16 v10, -0x40800000    # -1.0f

    if-lez v1, :cond_5

    .line 5
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzq(J)J

    move-result-wide v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    add-float/2addr v1, v10

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    add-float/2addr v5, v10

    const/4 v6, 0x3

    new-array v10, v6, [J

    const/4 v11, 0x0

    aput-wide v7, v10, v11

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzip;->zze:J

    const/4 v13, 0x1

    aput-wide v11, v10, v13

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    long-to-float v3, v3

    mul-float/2addr v5, v3

    mul-float/2addr v1, v3

    float-to-long v3, v1

    float-to-long v14, v5

    add-long/2addr v3, v14

    sub-long/2addr v11, v3

    const/4 v1, 0x2

    aput-wide v11, v10, v1

    :goto_2
    if-ge v13, v6, :cond_4

    aget-wide v3, v10, v13

    cmp-long v1, v3, v7

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v7, v3

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    goto :goto_4

    .line 10
    :cond_5
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    add-float/2addr v1, v10

    const/4 v5, 0x0

    .line 6
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v9

    float-to-long v5, v1

    sub-long v5, p1, v5

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 8
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzg:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    cmp-long v1, v7, v5

    if-lez v1, :cond_6

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    move-wide v7, v5

    :cond_6
    :goto_4
    sub-long v3, p1, v7

    .line 5
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zza:J

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gez v1, :cond_7

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    goto :goto_5

    :cond_7
    long-to-float v1, v3

    mul-float/2addr v1, v9

    add-float/2addr v1, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzip;->zzj:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzip;->zzi:F

    .line 10
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzip;->zzk:F

    :cond_8
    :goto_5
    return v2
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:J

    return-wide v0
.end method
