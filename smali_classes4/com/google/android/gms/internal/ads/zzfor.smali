.class public final Lcom/google/android/gms/internal/ads/zzfor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Ljava/lang/Boolean;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfov;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdvm;

.field private final zzk:Ljava/util/List;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzclx;

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzcac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdvm;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzcac;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoy;->zzb()Lcom/google/android/gms/internal/ads/zzfov;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzg:Lcom/google/android/gms/internal/ads/zzfov;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzj:Lcom/google/android/gms/internal/ads/zzdvm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzn:Lcom/google/android/gms/internal/ads/zzcac;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzl:Lcom/google/android/gms/internal/ads/zzclx;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkg:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzk()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzk:Ljava/util/List;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzb:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Ljava/lang/Boolean;

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfor;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfor;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfor;->zzc:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfor;->zzg:Lcom/google/android/gms/internal/ads/zzfov;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfov;->zza()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    monitor-exit v2

    return-void

    .line 4
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfor;->zzg:Lcom/google/android/gms/internal/ads/zzfov;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object v8

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfov;->zzc()Lcom/google/android/gms/internal/ads/zzfov;

    .line 7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegy;

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzka:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const v6, 0xea60

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v9, "application/x-protobuf"

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfor;->zze:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfor;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v13, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfor;->zzn:Lcom/google/android/gms/internal/ads/zzcac;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeha;

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcac;ILjava/lang/String;)V

    .line 12
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzegy;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeha;->zzb(Lcom/google/android/gms/internal/ads/zzegy;)Lcom/google/android/gms/internal/ads/zzegz;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/zzecr;

    if-eqz v2, :cond_3

    .line 13
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzecr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecr;->zza()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v2, "CuiMonitor.sendCuiPing"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 4
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfoq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfoq;-><init>(Lcom/google/android/gms/internal/ads/zzfor;Lcom/google/android/gms/internal/ads/zzfoh;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfoh;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzm:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzm:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfor;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_3

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zze:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfor;->zze:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzi:I

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkb:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zznp:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    .line 12
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v2

    move-object v2, p0

    move-wide v3, v5

    .line 14
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkh:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzl:Lcom/google/android/gms/internal/ads/zzclx;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzclx;->zza()V

    .line 18
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfor;->zza()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfor;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzg:Lcom/google/android/gms/internal/ads/zzfov;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfov;->zza()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzkc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 23
    monitor-exit v0

    return-void

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfou;->zza()Lcom/google/android/gms/internal/ads/zzfos;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzm()I

    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzv(I)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzb()Z

    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zza(Z)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zza()J

    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfos;->zzb(J)Lcom/google/android/gms/internal/ads/zzfos;

    const/4 v3, 0x3

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzw(I)Lcom/google/android/gms/internal/ads/zzfos;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzh:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzg(I)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzo()I

    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzx(I)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzc()I

    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzi(I)Lcom/google/android/gms/internal/ads/zzfos;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzi:I

    int-to-long v3, v3

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfos;->zzj(J)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzn()I

    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzy(I)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzj:Lcom/google/android/gms/internal/ads/zzdvm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdvm;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzh()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzs(Lcom/google/android/gms/internal/ads/zzfot;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzl()J

    move-result-wide v3

    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfos;->zzc(J)Lcom/google/android/gms/internal/ads/zzfos;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkg:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzk:Ljava/util/List;

    .line 50
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfos;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfos;

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzkh:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfor;->zzl:Lcom/google/android/gms/internal/ads/zzclx;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclx;->zzd()Lcom/google/android/gms/internal/ads/zziff;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzclx;->zzc()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_7

    .line 55
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfos;->zzt(Lcom/google/android/gms/internal/ads/zziff;)Lcom/google/android/gms/internal/ads/zzfos;

    :cond_7
    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfos;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfos;

    .line 57
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfox;->zza()Lcom/google/android/gms/internal/ads/zzfow;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfow;->zza(Lcom/google/android/gms/internal/ads/zzfos;)Lcom/google/android/gms/internal/ads/zzfow;

    .line 58
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfov;->zzb(Lcom/google/android/gms/internal/ads/zzfow;)Lcom/google/android/gms/internal/ads/zzfov;

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
