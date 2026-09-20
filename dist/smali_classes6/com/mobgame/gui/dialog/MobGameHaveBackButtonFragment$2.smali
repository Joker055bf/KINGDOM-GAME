.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$2;
.super Ljava/lang/Object;
.source "MobGameHaveBackButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->initHeaderBar()V
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

    .line 147
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$2;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->onBackPressed()V

    return-void
.end method
