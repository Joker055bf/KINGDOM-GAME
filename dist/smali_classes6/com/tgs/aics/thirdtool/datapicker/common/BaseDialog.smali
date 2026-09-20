.class public abstract Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected contentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 47
    sget v0, Lcom/tgs/service/ai/R$style;->DialogTheme_Base:I

    invoke-direct {p0, p1, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->init(Landroid/app/Activity;)V

    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 3

    .line 60
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 61
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setCancelable(Z)V

    .line 68
    invoke-super {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 69
    invoke-super {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    invoke-super {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 74
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Landroid/view/Window;->setLayout(II)V

    const/16 p1, 0x11

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/Window;->setGravity(I)V

    .line 77
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->onInit(Landroid/os/Bundle;)V

    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->create()V

    return-void
.end method

.method static synthetic lambda$setOnDismissListener$1(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 242
    invoke-interface {p0, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 243
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic lambda$setOnShowListener$0(Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface;)V
    .locals 0

    .line 230
    invoke-interface {p0, p2}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 231
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private readyView()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->createContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 121
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 122
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setContentView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->initView()V

    return-void
.end method


# virtual methods
.method protected abstract createContentView()Landroid/view/View;
.end method

.method public final disableCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setCancelable(Z)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->dismissSafe()V

    return-void
.end method

.method protected dismissSafe()V
    .locals 0

    .line 277
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 287
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 288
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->initData()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object p1, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->readyView()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 298
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected onInit(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onInit(Landroid/os/Bundle;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->onInit(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 90
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle$Event;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->dismiss()V

    .line 92
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final setAnimationStyle(I)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setBackgroundColor(II)V

    return-void
.end method

.method public final setBackgroundColor(II)V
    .locals 1

    const/16 v0, 0x14

    .line 155
    invoke-virtual {p0, p1, v0, p2}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->setBackgroundColor(III)V

    return-void
.end method

.method public final setBackgroundColor(III)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    .line 163
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, p2, :cond_1

    .line 179
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 175
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v3, 0x0

    aput v0, p1, v3

    aput v0, p1, v1

    aput v0, p1, p2

    const/4 p2, 0x3

    aput v0, p1, p2

    const/4 p2, 0x4

    const/4 v0, 0x0

    aput v0, p1, p2

    const/4 p2, 0x5

    aput v0, p1, p2

    const/4 p2, 0x6

    aput v0, p1, p2

    const/4 p2, 0x7

    aput v0, p1, p2

    .line 168
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, p1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 169
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object p1, p2

    .line 182
    :goto_0
    iget-object p2, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final setDimAmount(F)V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public final setHeight(I)V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final setLayout(II)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog$$ExternalSyntheticLambda1;-><init>(Landroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnShowListener;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public final setWidth(I)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/tgs/aics/thirdtool/datapicker/common/BaseDialog;->showSafe()V

    return-void
.end method

.method protected showSafe()V
    .locals 0

    .line 258
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
