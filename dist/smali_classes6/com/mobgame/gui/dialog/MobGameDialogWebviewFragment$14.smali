.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->setKeyboardListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final r:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Landroid/view/View;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    iput-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->r:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 953
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    .line 954
    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1500(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 957
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->val$activityRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->r:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 958
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1602(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 959
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 960
    iget-object v3, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    .line 961
    invoke-static {v3}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 960
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 962
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

    move-result v1

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 964
    :goto_0
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1700(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "Keyboard state"

    const-string v1, "Ignoring global layout change..."

    .line 965
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1702(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Z)Z

    if-eqz v0, :cond_2

    .line 972
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getHeightKeyBoard("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$1800(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    iget-object v1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v1

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14$1;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;)V

    invoke-virtual {v1, v0, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 989
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeKeyBoard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    new-instance v2, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14$2;

    invoke-direct {v2, p0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14$2;-><init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$14;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobgame/gui/MobGameWebViewDetail;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    :goto_1
    return-void
.end method
