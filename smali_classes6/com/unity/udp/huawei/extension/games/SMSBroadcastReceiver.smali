.class public Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSBroadcastReceiver.java"


# instance fields
.field private onSMSReceive:Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;


# direct methods
.method public constructor <init>(Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;->onSMSReceive:Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.huawei.hms.auth.api.phone.SMS_RETRIEVED"

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "com.huawei.hms.auth.api.phone.EXTRA_STATUS"

    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/support/api/client/Status;

    .line 26
    invoke-virtual {p2}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;->onSMSReceive:Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1}, Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;->onTimeOut()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.huawei.hms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;->onSMSReceive:Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;

    if-eqz p2, :cond_1

    .line 36
    invoke-interface {p2, p1}, Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;->onMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
