.class Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;
.super Ljava/lang/Object;
.source "MediaItemsDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/data/MediaItemsDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v0}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$000(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 113
    :cond_0
    new-instance v3, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {v3}, Lcom/ypx/imagepicker/bean/ImageItem;-><init>()V

    .line 115
    :try_start_0
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "_id"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$200(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->id:J

    .line 116
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "mime_type"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$300(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    .line 117
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "_display_name"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$300(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->displayName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :try_start_1
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "_data"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$300(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ypx/imagepicker/bean/ImageItem;->setUriPath(Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v6, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 137
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    .line 140
    :cond_3
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "width"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$400(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    .line 141
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "height"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$400(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 142
    iget-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Lcom/ypx/imagepicker/bean/MimeType;->isVideo(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/ypx/imagepicker/bean/ImageItem;->setVideo(Z)V

    .line 143
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "date_modified"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$200(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->time:J

    .line 144
    iget-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->time:J

    invoke-static {v0, v5, v6}, Lcom/ypx/imagepicker/utils/PDateUtil;->getStrTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->timeFormat:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    iget-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v6

    const-string v7, "duration"

    invoke-static {v5, v6, v7}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$200(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    .line 157
    iget-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    goto :goto_1

    .line 160
    :cond_5
    iget-wide v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->duration:J

    invoke-static {v5, v6}, Lcom/ypx/imagepicker/utils/PDateUtil;->getVideoDuration(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->durationFormat:Ljava/lang/String;

    .line 163
    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$500(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/bean/ImageSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ypx/imagepicker/bean/ImageSet;->isAllMedia()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 164
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_6
    iget v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    if-eqz v5, :cond_7

    iget v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    if-nez v5, :cond_8

    .line 171
    :cond_7
    invoke-virtual {v3}, Lcom/ypx/imagepicker/bean/ImageItem;->isUriPath()Z

    move-result v5

    if-nez v5, :cond_8

    .line 172
    iget-object v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/ypx/imagepicker/utils/PBitmapUtils;->getImageWidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 173
    aget v6, v5, v4

    iput v6, v3, Lcom/ypx/imagepicker/bean/ImageItem;->width:I

    const/4 v6, 0x1

    .line 174
    aget v5, v5, v6

    iput v5, v3, Lcom/ypx/imagepicker/bean/ImageItem;->height:I

    .line 179
    :cond_8
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$600(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Lcom/ypx/imagepicker/data/MediaItemsDataSource$MediaItemPreloadProvider;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v5}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$700(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)I

    move-result v5

    if-ne v3, v5, :cond_9

    .line 182
    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3, v0, v1}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$800(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    .line 184
    :catch_1
    :cond_9
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$100(Lcom/ypx/imagepicker/data/MediaItemsDataSource;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 189
    new-instance v3, Lcom/ypx/imagepicker/bean/ImageSet;

    invoke-direct {v3}, Lcom/ypx/imagepicker/bean/ImageSet;-><init>()V

    const-string v5, "-2"

    .line 190
    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageSet;->id:Ljava/lang/String;

    .line 191
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v5, v5, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    iput-object v5, v3, Lcom/ypx/imagepicker/bean/ImageSet;->coverPath:Ljava/lang/String;

    .line 192
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ypx/imagepicker/bean/ImageItem;

    iput-object v4, v3, Lcom/ypx/imagepicker/bean/ImageSet;->cover:Lcom/ypx/imagepicker/bean/ImageItem;

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Lcom/ypx/imagepicker/bean/ImageSet;->count:I

    .line 194
    iput-object v2, v3, Lcom/ypx/imagepicker/bean/ImageSet;->imageItems:Ljava/util/ArrayList;

    .line 195
    sget v2, Lcom/ypx/imagepicker/R$string;->picker_str_folder_item_video:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ypx/imagepicker/bean/ImageSet;->name:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    .line 198
    :goto_2
    iget-object v2, p0, Lcom/ypx/imagepicker/data/MediaItemsDataSource$1;->this$0:Lcom/ypx/imagepicker/data/MediaItemsDataSource;

    invoke-static {v2, v0, v1, v3}, Lcom/ypx/imagepicker/data/MediaItemsDataSource;->access$900(Lcom/ypx/imagepicker/data/MediaItemsDataSource;Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/ImageSet;)V

    return-void
.end method
