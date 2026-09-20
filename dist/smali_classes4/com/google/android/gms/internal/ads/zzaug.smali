.class public final Lcom/google/android/gms/internal/ads/zzaug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(J)Lcom/google/android/gms/internal/ads/zzavg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavg;->zzf(Lcom/google/android/gms/internal/ads/zzauy;)Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(JLcom/google/android/gms/internal/ads/zzavf;Z)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    const/4 v14, 0x4

    aget-wide v15, v1, v14

    const/16 v17, 0x5

    aget-wide v18, v1, v17

    const/16 v20, 0x6

    aget-wide v21, v1, v20

    const/16 v23, 0x7

    aget-wide v24, v1, v23

    move-wide/from16 v26, v15

    not-long v14, v3

    and-long/2addr v6, v14

    or-long/2addr v6, v9

    and-long/2addr v3, v12

    or-long v3, v3, v26

    add-long/2addr v6, v3

    sub-long v6, v6, v18

    add-long v21, v21, v6

    const-wide/32 v3, 0x611b7818

    rem-long v24, v24, v3

    aget v3, v0, v2

    aget v4, v0, v5

    aget v6, v0, v8

    aget v7, v0, v11

    const/4 v1, 0x4

    aget v9, v0, v1

    aget v10, v0, v17

    aget v12, v0, v20

    aget v13, v0, v23

    not-int v14, v3

    and-int/2addr v4, v14

    or-int/2addr v4, v6

    and-int/2addr v3, v7

    or-int/2addr v3, v9

    add-int/2addr v4, v3

    sub-int/2addr v4, v10

    add-int/2addr v12, v4

    const v3, 0xafd33ca

    rem-int/2addr v13, v3

    const v3, 0x50f0687

    aput v3, v0, v2

    const v4, 0x2ae22230

    aput v4, v0, v5

    const v6, 0x290d888c

    aput v6, v0, v8

    const v7, 0x12eae273

    aput v7, v0, v11

    const v9, 0x300dc8c3

    const/4 v1, 0x4

    aput v9, v0, v1

    const v10, 0x61c6799f

    aput v10, v0, v17

    const v14, 0xc10b8b0

    aput v14, v0, v20

    const v15, 0x78a02b09

    aput v15, v0, v23

    const/16 v16, 0x8

    const v18, 0x392c3c39

    aput v18, v0, v16

    not-int v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    and-int/2addr v3, v7

    or-int/2addr v3, v9

    add-int/2addr v1, v3

    sub-int/2addr v1, v10

    add-int/2addr v14, v1

    rem-int v15, v15, v18

    const v3, 0x11886451

    aput v3, v0, v2

    const v4, 0x57550c00

    aput v4, v0, v5

    const v6, 0xc08f0c2

    aput v6, v0, v8

    const v7, 0x53553e06

    aput v7, v0, v11

    const v9, 0x482333e

    const/4 v1, 0x4

    aput v9, v0, v1

    const v10, 0x64cea6f1

    aput v10, v0, v17

    const v18, 0x1586efc9

    aput v18, v0, v20

    const v19, 0x5e683656

    aput v19, v0, v23

    const v26, 0x24e7deff

    aput v26, v0, v16

    not-int v1, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v6

    and-int/2addr v3, v7

    or-int/2addr v3, v9

    add-int/2addr v1, v3

    sub-int/2addr v1, v10

    add-int v18, v18, v1

    rem-int v19, v19, v26

    if-eqz p3, :cond_0

    const v1, 0x51fd456e

    aput v1, v0, v2

    const v3, 0x376ec06e

    aput v3, v0, v5

    const v4, 0x4a72af82    # 3976160.5f

    aput v4, v0, v8

    const v6, 0x3d0c407c

    aput v6, v0, v11

    const v7, 0x8228b92

    const/4 v8, 0x4

    aput v7, v0, v8

    const v8, -0x71fa044b

    aput v8, v0, v17

    const v9, 0x11645906

    aput v9, v0, v20

    const v10, 0x780d2366

    aput v10, v0, v23

    const v11, 0xda1a94f

    aput v11, v0, v16

    not-int v0, v1

    and-int/2addr v0, v3

    or-int/2addr v0, v4

    and-int/2addr v1, v6

    or-int/2addr v1, v7

    add-int/2addr v0, v1

    sub-int/2addr v0, v8

    add-int/2addr v9, v0

    rem-int/2addr v10, v11

    add-long v0, p0, p0

    xor-int v3, v9, v10

    shr-long v3, p0, v3

    xor-long/2addr v0, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p0

    :goto_0
    move v3, v5

    :goto_1
    xor-int v4, v14, v15

    xor-long v6, v21, v24

    ushr-long v8, v0, v4

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_2

    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v5

    :goto_3
    and-long/2addr v0, v6

    long-to-int v0, v0

    if-eqz v4, :cond_3

    xor-int v1, v18, v19

    xor-int v6, v12, v13

    or-int/2addr v0, v1

    shl-int/2addr v0, v6

    shr-int/2addr v0, v6

    :cond_3
    int-to-byte v0, v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzavf;->zza(B)V

    if-nez v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-wide v0, v8

    goto :goto_1

    nop

    :array_0
    .array-data 8
        0x773d0e7b
        0x5802553e
        0x6d512429
        0x10065116
        0x6da40c08
        0x1045d6a1eL
        0x1acca918
        0x62823856
        0x611b7818
    .end array-data

    :array_1
    .array-data 4
        0x66deaaf0
        0x172600ca
        0x2c185527
        0x532e08dd
        0x40d83f37
        0x7d050988
        0x168ac66
        0x5c63d66c
        0xafd33ca
    .end array-data
.end method
