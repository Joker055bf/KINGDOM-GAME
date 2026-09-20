.class public Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectType(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->getValue()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    if-eq v0, p0, :cond_3

    const/16 p0, 0x9

    if-eq v0, p0, :cond_2

    sget-object v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->ETHERNET:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->WIFI:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;->getMobileNetType(Landroid/content/Context;)Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    move-result-object v1

    :cond_5
    :goto_1
    if-nez v1, :cond_6

    sget-object v1, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    :cond_6
    invoke-virtual {v1}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->getValue()I

    move-result p0

    return p0
.end method

.method private static getMobileNetType(Landroid/content/Context;)Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_4G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_3G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_2G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE_5G:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->MOBILE:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/utils/AdtUtil;->getInstance()Lcom/openmediation/sdk/utils/AdtUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/openmediation/sdk/utils/AdtUtil;->getApplicationContext()Landroid/app/Application;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->UNKNOWN:Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker$NetType;->getValue()I

    move-result v0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/request/network/util/NetworkChecker;->getConnectType(Landroid/content/Context;)I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
