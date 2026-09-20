.class public Lcom/mobgame/utils/GifHelper;
.super Ljava/lang/Object;
.source "GifHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GifHelper"

.field private static gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

.field private static index:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/mobgame/utils/GifHelper;->saveGifData(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V

    return-void
.end method

.method static synthetic access$100()Lcom/mobgame/model/giftimage/GifData;
    .locals 1

    .line 16
    sget-object v0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/mobgame/model/giftimage/ImageData;Z)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/mobgame/utils/GifHelper;->resetGifImage(Landroid/content/Context;Lcom/mobgame/model/giftimage/ImageData;Z)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .line 16
    sget v0, Lcom/mobgame/utils/GifHelper;->index:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    .line 16
    sput p0, Lcom/mobgame/utils/GifHelper;->index:I

    return p0
.end method

.method static synthetic access$308()I
    .locals 2

    .line 16
    sget v0, Lcom/mobgame/utils/GifHelper;->index:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mobgame/utils/GifHelper;->index:I

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lcom/mobgame/utils/GifHelper;->updateNotificationBanner(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/mobgame/utils/GifHelper;->runGif(Landroid/content/Context;JLjava/util/ArrayList;)V

    return-void
.end method

.method public static fetchFramesImage(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    .line 33
    new-instance v0, Lcom/mobgame/utils/GifHelper$1;

    invoke-direct {v0, p0}, Lcom/mobgame/utils/GifHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0, v0}, Lcom/mobgame/model/giftimage/GifData;->fetchFrameImages(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData$FetchDataListener;)V

    return-void
.end method

.method public static getGifData(Landroid/content/Context;)Lcom/mobgame/model/giftimage/GifData;
    .locals 2

    const-string v0, "shared_pref_gif"

    .line 26
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getGifData"

    .line 27
    invoke-static {v0, p0}, Lcom/game/sdk/comon/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/mobgame/model/giftimage/GifData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobgame/model/giftimage/GifData;

    return-object p0
.end method

.method public static playGif(Landroid/content/Context;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/mobgame/utils/GifHelper;->getGifData(Landroid/content/Context;)Lcom/mobgame/model/giftimage/GifData;

    move-result-object v0

    sput-object v0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    .line 55
    :cond_0
    sget-object v0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    invoke-virtual {v0}, Lcom/mobgame/model/giftimage/GifData;->getImages()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 58
    invoke-static {p0, v1, v2, v0}, Lcom/mobgame/utils/GifHelper;->runGif(Landroid/content/Context;JLjava/util/ArrayList;)V

    return-void
.end method

.method private static resetGifImage(Landroid/content/Context;Lcom/mobgame/model/giftimage/ImageData;Z)V
    .locals 0

    .line 97
    invoke-virtual {p1}, Lcom/mobgame/model/giftimage/ImageData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mobgame/utils/GifHelper;->updateNotificationBanner(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static runGif(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/giftimage/ImageData;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mobgame/utils/GifHelper$2;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/mobgame/utils/GifHelper$2;-><init>(JLandroid/content/Context;Ljava/util/ArrayList;)V

    sget-object p0, Lcom/mobgame/utils/GifHelper;->gifDataGlobal:Lcom/mobgame/model/giftimage/GifData;

    .line 83
    invoke-virtual {p0}, Lcom/mobgame/model/giftimage/GifData;->getMilisecondsToRefesh()J

    move-result-wide p0

    .line 63
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static saveGifData(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V
    .locals 2

    const-string v0, "shared_pref_gif"

    .line 20
    invoke-static {p0, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p0, v0, p1}, Lcom/mobgame/utils/Preference;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static updateNotificationBanner(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "frameImageUrl: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GifHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
