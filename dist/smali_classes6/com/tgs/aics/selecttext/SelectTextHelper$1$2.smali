.class Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;
.super Ljava/lang/Object;
.source "SelectTextHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/selecttext/SelectTextHelper$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;


# direct methods
.method constructor <init>(Lcom/tgs/aics/selecttext/SelectTextHelper$1;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2000(Lcom/tgs/aics/selecttext/SelectTextHelper;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0, v1}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2002(Lcom/tgs/aics/selecttext/SelectTextHelper;Z)Z

    .line 432
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v2, v2, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2100(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2200(Lcom/tgs/aics/selecttext/SelectTextHelper;I)V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v0, v0, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2300(Lcom/tgs/aics/selecttext/SelectTextHelper;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 437
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v2, v2, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    invoke-static {v2}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$1800(Lcom/tgs/aics/selecttext/SelectTextHelper;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 438
    iget-object v2, p0, Lcom/tgs/aics/selecttext/SelectTextHelper$1$2;->this$1:Lcom/tgs/aics/selecttext/SelectTextHelper$1;

    iget-object v2, v2, Lcom/tgs/aics/selecttext/SelectTextHelper$1;->this$0:Lcom/tgs/aics/selecttext/SelectTextHelper;

    aget v0, v0, v1

    invoke-static {v2, v0}, Lcom/tgs/aics/selecttext/SelectTextHelper;->access$2302(Lcom/tgs/aics/selecttext/SelectTextHelper;I)I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
