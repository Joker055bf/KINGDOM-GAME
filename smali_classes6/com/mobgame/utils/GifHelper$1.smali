.class Lcom/mobgame/utils/GifHelper$1;
.super Ljava/lang/Object;
.source "GifHelper.java"

# interfaces
.implements Lcom/mobgame/model/giftimage/GifData$FetchDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/utils/GifHelper;->fetchFramesImage(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/mobgame/utils/GifHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/mobgame/model/giftimage/GifData;)V
    .locals 2

    const-string v0, "GifHelper"

    const-string v1, "Fetch gif data done! Saving..."

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/mobgame/utils/GifHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mobgame/utils/GifHelper;->access$000(Landroid/content/Context;Lcom/mobgame/model/giftimage/GifData;)V

    .line 44
    iget-object p1, p0, Lcom/mobgame/utils/GifHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/mobgame/utils/GifHelper;->playGif(Landroid/content/Context;)V

    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetch image data error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GifHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
