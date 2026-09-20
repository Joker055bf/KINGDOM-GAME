.class public final Lcom/vk/id/captcha/c/a;
.super Ljava/lang/Object;
.source "AndroidSensorListener.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/vk/id/captcha/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/c/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vk/id/captcha/c/a/a;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/vk/id/captcha/c/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \"*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u0004:\u0001\"B3\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0002\u0010\u000eJ\u001a\u0010\u0015\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0012\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001c\u0010\u001a\u001a\u00020\u00102\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000cH\u0016J\u001d\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001eH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010!\u001a\u00020\u0010H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/vk/id/captcha/sensors/AndroidSensorListener;",
        "T",
        "Lcom/vk/id/captcha/sensors/model/SensorData;",
        "Lcom/vk/id/captcha/sensors/BaseSensorListener;",
        "Landroid/hardware/SensorEventListener;",
        "context",
        "Landroid/content/Context;",
        "handlerThreadProvider",
        "Lcom/vk/id/captcha/sensors/HandlerThreadProvider;",
        "sensorType",
        "",
        "toSensorData",
        "Lkotlin/Function1;",
        "",
        "(Landroid/content/Context;Lcom/vk/id/captcha/sensors/HandlerThreadProvider;ILkotlin/jvm/functions/Function1;)V",
        "onSensorChangedListener",
        "",
        "sensor",
        "Landroid/hardware/Sensor;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "onAccuracyChanged",
        "accuracy",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "setOnSensorChangedListener",
        "listener",
        "startListening",
        "periodMs",
        "Lcom/vk/id/captcha/sensors/model/PeriodMs;",
        "startListening-6M9zLzk",
        "(I)V",
        "stopListening",
        "Companion",
        "captcha_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vk/id/captcha/c/a$a;


# instance fields
.field private final c:Lcom/vk/id/captcha/c/d;

.field private final d:I

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[FTT;>;"
        }
    .end annotation
.end field

.field private f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/hardware/SensorManager;

.field private final h:Landroid/hardware/Sensor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/c/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/c/a;->a:Lcom/vk/id/captcha/c/a$a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vk/id/captcha/c/d;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-[F+TT;>;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/vk/id/captcha/c/a;->c:Lcom/vk/id/captcha/c/d;

    .line 18
    iput p3, p0, Lcom/vk/id/captcha/c/a;->d:I

    .line 19
    iput-object p4, p0, Lcom/vk/id/captcha/c/a;->e:Lkotlin/jvm/functions/Function1;

    .line 22
    sget-object p2, Lcom/vk/id/captcha/c/a$1;->a:Lcom/vk/id/captcha/c/a$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vk/id/captcha/c/a;->f:Lkotlin/jvm/functions/Function1;

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sensor"

    .line 1007
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/hardware/SensorManager;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroid/hardware/SensorManager;

    goto :goto_0

    :cond_0
    move-object p1, p4

    .line 23
    :goto_0
    iput-object p1, p0, Lcom/vk/id/captcha/c/a;->g:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/vk/id/captcha/c/a;->h:Landroid/hardware/Sensor;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 17
    invoke-static {}, Lcom/vk/id/captcha/c/b;->a()Lcom/vk/id/captcha/c/d;

    move-result-object p2

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/id/captcha/c/a;-><init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/vk/id/captcha/c/a;->g:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 39
    :cond_0
    invoke-static {}, Lcom/vk/id/captcha/c/b;->a()Lcom/vk/id/captcha/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/id/captcha/c/d;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/vk/id/captcha/c/a;->h:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 28
    iget-object v1, p0, Lcom/vk/id/captcha/c/a;->g:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 29
    move-object v2, p0

    check-cast v2, Landroid/hardware/SensorEventListener;

    mul-int/lit16 p1, p1, 0x3e8

    .line 32
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/vk/id/captcha/c/a;->c:Lcom/vk/id/captcha/c/d;

    invoke-virtual {v4}, Lcom/vk/id/captcha/c/d;->a()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    nop

    :cond_0
    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/vk/id/captcha/c/a;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 47
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget v2, p0, Lcom/vk/id/captcha/c/a;->d:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/vk/id/captcha/c/a;->e:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/id/captcha/c/a/a;

    .line 49
    iget-object v0, p0, Lcom/vk/id/captcha/c/a;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
