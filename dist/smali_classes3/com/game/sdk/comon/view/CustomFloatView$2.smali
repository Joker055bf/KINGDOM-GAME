.class Lcom/game/sdk/comon/view/CustomFloatView$2;
.super Ljava/lang/Object;
.source "CustomFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/view/CustomFloatView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/game/sdk/comon/view/CustomFloatView;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/view/CustomFloatView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    return v3

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object p1, p1, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialX:I

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialTouchX:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 138
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object p1, p1, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialY:I

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialTouchY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 140
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$600(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {v2}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object v4, v4, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v2, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$700(Lcom/game/sdk/comon/view/CustomFloatView;)Lcom/game/sdk/comon/object/SdkConfigObj$Ex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->isNeverHide()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/game/sdk/comon/view/CustomFloatView;->access$400(Lcom/game/sdk/comon/view/CustomFloatView;FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$800(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/mobgame/R$drawable;->float_hide_active:I

    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 147
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$800(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x27

    const/16 v1, 0x2d

    const/16 v2, 0xc2

    invoke-static {v2, p2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$800(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/mobgame/R$drawable;->float_hide_normal:I

    invoke-virtual {p1, v3, p2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 150
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$800(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0xff

    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return v0

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 120
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$100(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 121
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$300(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object v2, v2, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v3, "last_x"

    invoke-static {p1, v3, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 123
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$300(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object v2, v2, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v4, "last_y"

    invoke-static {p1, v4, v2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 124
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, v2, p2}, Lcom/game/sdk/comon/view/CustomFloatView;->access$400(Lcom/game/sdk/comon/view/CustomFloatView;FF)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 125
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$000(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 128
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$200(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$300(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p2}, Lcom/game/sdk/comon/view/CustomFloatView;->access$500(Lcom/game/sdk/comon/view/CustomFloatView;)I

    move-result p2

    invoke-static {p1, v3, p2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$300(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p2}, Lcom/game/sdk/comon/view/CustomFloatView;->access$500(Lcom/game/sdk/comon/view/CustomFloatView;)I

    move-result p2

    invoke-static {p1, v4, p2}, Lcom/game/sdk/comon/sharePref/PrefManager;->saveInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 131
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/game/sdk/comon/config/GameConfigs;->setRemoveLogo(Z)V

    :cond_6
    return v0

    .line 112
    :cond_7
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    invoke-static {p1}, Lcom/game/sdk/comon/view/CustomFloatView;->access$100(Lcom/game/sdk/comon/view/CustomFloatView;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 113
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object p1, p1, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialX:I

    .line 114
    iget-object p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->this$0:Lcom/game/sdk/comon/view/CustomFloatView;

    iget-object p1, p1, Lcom/game/sdk/comon/view/CustomFloatView;->params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialY:I

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialTouchX:F

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/game/sdk/comon/view/CustomFloatView$2;->initialTouchY:F

    return v0
.end method
