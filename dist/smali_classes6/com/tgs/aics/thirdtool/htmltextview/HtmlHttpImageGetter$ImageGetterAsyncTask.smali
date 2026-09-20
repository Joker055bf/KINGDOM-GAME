.class Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "HtmlHttpImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageGetterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private compressImage:Z

.field private final containerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final drawableReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final imageGetterReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;",
            ">;"
        }
    .end annotation
.end field

.field private matchParentWidth:Z

.field private qualityImage:I

.field private final resources:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private scale:F

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;Landroid/view/View;ZZI)V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    const/16 v0, 0x32

    .line 118
    iput v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->drawableReference:Ljava/lang/ref/WeakReference;

    .line 123
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    .line 124
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    .line 125
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    .line 126
    iput-boolean p4, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->matchParentWidth:Z

    .line 127
    iput-boolean p5, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    .line 128
    iput p6, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_0
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;->access$100(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 244
    invoke-static {v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;->access$100(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method private getScale(Landroid/graphics/Bitmap;)F
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method private getScale(Landroid/graphics/drawable/Drawable;)F
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->containerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 227
    iget-boolean v1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->matchParentWidth:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 133
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    iget-boolean p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->compressImage:Z

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetchCompressedDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->resources:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public fetchCompressedDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 192
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 193
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->qualityImage:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 200
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 201
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 203
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->getScale(Landroid/graphics/Bitmap;)F

    move-result v0

    iput v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    .line 204
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 206
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fetchDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 177
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 178
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->getScale(Landroid/graphics/drawable/Drawable;)F

    move-result p1

    iput p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    .line 180
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Drawable result is null! (source: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HtmlTextView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->drawableReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;

    if-nez v0, :cond_1

    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;->setBounds(IIII)V

    .line 160
    iput-object p1, v0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->imageGetterReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;

    if-nez p1, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;->access$000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 169
    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;->access$000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;->access$000(Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/htmltextview/HtmlHttpImageGetter$ImageGetterAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
