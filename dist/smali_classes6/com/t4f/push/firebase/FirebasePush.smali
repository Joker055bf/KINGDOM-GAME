.class public Lcom/t4f/push/firebase/FirebasePush;
.super Ljava/lang/Object;
.source "FirebasePush.java"


# static fields
.field private static final mFirebaseMessage:Lcom/t4f/push/firebase/FirebasePush;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoInitEnabled:Z

.field private mOnMessageReceive:Lcom/t4f/sdk/core/OnSDKChange;

.field private mPermissionAlertDialog:Landroid/app/AlertDialog;

.field private mTokenUpdate:Lcom/t4f/sdk/core/OnSDKChange;

.field private spKey:Ljava/lang/String;

.field private spName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/t4f/push/firebase/FirebasePush;

    invoke-direct {v0}, Lcom/t4f/push/firebase/FirebasePush;-><init>()V

    sput-object v0, Lcom/t4f/push/firebase/FirebasePush;->mFirebaseMessage:Lcom/t4f/push/firebase/FirebasePush;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mAutoInitEnabled:Z

    const-string v0, "tgs.firebase.push"

    .line 48
    iput-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->spName:Ljava/lang/String;

    const-string v0, "isRequested"

    .line 49
    iput-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->spKey:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/t4f/push/firebase/FirebasePush;
    .locals 1

    .line 536
    sget-object v0, Lcom/t4f/push/firebase/FirebasePush;->mFirebaseMessage:Lcom/t4f/push/firebase/FirebasePush;

    return-object v0
.end method

.method private getNotificationRequestStatus()Z
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->spName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->spKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNotificationRequestStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic lambda$requestInstanceId$0(Lcom/t4f/sdk/core/OnSDKFinish;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 257
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Succeed request firebase instance id."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const-string v1, "Succeed"

    .line 258
    invoke-static {v0, v1, p1, p0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method static synthetic lambda$requestPermission$6(Lcom/t4f/sdk/core/OnSDKFinish;Ljava/lang/Boolean;)V
    .locals 2

    .line 444
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x7d0

    const-string v1, "Grand permission."

    .line 445
    invoke-static {p1, v1, v0, p0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d1

    const-string v1, "Deny grand permission."

    .line 447
    invoke-static {p1, v1, v0, p0}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    :goto_0
    return-void
.end method

.method private notifyTokenReceived(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mTokenUpdate:Lcom/t4f/sdk/core/OnSDKChange;

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v0, p1}, Lcom/t4f/sdk/core/OnSDKChange;->onSdkChanged(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private readAssertJson(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "Fail read firebase push assert json while open stream invalid.name="

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 186
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 191
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    .line 213
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v1

    .line 196
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/t4f/json/Json;->json(Ljava/lang/String;)Lcom/t4f/json/Json;

    move-result-object v4

    if-nez v4, :cond_4

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail read firebase push assert json while text invalid.name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " json="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    .line 213
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v1

    :cond_4
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 210
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail read firebase push assert json.name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, " e="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v0, p1, v2

    .line 213
    invoke-static {p1}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_3
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v1, p2, v2

    invoke-static {p2}, Lcom/t4f/utils/Utils;->closeSafe([Ljava/io/Closeable;)V

    .line 214
    throw p1

    :cond_5
    :goto_4
    return-object v1
.end method

.method private saveNotificationRequestStatus()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->spName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->spKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "saveNotificationRequestStatus."

    .line 512
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authInitEnabled(Z)Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mAutoInitEnabled:Z

    if-eq p1, v0, :cond_0

    .line 324
    iput-boolean p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mAutoInitEnabled:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkDependencyAvailable(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail check firebase push dependency available while context invalid."

    .line 337
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d5

    const-string v1, "Context invalid"

    .line 338
    invoke-static {p1, v1, v0, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "To init firebase push before check firebase dependency available."

    .line 342
    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/t4f/push/firebase/FirebasePush;->initial(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 344
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Fail check firebase dependency available while init failed."

    .line 345
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d7

    const-string v1, "Initial failed."

    .line 346
    invoke-static {p1, v1, v0, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void

    .line 351
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    if-nez p1, :cond_3

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_3
    const/16 v0, 0x7d1

    .line 353
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Checked."

    invoke-static {v0, v1, p1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method public initial(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Not need initial firebase push while already initialed."

    .line 67
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const-string v1, "Already initialed."

    .line 68
    invoke-static {v0, v1, v3, v5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    :cond_0
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/16 v4, 0x7d7

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Fail initial firebase push while context invalid."

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v0, "Context invalid."

    .line 75
    invoke-static {v4, v0, v3, v5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    :cond_2
    const-string v7, "google-services.json"

    .line 79
    invoke-direct {v6, v0, v7}, Lcom/t4f/push/firebase/FirebasePush;->readAssertJson(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 80
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "google-services-desktop.json"

    invoke-direct {v6, v0, v7}, Lcom/t4f/push/firebase/FirebasePush;->readAssertJson(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_13

    .line 81
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_4

    goto/16 :goto_c

    .line 86
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_5

    goto/16 :goto_b

    :cond_5
    const-string v8, "project_info"

    .line 92
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v9, "project_id"

    .line 93
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    move-object v8, v3

    :goto_2
    if-eqz v8, :cond_11

    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_7

    goto/16 :goto_a

    :cond_7
    const-string v4, "client"

    .line 99
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 100
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    goto :goto_3

    :cond_8
    const/4 v9, -0x1

    :goto_3
    move v12, v2

    move-object v10, v3

    move-object v11, v10

    :goto_4
    if-ge v12, v9, :cond_10

    .line 104
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_9

    goto :goto_9

    :cond_9
    const-string v14, "client_info"

    .line 107
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_a

    const-string v15, "android_client_info"

    .line 108
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_5

    :cond_a
    move-object v15, v3

    :goto_5
    if-eqz v15, :cond_b

    const-string v7, "package_name"

    .line 109
    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_b
    move-object v7, v3

    :goto_6
    if-eqz v7, :cond_f

    .line 110
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_9

    :cond_c
    const-string v7, "mobilesdk_app_id"

    .line 113
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "api_key"

    .line 114
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 115
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    goto :goto_7

    :cond_d
    const/4 v13, -0x1

    :goto_7
    move v14, v2

    :goto_8
    if-ge v14, v13, :cond_f

    .line 118
    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_e

    const-string v2, "current_key"

    .line 119
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e

    move-object v11, v2

    goto :goto_9

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto :goto_8

    :cond_f
    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v8

    move-object v4, v11

    move-object/from16 v5, p2

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/t4f/push/firebase/FirebasePush;->initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    move-result v0

    return v0

    .line 95
    :cond_11
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail initial firebase push while project id invalid."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v0, "Project id invalid."

    .line 96
    invoke-static {v4, v0, v3, v5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    const/4 v1, 0x0

    return v1

    :cond_12
    :goto_b
    move v1, v2

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Fail initial firebase push while game app package name invalid."

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v0, "Game app package name invalid."

    .line 89
    invoke-static {v4, v0, v3, v5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_13
    :goto_c
    move v1, v2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fail initial firebase push while json invalid."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string v0, "Json invalid."

    .line 83
    invoke-static {v4, v0, v3, v5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1
.end method

.method public initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 4

    const/16 v0, 0x7d5

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail initial firebase push while context INVALID."

    .line 139
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Context invalid."

    .line 140
    invoke-static {v0, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_0
    if-eqz p2, :cond_8

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_7

    .line 146
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p4, :cond_6

    .line 150
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result v0

    const/16 v3, 0x7d0

    if-eqz v0, :cond_4

    const-string p1, "Not need initial firebase push while already initialed."

    .line 155
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Already initialed."

    .line 156
    invoke-static {v3, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    .line 160
    :cond_4
    :try_start_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p2

    .line 161
    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p2

    .line 162
    invoke-static {p1, p2}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    .line 163
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Fail initial firebase push."

    .line 164
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Initial failed."

    const/16 p2, 0x7d1

    .line 165
    invoke-static {p2, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_5
    const-string p1, "Succeed initial firebase push."

    .line 168
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 169
    invoke-static {v3, v2, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception request firebase push token while initialing.e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception.e="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-static {p2, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_6
    :goto_0
    const-string p1, "Fail initial firebase push while api key INVALID."

    .line 151
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Api key invalid."

    .line 152
    invoke-static {v0, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_7
    :goto_1
    const-string p1, "Fail initial firebase push while project id INVALID."

    .line 147
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Project id invalid."

    .line 148
    invoke-static {v0, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1

    :cond_8
    :goto_2
    const-string p1, "Fail initial firebase push while app id INVALID."

    .line 143
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "App id invalid."

    .line 144
    invoke-static {v0, p1, v2, p5}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v1
.end method

.method public isInitialed()Z
    .locals 2

    const/4 v0, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method synthetic lambda$requestPermission$2$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Landroid/content/DialogInterface;)V
    .locals 3

    const/16 v0, 0x7d3

    const-string v1, "Canceled allow permission."

    const/4 v2, 0x0

    .line 406
    invoke-static {v0, v1, v2, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 407
    iget-object p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 410
    iput-object v2, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    .line 412
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Canceled allow permission dialog.isCurrent="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$requestPermission$3$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Landroid/content/DialogInterface;)V
    .locals 3

    const/16 v0, 0x7d1

    const-string v1, ""

    const/4 v2, 0x0

    .line 415
    invoke-static {v0, v1, v2, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 416
    iget-object p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 419
    iput-object v2, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    .line 421
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Dismiss allow permission dialog.isCurrent="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$requestPermission$4$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 425
    invoke-direct {p0}, Lcom/t4f/push/firebase/FirebasePush;->saveNotificationRequestStatus()V

    const-string p4, ""

    const/4 v0, 0x0

    const/16 v1, 0x7d1

    .line 426
    invoke-static {v1, p4, v0, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 427
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x3e8

    invoke-virtual {p2, p1, p4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 428
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestPermission$5$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 431
    invoke-direct {p0}, Lcom/t4f/push/firebase/FirebasePush;->saveNotificationRequestStatus()V

    const-string p3, ""

    const/4 v0, 0x0

    const/16 v1, 0x7d1

    .line 432
    invoke-static {v1, p3, v0, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 433
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$requestToken$1$com-t4f-push-firebase-FirebasePush(Lcom/t4f/sdk/core/OnSDKFinish;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Succeed request firebase app token."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const-string v1, "Succeed"

    .line 291
    invoke-static {v0, v1, p2, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 293
    invoke-direct {p0, p2}, Lcom/t4f/push/firebase/FirebasePush;->notifyTokenReceived(Ljava/lang/String;)Z

    return-void

    .line 284
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail request firebase app token."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p2, "Request result failed."

    const/4 v0, 0x0

    const/16 v1, 0x7d1

    .line 285
    invoke-static {v1, p2, v0, p1}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return-void
.end method

.method public notifyMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mOnMessageReceive:Lcom/t4f/sdk/core/OnSDKChange;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received firebase message."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_1
    new-instance p1, Lcom/t4f/json/Json;

    invoke-direct {p1}, Lcom/t4f/json/Json;-><init>()V

    const-string v3, "body"

    invoke-virtual {p1, v3, v2}, Lcom/t4f/json/Json;->putSafe(Ljava/lang/String;Ljava/lang/Object;)Lcom/t4f/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/json/Json;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 492
    :goto_1
    invoke-interface {v0, p1}, Lcom/t4f/sdk/core/OnSDKChange;->onSdkChanged(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public requestInstanceId(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result v0

    const/16 v1, 0x7d7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "To init firebase push before request instance id."

    .line 239
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1, v3}, Lcom/t4f/push/firebase/FirebasePush;->initial(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    .line 241
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Fail request firebase push instance id while init failed."

    .line 242
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Initial failed."

    .line 243
    invoke-static {v1, p1, v3, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    .line 247
    :cond_0
    invoke-static {}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance()Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Fail request firebase push instance id while installations invalid.installations="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Installations invalid."

    .line 251
    invoke-static {v1, p1, v3, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    .line 254
    :cond_2
    new-instance p1, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda6;-><init>(Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public requestPermission(Landroid/app/Activity;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 7

    .line 364
    iput-object p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail request firebase push permission while activity is invalid."

    .line 367
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const/16 p1, 0x7d5

    const-string v2, "Activity is invalid."

    .line 368
    invoke-static {p1, v2, v1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v0

    .line 370
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, ""

    const/16 v5, 0x7d0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    const-string p1, "Not need request firebase push permission while less than android 13."

    .line 371
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 372
    invoke-static {v5, v4, v1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v6

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/t4f/push/firebase/FirebasePush;->getNotificationRequestStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "already request permission POST_NOTIFICATIONS"

    .line 380
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 381
    invoke-static {v5, v4, v1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v6

    :cond_2
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 385
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const-string p1, "Not need request firebase push permission while POST_NOTIFICATIONS granted."

    .line 387
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Already grand permission."

    .line 388
    invoke-static {v5, p1, v1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v6

    .line 391
    :cond_3
    invoke-virtual {p1, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "Show custom request firebase push permission ui."

    .line 392
    invoke-static {v1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    .line 400
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/t4f/push/firebase/FirebasePush;->mPermissionAlertDialog:Landroid/app/AlertDialog;

    .line 403
    :cond_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 404
    sget v2, Lcom/t4f/android/R$string;->t4f_str_request_permission:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 405
    new-instance v2, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda1;-><init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 414
    new-instance v2, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda2;-><init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 423
    sget v2, Lcom/t4f/android/R$string;->t4f_str_push_permission_request_msg:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 424
    sget v0, Lcom/t4f/android/R$string;->t4f_str_sure:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda3;-><init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;Landroid/app/Activity;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 430
    sget v0, Lcom/t4f/android/R$string;->t4f_str_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda4;-><init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;)V

    const/4 p2, -0x2

    invoke-virtual {v1, p2, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 435
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 436
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_5
    return v6

    .line 439
    :cond_6
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_7

    const-string v0, "Request firebase push permission while activity is compat activity"

    .line 440
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/t4f/push/firebase/FirebasePush;->saveNotificationRequestStatus()V

    .line 442
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda5;-><init>(Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    .line 450
    invoke-virtual {p1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return v6

    :cond_7
    const-string v0, "Directly request firebase push permission."

    .line 453
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/t4f/push/firebase/FirebasePush;->saveNotificationRequestStatus()V

    .line 455
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x44c

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 456
    invoke-static {v5, v0, v1, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v6
.end method

.method public requestToken(Landroid/content/Context;Lcom/t4f/sdk/core/OnSDKFinish;)Z
    .locals 3

    .line 269
    invoke-virtual {p0}, Lcom/t4f/push/firebase/FirebasePush;->isInitialed()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x7d7

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Fail request firebase app token while NOT initialed."

    .line 270
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Not initialed."

    .line 271
    invoke-static {v1, p1, v0, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    .line 274
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Fail request firebase app token while firebase messaging invalid."

    .line 276
    invoke-static {p1}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    const-string p1, "Firebase messaging invalid."

    .line 277
    invoke-static {v1, p1, v0, p2}, Lcom/t4f/utils/Utils;->notifySdkFinish(ILjava/lang/String;Ljava/lang/String;Lcom/t4f/sdk/core/OnSDKFinish;)Z

    return v2

    :cond_1
    const-string v0, "Requesting firebase app token."

    .line 280
    invoke-static {v0}, Lcom/t4f/debug/Debug;->D(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/t4f/push/firebase/FirebasePush;->mAutoInitEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    .line 282
    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/t4f/push/firebase/FirebasePush$$ExternalSyntheticLambda0;-><init>(Lcom/t4f/push/firebase/FirebasePush;Lcom/t4f/sdk/core/OnSDKFinish;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public setMessageReceivedListener(Lcom/t4f/sdk/core/OnSDKChange;)Z
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mOnMessageReceive:Lcom/t4f/sdk/core/OnSDKChange;

    const/4 p1, 0x1

    return p1
.end method

.method public setTokenUpdateListener(Lcom/t4f/sdk/core/OnSDKChange;)Z
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/t4f/push/firebase/FirebasePush;->mTokenUpdate:Lcom/t4f/sdk/core/OnSDKChange;

    const/4 p1, 0x1

    return p1
.end method
