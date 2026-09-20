.class public final Lcom/t4f/anim/view/AnimViewFactory;
.super Ljava/lang/Object;
.source "AnimViewFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lcom/t4f/anim/view/IAnimView$MediaType;)Lcom/t4f/anim/view/IAnimView;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcom/t4f/anim/view/AnimViewFactory$1;->$SwitchMap$com$t4f$anim$view$IAnimView$MediaType:[I

    invoke-virtual {p1}, Lcom/t4f/anim/view/IAnimView$MediaType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    return-object v0

    .line 30
    :cond_1
    new-instance p1, Lcom/t4f/anim/view/CropVideoView;

    invoke-direct {p1, p0}, Lcom/t4f/anim/view/CropVideoView;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 28
    :cond_2
    new-instance p1, Lcom/t4f/anim/view/GifImageView;

    invoke-direct {p1, p0}, Lcom/t4f/anim/view/GifImageView;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method
