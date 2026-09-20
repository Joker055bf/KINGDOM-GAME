.class public Lcom/google/android/gms/internal/ads/zzaae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaac;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzaae;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaae;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza()Lcom/google/android/gms/internal/ads/zzbg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaac;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    return-object v0
.end method

.method public zzb(I)Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaac;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    return-object p1
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaac;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    return-object v0
.end method

.method public final zze()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaac;->zze()I

    move-result v0

    return v0
.end method

.method public final zzf(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaac;->zzf(I)I

    move-result p1

    return p1
.end method

.method public final zzg(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaac;->zzg(I)I

    move-result p1

    return p1
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzaac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaac;->zzh()I

    move-result v0

    return v0
.end method
