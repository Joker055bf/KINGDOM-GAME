.class public Lcom/mobgame/model/giftimage/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private bitmapData:Landroid/graphics/Bitmap;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/mobgame/model/giftimage/ImageData;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mobgame/model/giftimage/ImageData;->url:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/mobgame/model/giftimage/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmapData()Landroid/graphics/Bitmap;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mobgame/model/giftimage/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mobgame/model/giftimage/ImageData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmapData(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mobgame/model/giftimage/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/mobgame/model/giftimage/ImageData;->url:Ljava/lang/String;

    return-void
.end method
