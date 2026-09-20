.class public Lcom/unity/hms/push/MyPushService;
.super Lcom/huawei/hms/push/HmsMessageService;
.source "MyPushService.java"


# static fields
.field public static listener:Lcom/unity/hms/push/IPushService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/push/HmsMessageService;-><init>()V

    return-void
.end method

.method public static SetListener(Lcom/unity/hms/push/IPushService;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .locals 1

    .line 45
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unity/hms/push/IPushService;->onDeletedMessages()V

    :cond_0
    return-void
.end method

.method public onMessageDelivered(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/unity/hms/push/IPushService;->onMessageDelivered(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity/hms/push/IPushService;->onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V

    :cond_0
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity/hms/push/IPushService;->onMessageSent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity/hms/push/IPushService;->onNewToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/unity/hms/push/IPushService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onTokenError(Ljava/lang/Exception;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/unity/hms/push/MyPushService;->listener:Lcom/unity/hms/push/IPushService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unity/hms/push/IPushService;->onTokenError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
