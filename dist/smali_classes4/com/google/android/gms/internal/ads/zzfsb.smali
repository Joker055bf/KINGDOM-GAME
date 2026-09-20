.class public final Lcom/google/android/gms/internal/ads/zzfsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfmy;

.field private final zze:Lcom/google/android/gms/ads/internal/ClientApi;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfkg;

.field private final zzg:Lcom/google/android/gms/common/util/Clock;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfqr;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzh:Lcom/google/android/gms/internal/ads/zzfqr;

    return-void
.end method

.method private final zzc()Lcom/google/android/gms/internal/ads/zzfra;
    .locals 11

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfra;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzG:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzH:Lcom/google/android/gms/internal/ads/zzbgv;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfra;-><init>(JDJDLcom/google/android/gms/common/util/Clock;)V

    return-object v10
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;)Lcom/google/android/gms/internal/ads/zzfsa;
    .locals 12

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzfqz;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    move-object v0, v11

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzfqz;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;)V

    return-object v11

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzfsf;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    move-object v0, v11

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzfsf;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;)V

    return-object v11

    .line 2
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzfrc;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    move-object v0, v11

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzfrc;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;)V

    return-object v11
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Lcom/google/android/gms/internal/ads/zzfsa;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p2

    .line 1
    iget v1, v7, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzfqz;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzh:Lcom/google/android/gms/internal/ads/zzfqr;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzfqz;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V

    return-object v14

    :cond_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzfsf;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzh:Lcom/google/android/gms/internal/ads/zzfqr;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzfsf;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V

    return-object v14

    .line 2
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zze:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zza:Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzf:Lcom/google/android/gms/internal/ads/zzfkg;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzd:Lcom/google/android/gms/internal/ads/zzfmy;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzfrc;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc()Lcom/google/android/gms/internal/ads/zzfra;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzg:Lcom/google/android/gms/common/util/Clock;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfsb;->zzh:Lcom/google/android/gms/internal/ads/zzfqr;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzfrc;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfmy;Lcom/google/android/gms/internal/ads/zzfra;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzfqr;)V

    return-object v14
.end method
