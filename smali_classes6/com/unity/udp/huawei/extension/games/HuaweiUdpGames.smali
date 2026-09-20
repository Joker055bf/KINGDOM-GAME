.class public Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;
.super Ljava/lang/Object;
.source "HuaweiUdpGames.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/games/GamesDelegate;


# instance fields
.field private final SIGN_IN_INTENT:I

.field private smsBR:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->SIGN_IN_INTENT:I

    return-void
.end method

.method static synthetic access$000(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Landroid/app/Activity;Landroid/content/Intent;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->handleSignInResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    return-void
.end method

.method public static getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;
    .locals 0

    .line 279
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getAchievementsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/AchievementsClient;

    move-result-object p0

    return-object p0
.end method

.method public static getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;
    .locals 0

    .line 307
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getArchiveClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/ArchivesClient;

    move-result-object p0

    return-object p0
.end method

.method public static getBuoyClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/buoy/BuoyClient;
    .locals 0

    .line 311
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getBuoyClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/buoy/BuoyClient;

    move-result-object p0

    return-object p0
.end method

.method public static getEventsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/EventsClient;
    .locals 0

    .line 287
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getEventsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/EventsClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGamePlayerStatsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatisticsClient;
    .locals 0

    .line 303
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getGamePlayerStatsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/playerstats/GamePlayerStatisticsClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGameSummaryClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GameSummaryClient;
    .locals 0

    .line 295
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getGameSummaryClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GameSummaryClient;

    move-result-object p0

    return-object p0
.end method

.method public static getGamesClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GamesClient;
    .locals 0

    .line 291
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getGamesClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/GamesClient;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;
    .locals 0

    .line 299
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getPlayersClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/PlayersClient;

    move-result-object p0

    return-object p0
.end method

.method public static getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;
    .locals 0

    .line 283
    invoke-static {p0}, Lcom/huawei/hms/jos/games/Games;->getRankingsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/games/RankingsClient;

    move-result-object p0

    return-object p0
.end method

.method private handleSignInResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 1

    if-nez p2, :cond_1

    const-string p1, "login failed, signIn intent is null"

    .line 251
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 253
    new-instance p1, Lcom/unity/udp/extension/sdk/Result;

    const/4 p2, -0x1

    const-string v0, "login, signIn intent is null"

    invoke-direct {p1, p2, v0}, Lcom/unity/udp/extension/sdk/Result;-><init>(ILjava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p3, p2, p1}, Lcom/unity/udp/extension/sdk/games/LoginCallback;->onFailure(Ljava/lang/Exception;Lcom/unity/udp/extension/sdk/Result;)V

    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-static {p2}, Lcom/huawei/hms/support/account/AccountAuthManager;->parseAuthResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 258
    new-instance p2, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$10;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$10;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$9;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    .line 267
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method


# virtual methods
.method public cancelAuthorization(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;)V
    .locals 1

    .line 142
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;-><init>()V

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;->createParams()V

    .line 145
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/support/account/AccountAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;)Lcom/huawei/hms/support/account/service/AccountAuthService;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Lcom/huawei/hms/support/account/service/AccountAuthService;->cancelAuthorization()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 149
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$6;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/huawei/extension/games/callback/OnCancelAuthCallback;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    :cond_1
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0

    .line 46
    invoke-static {p1}, Lcom/huawei/hms/jos/JosApps;->getJosAppsClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/JosAppsClient;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Lcom/huawei/hms/jos/JosAppsClient;->init()V

    const-string p1, "init success"

    .line 48
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;-><init>()V

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;->createParams()V

    .line 56
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/support/account/AccountAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;)Lcom/huawei/hms/support/account/service/AccountAuthService;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->with(Landroid/app/Activity;)Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;

    move-result-object v1

    invoke-interface {v0}, Lcom/huawei/hms/support/account/service/AccountAuthService;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$1;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/unity/udp/extension/sdk/utils/ActivityResultUtils;->startActivityForResult(Landroid/content/Intent;ILcom/unity/udp/extension/sdk/utils/ActivityResultUtils$Callback;)V

    return-void
.end method

.method public registerSMSBroadcastReceiver(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "activity can not be null"

    .line 204
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    new-instance v0, Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;

    invoke-direct {v0, p2}, Lcom/unity/udp/huawei/extension/games/SMSBroadcastReceiver;-><init>(Lcom/unity/udp/huawei/extension/games/callback/OnSMSReceive;)V

    iput-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->smsBR:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.huawei.hms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->smsBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public signOut(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;-><init>()V

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;->createParams()V

    .line 111
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/support/account/AccountAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;)Lcom/huawei/hms/support/account/service/AccountAuthService;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Lcom/huawei/hms/support/account/service/AccountAuthService;->signOut()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 114
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$4;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 124
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$5;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$5;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public silentSignIn(Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V
    .locals 2

    .line 75
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;

    invoke-direct {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;-><init>()V

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiAuthParamsHelperImpl;->createParams()V

    .line 78
    :cond_0
    invoke-static {}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getInstance()Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity/udp/huawei/extension/games/HuaweiSignInAccount;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/support/account/AccountAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;)Lcom/huawei/hms/support/account/service/AccountAuthService;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lcom/huawei/hms/support/account/service/AccountAuthService;->silentSignIn()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;

    invoke-direct {v1, p0, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$2;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    .line 91
    new-instance v1, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$3;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Landroid/app/Activity;Lcom/unity/udp/extension/sdk/games/LoginCallback;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public startConsent(Landroid/app/Activity;Ljava/lang/String;Lcom/unity/udp/huawei/extension/games/callback/OnReadSmsCallback;)V
    .locals 0

    .line 223
    invoke-static {p1, p2}, Lcom/huawei/hms/support/sms/ReadSmsManager;->startConsent(Landroid/app/Activity;Ljava/lang/String;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 224
    new-instance p2, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$8;

    invoke-direct {p2, p0, p3}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$8;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/huawei/extension/games/callback/OnReadSmsCallback;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public startReadSms(Landroid/app/Activity;Lcom/unity/udp/huawei/extension/games/callback/OnReadSmsCallback;)V
    .locals 1

    .line 176
    invoke-static {p1}, Lcom/huawei/hms/support/sms/ReadSmsManager;->start(Landroid/app/Activity;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 177
    new-instance v0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$7;

    invoke-direct {v0, p0, p2}, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames$7;-><init>(Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;Lcom/unity/udp/huawei/extension/games/callback/OnReadSmsCallback;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnCompleteListener(Lcom/huawei/hmf/tasks/OnCompleteListener;)Lcom/huawei/hmf/tasks/Task;

    return-void
.end method

.method public unregisterSMSBroadcastReceiver(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "activity can not be null"

    .line 214
    invoke-static {p1}, Lcom/unity/udp/extension/sdk/utils/Logger;->logError(Ljava/lang/String;)V

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/unity/udp/huawei/extension/games/HuaweiUdpGames;->smsBR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
