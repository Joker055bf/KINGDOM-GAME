.class Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$1;
.super Ljava/lang/Object;
.source "RecyclerViewTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 68
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$1;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper$1;->this$0:Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;

    invoke-static {v0}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$000(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;->access$100(Lcom/ypx/imagepicker/helper/RecyclerViewTouchHelper;I)V

    return-void
.end method
