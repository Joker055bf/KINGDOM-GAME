.class Lcom/game/sdk/comon/game/LifeCycleActivity$1;
.super Ljava/lang/Object;
.source "LifeCycleActivity.java"

# interfaces
.implements Lcom/game/sdk/comon/utils/DialogUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/LifeCycleActivity;->error(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/LifeCycleActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/game/sdk/comon/game/LifeCycleActivity$1;->this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/game/sdk/comon/game/LifeCycleActivity$1;->this$0:Lcom/game/sdk/comon/game/LifeCycleActivity;

    invoke-virtual {v0}, Lcom/game/sdk/comon/game/LifeCycleActivity;->onResume()V

    return-void
.end method
