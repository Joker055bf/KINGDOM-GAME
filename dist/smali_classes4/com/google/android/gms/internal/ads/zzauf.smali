.class final synthetic Lcom/google/android/gms/internal/ads/zzauf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauy;


# instance fields
.field private final synthetic zza:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauf;->zza:J

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavb;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauf;->zza:J

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzavb;->zzb:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzavg;->zzb(J)Lcom/google/android/gms/internal/ads/zzavg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzb(Lcom/google/android/gms/internal/ads/zzavg;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzauw; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzatq;->zza:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    :goto_0
    return-object p1
.end method
