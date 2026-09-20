.class Lcom/mobgame/gui/view/MobAutoScrollTextView$2;
.super Landroid/os/CountDownTimer;
.source "MobAutoScrollTextView.java"


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

.field final synthetic val$listText:Ljava/util/ArrayList;

.field final synthetic val$onTextViewScrollListener:Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lcom/mobgame/gui/view/MobAutoScrollTextView;JJLcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    iput-object p6, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$onTextViewScrollListener:Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;

    iput-object p7, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$listText:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$reverse:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$onTextViewScrollListener:Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;

    invoke-interface {v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;->onTextViewScrollFinished()V

    .line 134
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-virtual {v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->removeAllViews()V

    .line 135
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$002(Lcom/mobgame/gui/view/MobAutoScrollTextView;I)I

    return-void
.end method

.method public onTick(J)V
    .locals 2

    const-string p1, "onTick: "

    .line 122
    :try_start_0
    iget-object p2, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$onTextViewScrollListener:Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;

    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$listText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-static {v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$000(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$reverse:Z

    invoke-interface {p2, v0, v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView$OnTextViewScrollListener;->onTextViewScroll(Ljava/lang/String;Z)V

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    iget-object v0, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$listText:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$000(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->val$listText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-static {v1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$000(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/mobgame/gui/view/MobAutoScrollTextView$2;->this$0:Lcom/mobgame/gui/view/MobAutoScrollTextView;

    invoke-static {p1}, Lcom/mobgame/gui/view/MobAutoScrollTextView;->access$008(Lcom/mobgame/gui/view/MobAutoScrollTextView;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
