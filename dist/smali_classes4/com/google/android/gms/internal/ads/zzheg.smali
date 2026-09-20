.class final synthetic Lcom/google/android/gms/internal/ads/zzheg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzheg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzheg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzheg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zza:Lcom/google/android/gms/internal/ads/zzheg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhaz;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzher;

    sget v0, Lcom/google/android/gms/internal/ads/zzhei;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhev;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhev;->zzd()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhbm;->zzb()Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object v0

    .line 4
    sget v2, Lcom/google/android/gms/internal/ads/zzhef;->zza:I

    .line 5
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhbv;->zza(Lcom/google/android/gms/internal/ads/zzhbp;)[B

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzd([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhqf;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhef;

    .line 9
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzhef;-><init>(Lcom/google/android/gms/internal/ads/zzhqf;Lcom/google/android/gms/internal/ads/zzhas;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzher;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzhhj;->zzc(Lcom/google/android/gms/internal/ads/zzhas;Lcom/google/android/gms/internal/ads/zzhye;)Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
