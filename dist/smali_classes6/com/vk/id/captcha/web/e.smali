.class public final Lcom/vk/id/captcha/web/e;
.super Ljava/lang/Object;
.source "VKCaptchaJSInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/captcha/web/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000b\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000fH\u0017J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000fH\u0017J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000fH\u0017J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000fH\u0017R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u0018\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\n0\tj\u0002`\u000b\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vk/id/captcha/web/VKCaptchaJSInterface;",
        "Lcom/vk/id/captcha/web/VKCaptchaBridge;",
        "handler",
        "Landroid/os/Handler;",
        "onClose",
        "Lkotlin/Function0;",
        "",
        "onDataUpdate",
        "Lkotlin/Function1;",
        "",
        "Lcom/vk/id/captcha/sensors/model/SensorData;",
        "Lcom/vk/id/captcha/sensors/model/SensorsData;",
        "sensorsDataRepository",
        "Lcom/vk/id/captcha/sensors/SensorsDataRepository;",
        "domain",
        "",
        "(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vk/id/captcha/sensors/SensorsDataRepository;Ljava/lang/String;)V",
        "isClosedByUser",
        "",
        "VKCaptchaCloseCaptcha",
        "data",
        "VKCaptchaGetResult",
        "VKCaptchaListenSensorsStart",
        "VKCaptchaListenSensorsStop",
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
.field public static final Companion:Lcom/vk/id/captcha/web/e$a;

.field public static final VK_CAPTCHA_JS_INTERFACE:Ljava/lang/String; = "AndroidBridge"

.field public static final VK_CAPTCHA_WEB_VIEW:Ljava/lang/String; = "VKCaptchaWebView"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/vk/id/captcha/c/e;

.field private final e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public static synthetic $r8$lambda$mZegj9CsL3IJLWe-Zue5TC8HyA8(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/captcha/web/e;->a(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/captcha/web/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/captcha/web/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/captcha/web/e;->Companion:Lcom/vk/id/captcha/web/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vk/id/captcha/c/e;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/vk/id/captcha/c/e;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/vk/id/captcha/web/e;->a:Landroid/os/Handler;

    .line 16
    iput-object p2, p0, Lcom/vk/id/captcha/web/e;->b:Lkotlin/jvm/functions/Function0;

    .line 17
    iput-object p3, p0, Lcom/vk/id/captcha/web/e;->c:Lkotlin/jvm/functions/Function1;

    .line 18
    iput-object p4, p0, Lcom/vk/id/captcha/web/e;->d:Lcom/vk/id/captcha/c/e;

    .line 19
    iput-object p5, p0, Lcom/vk/id/captcha/web/e;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/vk/id/captcha/web/e;->f:Z

    return-void
.end method

.method private static final a(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V
    .locals 3

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    const-string v2, "token"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vk/id/captcha/web/e;->e:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lcom/vk/id/captcha/api/VKCaptcha;->setResult$captcha_release(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getOnDataUpdate$p(Lcom/vk/id/captcha/web/e;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/vk/id/captcha/web/e;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final VKCaptchaCloseCaptcha(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-boolean p1, p0, Lcom/vk/id/captcha/web/e;->f:Z

    if-eqz p1, :cond_0

    .line 27
    sget-object p1, Lcom/vk/id/captcha/api/VKCaptcha;->INSTANCE:Lcom/vk/id/captcha/api/VKCaptcha;

    invoke-virtual {p1}, Lcom/vk/id/captcha/api/VKCaptcha;->closeCaptcha()V

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/vk/id/captcha/web/e;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final VKCaptchaGetResult(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/vk/id/captcha/web/e;->f:Z

    .line 38
    iget-object p1, p0, Lcom/vk/id/captcha/web/e;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    iget-object p1, p0, Lcom/vk/id/captcha/web/e;->d:Lcom/vk/id/captcha/c/e;

    invoke-interface {p1}, Lcom/vk/id/captcha/c/e;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error when parsing json\n Error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VKCaptchaWebView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final VKCaptchaListenSensorsStart(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "VKCaptchaWebView"

    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "period"

    const/4 v3, -0x1

    .line 49
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "bridge_sensors_list"

    .line 50
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eq p1, v3, :cond_8

    .line 54
    iget-object v3, p0, Lcom/vk/id/captcha/web/e;->d:Lcom/vk/id/captcha/c/e;

    .line 55
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    .line 1031
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2013
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x3fad404a

    if-eq v8, v9, :cond_4

    const v9, 0x136a6d05

    if-eq v8, v9, :cond_2

    const v9, 0x2998b04f

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "accelerometer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 2014
    :cond_1
    sget-object v7, Lcom/vk/id/captcha/c/a/b;->a:Lcom/vk/id/captcha/c/a/b;

    goto :goto_2

    :cond_2
    const-string v8, "gyroscope"

    .line 2013
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 2015
    :cond_3
    sget-object v7, Lcom/vk/id/captcha/c/a/b;->b:Lcom/vk/id/captcha/c/a/b;

    goto :goto_2

    :cond_4
    const-string v8, "motion"

    .line 2013
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2020
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Incorrect or unsupported sensor type\n Sensor: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2018
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_2

    .line 2016
    :cond_5
    sget-object v7, Lcom/vk/id/captcha/c/a/b;->c:Lcom/vk/id/captcha/c/a/b;

    :goto_2
    if-eqz v7, :cond_6

    .line 1031
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1033
    :cond_7
    check-cast v4, Ljava/util/List;

    .line 54
    new-instance v1, Lcom/vk/id/captcha/web/e$b;

    invoke-direct {v1, p0}, Lcom/vk/id/captcha/web/e$b;-><init>(Lcom/vk/id/captcha/web/e;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v4, p1, v1}, Lcom/vk/id/captcha/c/e;->a(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void

    .line 51
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "No period value was provided from WebView"

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error when parsing json\n Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final VKCaptchaListenSensorsStop(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/vk/id/captcha/web/e;->d:Lcom/vk/id/captcha/c/e;

    invoke-interface {p1}, Lcom/vk/id/captcha/c/e;->a()V

    return-void
.end method
