.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$1;
.super Ljava/lang/Object;
.source "MobGameHaveBackButtonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 126
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 127
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$1;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->onBackPressed()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
