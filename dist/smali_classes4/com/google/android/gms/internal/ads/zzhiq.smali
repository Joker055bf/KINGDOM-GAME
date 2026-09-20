.class final Lcom/google/android/gms/internal/ads/zzhiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zza:[J

.field static final zzb:[J

.field static final zzc:[J

.field static final zzd:[[Lcom/google/android/gms/internal/ads/zzhij;

.field static final zze:[Lcom/google/android/gms/internal/ads/zzhij;

.field private static final zzf:Ljava/math/BigInteger;

.field private static final zzg:Ljava/math/BigInteger;

.field private static final zzh:Ljava/math/BigInteger;

.field private static final zzi:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v0, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v3, 0x13

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zzf:Ljava/math/BigInteger;

    const-wide/32 v3, -0x1db41

    .line 2
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/32 v4, 0x1db42

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/ads/zzhiq;->zzg:Ljava/math/BigInteger;

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzhiq;->zzh:Ljava/math/BigInteger;

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v5, 0x4

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zzi:Ljava/math/BigInteger;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhip;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzhip;-><init>([B)V

    .line 5
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzhip;->zzd(Ljava/math/BigInteger;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x2

    .line 6
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 8
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v7, 0x3

    .line 9
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 10
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :cond_0
    const/4 v5, 0x0

    .line 12
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 14
    :cond_1
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzhip;->zzb(Ljava/math/BigInteger;)V

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zza:[J

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zzb:[J

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zzc:[J

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    const-class v2, Lcom/google/android/gms/internal/ads/zzhij;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/android/gms/internal/ads/zzhij;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhiq;->zzd:[[Lcom/google/android/gms/internal/ads/zzhij;

    move-object v2, v1

    move v0, v5

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x8

    if-ge v0, v3, :cond_4

    move-object v6, v2

    move v3, v5

    :goto_1
    if-ge v3, v4, :cond_2

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhiq;->zzd:[[Lcom/google/android/gms/internal/ads/zzhij;

    .line 18
    aget-object v7, v7, v0

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhiq;->zzc(Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhij;

    move-result-object v8

    aput-object v8, v7, v3

    .line 19
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzhiq;->zza(Lcom/google/android/gms/internal/ads/zzhip;Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhip;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_2
    if-ge v3, v4, :cond_3

    .line 20
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzhiq;->zza(Lcom/google/android/gms/internal/ads/zzhip;Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhip;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzhiq;->zza(Lcom/google/android/gms/internal/ads/zzhip;Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhip;

    move-result-object v0

    new-array v2, v4, [Lcom/google/android/gms/internal/ads/zzhij;

    sput-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zze:[Lcom/google/android/gms/internal/ads/zzhij;

    :goto_3
    if-ge v5, v4, :cond_5

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhiq;->zzc(Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhij;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhiq;->zze:[Lcom/google/android/gms/internal/ads/zzhij;

    aput-object v2, v3, v5

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhiq;->zza(Lcom/google/android/gms/internal/ads/zzhip;Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhip;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x8
    .end array-data
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzhip;Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhip;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhip;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhip;-><init>([B)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zzg:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zzf:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v5

    .line 2
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 3
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhip;->zzb(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v4

    .line 5
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 6
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzd(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static zzb(Ljava/math/BigInteger;)[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 2
    array-length v1, p0

    rsub-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/16 p0, 0x10

    if-ge v3, p0, :cond_0

    .line 3
    aget-byte p0, v0, v3

    rsub-int/lit8 v1, v3, 0x20

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget-byte v2, v0, v1

    aput-byte v2, v0, v3

    .line 5
    aput-byte p0, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzhip;)Lcom/google/android/gms/internal/ads/zzhij;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhij;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhiq;->zzf:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v4

    .line 2
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiq;->zzh:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zza()Ljava/math/BigInteger;

    move-result-object v5

    .line 3
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhip;->zzc()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhiq;->zzb(Ljava/math/BigInteger;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhiv;->zzg([B)[J

    move-result-object p0

    invoke-direct {v1, v0, v3, p0}, Lcom/google/android/gms/internal/ads/zzhij;-><init>([J[J[J)V

    return-object v1
.end method
