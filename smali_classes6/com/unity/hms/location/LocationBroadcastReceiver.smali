.class public Lcom/unity/hms/location/LocationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationBroadcastReceiver.java"


# static fields
.field public static receiver:Lcom/unity/hms/location/IBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static SetListener(Lcom/unity/hms/location/IBroadcastReceiver;)Ljava/lang/Class;
    .locals 0

    .line 11
    sput-object p0, Lcom/unity/hms/location/LocationBroadcastReceiver;->receiver:Lcom/unity/hms/location/IBroadcastReceiver;

    .line 12
    const-class p0, Lcom/unity/hms/location/LocationBroadcastReceiver;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/unity/hms/location/LocationBroadcastReceiver;->receiver:Lcom/unity/hms/location/IBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/unity/hms/location/IBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
