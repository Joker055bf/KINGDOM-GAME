.class public final Lcom/google/android/gms/internal/ads/zzatt;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzats;Lcom/google/android/gms/internal/ads/zzatq;J)V
    .locals 17

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v8, v0, v7

    const/4 v9, 0x4

    aget v10, v0, v9

    const/4 v11, 0x5

    aget v12, v0, v11

    const/4 v13, 0x6

    aget v14, v0, v13

    const/4 v15, 0x7

    aget v16, v0, v15

    not-int v15, v2

    and-int/2addr v4, v15

    or-int/2addr v4, v6

    and-int/2addr v2, v8

    or-int/2addr v2, v10

    add-int/2addr v4, v2

    sub-int/2addr v4, v12

    add-int/2addr v14, v4

    const v2, 0x606ed7f6

    rem-int v16, v16, v2

    const v2, 0x557fb7ee

    aput v2, v0, v1

    const v4, 0x494c21e5

    aput v4, v0, v3

    const v6, 0x2802c404

    aput v6, v0, v5

    const v5, 0x415c31e1

    aput v5, v0, v7

    const v7, 0x2090120c

    aput v7, v0, v9

    const v8, 0x7308bc61

    aput v8, v0, v11

    const v9, 0x95fc93b

    aput v9, v0, v13

    const v10, 0x6d1bcf1c

    const/4 v11, 0x7

    aput v10, v0, v11

    const/16 v11, 0x8

    const v12, 0x4ce5ca53    # 1.2047631E8f

    aput v12, v0, v11

    not-int v0, v2

    and-int/2addr v0, v4

    or-int/2addr v0, v6

    and-int/2addr v2, v5

    or-int/2addr v2, v7

    add-int/2addr v0, v2

    sub-int/2addr v0, v8

    add-int/2addr v9, v0

    rem-int/2addr v10, v12

    xor-int v0, v14, v16

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzats;->zza()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzatq;->zza()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    xor-int v1, v9, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "bk3t6gFTc30="

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    return-void

    nop

    :array_0
    .array-data 4
        0x7fbd7a3e
        0x5111440
        0x19a9a08e
        0x345c1c60
        0x70ed8a21
        -0x4d233d43
        0x2bf4aab1
        0x682dfed6
        0x606ed7f6
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzats;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzats;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "bk0="

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    return-void
.end method
