.class Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mImg:Landroid/widget/ImageView;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/tgs/aics/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/utils/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/tgs/aics/utils/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->mImg:Landroid/widget/ImageView;

    .line 54
    iput-object p3, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/tgs/aics/utils/ImageLoader;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lcom/tgs/aics/utils/ImageLoader;->access$000(Lcom/tgs/aics/utils/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    aget-object p1, p1, v1

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->this$0:Lcom/tgs/aics/utils/ImageLoader;

    invoke-static {v1, p1, v0}, Lcom/tgs/aics/utils/ImageLoader;->access$100(Lcom/tgs/aics/utils/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/utils/ImageLoader$ImageLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
