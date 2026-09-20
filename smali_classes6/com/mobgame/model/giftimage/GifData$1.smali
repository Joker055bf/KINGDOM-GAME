.class Lcom/mobgame/model/giftimage/GifData$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "GifData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/model/giftimage/GifData;->fetchFrameImages(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData$FetchDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/model/giftimage/GifData;

.field final synthetic val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

.field final synthetic val$imageSize:I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/mobgame/model/giftimage/GifData;ILcom/mobgame/model/giftimage/GifData$FetchDataListener;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    iput p2, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$imageSize:I

    iput-object p3, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

    iput p4, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$index:I

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

    if-eqz p1, :cond_0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Load image fail!  - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    .line 80
    invoke-static {v0}, Lcom/mobgame/model/giftimage/GifData;->access$300(Lcom/mobgame/model/giftimage/GifData;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobgame/model/giftimage/ImageData;

    invoke-virtual {v0}, Lcom/mobgame/model/giftimage/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

    invoke-interface {v0, p1}, Lcom/mobgame/model/giftimage/GifData$FetchDataListener;->fail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    invoke-static {p1}, Lcom/mobgame/model/giftimage/GifData;->access$000(Lcom/mobgame/model/giftimage/GifData;)V

    .line 65
    iget-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    invoke-static {p1}, Lcom/mobgame/model/giftimage/GifData;->access$100(Lcom/mobgame/model/giftimage/GifData;)I

    move-result p1

    iget p2, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$imageSize:I

    if-ne p1, p2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    invoke-static {p1}, Lcom/mobgame/model/giftimage/GifData;->access$200(Lcom/mobgame/model/giftimage/GifData;)V

    .line 67
    iget-object p1, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

    if-eqz p1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/mobgame/model/giftimage/GifData$1;->this$0:Lcom/mobgame/model/giftimage/GifData;

    invoke-interface {p1, p2}, Lcom/mobgame/model/giftimage/GifData$FetchDataListener;->done(Lcom/mobgame/model/giftimage/GifData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/mobgame/model/giftimage/GifData$1;->val$fetchDataListener:Lcom/mobgame/model/giftimage/GifData$FetchDataListener;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mobgame/model/giftimage/GifData$FetchDataListener;->fail(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 59
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mobgame/model/giftimage/GifData$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
