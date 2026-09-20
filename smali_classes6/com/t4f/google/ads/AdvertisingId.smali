.class public Lcom/t4f/google/ads/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# static fields
.field private static mAdvertisingId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    sput-object p0, Lcom/t4f/google/ads/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lcom/t4f/google/ads/AdvertisingId;->notifyOnAdvertisingIdLoad(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V

    return-void
.end method

.method static synthetic lambda$notifyOnAdvertisingIdLoad$0(Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 58
    :goto_0
    invoke-interface {p0, p1}, Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;->onAdvertisingIdLoad(Ljava/lang/String;)V

    return-void
.end method

.method public static loadAdvertisingId(Landroid/app/Activity;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V
    .locals 3

    .line 13
    sget-object v0, Lcom/t4f/google/ads/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 15
    invoke-static {p0, v0, p1}, Lcom/t4f/google/ads/AdvertisingId;->notifyOnAdvertisingIdLoad(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 20
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/t4f/unity/UnityPlayer;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 29
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/t4f/google/ads/AdvertisingId$1;

    invoke-direct {v1, p0, p1}, Lcom/t4f/google/ads/AdvertisingId$1;-><init>(Landroid/app/Activity;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception load google advertising id.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-static {p0, v0, p1}, Lcom/t4f/google/ads/AdvertisingId;->notifyOnAdvertisingIdLoad(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V

    return-void
.end method

.method private static notifyOnAdvertisingIdLoad(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Lcom/t4f/unity/UnityPlayer;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    .line 57
    :cond_0
    new-instance v0, Lcom/t4f/google/ads/AdvertisingId$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/t4f/google/ads/AdvertisingId$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
