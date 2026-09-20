.class public final Lcom/google/android/gms/internal/ads/zzatu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza()[B
    .locals 21

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1
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

    not-int v0, v3

    and-int/2addr v0, v5

    or-int/2addr v0, v7

    and-int/2addr v3, v9

    or-int/2addr v3, v11

    add-int/2addr v0, v3

    sub-int/2addr v0, v13

    add-int/2addr v15, v0

    const v0, 0x3db012b3

    rem-int v17, v17, v0

    const v0, 0x3fcfaed9

    aput v0, v1, v2

    const v3, 0x335e857

    aput v3, v1, v4

    const v5, 0x2c3293b0

    aput v5, v1, v6

    const v7, 0x63476a4f

    aput v7, v1, v8

    const v9, 0x68d20698

    aput v9, v1, v10

    const v11, 0x569e56bc

    aput v11, v1, v12

    const v13, 0x5a2e0a0

    aput v13, v1, v14

    const v18, 0x5cb44a05

    aput v18, v1, v16

    const/16 v19, 0x8

    const v20, 0x16cf80f1

    aput v20, v1, v19

    not-int v1, v0

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    and-int/2addr v0, v7

    or-int/2addr v0, v9

    add-int/2addr v1, v0

    sub-int/2addr v1, v11

    add-int/2addr v13, v1

    rem-int v18, v18, v20

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    xor-int v1, v13, v18

    xor-int v3, v15, v17

    aget v2, v0, v2

    aget v4, v0, v4

    aget v5, v0, v6

    aget v6, v0, v8

    aget v7, v0, v10

    aget v8, v0, v12

    aget v9, v0, v14

    aget v0, v0, v16

    not-int v10, v2

    and-int/2addr v4, v10

    or-int/2addr v4, v5

    and-int/2addr v2, v6

    or-int/2addr v2, v7

    add-int/2addr v4, v2

    sub-int/2addr v4, v8

    add-int/2addr v9, v4

    const v2, 0x4c04a8af    # 3.477574E7f

    rem-int/2addr v0, v2

    xor-int/2addr v0, v9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-short v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x5b25ace2
        0x70a0790
        0x330b0e
        0x27280493
        0x30f56b4f
        0x4313a8dd
        0xb046bd4
        0x3dd15094
        0x3db012b3
    .end array-data

    :array_1
    .array-data 4
        0x14e17e33
        0x4038e8a2
        0x68db0d72
        0x120e080
        0x2dd61648
        0x6e240f69
        0x1748396
        0x76272110
        0x4c04a8af    # 3.477574E7f
    .end array-data
.end method
