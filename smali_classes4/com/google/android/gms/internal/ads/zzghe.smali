.class final Lcom/google/android/gms/internal/ads/zzghe;
.super Lcom/google/android/gms/internal/ads/zzghb;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgfx;

.field private final zzc:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Ljava/util/Map;Landroid/util/DisplayMetrics;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 7

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object v6

    const-string v2, "HAMf3XP8KIibPGIFc5yJF+oNVlSUbFLkUHSZdrZ2Dhl4Bh9ge4/6z6Usrb+mfprj"

    const-string v3, "vYv0JfNJ2rw4TIvbzqBhbKW0tXWLxxqXfI+gpZUSK1Y="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgoc;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzb:Lcom/google/android/gms/internal/ads/zzgfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static zzb(DLandroid/util/DisplayMetrics;)J
    .locals 2

    .line 1
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghe;->zza:Ljava/util/Map;

    const-string v1, "nv"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzc:Landroid/util/DisplayMetrics;

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string v6, ""

    .line 2
    invoke-virtual {p1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    check-cast p1, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxd;->zza()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v3

    .line 4
    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-object v7, p1, v5

    if-eqz v7, :cond_0

    .line 5
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 6
    aget-object v6, p1, v5

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxc;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 7
    :cond_0
    aget-object v6, p1, v2

    if-eqz v6, :cond_1

    .line 8
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzaxc;->zzh(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_1
    const/4 v6, 0x3

    .line 9
    aget-object v7, p1, v6

    if-eqz v7, :cond_2

    .line 10
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzaxc;->zzf(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_2
    const/4 v7, 0x4

    .line 11
    aget-object v8, p1, v7

    if-eqz v8, :cond_3

    .line 12
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzaxc;->zzc(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_3
    const/4 v8, 0x5

    .line 13
    aget-object v8, p1, v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5

    .line 14
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_4

    move v8, v2

    goto :goto_0

    :cond_4
    move v8, v5

    .line 15
    :goto_0
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzaxc;->zzs(I)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_5
    const/4 v8, 0x6

    .line 16
    aget-object v8, p1, v8

    if-eqz v8, :cond_6

    .line 17
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/internal/ads/zzaxc;->zzj(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_6
    const/4 v8, 0x7

    .line 18
    aget-object v8, p1, v8

    if-eqz v8, :cond_7

    .line 19
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/internal/ads/zzaxc;->zzi(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_7
    const/16 v8, 0x8

    .line 20
    aget-object p1, p1, v8

    if-eqz p1, :cond_9

    .line 21
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long p1, v11, v9

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_1

    :cond_8
    move p1, v5

    .line 22
    :goto_1
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzt(I)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 23
    :cond_9
    monitor-enter p2

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzghe;->zzb:Lcom/google/android/gms/internal/ads/zzgfx;

    const-string v8, "LTqeYOkKjRvgMVLXGWwl9QUpPl0hs86RILvnzsnpkgBkbbANt+0KM6wwB7tA8s8M"

    const-string v11, "qJFn6bhMeF50E1eku7tYH88ZkNeM8ctWC3me80VkO1s="

    .line 24
    invoke-interface {p1, v8, v11}, Lcom/google/android/gms/internal/ads/zzgfx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    :try_start_1
    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/Method;

    const-string v8, "nv"

    .line 26
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MotionEvent;

    const-string v11, ""

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v8, v12, v4

    aput-object v1, v12, v5

    .line 27
    invoke-virtual {p1, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :try_start_2
    check-cast p1, [Ljava/lang/Object;

    .line 28
    aget-object v8, p1, v4

    if-eqz v8, :cond_a

    .line 29
    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzawg;->zzh(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 30
    :cond_a
    aget-object v5, p1, v5

    if-eqz v5, :cond_b

    .line 31
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzawg;->zzi(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 32
    :cond_b
    aget-object v2, p1, v2

    if-eqz v2, :cond_c

    .line 33
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {p2, v11, v12}, Lcom/google/android/gms/internal/ads/zzawg;->zzj(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 34
    :cond_c
    aget-object v2, p1, v6

    if-eqz v2, :cond_d

    .line 35
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzv(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 36
    :cond_d
    aget-object p1, p1, v7

    if-eqz p1, :cond_e

    .line 37
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzw(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_e
    const-string p1, "oe"

    .line 38
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzger;

    if-nez p1, :cond_f

    goto :goto_2

    .line 59
    :cond_f
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    cmp-long v2, v5, v9

    if-lez v2, :cond_10

    .line 39
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzz(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_10
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzb:J

    cmp-long v2, v5, v9

    if-lez v2, :cond_11

    .line 40
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzy(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_11
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzc:J

    cmp-long v2, v5, v9

    if-lez v2, :cond_12

    .line 41
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzx(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_12
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzd:J

    cmp-long p1, v5, v9

    if-lez p1, :cond_13

    .line 42
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzawg;->zzA(J)Lcom/google/android/gms/internal/ads/zzawg;

    :cond_13
    :goto_2
    const-string p1, "oe"

    .line 43
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzger;

    if-nez p1, :cond_14

    goto/16 :goto_3

    .line 70
    :cond_14
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_16

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zze:D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :try_start_3
    move-object v2, v1

    check-cast v2, Landroid/util/DisplayMetrics;

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 46
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzl(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzger;->zzh:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    .line 47
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 48
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzm(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzger;->zzi:F

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    sub-float/2addr v2, v5

    float-to-double v5, v2

    .line 49
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 50
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzn(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    float-to-double v5, v2

    .line 51
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzq(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    float-to-double v5, v2

    .line 52
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzr(J)Lcom/google/android/gms/internal/ads/zzaxc;

    const-string v2, "nv"

    .line 53
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_16

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzger;->zzh:F

    sub-float/2addr v5, v6

    .line 54
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 55
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-eqz v7, :cond_15

    .line 56
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzo(J)Lcom/google/android/gms/internal/ads/zzaxc;

    :cond_15
    iget v5, p1, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzger;->zzi:F

    sub-float/2addr v5, p1

    .line 57
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr v5, p1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v5, p1

    float-to-double v5, v5

    .line 58
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long p1, v5, v9

    if-eqz p1, :cond_16

    .line 59
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzp(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 60
    :cond_16
    :goto_3
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzawg;->zzJ(Lcom/google/android/gms/internal/ads/zzaxc;)Lcom/google/android/gms/internal/ads/zzawg;

    const-string p1, "ro"

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzges;

    if-eqz p1, :cond_17

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_4
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    if-gt v4, v0, :cond_17

    .line 63
    aget-object v0, p1, v4

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxd;->zza()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzges;->zza:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    float-to-double v5, v3

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_4
    move-object v3, v1

    check-cast v3, Landroid/util/DisplayMetrics;

    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(J)Lcom/google/android/gms/internal/ads/zzaxc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzges;->zzb:F

    float-to-double v5, v0

    .line 66
    invoke-static {v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzghe;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxc;->zzb(J)Lcom/google/android/gms/internal/ads/zzaxc;

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxd;

    .line 68
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzawg;->zzK(Lcom/google/android/gms/internal/ads/zzaxd;)Lcom/google/android/gms/internal/ads/zzawg;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 70
    :cond_17
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
