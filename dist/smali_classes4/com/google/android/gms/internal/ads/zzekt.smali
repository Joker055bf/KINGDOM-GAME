.class final Lcom/google/android/gms/internal/ads/zzekt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmc;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfir;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdxz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzfjk;ZLcom/google/android/gms/internal/ads/zzbok;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzdxz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekt;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbs;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzt(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcti;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    const/4 v15, 0x1

    .line 2
    invoke-interface {v6, v15}, Lcom/google/android/gms/internal/ads/zzcjl;->zzag(Z)V

    .line 3
    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzg:Z

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    .line 4
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzbok;->zzc(Z)Z

    move-result v3

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v15

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbok;->zzd()Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v19, v15

    goto :goto_1

    :cond_1
    move/from16 v19, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzf:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbok;->zze()F

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    const/16 v18, 0x1

    const/16 v21, -0x1

    .line 5
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzO:Z

    const/16 v24, 0x0

    move-object/from16 v16, v10

    move/from16 v22, p1

    move/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdbs;->zzb()V

    .line 7
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcti;->zzj()Lcom/google/android/gms/internal/ads/zzdlr;

    move-result-object v4

    .line 9
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzQ:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfjk;->zzk:Lcom/google/android/gms/ads/internal/client/zzx;

    if-eqz v3, :cond_6

    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    if-ne v3, v15, :cond_5

    const/4 v1, 0x7

    goto :goto_3

    :cond_5
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    .line 10
    :cond_6
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Error setting app open orientation; no targeting orientation available."

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzd(Ljava/lang/String;)V

    :goto_3
    move v7, v1

    .line 9
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzekt;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 12
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzB:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfir;->zzs:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfiw;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzekt;->zze:Lcom/google/android/gms/internal/ads/zzfjk;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfir;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzh:Lcom/google/android/gms/internal/ads/zzejf;

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v16, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcjl;->zzn()Ljava/lang/String;

    move-result-object v1

    move-object v2, v14

    move-object/from16 v25, v14

    move-object/from16 v14, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcjl;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzbxl;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzekt;->zzi:Lcom/google/android/gms/internal/ads/zzdxz;

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    const/4 v4, 0x1

    .line 15
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdxz;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekt;->zzc:Lcom/google/android/gms/internal/ads/zzfir;

    return-object v0
.end method
