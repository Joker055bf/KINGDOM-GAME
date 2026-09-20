.class Lcom/t4f/sdk/device/EmulatorCheckService$1;
.super Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;
.source "EmulatorCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdk/device/EmulatorCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/sdk/device/EmulatorCheckService;


# direct methods
.method constructor <init>(Lcom/t4f/sdk/device/EmulatorCheckService;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/t4f/sdk/device/EmulatorCheckService$1;->this$0:Lcom/t4f/sdk/device/EmulatorCheckService;

    invoke-direct {p0}, Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmulator()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/t4f/sdk/device/EmulatorChecker;->isEmulator()Z

    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remote service do check. isEmulator="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmuChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
