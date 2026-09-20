.class Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/device/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnRegisterSensorListenerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openmediation/sdk/utils/device/SensorManager;


# direct methods
.method constructor <init>(Lcom/openmediation/sdk/utils/device/SensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/device/SensorManager;->getSensorData()Lorg/json/JSONArray;

    return-void
.end method
