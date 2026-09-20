.class Lcom/openmediation/sdk/utils/device/SensorManager$SmHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/device/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHolder"
.end annotation


# static fields
.field private static singleton:Lcom/openmediation/sdk/utils/device/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/openmediation/sdk/utils/device/SensorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openmediation/sdk/utils/device/SensorManager;-><init>(Lcom/openmediation/sdk/utils/device/SensorManager$1;)V

    sput-object v0, Lcom/openmediation/sdk/utils/device/SensorManager$SmHolder;->singleton:Lcom/openmediation/sdk/utils/device/SensorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/openmediation/sdk/utils/device/SensorManager;
    .locals 1

    sget-object v0, Lcom/openmediation/sdk/utils/device/SensorManager$SmHolder;->singleton:Lcom/openmediation/sdk/utils/device/SensorManager;

    return-object v0
.end method
