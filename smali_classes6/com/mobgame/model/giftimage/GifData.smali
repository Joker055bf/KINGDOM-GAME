.class public Lcom/mobgame/model/giftimage/GifData;
.super Ljava/lang/Object;
.source "GifData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobgame/model/giftimage/GifData$FetchDataListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/giftimage/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private milisecondsToRefesh:J

.field private numberImageLoaded:I

.field private secondsToRun:I

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GifData"

    .line 23
    iput-object v0, p0, Lcom/mobgame/model/giftimage/GifData;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/mobgame/model/giftimage/GifData;->numberImageLoaded:I

    return-void
.end method

.method static synthetic access$000(Lcom/mobgame/model/giftimage/GifData;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mobgame/model/giftimage/GifData;->increeNumberImageLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/mobgame/model/giftimage/GifData;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/mobgame/model/giftimage/GifData;->numberImageLoaded:I

    return p0
.end method

.method static synthetic access$200(Lcom/mobgame/model/giftimage/GifData;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mobgame/model/giftimage/GifData;->resetNumberImageLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/mobgame/model/giftimage/GifData;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mobgame/model/giftimage/GifData;->images:Ljava/util/ArrayList;

    return-object p0
.end method

.method private increeNumberImageLoaded()V
    .locals 1

    .line 43
    iget v0, p0, Lcom/mobgame/model/giftimage/GifData;->numberImageLoaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobgame/model/giftimage/GifData;->numberImageLoaded:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/mobgame/model/giftimage/GifData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/mobgame/model/giftimage/GifData;

    invoke-direct {v0}, Lcom/mobgame/model/giftimage/GifData;-><init>()V

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "images"

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 30
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 31
    new-instance v4, Lcom/mobgame/model/giftimage/ImageData;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mobgame/model/giftimage/ImageData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, p0}, Lcom/mobgame/model/giftimage/GifData;->setImages(Ljava/util/ArrayList;)V

    const-string p0, "millisecondsToRefresh"

    .line 35
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mobgame/model/giftimage/GifData;->setMilisecondsToRefesh(J)V

    const-string p0, "secondsToRun"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mobgame/model/giftimage/GifData;->setSecondsToRun(I)V

    return-object v0
.end method

.method private resetNumberImageLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/mobgame/model/giftimage/GifData;->numberImageLoaded:I

    return-void
.end method


# virtual methods
.method public fetchFrameImages(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData$FetchDataListener;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/mobgame/model/giftimage/GifData;->images:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mobgame/model/giftimage/GifData;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobgame/model/giftimage/ImageData;

    invoke-virtual {v3}, Lcom/mobgame/model/giftimage/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    new-instance v3, Lcom/mobgame/model/giftimage/GifData$1;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/mobgame/model/giftimage/GifData$1;-><init>(Lcom/mobgame/model/giftimage/GifData;ILcom/mobgame/model/giftimage/GifData$FetchDataListener;I)V

    .line 59
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/giftimage/ImageData;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/mobgame/model/giftimage/GifData;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMilisecondsToRefesh()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/mobgame/model/giftimage/GifData;->milisecondsToRefesh:J

    return-wide v0
.end method

.method public getSecondsToRun()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/mobgame/model/giftimage/GifData;->secondsToRun:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/mobgame/model/giftimage/GifData;->startTime:J

    return-wide v0
.end method

.method public setImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mobgame/model/giftimage/ImageData;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/mobgame/model/giftimage/GifData;->images:Ljava/util/ArrayList;

    return-void
.end method

.method public setMilisecondsToRefesh(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/mobgame/model/giftimage/GifData;->milisecondsToRefesh:J

    return-void
.end method

.method public setSecondsToRun(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/mobgame/model/giftimage/GifData;->secondsToRun:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/mobgame/model/giftimage/GifData;->startTime:J

    return-void
.end method
