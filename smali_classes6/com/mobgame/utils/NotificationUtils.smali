.class public Lcom/mobgame/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/mobgame/utils/NotificationUtils;

.field static listNtf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/NtfModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private deeplink:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private mainClass:Ljava/lang/Class;

.field private message:Ljava/lang/String;

.field private smallIcon:I

.field private title:Ljava/lang/String;

.field private typeLink:Ljava/lang/String;

.field private urlBanner:Ljava/lang/String;

.field private urlDeepLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mobgame/utils/NotificationUtils;->listNtf:Ljava/util/ArrayList;

    const-string v0, "NotificationUtils"

    .line 328
    sput-object v0, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static addNtf(Landroid/content/Context;Lcom/mobgame/model/NtfModel;)V
    .locals 7

    const-string v0, "shared_pref_notificatons"

    const-string v1, "ntfsString : "

    .line 213
    :try_start_0
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    :try_start_1
    const-string v4, ""

    .line 216
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    :cond_0
    sget-object v4, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 220
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 221
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 222
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 223
    new-instance v5, Lcom/mobgame/model/NtfModel;

    invoke-direct {v5}, Lcom/mobgame/model/NtfModel;-><init>()V

    .line 224
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/mobgame/model/NtfModel;

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobgame/model/NtfModel;

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 230
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    :cond_1
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p0, v0, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    sget-object p0, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static countNtfs(Landroid/content/Context;)I
    .locals 0

    .line 321
    :try_start_0
    invoke-static {p0}, Lcom/mobgame/utils/NotificationUtils;->getNtfs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDrawableSmall(Landroid/content/Context;)I
    .locals 1

    .line 191
    sget v0, Lcom/mobgame/R$drawable;->ic_stat_mob:I

    invoke-static {p0, v0}, Lcom/mobgame/utils/Res;->drawableResource(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mobgame/utils/NotificationUtils;
    .locals 1

    .line 349
    sget-object v0, Lcom/mobgame/utils/NotificationUtils;->instance:Lcom/mobgame/utils/NotificationUtils;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/mobgame/utils/NotificationUtils;

    invoke-direct {v0, p0}, Lcom/mobgame/utils/NotificationUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mobgame/utils/NotificationUtils;->instance:Lcom/mobgame/utils/NotificationUtils;

    .line 352
    :cond_0
    sget-object p0, Lcom/mobgame/utils/NotificationUtils;->instance:Lcom/mobgame/utils/NotificationUtils;

    return-object p0
.end method

.method public static getListNtfFromAfterAuth()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/NtfModel;",
            ">;"
        }
    .end annotation

    .line 196
    :try_start_0
    sget-object v0, Lcom/mobgame/utils/NotificationUtils;->listNtf:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    sget-object v0, Lcom/mobgame/utils/NotificationUtils;->listNtf:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getNtfs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/NtfModel;",
            ">;"
        }
    .end annotation

    const-string v0, "ntfsString : "

    :try_start_0
    const-string v1, "shared_pref_notificatons"

    .line 294
    invoke-static {p0, v1}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 296
    sget-object v1, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v0, ""

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 298
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 299
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 301
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 302
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 303
    new-instance v3, Lcom/mobgame/model/NtfModel;

    invoke-direct {v3}, Lcom/mobgame/model/NtfModel;-><init>()V

    const-string v4, "id"

    .line 304
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mobgame/model/NtfModel;->setId(I)V

    const-string v4, "title"

    .line 305
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mobgame/model/NtfModel;->setTitle(Ljava/lang/String;)V

    const-string v4, "noti"

    .line 306
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/mobgame/model/NtfModel;->setNoti(Z)V

    .line 307
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 313
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 314
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static hasNtf(Landroid/content/Context;)Z
    .locals 3

    .line 272
    sget-object v0, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NTF : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mobgame/utils/NotificationUtils;->getNtfs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p0}, Lcom/mobgame/utils/NotificationUtils;->getNtfs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static hasNtf(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-static {p0}, Lcom/mobgame/utils/NotificationUtils;->getNtfs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobgame/model/NtfModel;

    .line 281
    invoke-virtual {v1}, Lcom/mobgame/model/NtfModel;->getId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static removeNtf(Landroid/content/Context;I)V
    .locals 8

    const-string v0, "shared_pref_notificatons"

    .line 244
    sget-object v1, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeNotificationId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 249
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 251
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 252
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 253
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 254
    new-instance v6, Lcom/mobgame/model/NtfModel;

    invoke-direct {v6}, Lcom/mobgame/model/NtfModel;-><init>()V

    const-string v7, "id"

    .line 255
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mobgame/model/NtfModel;->setId(I)V

    const-string v7, "title"

    .line 256
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mobgame/model/NtfModel;->setTitle(Ljava/lang/String;)V

    const-string v7, "noti"

    .line 257
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/mobgame/model/NtfModel;->setNoti(Z)V

    .line 259
    invoke-virtual {v6}, Lcom/mobgame/model/NtfModel;->getId()I

    move-result v5

    if-eq p1, v5, :cond_0

    .line 260
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lorg/json/JSONArray;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    :cond_1
    sget-object p1, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationId remove():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p0, v0, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setListNtfFromAfterAuth(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/NtfModel;",
            ">;)V"
        }
    .end annotation

    .line 205
    :try_start_0
    sput-object p0, Lcom/mobgame/utils/NotificationUtils;->listNtf:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/mobgame/utils/NotificationUtils;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/mobgame/utils/NotificationUtils;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/mobgame/utils/NotificationUtils;->smallIcon:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setDeeplink(Ljava/lang/String;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->deeplink:Ljava/lang/String;

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setMainClass(Ljava/lang/Class;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    .line 413
    iput p1, p0, Lcom/mobgame/utils/NotificationUtils;->smallIcon:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/mobgame/utils/NotificationUtils;
    .locals 0

    if-eqz p1, :cond_0

    .line 383
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 385
    iput-object p1, p0, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public showNotification()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "mainClass:"

    const-string v2, "channel"

    const-string v3, "channel des"

    .line 37
    sget-object v4, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showNotification:title="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    sget-object v4, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 42
    :try_start_1
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    const-string v4, "shared_pref_main_activity"

    invoke-static {v0, v4}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 50
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 54
    iget-object v5, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 56
    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 57
    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 58
    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 59
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 60
    iget-object v5, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 61
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lt v7, v8, :cond_1

    .line 63
    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-nez v7, :cond_1

    .line 65
    new-instance v7, Landroid/app/NotificationChannel;

    iget-object v8, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    const/4 v12, 0x4

    invoke-direct {v7, v8, v2, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 66
    invoke-virtual {v7, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v7, v11}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/16 v2, 0x9

    new-array v2, v2, [J

    const-wide/16 v13, 0x64

    aput-wide v13, v2, v10

    const-wide/16 v13, 0xc8

    aput-wide v13, v2, v11

    const/4 v3, 0x2

    const-wide/16 v15, 0x12c

    aput-wide v15, v2, v3

    const/4 v3, 0x3

    const-wide/16 v17, 0x190

    aput-wide v17, v2, v3

    const-wide/16 v19, 0x1f4

    aput-wide v19, v2, v12

    const/4 v3, 0x5

    aput-wide v17, v2, v3

    const/4 v3, 0x6

    aput-wide v15, v2, v3

    aput-wide v13, v2, v9

    const/16 v3, 0x8

    aput-wide v17, v2, v3

    .line 68
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 69
    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 72
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    .line 74
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    .line 75
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    .line 76
    invoke-static {v3}, Lcom/mobgame/utils/NotificationUtils;->getDrawableSmall(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 77
    invoke-static {v0, v4, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    .line 80
    invoke-static {v2}, Lcom/mobgame/utils/NotificationUtils;->countNtfs(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 85
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "title"

    .line 88
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "message"

    .line 89
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "deep_link"

    .line 90
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->deeplink:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 98
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 100
    invoke-virtual {v3, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 101
    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3bf

    const/high16 v6, 0x8000000

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 105
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public showNotificationWithImage()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "mainClass:"

    const-string v2, "channel with image"

    const-string v3, "channel img des"

    .line 115
    sget-object v4, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showNotification:title="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    sget-object v4, Lcom/mobgame/utils/NotificationUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 120
    :try_start_1
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    const-string v4, "shared_pref_main_activity"

    invoke-static {v0, v4}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 128
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/comon/utils/DeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    mul-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 133
    iget-object v5, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mobgame/utils/NotificationUtils;->imageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v6}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v6}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    const/16 v6, 0x200

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/RequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v5

    .line 134
    invoke-interface {v5}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 135
    new-instance v6, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 137
    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 138
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 139
    iget-object v5, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 140
    iget-object v5, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 141
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lt v7, v8, :cond_1

    .line 143
    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    if-nez v7, :cond_1

    .line 145
    new-instance v7, Landroid/app/NotificationChannel;

    iget-object v8, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    const/4 v12, 0x4

    invoke-direct {v7, v8, v2, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    invoke-virtual {v7, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7, v11}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/16 v2, 0x9

    new-array v2, v2, [J

    const-wide/16 v13, 0x64

    aput-wide v13, v2, v10

    const-wide/16 v13, 0xc8

    aput-wide v13, v2, v11

    const/4 v3, 0x2

    const-wide/16 v15, 0x12c

    aput-wide v15, v2, v3

    const/4 v3, 0x3

    const-wide/16 v17, 0x190

    aput-wide v17, v2, v3

    const-wide/16 v19, 0x1f4

    aput-wide v19, v2, v12

    const/4 v3, 0x5

    aput-wide v17, v2, v3

    const/4 v3, 0x6

    aput-wide v15, v2, v3

    aput-wide v13, v2, v9

    const/16 v3, 0x8

    aput-wide v17, v2, v3

    .line 148
    invoke-virtual {v7, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 149
    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 152
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    iget-object v7, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    .line 155
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    .line 156
    invoke-static {v3}, Lcom/mobgame/utils/NotificationUtils;->getDrawableSmall(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 157
    invoke-static {v0, v4, v4, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    .line 160
    invoke-static {v2}, Lcom/mobgame/utils/NotificationUtils;->countNtfs(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v9}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 165
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "title"

    .line 168
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "message"

    .line 169
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "deep_link"

    .line 170
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->deeplink:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-static {v3}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v3

    .line 177
    iget-object v4, v1, Lcom/mobgame/utils/NotificationUtils;->mainClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroidx/core/app/TaskStackBuilder;

    .line 179
    invoke-virtual {v3, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 180
    iget-object v3, v1, Lcom/mobgame/utils/NotificationUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3bf

    const/high16 v6, 0x8000000

    invoke-static {v3, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 184
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
