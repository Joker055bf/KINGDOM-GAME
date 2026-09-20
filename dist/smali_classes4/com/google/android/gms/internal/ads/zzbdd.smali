.class public final Lcom/google/android/gms/internal/ads/zzbdd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Z

.field public final zzb:I

.field public final zzc:Landroid/graphics/Rect;

.field public final zzd:Landroid/graphics/Rect;

.field public final zze:Landroid/graphics/Rect;

.field public final zzf:Z

.field public final zzg:Landroid/graphics/Rect;

.field public final zzh:Z

.field public final zzi:Landroid/graphics/Rect;

.field public final zzj:Z

.field public final zzk:Ljava/util/List;


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zza:Z

    move v1, p5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzb:I

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzc:Landroid/graphics/Rect;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzd:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zze:Landroid/graphics/Rect;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzf:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzg:Landroid/graphics/Rect;

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzh:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzi:Landroid/graphics/Rect;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzk:Ljava/util/List;

    return-void
.end method
