.class final Lcom/android/billingclient/api/zzck;
.super Lcom/google/android/gms/internal/play_billing/zzad;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field final zzb:Landroid/os/ResultReceiver;


# direct methods
.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzad;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DEBUG_MESSAGE"

    const/4 v1, 0x6

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "RESPONSE_CODE"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "BillingClient"

    if-nez v3, :cond_1

    const-string v0, "Response bundle doesn\'t contain a response code"

    .line 3
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Unable to launch intent for billing program information dialog"

    .line 6
    invoke-static {v3, v0}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 8
    invoke-virtual {v0, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string v3, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v5, 0x0

    if-nez v3, :cond_3

    const-string v0, "User has acknowledged the billing program information dialog before."

    .line 10
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 11
    invoke-virtual {v0, v5, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 14
    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "billing_program_information_dialog_result_receiver"

    iget-object v8, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 15
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "billing_program_information_dialog_pending_intent"

    .line 16
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    :goto_0
    const-string p1, "Activity is null or unavailable, unable to launch intent for billing program information dialog."

    .line 18
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    .line 19
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x5

    .line 20
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "Activity is null or unavailable."

    .line 21
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 22
    invoke-virtual {v6, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v3, "Runtime error while launching intent for billing program information dialog."

    .line 23
    invoke-static {v4, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Landroid/os/Bundle;

    .line 24
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "An internal error occurred."

    .line 26
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbt:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v0

    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    .line 28
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 30
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 31
    invoke-virtual {p1, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
