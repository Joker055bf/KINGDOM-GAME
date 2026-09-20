.class public final Lcom/google/android/gms/internal/ads/zzihp;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzihp;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzicd;

.field private zzd:Lcom/google/android/gms/internal/ads/zzicd;

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzihp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzihp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzihp;->zzf:Lcom/google/android/gms/internal/ads/zzihp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzihp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzihp;->zzb:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzihp;->zzc:Lcom/google/android/gms/internal/ads/zzicd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzihp;->zzd:Lcom/google/android/gms/internal/ads/zzicd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzihp;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzihp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzihp;->zzf:Lcom/google/android/gms/internal/ads/zzihp;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibq;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 p2, 0x0

    if-eq p1, v0, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzihp;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzihp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzihp;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzihp;->zzf:Lcom/google/android/gms/internal/ads/zzihp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzihp;->zzg:Lcom/google/android/gms/internal/ads/zzidk;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 8
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzihp;->zzf:Lcom/google/android/gms/internal/ads/zzihp;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zziho;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zziho;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzihp;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzihp;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zza"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p3, v3

    const-string p1, "zzb"

    aput-object p1, p3, p2

    const-string p1, "zzc"

    aput-object p1, p3, v2

    const-string p1, "zzd"

    aput-object p1, p3, v1

    const-string p1, "zze"

    aput-object p1, p3, v0

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzihp;->zzf:Lcom/google/android/gms/internal/ads/zzihp;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001a\u0003\u001a\u0004\u1008\u0001"

    .line 5
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzihp;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
