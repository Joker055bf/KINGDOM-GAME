.class final synthetic Lcom/google/android/gms/internal/ads/zzciq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafa;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzciq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzciq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzciq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzciq;->zza:Lcom/google/android/gms/internal/ads/zzciq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()[Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 10

    sget v0, Lcom/google/android/gms/internal/ads/zzcit;->zza:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzaeu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzakw;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzako;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzamd;->zza:Lcom/google/android/gms/internal/ads/zzamd;

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguf;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Lcom/google/android/gms/internal/ads/zzamd;ILcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzalc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzagh;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
