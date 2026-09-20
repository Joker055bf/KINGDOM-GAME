.class public final Lcom/google/android/gms/internal/ads/zzms;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzms;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzgup;

.field public final zzc:Ljava/lang/Double;

.field public final zzd:Ljava/lang/Double;

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field public final zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzmr;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzms;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzms;-><init>(Lcom/google/android/gms/internal/ads/zzmr;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzms;->zza:Lcom/google/android/gms/internal/ads/zzms;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzmr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmr;->zza()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzb:Lcom/google/android/gms/internal/ads/zzgup;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzc:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzd:Ljava/lang/Double;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzi:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzh:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzms;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzms;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzb:Lcom/google/android/gms/internal/ads/zzgup;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzms;->zzb:Lcom/google/android/gms/internal/ads/zzgup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzms;->zzf:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzms;->zzi:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzms;->zzc:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzms;->zzd:Ljava/lang/Double;

    .line 4
    invoke-static {v0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzms;->zze:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzms;->zzg:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzms;->zzh:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzb:Lcom/google/android/gms/internal/ads/zzgup;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
