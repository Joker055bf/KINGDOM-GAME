.class Lcom/mobgame/gui/view/MobSwipRefreshLayout$1;
.super Ljava/lang/Object;
.source "MobSwipRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/view/MobSwipRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/view/MobSwipRefreshLayout;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/view/MobSwipRefreshLayout;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout$1;->this$0:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/mobgame/gui/view/MobSwipRefreshLayout$1;->this$0:Lcom/mobgame/gui/view/MobSwipRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobgame/gui/view/MobSwipRefreshLayout;->access$001(Lcom/mobgame/gui/view/MobSwipRefreshLayout;Z)V

    return-void
.end method
