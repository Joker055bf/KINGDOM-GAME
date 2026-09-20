.class Lcom/mobgame/gui/view/MobAutoScrollTextView$1;
.super Ljava/lang/Object;
.source "MobAutoScrollTextView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/view/MobAutoScrollTextView;->startAutoScroll(Ljava/util/ArrayList;JZZLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/view/MobAutoScrollTextView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$1;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 4

    .line 99
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$1;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-virtual {v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, -0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method
