.class public Lcom/tgs/aics/AiCustomServiceSDK;
.super Ljava/lang/Object;
.source "AiCustomServiceSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "aics.AiCustomServiceSDK"

.field private static volatile instance:Lcom/tgs/aics/AiCustomServiceSDK;


# instance fields
.field private isDiagnoseSuccess:Z

.field private isInitSuccess:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isDiagnoseSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tgs/aics/AiCustomServiceSDK;->callbackUnreadMessageCount(Landroid/app/Activity;I)V

    return-void
.end method

.method private callbackUnreadMessageCount(Landroid/app/Activity;I)V
    .locals 0

    .line 131
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    if-eqz p1, :cond_0

    .line 132
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    invoke-interface {p1, p2}, Lcom/tgs/aics/listener/IUnreadMessageCountListener;->onResult(I)V

    .line 133
    :cond_0
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    if-eqz p1, :cond_1

    .line 134
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil;->unreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    invoke-interface {p1, p2}, Lcom/tgs/aics/listener/IUnreadMessageCountListener;->onResult(I)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/tgs/aics/AiCustomServiceSDK;
    .locals 2

    .line 62
    sget-object v0, Lcom/tgs/aics/AiCustomServiceSDK;->instance:Lcom/tgs/aics/AiCustomServiceSDK;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/tgs/aics/AiCustomServiceSDK;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/tgs/aics/AiCustomServiceSDK;->instance:Lcom/tgs/aics/AiCustomServiceSDK;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/tgs/aics/AiCustomServiceSDK;

    invoke-direct {v1}, Lcom/tgs/aics/AiCustomServiceSDK;-><init>()V

    sput-object v1, Lcom/tgs/aics/AiCustomServiceSDK;->instance:Lcom/tgs/aics/AiCustomServiceSDK;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/tgs/aics/AiCustomServiceSDK;->instance:Lcom/tgs/aics/AiCustomServiceSDK;

    return-object v0
.end method

.method private isNormalPlayerId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 142
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "0"

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const-string v1, "nil"

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const-string v1, "null"

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$reportHttp$5(Lcom/tgs/aics/listener/IReportResultListener;Lcom/tgs/aics/bean/BaseDataBean;)V
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 536
    invoke-interface {p0, p1, v0}, Lcom/tgs/aics/listener/IReportResultListener;->onResult(ZLjava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_2

    .line 539
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseDataBean;->isSuccess()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseDataBean;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "errCode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tgs/aics/bean/BaseDataBean;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",errMsg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/tgs/aics/bean/BaseDataBean;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v1, v0}, Lcom/tgs/aics/listener/IReportResultListener;->onResult(ZLjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$silentNetDiagnose$2(Lcom/tgs/aics/diagnose/Result;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 439
    invoke-virtual {p1}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 440
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tgs/aics/diagnose/Result;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tgs/aics/http/HttpApi;->netDiagnoseUpload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private loadGameCSAvatar(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "aics.AiCustomServiceSDK"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tgs_aics_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :try_start_0
    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    const-string v1, "tgs_aics_default_game_icon"

    .line 369
    invoke-static {p1, v1}, Lcom/tgs/aics/utils/ResourceUtil;->getMipmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    return-object v1

    :catch_1
    move-exception v1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tgs_aics_default_game_icon not found by name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tgs/service/ai/R$mipmap;->tgs_aics_default_game_icon:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to load default game icon via R.mipmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private openAiCustomService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    const-string v1, "aics.AiCustomServiceSDK"

    if-nez v0, :cond_0

    const-string p1, "AICS Init Not success, please call openAiCustomService after init success"

    .line 411
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "call openAiCustomService but activity is null"

    .line 416
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/ui/activity/HomeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_2

    const-string v1, "LaunchDiagnose"

    .line 422
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "intent_key_player_issue"

    .line 424
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private reportHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V
    .locals 13

    .line 533
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object v0

    new-instance v12, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda2;

    move-object/from16 v1, p12

    invoke-direct {v12, v1}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda2;-><init>(Lcom/tgs/aics/listener/IReportResultListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/tgs/aics/http/HttpApi;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IHttpRspDataListener;)V

    return-void
.end method

.method private startUnreadMessageTimer(Landroid/app/Activity;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->timer:Ljava/util/Timer;

    .line 107
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK;->timer:Ljava/util/Timer;

    .line 108
    new-instance v2, Lcom/tgs/aics/AiCustomServiceSDK$1;

    invoke-direct {v2, p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK$1;-><init>(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7530

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public initWithAicsUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "aics.AiCustomServiceSDK"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "AICS Init Failed,context is null."

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 176
    :cond_0
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    .line 178
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "AICS Init Failed,gameId is empty."

    .line 179
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 183
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "AICS Init Failed,udid is empty."

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 188
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "AICS Init Failed,aicsAddress is empty."

    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 193
    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "AICS Init Failed,gameLanguage is empty."

    .line 194
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string v2, "Init android AICS.AAR version=2.4.5"

    .line 198
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 200
    iput-boolean v2, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    .line 201
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    .line 202
    sput-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    .line 203
    sput-object p4, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    .line 204
    sput-object p6, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->originalGameLanguage:Ljava/lang/String;

    .line 205
    invoke-static {p6}, Lcom/ypx/imagepicker/utils/LanguageUtil;->languageTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    .line 207
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->saveLanguage(Landroid/content/Context;)V

    .line 208
    sput-object p8, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    .line 209
    sput-object p9, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->customParams:Ljava/util/HashMap;

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 212
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p7}, Lcom/tgs/aics/AiCustomServiceSDK;->isNormalPlayerId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 213
    sput-object p5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    .line 214
    sput-object p7, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p2, ""

    .line 216
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    const-string p2, "0"

    .line 217
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    .line 220
    :goto_0
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->bundleId:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->appVersion:Ljava/lang/String;

    .line 222
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->osVersion:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 229
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->countryCode:Ljava/lang/String;

    .line 230
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceModel:Ljava/lang/String;

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Android OS "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " / API-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->operatingSystem:Ljava/lang/String;

    .line 232
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->isVPNConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Connected"

    goto :goto_1

    :cond_6
    const-string p2, "Disconnected"

    :goto_1
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceVpnStatus:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    sput-boolean p2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    .line 235
    sget-boolean p2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz p2, :cond_9

    const-string p2, "window"

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 237
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_8

    move v1, v2

    .line 238
    :cond_8
    sput-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    .line 241
    :cond_9
    invoke-direct {p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->loadGameCSAvatar(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameCSAvatar:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-static {}, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->toStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public initWithGameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p10

    .line 265
    sput-object p9, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    .line 266
    sput-object p7, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    :try_start_0
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePaths:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "aics.AiCustomServiceSDK"

    const-string v1, "initWithGameId: logFilePaths split error"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    .line 272
    invoke-virtual/range {v0 .. v8}, Lcom/tgs/aics/AiCustomServiceSDK;->initWithGameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public initWithGameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 253
    sput-object p9, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->logFilePath:Ljava/lang/String;

    .line 254
    sput-object p7, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameVersion:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    .line 255
    invoke-virtual/range {v0 .. v8}, Lcom/tgs/aics/AiCustomServiceSDK;->initWithGameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public initWithGameId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "aics.AiCustomServiceSDK"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "AICS Init Failed,context is null."

    .line 277
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 281
    :cond_0
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->context:Landroid/content/Context;

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "AICS Init Failed,gameId is empty."

    .line 284
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 288
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "AICS Init Failed,udid is empty."

    .line 289
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 293
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "AICS Init Failed,nameAddress is empty."

    .line 294
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 298
    :cond_3
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "AICS Init Failed,gameLanguage is empty."

    .line 299
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const-string v2, "Init android AICS.AAR version=2.4.5"

    .line 303
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 305
    iput-boolean v2, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    .line 306
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    .line 307
    sput-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->udid:Ljava/lang/String;

    .line 308
    sput-object p4, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->nameAddress:Ljava/lang/String;

    .line 309
    sput-object p6, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->originalGameLanguage:Ljava/lang/String;

    .line 310
    invoke-static {p6}, Lcom/ypx/imagepicker/utils/LanguageUtil;->languageTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameLanguage:Ljava/lang/String;

    .line 312
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->saveLanguage(Landroid/content/Context;)V

    .line 313
    sput-object p8, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->customParams:Ljava/util/HashMap;

    .line 314
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->gameId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil;->clientId:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 316
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p7}, Lcom/tgs/aics/AiCustomServiceSDK;->isNormalPlayerId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 317
    sput-object p5, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    .line 318
    sput-object p7, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p2, ""

    .line 320
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->accountToken:Ljava/lang/String;

    const-string p2, "0"

    .line 321
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->playerId:Ljava/lang/String;

    .line 324
    :goto_0
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->bundleId:Ljava/lang/String;

    .line 325
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->appVersion:Ljava/lang/String;

    .line 326
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->osVersion:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 333
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->countryCode:Ljava/lang/String;

    .line 334
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceModel:Ljava/lang/String;

    .line 335
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Android OS "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " / API-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->operatingSystem:Ljava/lang/String;

    .line 336
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->isVPNConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "Connected"

    goto :goto_1

    :cond_6
    const-string p2, "Disconnected"

    :goto_1
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->deviceVpnStatus:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    sput-boolean p2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    .line 339
    sget-boolean p2, Lcom/tgs/aics/utils/ConstantUtil;->isLandscape:Z

    if-eqz p2, :cond_9

    const-string p2, "window"

    .line 340
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 341
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_8

    move v1, v2

    .line 342
    :cond_8
    sput-boolean v1, Lcom/tgs/aics/utils/ConstantUtil;->isReverseLandscape:Z

    .line 345
    :cond_9
    invoke-direct {p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->loadGameCSAvatar(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->gameCSAvatar:Landroid/graphics/drawable/Drawable;

    .line 347
    invoke-static {}, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->toStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isAicsShowing(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 75
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/tgs/aics/utils/Utils;->isAicsClass(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAicsShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "aics.AiCustomServiceSDK"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUseIjkPlayer(Z)V
    .locals 0

    .line 158
    sput-boolean p1, Lcom/ypx/imagepicker/ImagePicker;->isUseIjkPlayer:Z

    return-void
.end method

.method public isUseOriginalVideoView(Z)V
    .locals 0

    .line 162
    sput-boolean p1, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity;->isUseOriginalVideoView:Z

    return-void
.end method

.method synthetic lambda$report$4$com-tgs-aics-AiCustomServiceSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 1

    .line 515
    invoke-virtual {p13}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-direct/range {p0 .. p12}, Lcom/tgs/aics/AiCustomServiceSDK;->reportHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V

    goto :goto_0

    :cond_0
    if-eqz p12, :cond_1

    .line 519
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "report fail: get aics url fail: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p13}, Lcom/tgs/aics/bean/BaseBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p12, p2, p1}, Lcom/tgs/aics/listener/IReportResultListener;->onResult(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setUnreadMessageListener$0$com-tgs-aics-AiCustomServiceSDK(Landroid/app/Activity;Lcom/tgs/aics/bean/BaseBean;)V
    .locals 0

    .line 94
    invoke-virtual {p2}, Lcom/tgs/aics/bean/BaseBean;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->startUnreadMessageTimer(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$silentNetDiagnose$1$com-tgs-aics-AiCustomServiceSDK(IILcom/tgs/aics/diagnose/Result;)V
    .locals 0

    .line 430
    iget-boolean p1, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isDiagnoseSuccess:Z

    invoke-virtual {p3}, Lcom/tgs/aics/diagnose/Result;->isSucceed()Z

    move-result p2

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isDiagnoseSuccess:Z

    return-void
.end method

.method synthetic lambda$silentNetDiagnose$3$com-tgs-aics-AiCustomServiceSDK(Lcom/tgs/aics/listener/INetDiagnoseListener;ZLcom/tgs/aics/diagnose/Result;)V
    .locals 1

    .line 431
    iget-boolean p2, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isDiagnoseSuccess:Z

    const/4 v0, 0x1

    .line 432
    iput-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isDiagnoseSuccess:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "Net Diagnose Fail"

    .line 435
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/tgs/aics/listener/INetDiagnoseListener;->onResult(ZLjava/lang/String;)V

    .line 437
    :cond_1
    sget-object p1, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 438
    new-instance p1, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda3;-><init>(Lcom/tgs/aics/diagnose/Result;)V

    invoke-static {p1}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_1

    .line 444
    :cond_2
    invoke-static {}, Lcom/tgs/aics/http/HttpApi;->getInstance()Lcom/tgs/aics/http/HttpApi;

    move-result-object p1

    invoke-virtual {p3}, Lcom/tgs/aics/diagnose/Result;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tgs/aics/http/HttpApi;->netDiagnoseUpload(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 557
    iput-object v1, p0, Lcom/tgs/aics/AiCustomServiceSDK;->timer:Ljava/util/Timer;

    .line 560
    :cond_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    if-eqz v0, :cond_1

    .line 561
    sput-object v1, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    :cond_1
    return-void
.end method

.method public openAICSWithIssue(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, v0, p2}, Lcom/tgs/aics/AiCustomServiceSDK;->openAiCustomService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openAiCustomService(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "aics.AiCustomServiceSDK"

    const-string v0, "call openAiCustomService but activity is null"

    .line 388
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/AiCustomServiceSDK;->openAiCustomService(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public openAiCustomService(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, p1, p2, v0}, Lcom/tgs/aics/AiCustomServiceSDK;->openAiCustomService(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFAQDetail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/AiCustomServiceSDK;->openFAQDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFAQDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 454
    iget-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    if-nez v0, :cond_0

    const-string p1, "aics.AiCustomServiceSDK"

    const-string p2, "AICS Init Not success, please call openFAQDetail after init success"

    .line 455
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/ui/activity/FAQDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 460
    invoke-static {p2}, Lcom/tgs/aics/utils/CommonUtil;->buildFAQDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string p2, "LaunchDiagnose"

    .line 462
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openForm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, p2, v0}, Lcom/tgs/aics/AiCustomServiceSDK;->openForm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openForm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    if-nez v0, :cond_0

    const-string p1, "aics.AiCustomServiceSDK"

    const-string p2, "AICS Init Not success, please call openForm after init success"

    .line 473
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/ui/activity/FormCreateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_1

    const-string v1, "LaunchDiagnose"

    .line 479
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p3, "url"

    .line 481
    invoke-static {p2}, Lcom/tgs/aics/utils/CommonUtil;->buildFormUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openQuestionnaire(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;)V
    .locals 1

    .line 500
    sput-object p7, Lcom/tgs/aics/utils/ConstantUtil;->questionnaireSubmitListener:Lcom/tgs/aics/listener/IQuestionnaireSubmitListener;

    .line 501
    new-instance p7, Landroid/content/Intent;

    const-class v0, Lcom/tgs/aics/ui/activity/QuestionnaireActivity;

    invoke-direct {p7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "tgs_aics_questionnaire_id"

    .line 502
    invoke-virtual {p7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tgs_aics_distribute_id"

    .line 503
    invoke-virtual {p7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tgs_aics_server_id"

    .line 504
    invoke-virtual {p7, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tgs_aics_player_id"

    .line 505
    invoke-virtual {p7, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tgs_aics_region_id"

    .line 506
    invoke-virtual {p7, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p1, p7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openRedemptionCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 492
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tgs/aics/ui/activity/RedemptionCodeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "server_id"

    .line 493
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "player_id"

    .line 494
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "config_id"

    .line 495
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public report(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V
    .locals 16

    move-object/from16 v15, p13

    .line 513
    :try_start_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda5;-><init>(Lcom/tgs/aics/AiCustomServiceSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V

    invoke-static {v0}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    .line 523
    invoke-direct/range {v1 .. v13}, Lcom/tgs/aics/AiCustomServiceSDK;->reportHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/tgs/aics/listener/IReportResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v15, :cond_1

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v15, v1, v0}, Lcom/tgs/aics/listener/IReportResultListener;->onResult(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public screenProtectionClear(Landroid/app/Activity;)V
    .locals 0

    .line 551
    invoke-static {p1}, Lcom/tgs/aics/utils/ScreenProtectionManager;->clear(Landroid/app/Activity;)V

    return-void
.end method

.method public screenProtectionSetUp(Landroid/app/Activity;)V
    .locals 0

    .line 546
    invoke-static {p1}, Lcom/tgs/aics/utils/ScreenProtectionManager;->setUp(Landroid/app/Activity;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 565
    sput-object p1, Lcom/tgs/aics/utils/ConstantUtil;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setUnreadMessageListener(Landroid/app/Activity;Lcom/tgs/aics/listener/IUnreadMessageCountListener;)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/tgs/aics/AiCustomServiceSDK;->isInitSuccess:Z

    if-nez v0, :cond_0

    const-string p1, "aics.AiCustomServiceSDK"

    const-string p2, "AICS Init Not success, please call setUnreadMessageListener after init success"

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    sput-object p2, Lcom/tgs/aics/utils/ConstantUtil;->gameUnreadMessageCountListener:Lcom/tgs/aics/listener/IUnreadMessageCountListener;

    .line 92
    sget-object p2, Lcom/tgs/aics/utils/ConstantUtil$InitParams;->aicsUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 93
    new-instance p2, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda4;-><init>(Lcom/tgs/aics/AiCustomServiceSDK;Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/tgs/aics/utils/CommonUtil;->getAicsServerAddress(Lcom/tgs/aics/listener/IBaseBeanListener;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/tgs/aics/AiCustomServiceSDK;->startUnreadMessageTimer(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public silentNetDiagnose(Landroid/app/Activity;Lcom/tgs/aics/listener/INetDiagnoseListener;)V
    .locals 3

    .line 430
    invoke-static {}, Lcom/tgs/aics/diagnose/DiagnoseManager;->getInstance()Lcom/tgs/aics/diagnose/DiagnoseManager;

    move-result-object v0

    new-instance v1, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/AiCustomServiceSDK;)V

    new-instance v2, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/tgs/aics/AiCustomServiceSDK$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/AiCustomServiceSDK;Lcom/tgs/aics/listener/INetDiagnoseListener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/tgs/aics/diagnose/DiagnoseManager;->startDiagnose(Landroid/content/Context;Lcom/tgs/aics/diagnose/Config;Lcom/tgs/aics/diagnose/listener/OnDiagnoseProgressChange;Lcom/tgs/aics/diagnose/listener/OnDiagnoseFinish;)Z

    return-void
.end method
