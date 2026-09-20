.class public abstract Lcom/ypx/imagepicker/views/base/PBaseLayout;
.super Landroid/widget/LinearLayout;
.source "PBaseLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ypx/imagepicker/views/base/PBaseLayout;->view:Landroid/view/View;

    .line 52
    invoke-virtual {p0, v0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->initView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected dp(F)I
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 57
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getScreenWidth()I
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method protected getThemeColor()I
    .locals 1

    .line 77
    invoke-static {}, Lcom/ypx/imagepicker/ImagePicker;->getThemeColor()I

    move-result v0

    return v0
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method public onBackPressed()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/ypx/imagepicker/views/base/PBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
