.class Lcom/t4f/google/ads/AdvertisingId$1;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/google/ads/AdvertisingId;->loadAdvertisingId(Landroid/app/Activity;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;

.field final synthetic val$finalContext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/t4f/google/ads/AdvertisingId$1;->val$finalContext:Landroid/app/Activity;

    iput-object p2, p0, Lcom/t4f/google/ads/AdvertisingId$1;->val$callback:Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Finish load android google advertising id.advertisingId="

    const-string v1, "Exception get google advertising id.e="

    const-string v2, ""

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/t4f/google/ads/AdvertisingId$1;->val$finalContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 42
    :goto_2
    invoke-static {v2}, Lcom/t4f/google/ads/AdvertisingId;->access$002(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 39
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/t4f/google/ads/AdvertisingId$1;->val$finalContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4f/google/ads/AdvertisingId$1;->val$callback:Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;

    invoke-static {v0, v2, v1}, Lcom/t4f/google/ads/AdvertisingId;->access$100(Landroid/app/Activity;Ljava/lang/String;Lcom/t4f/google/ads/OnAdvertisingIdLoadListener;)V

    return-void

    :goto_4
    if-eqz v2, :cond_3

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 42
    invoke-static {v2}, Lcom/t4f/google/ads/AdvertisingId;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    :cond_3
    throw v0
.end method
