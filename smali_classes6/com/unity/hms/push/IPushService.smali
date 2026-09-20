.class public interface abstract Lcom/unity/hms/push/IPushService;
.super Ljava/lang/Object;
.source "IPushService.java"


# virtual methods
.method public abstract onDeletedMessages()V
.end method

.method public abstract onMessageDelivered(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onMessageReceived(Lcom/huawei/hms/push/RemoteMessage;)V
.end method

.method public abstract onMessageSent(Ljava/lang/String;)V
.end method

.method public abstract onNewToken(Ljava/lang/String;)V
.end method

.method public abstract onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onTokenError(Ljava/lang/Exception;)V
.end method
