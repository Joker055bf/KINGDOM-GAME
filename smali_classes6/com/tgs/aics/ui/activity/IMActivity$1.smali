.class Lcom/tgs/aics/ui/activity/IMActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "IMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/IMActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/IMActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/IMActivity;Z)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/IMActivity$1;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$1;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/IMActivity;->access$000(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$1;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/IMActivity;->access$000(Lcom/tgs/aics/ui/activity/IMActivity;)Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tgs/aics/emotionkeyboard/EmotionKeyboard;->interceptBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 155
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->getMessageListener:Lcom/tgs/aics/listener/IGetMessageListener;

    .line 157
    :cond_1
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashMessageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const-string v0, ""

    .line 160
    sput-object v0, Lcom/tgs/aics/utils/ConstantUtil;->tmpStashFormMessageId:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$1;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    iget-object v1, v0, Lcom/tgs/aics/ui/activity/IMActivity;->messageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/IMActivity$1;->this$0:Lcom/tgs/aics/ui/activity/IMActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/IMActivity;->finish()V

    return-void
.end method
