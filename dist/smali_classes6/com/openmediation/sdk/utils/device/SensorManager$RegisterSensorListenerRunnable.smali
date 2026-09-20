.class Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/device/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterSensorListenerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/device/SensorManager;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/device/SensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$300(Lcom/openmediation/sdk/utils/device/SensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$300(Lcom/openmediation/sdk/utils/device/SensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$400(Lcom/openmediation/sdk/utils/device/SensorManager;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;

    iget-object v3, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;-><init>(Lcom/openmediation/sdk/utils/device/SensorManager;Landroid/hardware/Sensor;Lcom/openmediation/sdk/utils/device/SensorManager$1;)V

    iget-object v3, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v3}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$600(Lcom/openmediation/sdk/utils/device/SensorManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegisterListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->access$200(Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v3}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$300(Lcom/openmediation/sdk/utils/device/SensorManager;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "SensorManager RegisterSensorListenerRunnable error:"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
