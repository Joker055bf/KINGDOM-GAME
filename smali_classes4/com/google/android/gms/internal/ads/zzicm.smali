.class public Lcom/google/android/gms/internal/ads/zzicm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field protected volatile zza:Lcom/google/android/gms/internal/ads/zzidc;

.field private volatile zzb:Lcom/google/android/gms/internal/ads/zzian;

.field private volatile zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzicm;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzicm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicm;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzicm;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzian;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbw()Lcom/google/android/gms/internal/ads/zzidc;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzicm;->zzd(Lcom/google/android/gms/internal/ads/zzidc;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzidc;->zzbw()Lcom/google/android/gms/internal/ads/zzidc;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzicm;->zzd(Lcom/google/android/gms/internal/ads/zzidc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzidc;)Lcom/google/android/gms/internal/ads/zzidc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzc()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbr()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzian;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidc;->zzaM()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzidc;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzian;->zza:Lcom/google/android/gms/internal/ads/zzian;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicm;->zzb:Lcom/google/android/gms/internal/ads/zzian;

    .line 3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
