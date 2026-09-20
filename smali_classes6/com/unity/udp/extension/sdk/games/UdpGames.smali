.class public final Lcom/unity/udp/extension/sdk/games/UdpGames;
.super Ljava/lang/Object;
.source "UdpGames.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->obtainTargetObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/unity/udp/extension/sdk/utils/Utils;->validateServiceInterface(Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lcom/unity/udp/extension/sdk/games/UdpGames$1;

    invoke-direct {p0}, Lcom/unity/udp/extension/sdk/games/UdpGames$1;-><init>()V

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAchievementsClient()Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;
    .locals 1

    .line 96
    const-class v0, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/achievement/UdpAchievements;

    return-object v0
.end method

.method public static getEventsClient()Lcom/unity/udp/extension/sdk/games/event/UdpEvents;
    .locals 1

    .line 104
    const-class v0, Lcom/unity/udp/extension/sdk/games/event/UdpEvents;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/event/UdpEvents;

    return-object v0
.end method

.method public static getExtrasClient()Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;
    .locals 1

    .line 108
    const-class v0, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/extra/UdpExtras;

    return-object v0
.end method

.method public static getLeaderboardsClient()Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;
    .locals 1

    .line 100
    const-class v0, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/leaderboard/UdpLeaderboards;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1

    .line 75
    sget-boolean v0, Lcom/unity/udp/extension/sdk/utils/Utils;->hasConfigStoreName:Z

    if-nez v0, :cond_0

    const-string v0, "Huawei"

    .line 76
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Utils;->setStoreName(Ljava/lang/String;)V

    const-string v0, "invoke init: set store name"

    .line 77
    invoke-static {v0}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->with(Landroid/app/Activity;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->prepare()V

    .line 80
    const-class v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-interface {v0, p0}, Lcom/unity/udp/extension/sdk/games/GamesDelegate;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public static login(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 1

    .line 84
    const-class v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/GamesDelegate;->login(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    return-void
.end method

.method private static obtainTargetObject(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "UdpExtras"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v1, "UdpEvents"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "UdpLeaderboards"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "UdpAchievements"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "GamesDelegate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    const-string p0, "com.unity.udp.%s.extension.games.%sUdpGames"

    new-array v1, v5, [Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/unity/udp/extension/sdk/utils/Utils;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/unity/udp/extension/sdk/utils/Utils;->STORE_NAME:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 55
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Udp"

    .line 56
    sget-object v7, Lcom/unity/udp/extension/sdk/utils/Utils;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.unity.udp.%s.extension.games.%s.%s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    sget-object v7, Lcom/unity/udp/extension/sdk/utils/Utils;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    aput-object v1, v4, v6

    aput-object p0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 66
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5991acba -> :sswitch_4
        0x10c28d65 -> :sswitch_3
        0x2338bed7 -> :sswitch_2
        0x6fd51c1a -> :sswitch_1
        0x6ff82964 -> :sswitch_0
    .end sparse-switch
.end method

.method public static signOut(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 1

    .line 92
    const-class v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/GamesDelegate;->signOut(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    return-void
.end method

.method public static silentSignIn(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 1

    .line 88
    const-class v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-static {v0}, Lcom/unity/udp/extension/sdk/games/UdpGames;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity/udp/extension/sdk/games/GamesDelegate;

    invoke-interface {v0, p0, p1}, Lcom/unity/udp/extension/sdk/games/GamesDelegate;->silentSignIn(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    return-void
.end method
