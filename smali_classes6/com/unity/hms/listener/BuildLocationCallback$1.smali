.class final Lcom/unity/hms/listener/BuildLocationCallback$1;
.super Lcom/huawei/hms/location/LocationCallback;
.source "BuildLocationCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/hms/listener/BuildLocationCallback;->BuildLocationCallback(Lcom/unity/hms/listener/ILocationCallback;)Lcom/huawei/hms/location/LocationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Lcom/unity/hms/listener/ILocationCallback;


# direct methods
.method constructor <init>(Lcom/unity/hms/listener/ILocationCallback;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/unity/hms/listener/BuildLocationCallback$1;->val$arg:Lcom/unity/hms/listener/ILocationCallback;

    invoke-direct {p0}, Lcom/huawei/hms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/huawei/hms/location/LocationAvailability;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/unity/hms/listener/BuildLocationCallback$1;->val$arg:Lcom/unity/hms/listener/ILocationCallback;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/ILocationCallback;->onLocationAvailability(Lcom/huawei/hms/location/LocationAvailability;)V

    return-void
.end method

.method public onLocationResult(Lcom/huawei/hms/location/LocationResult;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/unity/hms/listener/BuildLocationCallback$1;->val$arg:Lcom/unity/hms/listener/ILocationCallback;

    invoke-interface {v0, p1}, Lcom/unity/hms/listener/ILocationCallback;->onLocationResult(Lcom/huawei/hms/location/LocationResult;)V

    return-void
.end method
