.class final Lcom/google/android/gms/internal/ads/zzidg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzidc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzief;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzibc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzidc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzibn;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzd:Lcom/google/android/gms/internal/ads/zzibc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzidg;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    return-void
.end method

.method static zzh(Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzidc;)Lcom/google/android/gms/internal/ads/zzidg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzidg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidg;-><init>(Lcom/google/android/gms/internal/ads/zzief;Lcom/google/android/gms/internal/ads/zzibc;Lcom/google/android/gms/internal/ads/zzidc;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzibr;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbg()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidc;->zzcY()Lcom/google/android/gms/internal/ads/zzidb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidb;->zzbt()Lcom/google/android/gms/internal/ads/zzidc;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzibg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzc:Z

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    mul-int/lit8 v0, v0, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibg;->zza:Lcom/google/android/gms/internal/ads/zzieb;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzieb;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidw;->zzI(Lcom/google/android/gms/internal/ads/zzief;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzd:Lcom/google/android/gms/internal/ads/zzibc;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzidw;->zzH(Lcom/google/android/gms/internal/ads/zzibc;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzieg;->zzh()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzc:Z

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibg;->zzg()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzieu;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibg;->zzc()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzibf;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzibf;->zzc()Lcom/google/android/gms/internal/ads/zziet;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zziet;->zzi:Lcom/google/android/gms/internal/ads/zziet;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzibf;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzibf;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzicj;

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzibf;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicj;->zza()Lcom/google/android/gms/internal/ads/zzicl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicm;->zzc()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v1

    .line 8
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzieu;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzibf;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzieu;->zzv(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzieg;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzieg;->zzf(Lcom/google/android/gms/internal/ads/zzieu;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzief;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zziab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzibr;

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zza()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzieg;->zzb()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/zzibr;->zzt:Lcom/google/android/gms/internal/ads/zzieg;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzb:Lcom/google/android/gms/internal/ads/zzief;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzief;->zzj(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidg;->zzd:Lcom/google/android/gms/internal/ads/zzibc;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzibc;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibg;->zze()Z

    move-result p1

    return p1
.end method
