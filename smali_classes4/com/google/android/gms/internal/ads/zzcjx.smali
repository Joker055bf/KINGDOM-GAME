.class final synthetic Lcom/google/android/gms/internal/ads/zzcjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgru;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzclv;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Z

.field private final synthetic zze:Z

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzazh;

.field private final synthetic zzg:Lcom/google/android/gms/internal/ads/zzbil;

.field private final synthetic zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final synthetic zzi:Lcom/google/android/gms/ads/internal/zzn;

.field private final synthetic zzj:Lcom/google/android/gms/ads/internal/zza;

.field private final synthetic zzk:Lcom/google/android/gms/internal/ads/zzbgd;

.field private final synthetic zzl:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzm:Lcom/google/android/gms/internal/ads/zzfiu;

.field private final synthetic zzn:Lcom/google/android/gms/internal/ads/zzfjo;

.field private final synthetic zzo:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final synthetic zzp:Lcom/google/android/gms/internal/ads/zzejf;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzclv;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfjo;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzejf;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zza:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzb:Lcom/google/android/gms/internal/ads/zzclv;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zze:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Lcom/google/android/gms/internal/ads/zzbil;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzj:Lcom/google/android/gms/ads/internal/zza;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzbgd;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Lcom/google/android/gms/internal/ads/zzfir;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Lcom/google/android/gms/internal/ads/zzfiu;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Lcom/google/android/gms/internal/ads/zzfjo;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Lcom/google/android/gms/internal/ads/zzdxz;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:Lcom/google/android/gms/internal/ads/zzejf;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzb:Lcom/google/android/gms/internal/ads/zzclv;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzc:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzd:Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zze:Z

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzp:Lcom/google/android/gms/internal/ads/zzejf;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzo:Lcom/google/android/gms/internal/ads/zzdxz;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzk:Lcom/google/android/gms/internal/ads/zzbgd;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzl:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzm:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzn:Lcom/google/android/gms/internal/ads/zzfjo;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzg:Lcom/google/android/gms/internal/ads/zzbil;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcjx;->zza:Landroid/content/Context;

    const/16 v17, 0x108

    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzckh;

    .line 2
    sget v18, Lcom/google/android/gms/internal/ads/zzcko;->zza:I

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcln;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcko;

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v7

    move v7, v0

    move-object/from16 v21, v8

    move-object v8, v1

    move-object v1, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v16

    move/from16 v23, v0

    move-object v0, v11

    move-object/from16 v22, v17

    move-object/from16 v11, v18

    move-object/from16 v24, v14

    move-object/from16 v14, v22

    move-object/from16 v25, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v1

    move-object/from16 v17, v21

    .line 4
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzcko;-><init>(Lcom/google/android/gms/internal/ads/zzcln;Lcom/google/android/gms/internal/ads/zzclv;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbil;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbht;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbgd;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/internal/ads/zzfjo;)V

    move-object/from16 v1, v24

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzckh;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzdxz;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v1

    move-object/from16 v4, v22

    move/from16 v2, v23

    move-object/from16 v3, v25

    .line 6
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzz;->zzb(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzbgd;ZLcom/google/android/gms/internal/ads/zzejf;)Lcom/google/android/gms/internal/ads/zzcjw;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcjk;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjl;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 10
    throw v0
.end method
