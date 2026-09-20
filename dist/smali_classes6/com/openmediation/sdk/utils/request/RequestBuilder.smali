.class public Lcom/openmediation/sdk/utils/request/RequestBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;
    }
.end annotation


# static fields
.field private static final REG_UNMATCHED_PERCENTAGE:Ljava/util/regex/Pattern;


# instance fields
.field private ps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i)%(?![\\da-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;->REG_UNMATCHED_PERCENTAGE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/RequestBuilder;->ps:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/RequestBuilder;->ps:Ljava/util/List;

    return-void
.end method

.method private static appendRegsObject(Lorg/json/JSONObject;Lcom/openmediation/sdk/core/MetaData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getUserGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string v1, "male"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v1, "female"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "gender"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getUserAge()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "age"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getGDPRConsent()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "gdpr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getAgeRestricted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "coppa"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/openmediation/sdk/core/MetaData;->getUSPrivacyLimit()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "ccpa"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    const-string p1, "regs"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static buildAndroidRequestBody(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "product"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/DensityUtil;->getScreenDensity()I

    move-result v1

    const-string v2, "screen_density"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/DensityUtil;->getScreenSize()I

    move-result v1

    const-string v2, "screen_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ro.product.cpu.abi"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ro.product.cpu.abi2"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ro.product.cpu.abilist"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cpu_abilist"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abilist32"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ro.product.cpu.abilist64"

    invoke-static {v1}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abilist64"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "api_level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DensityUtil;->getDensityDpi(Landroid/content/Context;)I

    move-result v1

    const-string v2, "d_dpi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/DensityUtil;->getDimSize()I

    move-result v1

    const-string v2, "dim_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DensityUtil;->getXdpi(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xdp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DensityUtil;->getYdpi(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ydp"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getUniquePsuedoId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "dfpid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.arch"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "arch"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.chipname"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "chipname"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.dalvik.vm.native.bridge"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bridge"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "persist.sys.nativebridge"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "nativebridge"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.enable.native.bridge.exec"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bridge_exec"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.x86.features"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isax86_features"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.x86.variant"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_x86_variant"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.zygote"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "zygote"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.allow.mock.location"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "mock_location"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.dalvik.vm.isa.arm"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_arm"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.arm.features"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_arm_features"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.arm.variant"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_arm_variant"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.arm64.features"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_arm64_features"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dalvik.vm.isa.arm64.variant"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isa_arm64_variant"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.build.user"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "build_user"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.kernel.qemu"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "kernel_qemu"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ro.hardware"

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hardware"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->disk()J

    move-result-wide v1

    const-string p0, "tdm"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->ifGp(Landroid/content/Context;)I

    move-result p0

    const-string v1, "ifgp"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static buildCdRequestBody(ILjava/lang/Object;)[B
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "type"

    invoke-static {v0, v1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of p0, p1, Ljava/util/Map;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string p1, "cd"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildCdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const-string v1, "v"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppKey"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildConfigRequestBody(Lorg/json/JSONArray;)[B
    .locals 5

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getBtime()J

    move-result-wide v2

    const-string v4, "btime"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getTotalRAM(Landroid/content/Context;)J

    move-result-wide v2

    const-string v4, "ram"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "adns"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->buildAndroidRequestBody(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "init params:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildErrorRequestBody([Ljava/lang/String;)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildEventRequestBody(Lcom/openmediation/sdk/utils/event/Event;)[B
    .locals 2

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/event/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p0, "events"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "event report params : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildEventRequestBody(Ljava/util/concurrent/ConcurrentLinkedQueue;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/openmediation/sdk/utils/event/Event;",
            ">;)[B"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppKey"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "appk"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openmediation/sdk/utils/event/Event;

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/event/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p0, "events"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "event report params : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildEventUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppKey"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildHbRequestBody([Ljava/lang/Object;)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v2, "iap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const-string v2, "imprTimes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x3

    aget-object p0, p0, v1

    const-string v1, "act"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildHbUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildIapRequestBody([Ljava/lang/String;)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "cur"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v2, "iap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    aget-object p0, p0, v1

    const-string v1, "iapt"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "iap params : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildIapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AppKey"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "k"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildIcRequestBody([Ljava/lang/Object;)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v2, "mid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const-string v2, "iid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x3

    aget-object v1, p0, v1

    const-string v2, "scene"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x4

    aget-object p0, p0, v1

    const-string v1, "content"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildIcUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildInitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "k"

    invoke-virtual {v0, v1, p1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildLrRequestBody(Ljava/lang/String;ILcom/openmediation/sdk/utils/model/BaseInstance;[I)[B
    .locals 3

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ruleId"

    const-string v2, "reqId"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getReqId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "revenue"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getRevenuePrecision()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "rp"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getPriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ii"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/model/BaseInstance;->getMediationRule()Lcom/openmediation/sdk/utils/model/MediationRule;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/MediationRule;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const/4 p0, 0x0

    aget p0, p3, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "pid"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    aget p1, p3, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "scene"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x2

    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "act"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x3

    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "mid"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x4

    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "iid"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x5

    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "abt"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x6

    aget p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-static {v0, p2, p1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x7

    aget p1, p3, p1

    if-ne p1, p0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "bid"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/16 p0, 0x8

    aget p0, p3, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "abtId"

    invoke-static {v0, p1, p0}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "lr params:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildLrUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildWfRequestBody(Lcom/openmediation/sdk/utils/model/PlacementInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openmediation/sdk/utils/model/PlacementInfo;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/bid/BidResponse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getRequestBodyBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reqId"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getWidth()I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getWidth()I

    move-result p4

    const-string v1, "width"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getHeight()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getHeight()I

    move-result p4

    const-string v1, "height"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/model/PlacementInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p4, "pid"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x0

    aget-object p0, p5, p0

    const-string p4, "iap"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x1

    aget-object p0, p5, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    const-string p4, "imprTimes"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x2

    aget-object p0, p5, p0

    const-string p4, "act"

    invoke-virtual {v0, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "iid"

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/openmediation/sdk/bid/BidResponse;

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p5}, Lcom/openmediation/sdk/bid/BidResponse;->getIid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p5}, Lcom/openmediation/sdk/bid/BidResponse;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "price"

    invoke-static {v1, v3, v2}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p5}, Lcom/openmediation/sdk/bid/BidResponse;->getCur()Ljava/lang/String;

    move-result-object p5

    const-string v2, "cur"

    invoke-static {v1, v2, p5}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string p1, "bid"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/openmediation/sdk/bid/BidResponse;

    if-nez p4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p4}, Lcom/openmediation/sdk/bid/BidResponse;->getIid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5, p0, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/openmediation/sdk/bid/BidResponse;->getToken()Ljava/lang/String;

    move-result-object p4

    const-string v1, "token"

    invoke-static {p5, v1, p4}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, p5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_6
    const-string p2, "bids2s"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->getIid()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p4, p0, p5}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->getLts()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v1, "lts"

    invoke-static {p4, v1, p5}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->getDur()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string v1, "dur"

    invoke-static {p4, v1, p5}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->getCode()Ljava/lang/String;

    move-result-object p5

    const-string v1, "code"

    invoke-static {p4, v1, p5}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/openmediation/sdk/utils/model/InstanceLoadStatus;->getMsg()Ljava/lang/String;

    move-result-object p3

    const-string p5, "msg"

    invoke-static {p4, p5, p3}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_9
    const-string p0, "ils"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "request wf params : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/Gzip;->inGZip([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static buildWfUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    const-string v1, "sdkv"

    const-string v2, "2.6.6"

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;

    invoke-static {v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;->access$100(Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;->access$200(Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static from(Ljava/lang/String;)Lcom/openmediation/sdk/utils/request/RequestBuilder;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/request/RequestBuilder;

    invoke-static {p0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static getGaidMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v2, "AdvertisingId"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/openmediation/sdk/utils/cache/DataCache;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->getOaid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/openmediation/sdk/utils/OaidHelper;->getOaid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const-string v3, "did"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dtype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getRequestBodyBaseJson()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getLocaleInfo()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "ts"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getFit()J

    move-result-wide v3

    const-string v5, "fit"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getTimeZoneOffset()I

    move-result v3

    const-string v4, "zo"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tz"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getSessionId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "session"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getFlt()J

    move-result-wide v3

    const-string v5, "flt"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->getGaidMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v3, "lang"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getLocaleInfo()Ljava/util/Map;

    move-result-object v3

    const-string v4, "langname"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "jb"

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->isRoot()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    const-string v4, "bundle"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "make"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "brand"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "osv"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v4, "build"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appv"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneWidth(Landroid/content/Context;)I

    move-result v3

    const-string v4, "width"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/DensityUtil;->getPhoneHeight(Landroid/content/Context;)I

    move-result v3

    const-string v4, "height"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;->getConnectType(Landroid/content/Context;)I

    move-result v3

    const-string v4, "contype"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "carrier"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getHostIp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lip"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lcountry"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getFm()J

    move-result-wide v3

    const-string v1, "fm"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/AFManager;->getAfId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "afid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getBatteryInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "battery"

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    invoke-static {}, Lcom/openmediation/sdk/utils/cache/DataCache;->getInstance()Lcom/openmediation/sdk/utils/cache/DataCache;

    move-result-object v1

    const-string v3, "AppChannel"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/openmediation/sdk/utils/cache/DataCache;->getFromMem(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cnl"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/OmManager;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cdid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/OmManager;->getTagsObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "tags"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/openmediation/sdk/utils/device/DeviceUtil;->getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcy"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/openmediation/sdk/core/OmManager;->getInstance()Lcom/openmediation/sdk/core/OmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openmediation/sdk/core/OmManager;->getMetaData()Lcom/openmediation/sdk/core/MetaData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->appendRegsObject(Lorg/json/JSONObject;Lcom/openmediation/sdk/core/MetaData;)V

    return-object v0
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    sget-object v1, Lcom/openmediation/sdk/utils/request/RequestBuilder;->REG_UNMATCHED_PERCENTAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, "%25"

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v2, :cond_0

    move-object v9, v6

    move-object v6, v8

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    :try_start_0
    new-instance v7, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;

    invoke-static {v9, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_1

    move-object v6, v8

    goto :goto_2

    :cond_1
    invoke-static {v6, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-direct {v7, v9, v6, v8}, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/openmediation/sdk/utils/request/RequestBuilder$1;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public format()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/RequestBuilder;->ps:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/request/RequestBuilder;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lcom/openmediation/sdk/utils/request/RequestBuilder;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/RequestBuilder;->ps:Ljava/util/List;

    new-instance v1, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/openmediation/sdk/utils/request/RequestBuilder$Param;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/openmediation/sdk/utils/request/RequestBuilder$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
