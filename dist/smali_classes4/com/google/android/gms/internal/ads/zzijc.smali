.class public final Lcom/google/android/gms/internal/ads/zzijc;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzijc;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzian;

.field private zzc:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzf:Lcom/google/android/gms/internal/ads/zzicd;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzicd;

.field private zzi:Lcom/google/android/gms/internal/ads/zzije;

.field private zzj:Lcom/google/android/gms/internal/ads/zzijg;

.field private zzk:Lcom/google/android/gms/internal/ads/zzhyi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzijc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzijc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzijc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzijc;->zzbC()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzijc;->zzbC()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zze:Lcom/google/android/gms/internal/ads/zzibz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibr;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zzf:Lcom/google/android/gms/internal/ads/zzicd;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zzg:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzijc;->zzbM()Lcom/google/android/gms/internal/ads/zzicd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzijc;->zzh:Lcom/google/android/gms/internal/ads/zzicd;

    return-void
.end method

.method public static zzc([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzijc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbV(Lcom/google/android/gms/internal/ads/zzibr;[BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzijc;

    return-object p0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzijc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    return-object v0
.end method


# virtual methods
.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibq;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzijc;->zzm:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzijc;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzijc;->zzm:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzijc;->zzm:Lcom/google/android/gms/internal/ads/zzidk;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzijb;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzijb;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzijc;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzijc;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zza"

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "zzc"

    aput-object p1, v4, p2

    const-string p1, "zzd"

    aput-object p1, v4, v3

    const-string p1, "zze"

    aput-object p1, v4, v2

    const-string p1, "zzh"

    aput-object p1, v4, v1

    .line 2
    const-class p1, Lcom/google/android/gms/internal/ads/zziir;

    aput-object p1, v4, v0

    const-string p1, "zzi"

    aput-object p1, v4, p3

    const/4 p1, 0x7

    const-string p2, "zzg"

    aput-object p2, v4, p1

    const/16 p1, 0x8

    const-string p2, "zzj"

    aput-object p2, v4, p1

    const/16 p1, 0x9

    const-string p2, "zzf"

    aput-object p2, v4, p1

    const/16 p1, 0xa

    const-string p2, "zzb"

    aput-object p2, v4, p1

    const/16 p1, 0xb

    const-string p2, "zzk"

    aput-object p2, v4, p1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzijc;->zzl:Lcom/google/android/gms/internal/ads/zzijc;

    const-string p2, "\u0001\n\u0000\u0001\u0001\u000f\n\u0000\u0004\u0000\u0001\'\u0002\u1002\u0001\u0003\'\u0004\u001b\u0005\u1009\u0003\u0007\u1008\u0002\t\u1009\u0004\n\u001a\r\u100a\u0000\u000f\u1009\u0005"

    .line 5
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzijc;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
