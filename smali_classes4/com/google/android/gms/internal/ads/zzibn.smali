.class public abstract Lcom/google/android/gms/internal/ads/zzibn;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzibn<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzibr<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzidd;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzibg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibg;->zza()Lcom/google/android/gms/internal/ads/zzibg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibn;->zza:Lcom/google/android/gms/internal/ads/zzibg;

    return-void
.end method
