.class public abstract Lcom/google/android/gms/internal/ads/zzfxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfyj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>()V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzfxz;)Lcom/google/android/gms/internal/ads/zzfyj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgru<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgru<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfxz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfyj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>(Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzfxz;)V

    return-object v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzfxz;)Lcom/google/android/gms/internal/ads/zzfyj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfxw;-><init>(I)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfxv;->zza:Lcom/google/android/gms/internal/ads/zzfxv;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>(Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzfxz;)V

    return-object v0
.end method

.method static synthetic zzd(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfxx;->zzg(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxx;->zzf()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzf()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzg(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
