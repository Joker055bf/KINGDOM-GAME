.class public final Lcom/vk/id/captcha/c/f;
.super Ljava/lang/Object;
.source "SensorsDataRepositoryImpl.kt"

# interfaces
.implements Lcom/vk/id/captcha/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/c/f$a;,
        Lcom/vk/id/captcha/c/f$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B9\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0002\u0010\u000bJ\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0019H\u0002J&\u0010\u001f\u001a\u00020 2\u001c\u0010!\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u001e0\u0019j\u0002`#\u0012\u0004\u0012\u00020 0\"H\u0002JI\u0010$\u001a\u00020 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010&\u001a\u00020\'2\u001c\u0010!\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u001e0\u0019j\u0002`#\u0012\u0004\u0012\u00020 0\"H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010)J\u0008\u0010*\u001a\u00020 H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lcom/vk/id/captcha/sensors/SensorsDataRepositoryImpl;",
        "Lcom/vk/id/captcha/sensors/SensorsDataRepository;",
        "handler",
        "Landroid/os/Handler;",
        "accelerometer",
        "Lcom/vk/id/captcha/sensors/BaseSensorListener;",
        "Lcom/vk/id/captcha/sensors/model/SensorData$AccelerometerSensorData;",
        "gyroscope",
        "Lcom/vk/id/captcha/sensors/model/SensorData$GyroscopeSensorData;",
        "motion",
        "Lcom/vk/id/captcha/sensors/model/SensorData$MotionSensorData;",
        "(Landroid/os/Handler;Lcom/vk/id/captcha/sensors/BaseSensorListener;Lcom/vk/id/captcha/sensors/BaseSensorListener;Lcom/vk/id/captcha/sensors/BaseSensorListener;)V",
        "accelerometerChanged",
        "",
        "value",
        "currentAccelerometerSensorData",
        "setCurrentAccelerometerSensorData",
        "(Lcom/vk/id/captcha/sensors/model/SensorData$AccelerometerSensorData;)V",
        "currentGyroscopeSensorData",
        "setCurrentGyroscopeSensorData",
        "(Lcom/vk/id/captcha/sensors/model/SensorData$GyroscopeSensorData;)V",
        "currentMotionSensorData",
        "setCurrentMotionSensorData",
        "(Lcom/vk/id/captcha/sensors/model/SensorData$MotionSensorData;)V",
        "currentSensors",
        "",
        "Lcom/vk/id/captcha/sensors/model/Sensors;",
        "gyroscopeChanged",
        "motionChanged",
        "getCurrentData",
        "Lcom/vk/id/captcha/sensors/model/SensorData;",
        "onNewData",
        "",
        "onDataUpdate",
        "Lkotlin/Function1;",
        "Lcom/vk/id/captcha/sensors/model/SensorsData;",
        "startListening",
        "sensors",
        "periodMs",
        "Lcom/vk/id/captcha/sensors/model/PeriodMs;",
        "startListening-vmuVbT4",
        "(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V",
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
.field public static final a:Lcom/vk/id/captcha/c/f$a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/vk/id/captcha/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/vk/id/captcha/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/vk/id/captcha/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/vk/id/captcha/c/a/a$a;

.field private g:Lcom/vk/id/captcha/c/a/a$b;

.field private h:Lcom/vk/id/captcha/c/a/a$c;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public static synthetic $r8$lambda$QdlKJN_0ZYFV39X9SWSfi2mwMJA(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/captcha/c/f;->a(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/c/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/c/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/c/f;->a:Lcom/vk/id/captcha/c/f$a;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$a;",
            ">;",
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$b;",
            ">;",
            "Lcom/vk/id/captcha/c/c<",
            "Lcom/vk/id/captcha/c/a/a$c;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->b:Landroid/os/Handler;

    .line 14
    iput-object p2, p0, Lcom/vk/id/captcha/c/f;->c:Lcom/vk/id/captcha/c/c;

    .line 15
    iput-object p3, p0, Lcom/vk/id/captcha/c/f;->d:Lcom/vk/id/captcha/c/c;

    .line 16
    iput-object p4, p0, Lcom/vk/id/captcha/c/f;->e:Lcom/vk/id/captcha/c/c;

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vk/id/captcha/c/f;-><init>(Landroid/os/Handler;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;)V

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/c/f;Lcom/vk/id/captcha/c/a/a$a;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->f:Lcom/vk/id/captcha/c/a/a$a;

    const/4 p1, 0x1

    .line 1022
    iput-boolean p1, p0, Lcom/vk/id/captcha/c/f;->j:Z

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/c/f;Lcom/vk/id/captcha/c/a/a$b;)V
    .locals 0

    .line 2026
    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->g:Lcom/vk/id/captcha/c/a/a$b;

    const/4 p1, 0x1

    .line 2027
    iput-boolean p1, p0, Lcom/vk/id/captcha/c/f;->k:Z

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/c/f;Lcom/vk/id/captcha/c/a/a$c;)V
    .locals 0

    .line 2031
    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->h:Lcom/vk/id/captcha/c/a/a$c;

    const/4 p1, 0x1

    .line 2032
    iput-boolean p1, p0, Lcom/vk/id/captcha/c/f;->l:Z

    return-void
.end method

.method public static final synthetic a(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    .line 1093
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->f:Lcom/vk/id/captcha/c/a/a$a;

    .line 1094
    iget-object v1, p0, Lcom/vk/id/captcha/c/f;->g:Lcom/vk/id/captcha/c/a/a$b;

    .line 1095
    iget-object v2, p0, Lcom/vk/id/captcha/c/f;->h:Lcom/vk/id/captcha/c/a/a$c;

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 1097
    iget-object v4, p0, Lcom/vk/id/captcha/c/f;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vk/id/captcha/c/a/b;

    .line 1098
    sget-object v9, Lcom/vk/id/captcha/c/f$b;->a:[I

    invoke-virtual {v5}, Lcom/vk/id/captcha/c/a/b;->ordinal()I

    move-result v5

    aget v5, v9, v5

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1110
    iget-boolean v5, p0, Lcom/vk/id/captcha/c/f;->l:Z

    if-eqz v5, :cond_0

    .line 1111
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    .line 1105
    iget-boolean v5, p0, Lcom/vk/id/captcha/c/f;->k:Z

    if-eqz v5, :cond_0

    .line 1106
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    .line 1100
    iget-boolean v5, p0, Lcom/vk/id/captcha/c/f;->j:Z

    if-eqz v5, :cond_0

    .line 1101
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vk/id/captcha/c/f;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1079
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/vk/id/captcha/c/f$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v3}, Lcom/vk/id/captcha/c/f$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1082
    iget-object p1, p0, Lcom/vk/id/captcha/c/f;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/c/a/b;

    .line 1083
    sget-object v1, Lcom/vk/id/captcha/c/f$b;->a:[I

    invoke-virtual {v0}, Lcom/vk/id/captcha/c/a/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    goto :goto_1

    .line 1086
    :cond_5
    iput-boolean v1, p0, Lcom/vk/id/captcha/c/f;->l:Z

    goto :goto_1

    .line 1085
    :cond_6
    iput-boolean v1, p0, Lcom/vk/id/captcha/c/f;->k:Z

    goto :goto_1

    .line 1084
    :cond_7
    iput-boolean v1, p0, Lcom/vk/id/captcha/c/f;->j:Z

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static final a(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->c:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0}, Lcom/vk/id/captcha/c/c;->a()V

    .line 72
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->d:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0}, Lcom/vk/id/captcha/c/c;->a()V

    .line 73
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->e:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0}, Lcom/vk/id/captcha/c/c;->a()V

    return-void
.end method

.method public final a(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/b;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/vk/id/captcha/c/f;->i:Ljava/util/List;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/c/a/b;

    .line 44
    sget-object v1, Lcom/vk/id/captcha/c/f$b;->a:[I

    invoke-virtual {v0}, Lcom/vk/id/captcha/c/a/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->e:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0, p2}, Lcom/vk/id/captcha/c/c;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->e:Lcom/vk/id/captcha/c/c;

    new-instance v1, Lcom/vk/id/captcha/c/f$3;

    invoke-direct {v1, p0, p3}, Lcom/vk/id/captcha/c/f$3;-><init>(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lcom/vk/id/captcha/c/c;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->d:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0, p2}, Lcom/vk/id/captcha/c/c;->a(I)V

    .line 54
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->d:Lcom/vk/id/captcha/c/c;

    new-instance v1, Lcom/vk/id/captcha/c/f$2;

    invoke-direct {v1, p0, p3}, Lcom/vk/id/captcha/c/f$2;-><init>(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lcom/vk/id/captcha/c/c;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->c:Lcom/vk/id/captcha/c/c;

    invoke-interface {v0, p2}, Lcom/vk/id/captcha/c/c;->a(I)V

    .line 47
    iget-object v0, p0, Lcom/vk/id/captcha/c/f;->c:Lcom/vk/id/captcha/c/c;

    new-instance v1, Lcom/vk/id/captcha/c/f$1;

    invoke-direct {v1, p0, p3}, Lcom/vk/id/captcha/c/f$1;-><init>(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lcom/vk/id/captcha/c/c;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_3
    return-void
.end method
