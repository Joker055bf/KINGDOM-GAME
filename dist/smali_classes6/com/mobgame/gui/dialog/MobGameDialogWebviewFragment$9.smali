.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$9;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->handlerBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 558
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 559
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$9;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
