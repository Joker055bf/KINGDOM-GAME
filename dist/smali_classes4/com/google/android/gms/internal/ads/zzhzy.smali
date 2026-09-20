.class public abstract Lcom/google/android/gms/internal/ads/zzhzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzibb;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zziaa;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzicg;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zziaq;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzy;->zzb(Lcom/google/android/gms/internal/ads/zziaq;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzidc;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zziaq;->zzb(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzidc;->zzbi()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhzw;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhzx;

    if-eqz p1, :cond_0

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhzx;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zziee;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zziee;-><init>(Lcom/google/android/gms/internal/ads/zzidc;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhzw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaU()Lcom/google/android/gms/internal/ads/zziee;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zziee;->zza()Lcom/google/android/gms/internal/ads/zzicg;

    move-result-object p1

    .line 11
    throw p1

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 4
    throw p1
.end method
