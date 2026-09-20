.class Lcom/mobgame/utils/GifHelper$2;
.super Ljava/lang/Object;
.source "GifHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/utils/GifHelper;->runGif(Landroid/content/Context;JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageDatas:Ljava/util/ArrayList;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/mobgame/utils/GifHelper$2;->val$now:J

    iput-object p3, p0, Lcom/mobgame/utils/GifHelper$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/mobgame/utils/GifHelper$2;->val$imageDatas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/mobgame/utils/GifHelper$2;->val$now:J

    sub-long/2addr v0, v2

    .line 70
    invoke-static {}, Lcom/mobgame/utils/GifHelper;->access$100()Lcom/mobgame/model/giftimage/GifData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobgame/model/giftimage/GifData;->getSecondsToRun()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mobgame/utils/GifHelper$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobgame/utils/GifHelper$2;->val$imageDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobgame/model/giftimage/ImageData;

    invoke-static {v0, v2, v1}, Lcom/mobgame/utils/GifHelper;->access$200(Landroid/content/Context;Lcom/mobgame/model/giftimage/ImageData;Z)V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mobgame/utils/GifHelper$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobgame/utils/GifHelper$2;->val$imageDatas:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mobgame/utils/GifHelper;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobgame/model/giftimage/ImageData;

    invoke-virtual {v3}, Lcom/mobgame/model/giftimage/ImageData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/mobgame/utils/GifHelper;->access$400(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    invoke-static {}, Lcom/mobgame/utils/GifHelper;->access$300()I

    move-result v0

    iget-object v3, p0, Lcom/mobgame/utils/GifHelper$2;->val$imageDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    .line 77
    invoke-static {}, Lcom/mobgame/utils/GifHelper;->access$308()I

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v2}, Lcom/mobgame/utils/GifHelper;->access$302(I)I

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/mobgame/utils/GifHelper$2;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/mobgame/utils/GifHelper$2;->val$now:J

    iget-object v3, p0, Lcom/mobgame/utils/GifHelper$2;->val$imageDatas:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/mobgame/utils/GifHelper;->access$500(Landroid/content/Context;JLjava/util/ArrayList;)V

    return-void
.end method
