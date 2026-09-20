.class Lcom/t4ftgs/channel/global/ui/LoginSelection$1;
.super Ljava/util/TimerTask;
.source "LoginSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4ftgs/channel/global/ui/LoginSelection;->startGetCodeCountDown(Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gameId:Ljava/lang/String;

.field final synthetic val$getCodeBtn:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$O3cIPtvm2NfpLXcXQ_FVRCZVw4M(Lcom/t4ftgs/channel/global/ui/LoginSelection$1;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->lambda$run$0(Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/t4ftgs/channel/global/ui/LoginSelection;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    iput-object p2, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$getCodeBtn:Landroid/widget/Button;

    iput-object p4, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$gameId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 3

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fgetcount(Lcom/t4ftgs/channel/global/ui/LoginSelection;)I

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fgettimer(Lcom/t4ftgs/channel/global/ui/LoginSelection;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {v0}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fgettimer(Lcom/t4ftgs/channel/global/ui/LoginSelection;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 538
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fputtimer(Lcom/t4ftgs/channel/global/ui/LoginSelection;Ljava/util/Timer;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fputcount(Lcom/t4ftgs/channel/global/ui/LoginSelection;I)V

    .line 543
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {v0, p1, p2, p3}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$mresetGetCodeButtonStyle(Lcom/t4ftgs/channel/global/ui/LoginSelection;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V

    return-void

    .line 547
    :cond_1
    sget p3, Lcom/t4f/channel/global/R$string;->get_code_after_seconds:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {v1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fgetcount(Lcom/t4ftgs/channel/global/ui/LoginSelection;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object p1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->this$0:Lcom/t4ftgs/channel/global/ui/LoginSelection;

    invoke-static {p1}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fgetcount(Lcom/t4ftgs/channel/global/ui/LoginSelection;)I

    move-result p2

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/t4ftgs/channel/global/ui/LoginSelection;->-$$Nest$fputcount(Lcom/t4ftgs/channel/global/ui/LoginSelection;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$getCodeBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/t4ftgs/channel/global/ui/LoginSelection$1;->val$gameId:Ljava/lang/String;

    new-instance v3, Lcom/t4ftgs/channel/global/ui/LoginSelection$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/t4ftgs/channel/global/ui/LoginSelection$1$$ExternalSyntheticLambda0;-><init>(Lcom/t4ftgs/channel/global/ui/LoginSelection$1;Landroid/app/Activity;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
