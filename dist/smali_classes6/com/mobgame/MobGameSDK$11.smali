.class Lcom/mobgame/MobGameSDK$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MobGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->startScrollingText(Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;

.field final synthetic val$layoutWidth:J

.field final synthetic val$listNoti:Ljava/util/ArrayList;

.field final synthetic val$repeatCount:I

.field final synthetic val$startPoint:F

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;Landroid/widget/TextView;ILjava/util/ArrayList;JF)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$11;->val$textView:Landroid/widget/TextView;

    iput p3, p0, Lcom/mobgame/MobGameSDK$11;->val$repeatCount:I

    iput-object p4, p0, Lcom/mobgame/MobGameSDK$11;->val$listNoti:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/mobgame/MobGameSDK$11;->val$layoutWidth:J

    iput p7, p0, Lcom/mobgame/MobGameSDK$11;->val$startPoint:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1030
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1032
    :try_start_0
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->val$textView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1033
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {p1}, Lcom/mobgame/MobGameSDK;->access$1900(Lcom/mobgame/MobGameSDK;)I

    move-result p1

    iget v0, p0, Lcom/mobgame/MobGameSDK$11;->val$repeatCount:I

    if-gt p1, v0, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v2, p0, Lcom/mobgame/MobGameSDK$11;->val$listNoti:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$1700(Lcom/mobgame/MobGameSDK;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$1900(Lcom/mobgame/MobGameSDK;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/mobgame/MobGameSDK$11;->val$layoutWidth:J

    iget v6, p0, Lcom/mobgame/MobGameSDK$11;->val$startPoint:F

    iget v7, p0, Lcom/mobgame/MobGameSDK$11;->val$repeatCount:I

    invoke-static/range {v1 .. v7}, Lcom/mobgame/MobGameSDK;->access$2000(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V

    const-string p1, "Scroll"

    const-string v0, "1"

    .line 1035
    invoke-static {p1, v0}, Lcom/game/sdk/comon/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_0
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    sget-object v0, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mobgame/MobGameSDK;->hideTextScroll(Landroid/app/Activity;Z)V

    .line 1038
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->val$listNoti:Ljava/util/ArrayList;

    invoke-virtual {p1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1039
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {p1}, Lcom/mobgame/MobGameSDK;->access$1700(Lcom/mobgame/MobGameSDK;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$1700(Lcom/mobgame/MobGameSDK;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1040
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$11;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mobgame/MobGameSDK;->access$1902(Lcom/mobgame/MobGameSDK;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
