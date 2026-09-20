.class public final Lcom/google/android/gms/internal/ads/zzauc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:I

.field private zzb:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v6, v2, v5

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v10, v2, v9

    const/4 v11, 0x4

    aget v12, v2, v11

    const/4 v13, 0x5

    aget v14, v2, v13

    const/4 v15, 0x6

    aget v16, v2, v15

    const/16 v17, 0x7

    aget v18, v2, v17

    not-int v15, v4

    and-int/2addr v6, v15

    or-int/2addr v6, v8

    and-int/2addr v4, v10

    or-int/2addr v4, v12

    add-int/2addr v6, v4

    sub-int/2addr v6, v14

    add-int v16, v16, v6

    const v4, 0x97e1b4e

    rem-int v18, v18, v4

    const v4, 0x1a0dde32

    aput v4, v2, v3

    const v3, 0x618085e0

    aput v3, v2, v5

    const v5, 0x60d09ea

    aput v5, v2, v7

    const v6, 0x71c0c401

    aput v6, v2, v9

    const v7, 0x125453c5

    aput v7, v2, v11

    const v8, 0x7c9049fe

    aput v8, v2, v13

    const v9, 0x61be152

    const/4 v10, 0x6

    aput v9, v2, v10

    const v10, 0x78b5e776

    aput v10, v2, v17

    const/16 v11, 0x8

    const v12, 0x75486e47

    aput v12, v2, v11

    not-int v2, v4

    and-int/2addr v2, v3

    or-int/2addr v2, v5

    and-int v3, v4, v6

    or-int/2addr v3, v7

    add-int/2addr v2, v3

    sub-int/2addr v2, v8

    add-int/2addr v9, v2

    rem-int/2addr v10, v12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v2, v1

    xor-int v3, v16, v18

    if-ne v2, v3, :cond_0

    move/from16 v3, p1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzauc;->zza:I

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzauc;->zzb:[I

    return-void

    :cond_0
    xor-int v1, v9, v10

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ake3rgkWMjm+UlOd1Tg3PHccqBbIRJQk3bhyKj5k"

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "a0CvvBEaN339T0zNlXk="

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :array_0
    .array-data 4
        0x1ca0c5fa
        0x520c0ae8
        0x2c54f525
        0x52299ec8
        0x21f1f424
        -0x1aef53da
        0x45e6d486
        0x1d9f6e5f
        0x97e1b4e
    .end array-data
.end method


# virtual methods
.method public final zza(I[B)V
    .locals 29

    move-object/from16 v0, p0

    const v1, 0x69ec173c

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    const v2, 0x2ae7a48f

    if-eq v3, v2, :cond_2

    const v2, 0x5a8db186

    if-eq v3, v2, :cond_1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_0

    shr-int v1, v6, v13

    int-to-byte v1, v1

    const/4 v3, 0x0

    aput-byte v1, p2, v3

    shr-int v1, v6, v14

    and-int/2addr v1, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    shr-int v1, v6, v17

    and-int/2addr v1, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v16

    and-int v1, v6, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v10

    shr-int v1, v7, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v8

    shr-int v1, v7, v14

    and-int/2addr v1, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v9

    shr-int v1, v7, v17

    and-int/2addr v1, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v18

    and-int v1, v7, v15

    shl-int/2addr v1, v13

    shr-int/2addr v1, v13

    int-to-byte v1, v1

    aput-byte v1, p2, v19

    return-void

    :cond_0
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aget v6, v4, v5

    aget v5, v4, v2

    const/4 v7, 0x2

    aget v7, v4, v7

    const/4 v8, 0x3

    aget v8, v4, v8

    const/4 v9, 0x4

    aget v9, v4, v9

    const/4 v10, 0x5

    aget v10, v4, v10

    const/4 v11, 0x6

    aget v11, v4, v11

    const/4 v12, 0x7

    aget v12, v4, v12

    not-int v13, v6

    and-int/2addr v5, v13

    or-int/2addr v5, v7

    and-int/2addr v6, v8

    or-int/2addr v6, v9

    add-int/2addr v5, v6

    sub-int/2addr v5, v10

    add-int/2addr v11, v5

    const v5, 0x2fff2a9f

    rem-int/2addr v12, v5

    const v5, 0x1cfac1a

    const/4 v6, 0x0

    aput v5, v4, v6

    const v5, 0x45f16506

    aput v5, v4, v2

    const/4 v5, 0x2

    const v6, 0x1226a93d

    aput v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x45d14c63

    aput v6, v4, v5

    const/4 v5, 0x4

    const v6, 0x220a865

    aput v6, v4, v5

    const/4 v5, 0x5

    const v6, 0x7b5708e5

    aput v6, v4, v5

    const/4 v5, 0x6

    const v6, 0x32e8ddfc

    aput v6, v4, v5

    const/4 v5, 0x7

    const v6, 0x5be02a44

    aput v6, v4, v5

    const v5, 0x4a35bf85    # 2977761.2f

    const/16 v6, 0x8

    aput v5, v4, v6

    const v5, 0x1cfac1a

    not-int v5, v5

    const v6, 0x45f16506

    and-int/2addr v5, v6

    const v6, 0x1226a93d

    or-int/2addr v5, v6

    const v6, 0x1cfac1a

    const v7, 0x45d14c63

    and-int/2addr v6, v7

    const v7, 0x220a865

    or-int/2addr v6, v7

    add-int/2addr v5, v6

    const v6, 0x7b5708e5

    sub-int/2addr v5, v6

    const v6, 0x32e8ddfc

    add-int/2addr v6, v5

    const v5, 0x4a35bf85    # 2977761.2f

    const v7, 0x5be02a44

    rem-int/2addr v7, v5

    const v5, 0x45ea996e

    const/4 v8, 0x0

    aput v5, v4, v8

    const v5, 0x5e17ea9b

    aput v5, v4, v2

    const/4 v5, 0x2

    const v8, 0x1b80414b

    aput v8, v4, v5

    const/4 v5, 0x3

    const v8, 0x4497aa90

    aput v8, v4, v5

    const/4 v5, 0x4

    const v8, 0x3c8046d

    aput v8, v4, v5

    const/4 v5, 0x5

    const v8, -0x7b107923

    aput v8, v4, v5

    const/4 v5, 0x6

    const v8, 0x375a92ff

    aput v8, v4, v5

    const/4 v5, 0x7

    const v8, 0x4e784887    # 1.0413757E9f

    aput v8, v4, v5

    const v5, 0x38ad4c18

    const/16 v8, 0x8

    aput v5, v4, v8

    const v5, 0x45ea996e

    not-int v5, v5

    const v8, 0x5e17ea9b

    and-int/2addr v5, v8

    const v8, 0x1b80414b

    or-int/2addr v5, v8

    const v8, 0x45ea996e

    const v9, 0x4497aa90

    and-int/2addr v8, v9

    const v9, 0x3c8046d

    or-int/2addr v8, v9

    add-int/2addr v5, v8

    const v8, -0x7b107923

    sub-int/2addr v5, v8

    const v8, 0x375a92ff

    add-int/2addr v8, v5

    const v5, 0x38ad4c18

    const v9, 0x4e784887    # 1.0413757E9f

    rem-int/2addr v9, v5

    const v5, 0x6580d91b

    const/4 v10, 0x0

    aput v5, v4, v10

    const v5, 0x308f2793

    aput v5, v4, v2

    const/4 v5, 0x2

    const v10, 0x44841948

    aput v10, v4, v5

    const/4 v5, 0x3

    const v10, 0x300b3e93

    aput v10, v4, v5

    const/4 v5, 0x4

    const v10, 0x4690d820    # 18540.062f

    aput v10, v4, v5

    const/4 v5, 0x5

    const v10, -0x4816825f

    aput v10, v4, v5

    const/4 v5, 0x6

    const v10, 0xa00bfc5

    aput v10, v4, v5

    const/4 v5, 0x7

    const v10, 0x6599b689

    aput v10, v4, v5

    const v5, 0x58625c6d

    const/16 v10, 0x8

    aput v5, v4, v10

    const v5, 0x6580d91b

    not-int v5, v5

    const v10, 0x308f2793

    and-int/2addr v5, v10

    const v10, 0x44841948

    or-int/2addr v5, v10

    const v10, 0x6580d91b

    const v13, 0x300b3e93

    and-int/2addr v10, v13

    const v13, 0x4690d820    # 18540.062f

    or-int/2addr v10, v13

    add-int/2addr v5, v10

    const v10, -0x4816825f

    sub-int/2addr v5, v10

    const v10, 0xa00bfc5

    add-int/2addr v10, v5

    const v5, 0x58625c6d

    const v13, 0x6599b689

    rem-int/2addr v13, v5

    xor-int/2addr v10, v13

    const v5, 0xfadb8f8

    const/4 v13, 0x0

    aput v5, v4, v13

    const v5, 0xfb7228a

    aput v5, v4, v2

    const/4 v5, 0x2

    const v13, 0x25433b5

    aput v13, v4, v5

    const/4 v5, 0x3

    const v13, -0x325cffd5

    aput v13, v4, v5

    const/4 v5, 0x4

    const v13, -0x2deb0bcf

    aput v13, v4, v5

    const/4 v5, 0x5

    const v13, 0x78c48444

    aput v13, v4, v5

    const/4 v5, 0x6

    const v13, 0x4c9bb1b

    aput v13, v4, v5

    const/4 v5, 0x7

    const v13, 0x6b6fd84e

    aput v13, v4, v5

    const v5, 0x497fd5b0    # 1047899.0f

    const/16 v13, 0x8

    aput v5, v4, v13

    const v5, 0xfadb8f8

    not-int v5, v5

    const v13, 0xfb7228a

    and-int/2addr v5, v13

    const v13, 0x25433b5

    or-int/2addr v5, v13

    const v13, 0xfadb8f8

    const v14, -0x325cffd5

    and-int/2addr v13, v14

    const v14, -0x2deb0bcf

    or-int/2addr v13, v14

    add-int/2addr v5, v13

    const v13, 0x78c48444

    sub-int/2addr v5, v13

    const v13, 0x4c9bb1b

    add-int/2addr v13, v5

    const v5, 0x497fd5b0    # 1047899.0f

    const v14, 0x6b6fd84e

    rem-int/2addr v14, v5

    const v5, 0x7547b1d6

    const/4 v15, 0x0

    aput v5, v4, v15

    const v5, 0x4e394f36    # 7.77244E8f

    aput v5, v4, v2

    const/4 v5, 0x2

    const v15, 0x358190f1

    aput v15, v4, v5

    const/4 v5, 0x3

    const v15, 0x7a7a4f07

    aput v15, v4, v5

    const/4 v5, 0x4

    const v15, 0x31c610b1

    aput v15, v4, v5

    const/4 v5, 0x5

    const v15, -0x4a69b600

    aput v15, v4, v5

    const/4 v5, 0x6

    const v15, 0x186259f2

    aput v15, v4, v5

    const/4 v5, 0x7

    const v15, 0x52f720c6

    aput v15, v4, v5

    const v5, 0x3eab2035

    const/16 v15, 0x8

    aput v5, v4, v15

    const v5, 0x7547b1d6

    not-int v5, v5

    const v15, 0x4e394f36    # 7.77244E8f

    and-int/2addr v5, v15

    const v15, 0x358190f1

    or-int/2addr v5, v15

    const v15, 0x7547b1d6

    const v16, 0x7a7a4f07

    and-int v15, v15, v16

    const v16, 0x31c610b1

    or-int v15, v15, v16

    add-int/2addr v5, v15

    const v15, -0x4a69b600

    sub-int/2addr v5, v15

    const v15, 0x186259f2

    add-int/2addr v15, v5

    const v5, 0x3eab2035

    const v16, 0x52f720c6

    rem-int v16, v16, v5

    const v5, 0x3b24f23c

    const/16 v17, 0x0

    aput v5, v4, v17

    const v5, 0x781000d

    aput v5, v4, v2

    const/4 v5, 0x2

    const v17, 0xf56b049

    aput v17, v4, v5

    const/4 v5, 0x3

    const v17, 0x814046

    aput v17, v4, v5

    const/4 v5, 0x4

    const v17, 0x516e7573

    aput v17, v4, v5

    const/4 v5, 0x5

    const v17, 0x60d801fc

    aput v17, v4, v5

    const/4 v5, 0x6

    const v17, 0x2382837

    aput v17, v4, v5

    const/4 v5, 0x7

    const v17, 0x4ed6f798

    aput v17, v4, v5

    const v5, 0x47b5565

    const/16 v17, 0x8

    aput v5, v4, v17

    const v5, 0x3b24f23c

    not-int v5, v5

    const v17, 0x781000d

    and-int v5, v5, v17

    const v17, 0xf56b049

    or-int v5, v5, v17

    const v17, 0x3b24f23c

    const v18, 0x814046

    and-int v17, v17, v18

    const v18, 0x516e7573

    or-int v17, v17, v18

    add-int v5, v5, v17

    const v17, 0x60d801fc

    sub-int v5, v5, v17

    const v17, 0x2382837

    add-int v17, v17, v5

    const v5, 0x47b5565

    const v18, 0x4ed6f798

    rem-int v18, v18, v5

    const v5, 0x1a22c17e

    const/16 v19, 0x0

    aput v5, v4, v19

    const v5, 0x2f8d620

    aput v5, v4, v2

    const/4 v5, 0x2

    const v19, 0x6cd2666a

    aput v19, v4, v5

    const/4 v5, 0x3

    const v19, 0x22c9018

    aput v19, v4, v5

    const/4 v5, 0x4

    const v19, 0x60c5439d

    aput v19, v4, v5

    const/4 v5, 0x5

    const v19, -0x2fb58fa8

    aput v19, v4, v5

    const/4 v5, 0x6

    const v19, 0x148f5f3

    aput v19, v4, v5

    const/4 v5, 0x7

    const v19, 0x5d603510

    aput v19, v4, v5

    const v5, 0x2600995

    const/16 v19, 0x8

    aput v5, v4, v19

    const v5, 0x1a22c17e

    not-int v5, v5

    const v19, 0x2f8d620

    and-int v5, v5, v19

    const v19, 0x6cd2666a

    or-int v5, v5, v19

    const v19, 0x1a22c17e

    const v21, 0x22c9018

    and-int v19, v19, v21

    const v21, 0x60c5439d

    or-int v19, v19, v21

    add-int v5, v5, v19

    const v19, -0x2fb58fa8

    sub-int v5, v5, v19

    const v19, 0x148f5f3

    add-int v19, v19, v5

    const v5, 0x2600995

    const v21, 0x5d603510

    rem-int v21, v21, v5

    xor-int v5, v19, v21

    const v19, 0x7e8245e4

    const/16 v20, 0x0

    aput v19, v4, v20

    const v19, 0x40593038

    aput v19, v4, v2

    const/16 v19, 0x2

    const v21, 0x1da685a4

    aput v21, v4, v19

    const/16 v19, 0x3

    const v21, 0x405d3018

    aput v21, v4, v19

    const/16 v19, 0x4

    const v21, 0x5048882

    aput v21, v4, v19

    const/16 v19, 0x5

    const v21, -0x77248983

    aput v21, v4, v19

    const/16 v19, 0x6

    const v21, 0x2bd0e02a

    aput v21, v4, v19

    const/16 v19, 0x7

    const v21, 0x13e08266

    aput v21, v4, v19

    const v19, 0xde6da7d

    const/16 v21, 0x8

    aput v19, v4, v21

    const v1, 0x7e8245e4

    not-int v1, v1

    const v19, 0x40593038

    and-int v1, v1, v19

    const v19, 0x1da685a4

    or-int v1, v1, v19

    const v19, 0x7e8245e4

    const v22, 0x405d3018

    and-int v19, v19, v22

    const v22, 0x5048882

    or-int v19, v19, v22

    add-int v1, v1, v19

    const v19, -0x77248983

    sub-int v1, v1, v19

    const v19, 0x2bd0e02a

    add-int v19, v19, v1

    const v1, 0xde6da7d

    const v22, 0x13e08266

    rem-int v22, v22, v1

    const v1, 0x1df1defb

    const/16 v20, 0x0

    aput v1, v4, v20

    const v1, 0x4158374

    aput v1, v4, v2

    const/4 v1, 0x2

    const v23, 0x68a8a443

    aput v23, v4, v1

    const/4 v1, 0x3

    const v23, 0x649747be

    aput v23, v4, v1

    const/4 v1, 0x4

    const v23, 0x70824ccb

    aput v23, v4, v1

    const/4 v1, 0x5

    const v23, -0x17a3e866

    aput v23, v4, v1

    const/4 v1, 0x6

    const v23, 0x1900c91c

    aput v23, v4, v1

    const/4 v1, 0x7

    const v23, 0x40fec37e

    aput v23, v4, v1

    const v1, 0x198d0ede

    const/16 v23, 0x8

    aput v1, v4, v23

    const v1, 0x1df1defb

    not-int v1, v1

    const v23, 0x4158374

    and-int v1, v1, v23

    const v23, 0x68a8a443

    or-int v1, v1, v23

    const v23, 0x1df1defb

    const v24, 0x649747be

    and-int v23, v23, v24

    const v24, 0x70824ccb

    or-int v23, v23, v24

    add-int v1, v1, v23

    const v23, -0x17a3e866

    sub-int v1, v1, v23

    const v23, 0x1900c91c

    add-int v23, v23, v1

    const v1, 0x198d0ede

    const v24, 0x40fec37e

    rem-int v24, v24, v1

    const v1, 0x6c5ec544

    const/16 v20, 0x0

    aput v1, v4, v20

    const v1, 0x970600e

    aput v1, v4, v2

    const/4 v1, 0x2

    const v25, 0xc4ad2d6

    aput v25, v4, v1

    const/4 v1, 0x3

    const v25, 0x113c2109

    aput v25, v4, v1

    const/4 v1, 0x4

    const v25, 0x160e49b5

    aput v25, v4, v1

    const/4 v1, 0x5

    const v25, 0x20f56b9e

    aput v25, v4, v1

    const/4 v1, 0x6

    const v25, 0x70196b3

    aput v25, v4, v1

    const/4 v1, 0x7

    const v25, 0x562db0c2

    aput v25, v4, v1

    const v1, 0xf51a837

    const/16 v25, 0x8

    aput v1, v4, v25

    const v1, 0x6c5ec544

    not-int v1, v1

    const v25, 0x970600e

    and-int v1, v1, v25

    const v25, 0xc4ad2d6

    or-int v1, v1, v25

    const v25, 0x6c5ec544

    const v26, 0x113c2109

    and-int v25, v25, v26

    const v26, 0x160e49b5

    or-int v25, v25, v26

    add-int v1, v1, v25

    const v25, 0x20f56b9e

    sub-int v1, v1, v25

    const v25, 0x70196b3

    add-int v25, v25, v1

    const v1, 0xf51a837

    const v26, 0x562db0c2

    rem-int v26, v26, v1

    const v1, 0xd24b94b

    const/16 v20, 0x0

    aput v1, v4, v20

    const v1, 0xa11952

    aput v1, v4, v2

    const/4 v1, 0x2

    const v27, 0x4355f8ad

    aput v27, v4, v1

    const/4 v1, 0x3

    const v27, 0x41a04176

    aput v27, v4, v1

    const/4 v1, 0x4

    const v27, 0x67484024

    aput v27, v4, v1

    const/4 v1, 0x5

    const v27, -0x6f67b726

    aput v27, v4, v1

    const/4 v1, 0x6

    const v27, 0x8c02b1

    aput v27, v4, v1

    const/4 v1, 0x7

    const v27, 0x3f65e096

    aput v27, v4, v1

    const v1, 0x2433ecac

    const/16 v27, 0x8

    aput v1, v4, v27

    const v1, 0xd24b94b

    not-int v1, v1

    const v27, 0xa11952

    and-int v1, v1, v27

    const v27, 0x4355f8ad

    or-int v1, v1, v27

    const v27, 0xd24b94b

    const v28, 0x41a04176

    and-int v27, v27, v28

    const v28, 0x67484024

    or-int v27, v27, v28

    add-int v1, v1, v27

    const v27, -0x6f67b726

    sub-int v1, v1, v27

    const v27, 0x8c02b1

    add-int v27, v27, v1

    const v1, 0x2433ecac

    const v28, 0x3f65e096

    rem-int v28, v28, v1

    xor-int v1, v25, v26

    xor-int v23, v23, v24

    xor-int v19, v19, v22

    xor-int v17, v17, v18

    xor-int v15, v15, v16

    xor-int/2addr v13, v14

    xor-int/2addr v9, v8

    xor-int v8, v6, v7

    xor-int v6, v11, v12

    xor-int v14, v27, v28

    const v7, 0x29c95e8b

    const/16 v20, 0x0

    aput v7, v4, v20

    const v7, 0x4a9fcb00    # 5236096.0f

    aput v7, v4, v2

    const/4 v2, 0x2

    const v7, 0x304c4c73

    aput v7, v4, v2

    const/4 v2, 0x3

    const v7, 0x5bd38324

    aput v7, v4, v2

    const/4 v2, 0x4

    const v7, 0x31600034

    aput v7, v4, v2

    const/4 v2, 0x5

    const v7, -0x5f1f76ae

    aput v7, v4, v2

    const/4 v2, 0x6

    const v7, 0x8286448

    aput v7, v4, v2

    const/4 v2, 0x7

    const v7, 0x55bfe1fd

    aput v7, v4, v2

    const v2, 0x42383768

    const/16 v7, 0x8

    aput v2, v4, v7

    const v2, 0x29c95e8b

    not-int v2, v2

    const v4, 0x4a9fcb00    # 5236096.0f

    and-int/2addr v2, v4

    const v4, 0x304c4c73

    or-int/2addr v2, v4

    const v4, 0x29c95e8b

    const v7, 0x5bd38324

    and-int/2addr v4, v7

    const v7, 0x31600034

    or-int/2addr v4, v7

    add-int/2addr v2, v4

    const v4, -0x5f1f76ae

    sub-int/2addr v2, v4

    const v4, 0x8286448

    add-int/2addr v4, v2

    const v2, 0x42383768

    const v7, 0x55bfe1fd

    rem-int/2addr v7, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzauc;->zza:I

    const v11, -0x3f0472ad

    add-int/2addr v3, v11

    xor-int/2addr v4, v7

    move/from16 v7, p1

    move v11, v13

    move v12, v15

    move/from16 v13, v17

    move/from16 v16, v19

    move/from16 v18, v23

    move/from16 v19, v1

    move/from16 v17, v4

    move v15, v5

    move v5, v6

    move/from16 v4, v20

    const v1, 0x69ec173c

    move v6, v2

    goto/16 :goto_0

    :cond_1
    const/16 v20, 0x0

    shl-int v1, v7, v8

    ushr-int v2, v7, v9

    xor-int/2addr v1, v2

    add-int/2addr v1, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzauc;->zzb:[I

    and-int v22, v4, v10

    aget v22, v2, v22

    add-int v22, v4, v22

    xor-int v1, v1, v22

    add-int/2addr v6, v1

    add-int/2addr v4, v11

    shl-int v1, v6, v8

    ushr-int v22, v6, v9

    ushr-int v23, v4, v12

    and-int v23, v23, v10

    aget v2, v2, v23

    add-int/2addr v2, v4

    xor-int v1, v1, v22

    add-int/2addr v1, v6

    xor-int/2addr v1, v2

    add-int/2addr v7, v1

    const v1, -0x2fa60cf7

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    const v1, -0xe0dd522

    add-int/2addr v1, v3

    const v2, 0x2fa60cf7

    add-int/2addr v3, v2

    if-ne v4, v5, :cond_3

    move v3, v1

    :cond_3
    :goto_1
    const v1, 0x69ec173c

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x6b9f7823
        0x5a0c9ac3
        0x563f218e
        -0x53fe05bf
        -0x5b2c9a62
        0x1391c203
        0x59e3ac4
        0x39333bad
        0x2fff2a9f
    .end array-data
.end method
