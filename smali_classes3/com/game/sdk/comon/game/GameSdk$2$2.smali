.class Lcom/game/sdk/comon/game/GameSdk$2$2;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk$2;->hideProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/comon/game/GameSdk$2;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/GameSdk$2;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2$2;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2$2;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V

    return-void
.end method
