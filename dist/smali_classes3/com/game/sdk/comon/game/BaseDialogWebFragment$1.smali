.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$1;
.super Ljava/lang/Object;
.source "BaseDialogWebFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$1;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-static {}, Lcom/game/sdk/comon/config/GameConfigs;->getInstance()Lcom/game/sdk/comon/config/GameConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/config/GameConfigs;->getSdkConfig()Lcom/game/sdk/comon/object/SdkConfigObj;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 156
    sput-boolean p1, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->isShowLogo:Z

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$1;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-virtual {p1}, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->dismiss()V

    return-void
.end method
