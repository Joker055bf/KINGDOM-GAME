.class public Lcom/crosspromotion/sdk/bean/AdBean;
.super Ljava/lang/Object;


# instance fields
.field private appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

.field private isWebView:Z

.field private mClktrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mExpire:J

.field private mFailed:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFillTime:J

.field private mImptrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLink:Ljava/lang/String;

.field private mLocalImgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalRes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainimgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMk:Lcom/crosspromotion/sdk/bean/AdMark;

.field private mOriData:Ljava/lang/String;

.field private mRatingCount:I

.field private mResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRevenue:D

.field private mRevenuePrecision:I

.field private mSuccess:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTitle:Ljava/lang/String;

.field private videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mSuccess:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mFailed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static getArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toAdBean(Ljava/lang/String;)Lcom/crosspromotion/sdk/bean/AdBean;
    .locals 6

    const-string v0, "mClktrackers"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-direct {v1}, Lcom/crosspromotion/sdk/bean/AdBean;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "mOriData"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mOriData:Ljava/lang/String;

    const-string p0, "mTitle"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mTitle:Ljava/lang/String;

    const-string p0, "mMainimgUrls"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mMainimgUrls:Ljava/util/List;

    const-string p0, "mLocalImgUrls"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mClktrackers:Ljava/util/List;

    const-string/jumbo p0, "videoBean"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v4, Lcom/crosspromotion/sdk/bean/AdVideoBean;

    invoke-direct {v4, p0}, Lcom/crosspromotion/sdk/bean/AdVideoBean;-><init>(Lorg/json/JSONObject;)V

    iput-object v4, v1, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    :cond_1
    const-string p0, "mLink"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mLink:Ljava/lang/String;

    const-string p0, "isWebView"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView:Z

    const-string p0, "mImptrackers"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mImptrackers:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mClktrackers:Ljava/util/List;

    const-string p0, "appBean"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Lcom/crosspromotion/sdk/bean/AdAppBean;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/bean/AdAppBean;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    :cond_2
    const-string p0, "mDescription"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mDescription:Ljava/lang/String;

    const-string p0, "mResources"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mResources:Ljava/util/List;

    const-string p0, "mMk"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/crosspromotion/sdk/bean/AdMark;

    invoke-direct {v0, p0}, Lcom/crosspromotion/sdk/bean/AdMark;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mMk:Lcom/crosspromotion/sdk/bean/AdMark;

    :cond_3
    const-string p0, "mExpire"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mExpire:J

    const-string p0, "mRatingCount"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mRatingCount:I

    const-string p0, "mFillTime"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mFillTime:J

    const-string p0, "mLocalRes"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    const-string p0, "mRevenue"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenue:D

    const-string p0, "mRevenuePrecision"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenuePrecision:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONObject convert AdBean error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v2
.end method

.method public static toJsonString(Lcom/crosspromotion/sdk/bean/AdBean;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "mOriData"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mOriData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mTitle"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mMainimgUrls"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMainimgUrls:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mLocalImgUrls"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "videoBean"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdVideoBean;->toJSONObject(Lcom/crosspromotion/sdk/bean/AdVideoBean;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mLink"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLink:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isWebView"

    iget-boolean v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "mImptrackers"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mImptrackers:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mClktrackers"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mClktrackers:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appBean"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdAppBean;->toJSONObject(Lcom/crosspromotion/sdk/bean/AdAppBean;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mDescription"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mResources"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mResources:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mMk"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMk:Lcom/crosspromotion/sdk/bean/AdMark;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdMark;->toJSONObject(Lcom/crosspromotion/sdk/bean/AdMark;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mExpire"

    iget-wide v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mExpire:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "mRatingCount"

    iget v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRatingCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mFillTime"

    iget-wide v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mFillTime:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "mLocalRes"

    iget-object v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    invoke-static {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mRevenue"

    iget-wide v3, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenue:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "mRevenuePrecision"

    iget p0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenuePrecision:I

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdBean convert JSONObject error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdMark()Lcom/crosspromotion/sdk/bean/AdMark;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMk:Lcom/crosspromotion/sdk/bean/AdMark;

    return-object v0
.end method

.method public getAdString()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mOriData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    if-eqz v1, :cond_0

    const-string v2, "app"

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdAppBean;->getAdObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    if-eqz v1, :cond_1

    const-string/jumbo v2, "video"

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdVideoBean;->getAdObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string v2, "imgs"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    if-eqz v1, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    const-string v2, "resources"

    invoke-static {v0, v2, v1}, Lcom/openmediation/sdk/utils/JsonUtil;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mOriData:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getClktrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mClktrackers:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFailed()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mFailed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdAppBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImptrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mImptrackers:Ljava/util/List;

    return-object v0
.end method

.method public getLocalImgUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    return-object v0
.end method

.method public getLocalResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    return-object v0
.end method

.method public getMainimgUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMainimgUrls:Ljava/util/List;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdAppBean;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mResources:Ljava/util/List;

    return-object v0
.end method

.method public getRevenue()D
    .locals 2

    iget-wide v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenue:D

    return-wide v0
.end method

.method public getRevenuePrecision()I
    .locals 1

    iget v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenuePrecision:I

    return v0
.end method

.method public getSuccess()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mSuccess:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdVideoBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mExpire:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mFillTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mExpire:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWebView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView:Z

    return v0
.end method

.method public declared-synchronized replaceOnlineResToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/crosspromotion/sdk/bean/AdBean;->setIconUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getLocalImgUrl()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    const-string v5, ""

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Lcom/crosspromotion/sdk/bean/AdBean;->setLocalImgUrl(Ljava/util/List;)V

    goto :goto_6

    :cond_4
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/crosspromotion/sdk/bean/AdBean;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/bean/AdBean;->getLocalResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_8

    const-string v5, ""

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-ge v1, v3, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-virtual {p0, v2}, Lcom/crosspromotion/sdk/bean/AdBean;->setLocalResources(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_6
    monitor-exit p0

    return-void

    :cond_c
    :goto_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAppBean(Lcom/crosspromotion/sdk/bean/AdAppBean;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    return-void
.end method

.method public setClktrackers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mClktrackers:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setExpire(J)V
    .locals 0

    iput-wide p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mExpire:J

    return-void
.end method

.method public setFillTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mFillTime:J

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->appBean:Lcom/crosspromotion/sdk/bean/AdAppBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/bean/AdAppBean;->setReplaceIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImptrackers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mImptrackers:Ljava/util/List;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLink:Ljava/lang/String;

    return-void
.end method

.method public setLocalImgUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalImgUrls:Ljava/util/List;

    return-void
.end method

.method public setLocalResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mLocalRes:Ljava/util/List;

    return-void
.end method

.method public setMainimgUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMainimgUrls:Ljava/util/List;

    return-void
.end method

.method public setMk(Lcom/crosspromotion/sdk/bean/AdMark;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mMk:Lcom/crosspromotion/sdk/bean/AdMark;

    return-void
.end method

.method public setOriData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mOriData:Ljava/lang/String;

    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mResources:Ljava/util/List;

    return-void
.end method

.method public setRevenue(D)V
    .locals 0

    iput-wide p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenue:D

    return-void
.end method

.method public setRevenuePrecision(I)V
    .locals 0

    iput p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mRevenuePrecision:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoBean(Lcom/crosspromotion/sdk/bean/AdVideoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/bean/AdBean;->videoBean:Lcom/crosspromotion/sdk/bean/AdVideoBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/crosspromotion/sdk/bean/AdVideoBean;->setReplaceUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWebView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crosspromotion/sdk/bean/AdBean;->isWebView:Z

    return-void
.end method
