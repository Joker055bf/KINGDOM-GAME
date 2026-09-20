.class Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;
.super Ljava/lang/Object;
.source "RecyclerViewTouchHelper.java"

# interfaces
.implements Lcom/ypx/imagepicker/widget/TouchRecyclerView$onDragScrollListener;


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

    .line 127
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollDown(I)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    .line 144
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1002(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z

    :cond_1
    return-void
.end method

.method public onScrollOverTop(I)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$402(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z

    return-void
.end method

.method public onScrollUp()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$602(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)I

    .line 151
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$400(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1200(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->transitTopWithAnim(ZIZ)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$900(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$1300(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)V

    .line 161
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$3;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$402(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;Z)Z

    return-void
.end method
