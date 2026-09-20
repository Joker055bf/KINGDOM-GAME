.class public abstract Lcom/google/android/gms/internal/ads/zzfyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyp;->zza()Lcom/google/android/gms/internal/ads/zzfyp;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyo;->zza()Lcom/google/android/gms/internal/ads/zzfyo;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzd(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    throw p1
.end method

.method public abstract zzd(Landroid/hardware/SensorEvent;)V
.end method
