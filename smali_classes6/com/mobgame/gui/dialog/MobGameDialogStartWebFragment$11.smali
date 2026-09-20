.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->setKeyboardListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final r:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Landroid/view/View;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->r:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 808
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    .line 809
    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$900(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 812
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->val$activityRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 813
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1002(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;I)I

    .line 814
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 815
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    .line 816
    invoke-static {v3}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 815
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 817
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1000(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result v1

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 819
    :goto_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1100(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "Keyboard state"

    const-string v1, "Ignoring global layout change..."

    .line 820
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1102(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Z)Z

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHeightKeyBoard("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$1200(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 832
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v1

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11$1;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;)V

    invoke-virtual {v1, v0, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 844
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeKeyBoard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11$2;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11$2;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$11;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    :goto_1
    return-void
.end method
