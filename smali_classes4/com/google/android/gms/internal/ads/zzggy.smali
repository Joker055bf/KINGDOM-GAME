.class final Lcom/google/android/gms/internal/ads/zzggy;
.super Lcom/google/android/gms/internal/ads/zzghb;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Ljava/lang/Long;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcc;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzggy;->zza:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgcc;Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgoe;)V
    .locals 7

    const/16 v0, 0x79

    .line 1
    invoke-virtual {p6, v0}, Lcom/google/android/gms/internal/ads/zzgoe;->zza(I)Lcom/google/android/gms/internal/ads/zzgoc;

    move-result-object v6

    const-string v2, "cNPndN+EzA0ppawmtlMhouOhZ8up9MCZv7/NNjE52JSJNgkl5UKlR5xuXAGt5rDT"

    const-string v3, "maxrbwgAVilcsYV2zOy8o/EZWuXXlpXIbHDx2rc0DB0="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzghb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgoc;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzgcc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzc:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzb:Lcom/google/android/gms/internal/ads/zzgcc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgcc;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzc:Landroid/content/Context;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggy;->zzd:Ljava/util/Map;

    const-string v6, "up"

    .line 2
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzgqz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v1, v6

    const-string v3, ""

    .line 3
    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, [Ljava/lang/Object;

    .line 5
    monitor-enter p2

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcc;->zza:Lcom/google/android/gms/internal/ads/zzgcc;

    if-ne v2, v1, :cond_0

    .line 6
    aget-object v1, p1, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzggy;->zza:Ljava/lang/Long;

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzawg;->zzq(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 8
    aget-object v1, p1, v5

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 8
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzr(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 10
    :cond_0
    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzawg;->zzg(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 11
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzQ(J)Lcom/google/android/gms/internal/ads/zzawg;

    .line 12
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
