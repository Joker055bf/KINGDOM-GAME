.class public final Lcom/google/android/gms/internal/ads/zzahp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaeu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaho;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaho;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzc(Lcom/google/android/gms/internal/ads/zzaex;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p1

    return p1
.end method

.method public final zze(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaeu;->zze(JJ)V

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzf()V

    return-void
.end method
