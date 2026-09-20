.class public Lcom/mobgame/api/PostTask;
.super Landroid/os/AsyncTask;
.source "PostTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/api/PostTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;

.field private callback:Lcom/mobgame/api/PostTask$Callback;

.field private isEncrypted:Z

.field private isInviteFriend:Z

.field private mActivity:Landroid/app/Activity;

.field private postParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZLcom/mobgame/api/PostTask$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/mobgame/api/PostTask;->isInviteFriend:Z

    .line 39
    iput-object p1, p0, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mobgame/api/PostTask;->postParams:Ljava/util/Map;

    .line 41
    iput-boolean p3, p0, Lcom/mobgame/api/PostTask;->isEncrypted:Z

    .line 42
    iput-object p4, p0, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZZLjava/lang/String;Lcom/mobgame/api/PostTask$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/mobgame/api/PostTask$Callback;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/mobgame/api/PostTask;->postParams:Ljava/util/Map;

    .line 49
    iput-boolean p3, p0, Lcom/mobgame/api/PostTask;->isEncrypted:Z

    .line 50
    iput-object p6, p0, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    .line 51
    iput-boolean p4, p0, Lcom/mobgame/api/PostTask;->isInviteFriend:Z

    .line 52
    iput-object p5, p0, Lcom/mobgame/api/PostTask;->accountId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobgame/api/PostTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "sign"

    const-string v2, "PostTask"

    const-string v3, "doInBackground: 1 "

    const-string v4, "doInBackground: "

    const/4 v5, 0x0

    .line 62
    :try_start_0
    invoke-static {}, Lcom/mobgame/MobGameSDK;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 63
    invoke-static {}, Lcom/mobgame/api/RestfulApi;->getCommonClient()Lokhttp3/OkHttpClient;

    move-result-object v7

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, v1, Lcom/mobgame/api/PostTask;->postParams:Ljava/util/Map;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 67
    invoke-static {v5, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v4

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    :cond_0
    new-instance v3, Lokhttp3/FormBody$Builder;

    invoke-direct {v3}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 71
    iget-object v4, v1, Lcom/mobgame/api/PostTask;->postParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 72
    iget-object v9, v1, Lcom/mobgame/api/PostTask;->postParams:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v4

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground: 2 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doInBackground: 3 "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, v1, Lcom/mobgame/api/PostTask;->isEncrypted:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-boolean v3, v1, Lcom/mobgame/api/PostTask;->isEncrypted:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "mobgame-advertising-id"

    const-string v9, "mobgame-distributor"

    const-string v10, "mobgame_lang"

    const-string v11, ""

    const-string v12, "mobgame-orientation"

    const-string v13, "mobgame-token"

    const-string v14, "mobgame-network"

    const-string v15, "mobgame-app-version-code"

    const-string v5, "mobgame-app-version"

    move-object/from16 v16, v7

    const-string v7, "mobgame-appkey"

    move-object/from16 v17, v8

    const-string v8, "mobgame-sdk-version"

    move-object/from16 v18, v9

    const-string v9, "mobgame-resolution"

    move-object/from16 v19, v10

    const-string v10, "mobgame-os"

    move-object/from16 v20, v12

    const-string v12, "mobgame-device"

    move-object/from16 v21, v11

    const-string v11, "Bearer "

    move-object/from16 v22, v13

    const-string v13, "Authorization"

    move-object/from16 v23, v14

    const-string v14, "POST"

    if-eqz v3, :cond_5

    .line 80
    :try_start_1
    iget-object v3, v1, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_3

    move-object/from16 v24, v15

    .line 82
    iget-boolean v15, v1, Lcom/mobgame/api/PostTask;->isInviteFriend:Z

    if-eqz v15, :cond_2

    .line 83
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v5

    const-string v5, "doInBackground: 4 "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v15, v1, Lcom/mobgame/api/PostTask;->isInviteFriend:Z

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v15, v1, Lcom/mobgame/api/PostTask;->accountId:Ljava/lang/String;

    .line 86
    invoke-static {v6, v15}, Lcom/mobgame/utils/EncryptionUtils;->getSignedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v25, v5

    .line 91
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 92
    invoke-static {v6}, Lcom/mobgame/utils/EncryptionUtils;->getSignedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v25, v5

    move-object/from16 v24, v15

    .line 98
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: 5 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v14, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 105
    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 106
    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 108
    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v25

    invoke-virtual {v0, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 109
    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getGameVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v24

    invoke-virtual {v0, v6, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 110
    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, v23

    invoke-virtual {v0, v15, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 112
    invoke-static {v4}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 114
    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 115
    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    move-object/from16 v3, v16

    .line 117
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-boolean v3, v1, Lcom/mobgame/api/PostTask;->isInviteFriend:Z

    if-eqz v3, :cond_4

    .line 119
    iget-object v0, v1, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    if-eqz v0, :cond_6

    const-string v3, "success"

    .line 120
    invoke-interface {v0, v3}, Lcom/mobgame/api/PostTask$Callback;->onSuccess(Ljava/lang/String;)V

    const-string v0, "doInBackground: 6 "

    .line 121
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 124
    :cond_4
    invoke-static {v0}, Lcom/mobgame/model/EncodedResponse;->parse(Ljava/lang/String;)Lcom/mobgame/model/EncodedResponse;

    move-result-object v0

    .line 125
    iget-object v3, v1, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    if-eqz v3, :cond_6

    .line 126
    invoke-virtual {v0}, Lcom/mobgame/model/EncodedResponse;->getDecodedData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mobgame/api/PostTask$Callback;->onSuccess(Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground: 7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mobgame/model/EncodedResponse;->getDecodedData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    move-object v6, v15

    move-object/from16 v0, v21

    move-object/from16 v3, v22

    move-object/from16 v15, v23

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v2

    .line 132
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v22, v0

    iget-object v0, v1, Lcom/mobgame/api/PostTask;->url:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v14, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getOSInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 138
    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 139
    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/GameConfigs;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 141
    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 142
    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getGameVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 143
    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/game/sdk/comon/config/AuthenConfigs;->getInstance()Lcom/game/sdk/comon/config/AuthenConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/comon/config/AuthenConfigs;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 145
    invoke-static {v3}, Lcom/game/sdk/comon/utils/DeviceUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/game/sdk/comon/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 147
    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/api/PostTask;->mActivity:Landroid/app/Activity;

    .line 148
    invoke-static {v2}, Lcom/game/sdk/comon/utils/DeviceUtils;->getAdvertisingID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/comon/utils/Utils;->stringNormalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    move-object/from16 v2, v17

    .line 150
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: 8 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, v1, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    if-eqz v2, :cond_6

    .line 153
    invoke-interface {v2, v0}, Lcom/mobgame/api/PostTask$Callback;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    iget-object v2, v1, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    if-eqz v2, :cond_6

    .line 160
    invoke-interface {v2, v0}, Lcom/mobgame/api/PostTask$Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public setCallback(Lcom/mobgame/api/PostTask$Callback;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/mobgame/api/PostTask;->callback:Lcom/mobgame/api/PostTask$Callback;

    return-void
.end method
