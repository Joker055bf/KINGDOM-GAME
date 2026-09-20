.class public Lcom/unity/hms/listener/BuildLocationCallback;
.super Ljava/lang/Object;
.source "BuildLocationCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildLocationCallback(Lcom/unity/hms/listener/ILocationCallback;)Lcom/huawei/hms/location/LocationCallback;
    .locals 1

    .line 9
    new-instance v0, Lcom/unity/hms/listener/BuildLocationCallback$1;

    invoke-direct {v0, p0}, Lcom/unity/hms/listener/BuildLocationCallback$1;-><init>(Lcom/unity/hms/listener/ILocationCallback;)V

    return-object v0
.end method
