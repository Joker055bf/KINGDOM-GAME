.class public final Lcom/google/android/gms/internal/ads/zzaua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# instance fields
.field private zza:I

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzauc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;)V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v9, v1, v8

    const/4 v10, 0x4

    aget v11, v1, v10

    const/4 v12, 0x5

    aget v13, v1, v12

    const/4 v14, 0x6

    aget v15, v1, v14

    const/16 v16, 0x7

    aget v17, v1, v16

    not-int v14, v3

    and-int/2addr v5, v14

    or-int/2addr v5, v7

    and-int/2addr v3, v9

    or-int/2addr v3, v11

    add-int/2addr v5, v3

    sub-int/2addr v5, v13

    add-int/2addr v15, v5

    const v3, 0x3a86d445

    rem-int v17, v17, v3

    const v3, 0x3b121183

    aput v3, v1, v2

    const v2, 0x1c57241e

    aput v2, v1, v4

    const v4, 0x490e89f0    # 583839.0f

    aput v4, v1, v6

    const v5, 0x1551a44e

    aput v5, v1, v8

    const v6, 0x6ba29b70

    aput v6, v1, v10

    const v7, -0x44c80ea7

    aput v7, v1, v12

    const v8, 0x6205521

    const/4 v9, 0x6

    aput v8, v1, v9

    const v9, 0x63a24d68

    aput v9, v1, v16

    const/16 v10, 0x8

    const v11, 0x4fb7a02a    # 6.161454E9f

    aput v11, v1, v10

    not-int v1, v3

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    and-int v2, v3, v5

    or-int/2addr v2, v6

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    add-int/2addr v8, v1

    rem-int/2addr v9, v11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    xor-int v1, v15, v17

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaua;->zza:I

    xor-int v1, v8, v9

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaua;->zzb:[B

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaua;->zzc:Lcom/google/android/gms/internal/ads/zzauc;

    return-void

    nop

    :array_0
    .array-data 4
        0x5bc9a827
        0x7b6460e3
        0x419f187d
        -0x45871f66
        -0x7fe361c7
        0x9c8225e
        0x40972fd
        0x44296c6d
        0x3a86d445
    .end array-data
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzauk;I)B
    .locals 22

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v9, v1, v8

    const/4 v10, 0x4

    aget v11, v1, v10

    const/4 v12, 0x5

    aget v13, v1, v12

    const/4 v14, 0x6

    aget v15, v1, v14

    const/16 v16, 0x7

    aget v17, v1, v16

    not-int v14, v3

    and-int/2addr v5, v14

    or-int/2addr v5, v7

    and-int/2addr v3, v9

    or-int/2addr v3, v11

    add-int/2addr v5, v3

    sub-int/2addr v5, v13

    add-int/2addr v15, v5

    const v3, 0x42d0e7a

    rem-int v17, v17, v3

    const v3, 0x4b5df498    # 1.4546072E7f

    aput v3, v1, v2

    const v5, 0xdd010d8

    aput v5, v1, v4

    const v7, 0x4349ac87

    aput v7, v1, v6

    const v9, 0x1c90115b

    aput v9, v1, v8

    const v11, 0x334ead87

    aput v11, v1, v10

    const v13, 0x72ffe7b0

    aput v13, v1, v12

    const v14, 0x6520f98

    const/16 v18, 0x6

    aput v14, v1, v18

    const v19, 0x6903c8ef

    aput v19, v1, v16

    const/16 v20, 0x8

    const v21, 0x528936a9

    aput v21, v1, v20

    not-int v12, v3

    and-int/2addr v5, v12

    or-int/2addr v5, v7

    and-int/2addr v3, v9

    or-int/2addr v3, v11

    add-int/2addr v5, v3

    sub-int/2addr v5, v13

    add-int/2addr v14, v5

    rem-int v19, v19, v21

    const v3, 0x63056b0c

    aput v3, v1, v2

    const v2, 0x249082a8

    aput v2, v1, v4

    const v4, 0x783ef3af

    aput v4, v1, v6

    const/high16 v5, 0x6800000

    aput v5, v1, v8

    const v6, 0x7b796d35

    aput v6, v1, v10

    const v7, -0x179301b1

    const/4 v8, 0x5

    aput v7, v1, v8

    const v8, 0x2bc1bee

    const/4 v9, 0x6

    aput v8, v1, v9

    const v9, 0x65050df6

    aput v9, v1, v16

    xor-int v10, v15, v17

    const v11, 0x527d8f5b

    aput v11, v1, v20

    not-int v1, v3

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    and-int v2, v3, v5

    or-int/2addr v2, v6

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    add-int/2addr v8, v1

    rem-int/2addr v9, v11

    ushr-int v1, p2, v10

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaua;->zza:I

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaua;->zzc:Lcom/google/android/gms/internal/ads/zzauc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaua;->zzb:[B

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zza(I[B)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaua;->zza:I

    :cond_0
    xor-int v1, v8, v9

    xor-int v2, v14, v19

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(I)B

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaua;->zzb:[B

    rem-int v2, p2, v2

    aget-byte v2, v4, v2

    xor-int/2addr v2, v3

    shl-int/2addr v2, v1

    shr-int v1, v2, v1

    int-to-byte v1, v1

    return v1

    nop

    :array_0
    .array-data 4
        0x8885ee1
        0x3b285280
        0x1a31be66
        0x61084082
        0x4846107f
        -0x746d643
        0x754bdbd7
        0x792d654e
        0x42d0e7a
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzauk;II)Lcom/google/android/gms/internal/ads/zzauk;
    .locals 3

    if-ltz p2, :cond_1

    if-gt p2, p3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzauk;->zza:[B

    array-length v0, v0

    if-gt p3, v0, :cond_1

    sub-int v0, p3, p2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaua;->zza(Lcom/google/android/gms/internal/ads/zzauk;I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzauk;->zze([B)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic zzc()Lcom/google/android/gms/internal/ads/zzaty;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaua;->zzc:Lcom/google/android/gms/internal/ads/zzauc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(Lcom/google/android/gms/internal/ads/zzauc;)V

    return-object v0
.end method
