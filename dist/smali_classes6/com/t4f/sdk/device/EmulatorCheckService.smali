.class public Lcom/t4f/sdk/device/EmulatorCheckService;
.super Landroid/app/Service;
.source "EmulatorCheckService.java"


# instance fields
.field mStub:Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    new-instance v0, Lcom/t4f/sdk/device/EmulatorCheckService$1;

    invoke-direct {v0, p0}, Lcom/t4f/sdk/device/EmulatorCheckService$1;-><init>(Lcom/t4f/sdk/device/EmulatorCheckService;)V

    iput-object v0, p0, Lcom/t4f/sdk/device/EmulatorCheckService;->mStub:Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorCheckService;->mStub:Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;

    return-object p1
.end method
