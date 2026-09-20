.class public Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;
.super Landroid/app/Service;
.source "AbstractSocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/network/websocket/AbstractSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AbstractGrayInnerService"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 43
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;->startForeground(ILandroid/app/Notification;)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;->stopForeground(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/tgs/network/websocket/AbstractSocketService$AbstractGrayInnerService;->stopSelf()V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
