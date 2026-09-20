.class public Lcom/openmediation/sdk/utils/device/SensorManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;,
        Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;,
        Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;,
        Lcom/openmediation/sdk/utils/device/SensorManager$SmHolder;
    }
.end annotation


# instance fields
.field private mSensorArrays:Lorg/json/JSONArray;

.field private mSensorEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorsType:Ljava/util/BitSet;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorsType:Ljava/util/BitSet;

    :try_start_0
    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorEventListenerList:Ljava/util/List;

    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorsType:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorsType:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorsType:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/device/SensorManager$RegisterSensorListenerRunnable;-><init>(Lcom/openmediation/sdk/utils/device/SensorManager;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/device/SensorManager$UnRegisterSensorListenerRunnable;-><init>(Lcom/openmediation/sdk/utils/device/SensorManager;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3, v1}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const-string v1, "SensorManager error:"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/device/SensorManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/openmediation/sdk/utils/device/SensorManager;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/openmediation/sdk/utils/device/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/openmediation/sdk/utils/device/SensorManager;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorsType:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/openmediation/sdk/utils/device/SensorManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorEventListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700([F[F)D
    .locals 0

    invoke-static {p0, p1}, Lcom/openmediation/sdk/utils/device/SensorManager;->valuesPow([F[F)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/openmediation/sdk/utils/device/SensorManager;[F)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/device/SensorManager;->array2List([F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private array2List([F)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/openmediation/sdk/utils/device/SensorManager;
    .locals 1

    invoke-static {}, Lcom/openmediation/sdk/utils/device/SensorManager$SmHolder;->access$100()Lcom/openmediation/sdk/utils/device/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method private static valuesPow([F[F)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getSensorData()Lorg/json/JSONArray;
    .locals 5

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorArrays:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorArrays:Lorg/json/JSONArray;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UNRegisterListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->access$200(Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/device/SensorManager$SensorListener;->getData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const-string v2, "SensorManager getSensors error:"

    invoke-static {v2, v1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/openmediation/sdk/utils/device/SensorManager;->mSensorArrays:Lorg/json/JSONArray;

    return-object v1
.end method
