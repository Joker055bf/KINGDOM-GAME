.class Lcom/game/sdk/comon/game/GameSdk$2$3;
.super Ljava/lang/Object;
.source "GameSdk.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/ILoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/GameSdk$2;->success(Ljava/lang/Object;)V
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

    .line 149
    iput-object p1, p0, Lcom/game/sdk/comon/game/GameSdk$2$3;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2$3;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2$3;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-interface {v0}, Lcom/game/sdk/comon/listener/ILoginListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onLoginSuccess()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2$3;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/game/sdk/comon/game/GameSdk$2$3;->this$1:Lcom/game/sdk/comon/game/GameSdk$2;

    iget-object v0, v0, Lcom/game/sdk/comon/game/GameSdk$2;->val$listener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-interface {v0}, Lcom/game/sdk/comon/listener/ILoginListener;->onLoginSuccess()V

    :cond_0
    return-void
.end method

.method public onRegisterSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
