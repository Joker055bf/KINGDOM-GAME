.class Lcom/tgs/aics/selecttext/SelectTextHelper$1;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;


# direct methods
.method constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onLongClick$0$com-tgs-aics-selecttext-SelectTextHelper$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 447
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-virtual {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    .line 448
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onLongClick$1$com-tgs-aics-selecttext-SelectTextHelper$1()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3400(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2002(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Z

    .line 456
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;->dismiss()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->dismiss()V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$CursorHandle;->dismiss()V

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onScrolling()V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-virtual {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->reset()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 417
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$1$1;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 427
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1902(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 443
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1900(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 446
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda0;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2402(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 451
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2400(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tgs/aics/selecttext/SelectTextHelper$1$$ExternalSyntheticLambda1;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2502(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 469
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2500(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 470
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2600(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    move-result-object p1

    if-nez p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    new-instance v0, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2700(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;-><init>(Lcom/tgs/aics/selecttext/SelectTextHelper;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2602(Lcom/tgs/aics/selecttext/SelectTextHelper;Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;)Lcom/tgs/aics/selecttext/SelectTextHelper$OperateWindow;

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2900(Lcom/tgs/aics/selecttext/SelectTextHelper;)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3000(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3200(Lcom/tgs/aics/selecttext/SelectTextHelper;II)V

    .line 478
    :goto_0
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 479
    iget-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {p1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$3300(Lcom/tgs/aics/selecttext/SelectTextHelper;)Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper$OnSelectListener;->onLongClick(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
