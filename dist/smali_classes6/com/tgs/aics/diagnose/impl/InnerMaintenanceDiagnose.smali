.class public Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;
.super Lcom/tgs/aics/diagnose/AICSDiagnose;
.source "InnerMaintenanceDiagnose.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;-><init>()V

    return-void
.end method

.method private collectDNS(Landroid/content/Context;)Lcom/tgs/aics/diagnose/Result;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "Context or android service invalid."

    .line 45
    new-instance v2, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v2}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const-string v3, "Device"

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    const-string v3, "netDNS"

    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, v3}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v5, "connectivity"

    .line 49
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_a

    .line 50
    instance-of v5, v0, Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_a

    .line 51
    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_b

    .line 55
    new-instance v5, Lcom/tgs/aics/diagnose/JsonArray;

    invoke-direct {v5}, Lcom/tgs/aics/diagnose/JsonArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    array-length v6, v1

    :goto_2
    if-ge v3, v6, :cond_9

    aget-object v7, v1, v3

    .line 57
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_6

    .line 61
    :cond_2
    new-instance v9, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v9}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    const-string v10, "networkType"

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v9

    const-string v10, "typeName"

    .line 62
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v9

    const-string v10, "reason"

    .line 63
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v9

    const-string v10, "extraInfo"

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    move-result-object v9

    .line 64
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 65
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 66
    invoke-virtual {v8}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v4

    :goto_3
    const-string v10, "state"

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const-string v8, ""

    .line 67
    :goto_4
    invoke-virtual {v9, v10, v8}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 68
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 70
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 73
    new-instance v10, Lcom/tgs/aics/diagnose/JsonArray;

    invoke-direct {v10}, Lcom/tgs/aics/diagnose/JsonArray;-><init>()V

    .line 74
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    if-nez v11, :cond_5

    goto :goto_5

    .line 78
    :cond_5
    new-instance v12, Lcom/tgs/aics/diagnose/JsonObject;

    invoke-direct {v12}, Lcom/tgs/aics/diagnose/JsonObject;-><init>()V

    .line 79
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    const-string v14, "hostAddress"

    .line 80
    invoke-virtual {v12, v14, v13}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "hostName"

    .line 81
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "canonicalHostName"

    .line 82
    invoke-virtual {v11}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "siteLocalAddress"

    .line 83
    invoke-virtual {v11}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "loopbackAddress"

    .line 84
    invoke-virtual {v11}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "anyLocalAddress"

    .line 85
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "linkLocalAddress"

    .line 86
    invoke-virtual {v11}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "multicastAddress"

    .line 87
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "MCGlobal"

    .line 88
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "MCLinkLocal"

    .line 89
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "MCOrgLocal"

    .line 90
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "MCNodeLocal"

    .line 91
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v14, "MCSiteLocal"

    .line 92
    invoke-virtual {v11}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v12, v14, v11}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v11, "DNS"

    .line 93
    invoke-virtual {v2, v11, v13}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 94
    invoke-virtual {v10, v12}, Lcom/tgs/aics/diagnose/JsonArray;->putNotNull(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonArray;

    goto/16 :goto_5

    :cond_6
    move-object v10, v4

    :cond_7
    const-string v8, "dns"

    .line 97
    invoke-virtual {v9, v8, v10}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v8, "domains"

    .line 98
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    const-string v8, "interfaceName"

    .line 99
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 100
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v8, v10, :cond_8

    const-string v8, "privateDnsServerName"

    .line 101
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v7}, Lcom/tgs/aics/diagnose/JsonObject;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonObject;

    .line 105
    :cond_8
    invoke-virtual {v5, v9}, Lcom/tgs/aics/diagnose/JsonArray;->putNotNull(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/JsonArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_9
    move-object v4, v5

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_8

    .line 112
    :cond_a
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    :cond_b
    :goto_7
    const/4 v0, 0x1

    .line 114
    invoke-virtual {v2, v0}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 116
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception collect dns.e="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tgs/aics/diagnose/utils/D;->E(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 119
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    return-object v0
.end method

.method private collectPublicIps(Lcom/tgs/aics/diagnose/DiagnoseManager;)Lcom/tgs/aics/diagnose/Result;
    .locals 5

    .line 123
    new-instance v0, Lcom/tgs/aics/diagnose/Result;

    invoke-direct {v0}, Lcom/tgs/aics/diagnose/Result;-><init>()V

    const-string v1, "DeviceNetwork"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSource(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const-string v1, "netPublicIPs"

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setType(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tgs/aics/diagnose/Result;->setStartTime(J)Lcom/tgs/aics/diagnose/Result;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "Diagnose manager null"

    .line 126
    invoke-virtual {v0, p1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    goto/16 :goto_7

    :cond_0
    const-string v2, "GET"

    const-string v3, "https://getip.a3games.com/get_ip"

    .line 129
    invoke-virtual {p1, v2, v3}, Lcom/tgs/aics/diagnose/DiagnoseManager;->request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 132
    :try_start_0
    new-instance v3, Lcom/tgs/aics/diagnose/RequestResponse;

    invoke-direct {v3, p1}, Lcom/tgs/aics/diagnose/RequestResponse;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    .line 133
    invoke-virtual {v3}, Lcom/tgs/aics/diagnose/RequestResponse;->getDataAsText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    const-string v3, "\n"

    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 135
    array-length v3, p1

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    :goto_3
    const/4 v4, 0x1

    if-lez v3, :cond_5

    sub-int/2addr v3, v4

    .line 136
    aget-object p1, p1, v3

    goto :goto_4

    :cond_5
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_6

    const-string v3, ","

    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v2

    :goto_5
    if-eqz p1, :cond_7

    .line 138
    array-length v3, p1

    if-lez v3, :cond_7

    aget-object v2, p1, v1

    :cond_7
    const-string p1, "IP"

    .line 139
    invoke-virtual {v0, p1, v2}, Lcom/tgs/aics/diagnose/Result;->putUiData(Ljava/lang/String;Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 140
    invoke-virtual {v0, v4}, Lcom/tgs/aics/diagnose/Result;->setSucceed(Z)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/diagnose/Result;->setData(Ljava/lang/Object;)Lcom/tgs/aics/diagnose/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 142
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception collect public ips.e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tgs/aics/diagnose/Result;->setMessage(Ljava/lang/String;)Lcom/tgs/aics/diagnose/Result;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tgs/aics/diagnose/Result;->setEndTime(J)Lcom/tgs/aics/diagnose/Result;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/tgs/aics/diagnose/AICSDiagnose;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getExecuteOrder()I
    .locals 1

    const v0, 0x18a88

    return v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 3

    .line 157
    invoke-super {p0}, Lcom/tgs/aics/diagnose/AICSDiagnose;->getName()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DNS & IP"

    if-eqz v0, :cond_1

    .line 158
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 159
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public getTotal()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method synthetic lambda$onExecute$0$com-tgs-aics-diagnose-impl-InnerMaintenanceDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/DiagnoseManager;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;->collectDNS(Landroid/content/Context;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Lcom/tgs/aics/diagnose/Result;

    const-string v1, "None dns result."

    invoke-direct {p1, v0, v1}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    .line 30
    :goto_0
    invoke-interface {p2, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    .line 32
    invoke-direct {p0, p3}, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;->collectPublicIps(Lcom/tgs/aics/diagnose/DiagnoseManager;)Lcom/tgs/aics/diagnose/Result;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    new-instance p1, Lcom/tgs/aics/diagnose/Result;

    const-string p3, "None public ip result."

    invoke-direct {p1, v0, p3}, Lcom/tgs/aics/diagnose/Result;-><init>(ZLjava/lang/String;)V

    .line 35
    :goto_1
    invoke-interface {p2, p1}, Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;->onDiagnoseResultUpdate(Lcom/tgs/aics/diagnose/Result;)V

    return-void
.end method

.method protected onExecute(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/DiagnoseManager;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;)V
    .locals 0

    .line 27
    new-instance p2, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/diagnose/impl/InnerMaintenanceDiagnose;Landroid/content/Context;Lcom/tgs/aics/diagnose/listener/OnDiagnoseResultUpdate;Lcom/tgs/aics/diagnose/DiagnoseManager;)V

    invoke-virtual {p3, p2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->execute(Ljava/lang/Runnable;)Z

    return-void
.end method
