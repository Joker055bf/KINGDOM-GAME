.class final Lcom/android/billingclient/api/zzy;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzz;

.field private zzb:Z

.field private final zzc:Z


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/zzz;Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/android/billingclient/api/zzy;->zzc:Z

    return-void
.end method

.method private final zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjz;JZ)V
    .locals 2

    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p2}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjl;->zzc([B)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 3
    invoke-interface {p2, p1, p5, p6, p7}, Lcom/android/billingclient/api/zzdd;->zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p3, p2, v1, p4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2, p5, p6, p7}, Lcom/android/billingclient/api/zzdd;->zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58756162

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x141f9074

    if-eq v0, v1, :cond_1

    const v1, 0x14937179

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_4

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_2

    .line 5
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc:Lcom/google/android/gms/internal/play_billing/zzjz;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    :goto_2
    move-object v9, p1

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 3
    invoke-virtual {v9, p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 4
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 29
    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 5
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    move v8, v0

    goto :goto_4

    :cond_8
    move v8, v2

    goto :goto_4

    :cond_9
    :goto_3
    move v8, v3

    .line 6
    :goto_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v0, 0x0

    const-string v1, "BillingBroadcastManager"

    if-nez v6, :cond_a

    const-string p1, "Bundle is null."

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzk:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 9
    invoke-static {v1, v8, v2, v0, v9}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v1

    .line 8
    invoke-interface {p2, v1}, Lcom/android/billingclient/api/zzdd;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 10
    invoke-interface {p1, v2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_a
    if-ne v8, v3, :cond_f

    .line 11
    sget v3, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    if-nez p2, :cond_b

    const-string p2, "BillingHelper"

    const-string v3, "Got null intent!"

    .line 12
    invoke-static {p2, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p2

    const/4 v3, 0x6

    .line 13
    invoke-virtual {p2, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 14
    invoke-virtual {p2, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    const-string v3, "An internal error occurred."

    .line 15
    invoke-virtual {p2, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    goto :goto_7

    .line 65
    :cond_b
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_c

    const-string v5, "Unexpected null bundle received!"

    .line 19
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v5, v4

    goto :goto_6

    :cond_c
    const-string v7, "SUB_RESPONSE_CODE"

    .line 20
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    const-string v5, "getOnPurchasesUpdatedSubResponseCodeFromBundle() got null response code, assuming OK"

    .line 21
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :cond_d
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_e

    .line 23
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Unexpected type for bundle sub response code: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 26
    :goto_6
    invoke-virtual {v3, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 28
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    goto :goto_7

    .line 29
    :cond_f
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    :goto_7
    const-string v3, "billingClientTransactionId"

    const-wide/16 v10, 0x0

    .line 30
    invoke-virtual {v6, v3, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v3, "wasServiceAutoReconnected"

    .line 31
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjz;->zzb:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 32
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 33
    invoke-virtual {v9, p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_9

    .line 37
    :cond_10
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzd:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 39
    invoke-virtual {v9, p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_11

    move-object v5, p0

    move-object v7, p2

    .line 40
    invoke-direct/range {v5 .. v12}, Lcom/android/billingclient/api/zzy;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjz;JZ)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    .line 42
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_11
    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzf(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object p2

    if-nez p2, :cond_12

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzb(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    move-result-object p2

    if-nez p2, :cond_12

    const-string p2, "No valid alternative billing listener is registered."

    .line 43
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbK:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 44
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 45
    invoke-static {v1, v8, v2, v0, v9}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    .line 44
    invoke-interface {p2, v0, v10, v11, v12}, Lcom/android/billingclient/api/zzdd;->zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p2

    .line 47
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_12
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 48
    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzf(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v3

    if-eqz v3, :cond_13

    new-instance v3, Lcom/android/billingclient/api/UserChoiceDetails;

    .line 51
    invoke-direct {v3, p2}, Lcom/android/billingclient/api/UserChoiceDetails;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzf(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object p1

    .line 52
    invoke-interface {p1, v3}, Lcom/android/billingclient/api/UserChoiceBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V

    goto :goto_8

    .line 60
    :cond_13
    new-instance v3, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;

    .line 49
    invoke-direct {v3, p2}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzb(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    move-result-object p1

    .line 50
    invoke-interface {p1, v3}, Lcom/android/billingclient/api/DeveloperProvidedBillingListener;->onUserSelectedDeveloperBilling(Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_8
    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p1

    .line 59
    invoke-static {v8, v9}, Lcom/android/billingclient/api/zzdc;->zzc(ILcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjp;

    move-result-object p2

    .line 60
    invoke-interface {p1, p2, v10, v11, v12}, Lcom/android/billingclient/api/zzdd;->zzh(Lcom/google/android/gms/internal/play_billing/zzjp;JZ)V

    return-void

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "Error when parsing invalid user choice data: [%s]"

    .line 53
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzq:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 55
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 56
    invoke-static {v1, v8, v2, v0, v9}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    .line 55
    invoke-interface {p2, v0, v10, v11, v12}, Lcom/android/billingclient/api/zzdd;->zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p2

    .line 58
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_14
    const-string p2, "Couldn\'t find alternative billing user choice data in bundle."

    .line 61
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzp:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 62
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 63
    invoke-static {v1, v8, v2, v0, v9}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    .line 62
    invoke-interface {p2, v0, v10, v11, v12}, Lcom/android/billingclient/api/zzdd;->zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p2

    .line 65
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_15
    return-void

    .line 33
    :cond_16
    :goto_9
    iget-object p1, p0, Lcom/android/billingclient/api/zzy;->zza:Lcom/android/billingclient/api/zzz;

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzg(Lcom/android/billingclient/api/zzz;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    .line 34
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzl(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zza(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/zzdd;

    move-result-object v1

    .line 35
    invoke-static {v8, v9}, Lcom/android/billingclient/api/zzdc;->zzc(ILcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjp;

    move-result-object v2

    .line 36
    invoke-interface {v1, v2, v10, v11, v12}, Lcom/android/billingclient/api/zzdd;->zzh(Lcom/google/android/gms/internal/play_billing/zzjp;JZ)V

    goto :goto_a

    :cond_17
    move-object v5, p0

    move-object v7, p2

    .line 37
    invoke-direct/range {v5 .. v12}, Lcom/android/billingclient/api/zzy;->zzd(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;ILcom/google/android/gms/internal/play_billing/zzjz;JZ)V

    .line 36
    :goto_a
    invoke-static {p1}, Lcom/android/billingclient/api/zzz;->zzd(Lcom/android/billingclient/api/zzz;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    .line 38
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final declared-synchronized zza(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzy;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzy;->zzc:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/zzy;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean p3, p0, Lcom/android/billingclient/api/zzy;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-lt p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/android/billingclient/api/zzy;->zzc:Z

    if-eq v6, p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    move v5, p3

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p0, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1
    :goto_1
    iput-boolean v6, p0, Lcom/android/billingclient/api/zzy;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzc(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzy;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzy;->zzb:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
