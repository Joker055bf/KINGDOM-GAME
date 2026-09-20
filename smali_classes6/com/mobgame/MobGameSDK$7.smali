.class Lcom/mobgame/MobGameSDK$7;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->showTextScroll(Landroid/app/Activity;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listNoti:Ljava/util/ArrayList;

.field final synthetic val$repeatCount:I


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    iput-object p2, p0, Lcom/mobgame/MobGameSDK$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mobgame/MobGameSDK$7;->val$listNoti:Ljava/util/ArrayList;

    iput p4, p0, Lcom/mobgame/MobGameSDK$7;->val$repeatCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 810
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$7;->val$activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 811
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$7;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 812
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 813
    sget v2, Lcom/mobgame/R$layout;->layout_notice:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$1402(Landroid/view/View;)Landroid/view/View;

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$1500(Lcom/mobgame/MobGameSDK;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/mobgame/R$id;->layoutNotiIngame:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v1, v2}, Lcom/mobgame/MobGameSDK;->access$1502(Lcom/mobgame/MobGameSDK;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 817
    iget-object v1, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v1}, Lcom/mobgame/MobGameSDK;->access$1500(Lcom/mobgame/MobGameSDK;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 818
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | ScreenWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Width"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/mobgame/R$id;->txt_notice:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 822
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 823
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 824
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0x4

    int-to-long v7, v3

    .line 825
    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v3}, Lcom/mobgame/MobGameSDK;->access$600(Lcom/mobgame/MobGameSDK;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 826
    iget-object v0, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->val$listNoti:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/mobgame/MobGameSDK;->access$1500(Lcom/mobgame/MobGameSDK;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-static {v0, v3, v1, v2, v4}, Lcom/mobgame/MobGameSDK;->access$1600(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V

    goto :goto_0

    .line 829
    :cond_2
    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/mobgame/MobGameSDK;->access$1702(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 830
    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mobgame/MobGameSDK;->access$1802(Lcom/mobgame/MobGameSDK;I)I

    .line 831
    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v3, v4}, Lcom/mobgame/MobGameSDK;->access$1902(Lcom/mobgame/MobGameSDK;I)I

    .line 832
    iget-object v3, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v4, p0, Lcom/mobgame/MobGameSDK$7;->val$listNoti:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/mobgame/MobGameSDK;->access$1500(Lcom/mobgame/MobGameSDK;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-static {v3, v4, v1, v2, v5}, Lcom/mobgame/MobGameSDK;->access$1600(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/graphics/Paint;Landroid/graphics/Rect;Landroid/widget/FrameLayout;)V

    .line 833
    invoke-static {}, Lcom/mobgame/MobGameSDK;->access$1400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 834
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    .line 835
    iget-object v4, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    iget-object v5, p0, Lcom/mobgame/MobGameSDK$7;->val$listNoti:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/mobgame/MobGameSDK;->access$1700(Lcom/mobgame/MobGameSDK;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/mobgame/MobGameSDK$7;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-static {v2}, Lcom/mobgame/MobGameSDK;->access$1800(Lcom/mobgame/MobGameSDK;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    int-to-float v9, v1

    iget v10, p0, Lcom/mobgame/MobGameSDK$7;->val$repeatCount:I

    invoke-static/range {v4 .. v10}, Lcom/mobgame/MobGameSDK;->access$2000(Lcom/mobgame/MobGameSDK;Ljava/util/ArrayList;Landroid/widget/TextView;JFI)V

    :goto_0
    return-void
.end method
