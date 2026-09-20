.class Lcom/t4f/sdk/device/EmulatorChecker$1;
.super Ljava/lang/Object;
.source "EmulatorChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4f/sdk/device/EmulatorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/sdk/device/EmulatorChecker;


# direct methods
.method constructor <init>(Lcom/t4f/sdk/device/EmulatorChecker;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string p1, ", pid="

    const-string v0, "Is current device an emulator state= "

    const-string v1, "EmuChecker"

    const-string v2, "checkEmulatorAsync onServiceConnected finish, result = "

    const-string v3, "check failed. Service crashed because of native code. Throwable:"

    const-string v4, "check failed. Service crashed because of native code. RemoteException:"

    const/4 v5, -0x1

    .line 276
    :try_start_0
    invoke-static {p2}, Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface;

    move-result-object p2

    .line 277
    invoke-interface {p2}, Lcom/t4f/sdk/device/IEmulatorCheckAidlInterface;->isEmulator()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v5, p2

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 283
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 281
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 287
    :goto_1
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;->onCheckResult(I)V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$100(Lcom/t4f/sdk/device/EmulatorChecker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catchall_1
    move-exception p2

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 287
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$000(Lcom/t4f/sdk/device/EmulatorChecker;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;->onCheckResult(I)V

    .line 289
    :cond_2
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    invoke-static {p1}, Lcom/t4f/sdk/device/EmulatorChecker;->access$100(Lcom/t4f/sdk/device/EmulatorChecker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 290
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "EmuChecker"

    const-string v0, "Service is closed."

    .line 295
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/t4f/sdk/device/EmulatorChecker$1;->this$0:Lcom/t4f/sdk/device/EmulatorChecker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/t4f/sdk/device/EmulatorChecker;->access$002(Lcom/t4f/sdk/device/EmulatorChecker;Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;)Lcom/t4f/sdk/device/TGSEmulatorCheckCallback;

    return-void
.end method
