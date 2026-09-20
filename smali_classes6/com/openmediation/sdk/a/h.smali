.class public final Lcom/openmediation/sdk/a/h;
.super Lcom/crosspromotion/sdk/core/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private k:Z

.field private l:Lcom/crosspromotion/sdk/nativead/Ad;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crosspromotion/sdk/core/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdMark()Lcom/crosspromotion/sdk/bean/AdMark;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdMark;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdMark;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdMark;->getLink()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/crosspromotion/sdk/bean/AdMark;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/crosspromotion/sdk/utils/Cache;->existCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/openmediation/sdk/a/h;->a(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2, v1}, Lcom/openmediation/sdk/a/h;->a(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, p1, v2, v1}, Lcom/openmediation/sdk/a/h;->a(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/openmediation/sdk/a/a;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/openmediation/sdk/a/a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 p2, -0x2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/openmediation/sdk/nativead/NativeAdView;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getMediaView()Lcom/openmediation/sdk/nativead/MediaView;

    move-result-object v0

    iget-object v2, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/nativead/Ad;->getContent()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/nativead/Ad;->getContent()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getAdIconView()Lcom/openmediation/sdk/nativead/AdIconView;

    move-result-object v0

    iget-object v2, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/nativead/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {v0}, Lcom/crosspromotion/sdk/nativead/Ad;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/openmediation/sdk/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/h;->a(Landroid/view/ViewGroup;)V

    return-void

    :cond_4
    :goto_0
    const/16 p1, 0x132

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->a(Lcom/crosspromotion/sdk/bean/AdBean;)V

    :try_start_0
    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getMainimgUrl()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xd8

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/utils/IOUtil;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/crosspromotion/sdk/utils/ImageUtils;->getBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/bean/AdBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/crosspromotion/sdk/utils/Cache;->getCacheFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/ImageUtils;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    invoke-direct {v1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;-><init>()V

    iget-object v2, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v2}, Lcom/crosspromotion/sdk/bean/AdBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->title(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-virtual {v3}, Lcom/crosspromotion/sdk/bean/AdBean;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->description(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    move-result-object v2

    const-string v3, "install"

    invoke-virtual {v2, v3}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->cta(Ljava/lang/String;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->content(Landroid/graphics/Bitmap;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->icon(Landroid/graphics/Bitmap;)Lcom/crosspromotion/sdk/nativead/Ad$Builder;

    invoke-virtual {v1}, Lcom/crosspromotion/sdk/nativead/Ad$Builder;->build()Lcom/crosspromotion/sdk/nativead/Ad;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {p0}, Lcom/openmediation/sdk/a/h;->c()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 v0, 0xd4

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->c(Lcom/crosspromotion/sdk/utils/error/Error;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    const-string v0, "Native"

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/a/g;->a(Lcom/crosspromotion/sdk/nativead/NativeAdListener;)V

    return-void
.end method

.method protected b(Lcom/crosspromotion/sdk/bean/AdBean;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/crosspromotion/sdk/core/a;->b(Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdBean;->getAdMark()Lcom/crosspromotion/sdk/bean/AdMark;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdMark;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/crosspromotion/sdk/bean/AdMark;->getLogo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/openmediation/sdk/a/h$a;

    invoke-direct {v0, p0, p1}, Lcom/openmediation/sdk/a/h$a;-><init>(Lcom/openmediation/sdk/a/h;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openmediation/sdk/utils/WorkExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/openmediation/sdk/nativead/NativeAdView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/a/h;->a(Lcom/openmediation/sdk/nativead/NativeAdView;)V

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected c()V
    .locals 3

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->c()V

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->d:Lcom/openmediation/sdk/a/g;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/openmediation/sdk/a/g;->a(Ljava/lang/String;Lcom/crosspromotion/sdk/nativead/Ad;)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/crosspromotion/sdk/core/a;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openmediation/sdk/a/h;->l:Lcom/crosspromotion/sdk/nativead/Ad;

    iput-object v0, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    return-void
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/openmediation/sdk/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/crosspromotion/sdk/core/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    invoke-static {p1, v0, v1}, Lcom/crosspromotion/sdk/utils/PUtils;->doClick(Landroid/content/Context;Ljava/lang/String;Lcom/crosspromotion/sdk/bean/AdBean;)V

    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->l()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-boolean p1, p0, Lcom/openmediation/sdk/a/h;->k:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/crosspromotion/sdk/core/a;->b:Lcom/crosspromotion/sdk/bean/AdBean;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/crosspromotion/sdk/core/a;->n()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/openmediation/sdk/a/h;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/16 v0, 0x133

    invoke-static {v0}, Lcom/crosspromotion/sdk/utils/error/ErrorBuilder;->build(I)Lcom/crosspromotion/sdk/utils/error/Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crosspromotion/sdk/core/a;->d(Lcom/crosspromotion/sdk/utils/error/Error;)V

    const-string v0, "native onViewAttachedToWindow "

    invoke-static {v0, p1}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/a/h;->k:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
