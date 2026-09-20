.class final Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaco;

.field private zzb:Lcom/google/android/gms/internal/ads/zzguf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzv;

.field private zzd:J

.field private zze:J

.field private zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaco;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzR(Landroid/content/Context;)Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:J

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzado;->zzb:Lcom/google/android/gms/internal/ads/zzado;

    return-void
.end method

.method private static final zzy(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaco;->zzB(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzi;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzt;->zzC(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zze()V

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzado;Ljava/util/concurrent/Executor;)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzadq;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzi(Lcom/google/android/gms/internal/ads/zzv;I)Z

    move-result p1

    return p1
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg(Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzm(Z)V

    return-void
.end method

.method public final zzh(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzj(Z)Z

    move-result p1

    return p1
.end method

.method public final zzi()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzA(J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzy()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzz()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzk()V

    :cond_0
    return-void
.end method

.method public final zzj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzacp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzp(Lcom/google/android/gms/internal/ads/zzacp;)V

    return-void
.end method

.method public final zzm(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzq(F)V

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzguf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaci;->zzy(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzo(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:J

    return-void
.end method

.method public final zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaco;->zzc(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzes;)V

    return-void
.end method

.method public final zzq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()V

    return-void
.end method

.method public final zzr(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzr(I)V

    return-void
.end method

.method public final zzs(ILcom/google/android/gms/internal/ads/zzv;JILjava/util/List;)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 2
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaco;->zzA(J)V

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaci;->zzy(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaci;->zze:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzt()Z

    move-result v1

    const-wide/high16 v7, -0x4000000000000000L    # -2.0

    if-nez v1, :cond_1

    cmp-long v1, v5, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x1

    add-long v7, v5, v3

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzw()Lcom/google/android/gms/internal/ads/zzff;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacn;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:J

    add-long v10, p3, v3

    move-object v9, v2

    move/from16 v12, p5

    move-wide v13, v7

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(JIJ)V

    .line 5
    invoke-virtual {v1, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzt()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzw()Lcom/google/android/gms/internal/ads/zzff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzo()V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzff;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzff;-><init>(I)V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzw()Lcom/google/android/gms/internal/ads/zzff;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzff;->zzc()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzw()Lcom/google/android/gms/internal/ads/zzff;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzff;->zzd()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzacn;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzacn;

    if-eqz v3, :cond_3

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzacn;->zzb:I

    if-eqz v3, :cond_2

    if-ne v3, v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzo()V

    goto :goto_2

    .line 4
    :cond_2
    :goto_1
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzacn;->zza:J

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzacn;->zzc:J

    new-instance v4, Lcom/google/android/gms/internal/ads/zzacn;

    const/4 v8, 0x0

    move-object v5, v4

    .line 5
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(JIJ)V

    :cond_3
    :goto_2
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzacn;->zzc:J

    .line 7
    invoke-virtual {v1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzff;->zza(JLjava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzx(Lcom/google/android/gms/internal/ads/zzff;)V

    return-void
.end method

.method public final zzu(JLcom/google/android/gms/internal/ads/zzadp;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:J

    add-long/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzv()Lcom/google/android/gms/internal/ads/zzact;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzact;->zzb(J)J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzu()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzu()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzf:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzf:I

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzadp;->zzb()V

    return p2

    .line 1
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzs()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzv(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzadq;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzd:J

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaco;->zzl(JJ)V

    return-void
.end method

.method public final zzw(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzn(Z)V

    :cond_0
    return-void
.end method

.method public final zzx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaci;->zza:Lcom/google/android/gms/internal/ads/zzaco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzg()V

    return-void
.end method
