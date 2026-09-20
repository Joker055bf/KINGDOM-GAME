.class Lcom/game/sdk/comon/view/CustomFloatView$1;
.super Landroid/os/CountDownTimer;
.source "CustomFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/view/CustomFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/view/CustomFloatView;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/view/CustomFloatView;JJ)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$1;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView$1;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {v0}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView$1;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {v0}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/view/CustomFloatView$1;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {v0}, Lcom/game/sdk/comon/view/CustomFloatView;->access$100(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
