.class Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/device/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field private mNowTime:J

.field private mSensorName:Ljava/lang/String;

.field private mSensorType:I

.field private mSensorValues:[[F

.field private mSensorVendor:Ljava/lang/String;

.field private mValuePow:D

.field final synthetic this$0:Lcom/openmediation/sdk/utils/device/SensorManager;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/utils/device/SensorManager;Landroid/hardware/Sensor;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    iput p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorType:I

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorVendor:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [[F

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SensorManager error:"

    invoke-static {p2, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/device/SensorManager;Landroid/hardware/Sensor;Lcom/openmediation/sdk/utils/device/SensorManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;-><init>(Lcom/openmediation/sdk/utils/device/SensorManager;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sT"

    iget v2, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sN"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sV"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorVendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const-string v2, "sVS"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v4, v1}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$800(Lcom/openmediation/sdk/utils/device/SensorManager;[F)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    const-string v2, "sVE"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->this$0:Lcom/openmediation/sdk/utils/device/SensorManager;

    invoke-static {v4, v1}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$800(Lcom/openmediation/sdk/utils/device/SensorManager;[F)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "SensorManager getData error:"

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget v5, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorType:I

    if-ne v5, v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorVendor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F

    aput-object p1, v0, v1

    invoke-static {v2, p1}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$700([F[F)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mValuePow:D

    goto :goto_0

    :cond_1
    iget-wide v5, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mNowTime:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x2faf080

    cmp-long v5, v7, v5

    if-gtz v5, :cond_3

    iput-wide v3, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mNowTime:J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {v2, p1}, Lcom/openmediation/sdk/utils/device/SensorManager;->access$700([F[F)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mValuePow:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mSensorValues:[[F

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v0, v1

    iput-wide v2, p0, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->mValuePow:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SensorManager onSensorChanged error:"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
