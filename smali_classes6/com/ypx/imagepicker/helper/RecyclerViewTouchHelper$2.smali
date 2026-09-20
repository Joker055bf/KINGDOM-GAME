.class Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->build()Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 79
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$300(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p1

    .line 83
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p2

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iget-object v1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_4

    .line 84
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$600(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    if-nez p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2, p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$602(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)I

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$600(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 88
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 89
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    .line 90
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 91
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$800(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    goto :goto_0

    :cond_2
    if-gtz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1, p3}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    .line 95
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    neg-int p1, p1

    int-to-float p1, p1

    mul-float p2, p1, v0

    .line 97
    iget-object p3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p3}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    div-float/2addr p2, p3

    .line 98
    iget-object p3, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p3, p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    .line 99
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void

    .line 104
    :cond_4
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$900(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 105
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1002(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z

    .line 106
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2, p3}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    .line 109
    :cond_5
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p2

    if-eqz p2, :cond_8

    neg-int p1, p1

    .line 110
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 111
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    neg-int p2, p2

    if-gt p1, p2, :cond_6

    .line 112
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$500(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 113
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$800(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    .line 114
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1002(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z

    goto :goto_2

    :cond_6
    const/16 p2, -0x14

    if-lt p1, p2, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    .line 119
    :goto_1
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p1

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 120
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    mul-float/2addr p1, v0

    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    div-float/2addr p1, p2

    .line 121
    iget-object p2, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$2;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p2, p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$700(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;F)V

    :cond_8
    :goto_2
    return-void
.end method
