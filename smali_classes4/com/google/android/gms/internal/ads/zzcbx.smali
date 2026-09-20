.class final synthetic Lcom/google/android/gms/internal/ads/zzcbx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcbx;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcbx;->zza:Lcom/google/android/gms/internal/ads/zzcbx;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzcbz;->zzb:I

    const-string v0, "Pinged SB successfully."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Ljava/lang/String;)V

    return-void
.end method
