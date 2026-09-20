.class Lcom/game/sdk/ui/register/RegistryFragmentV2$1;
.super Ljava/lang/Object;
.source "RegistryFragmentV2.java"

# interfaces
.implements Lcom/game/sdk/comon/js/JsRegister$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/register/RegistryFragmentV2;->getJsHandler()Lcom/game/sdk/comon/js/JsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/register/RegistryFragmentV2;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;->this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackToWindowns()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;->this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;

    invoke-virtual {v0}, Lcom/game/sdk/ui/register/RegistryFragmentV2;->goBack()V

    return-void
.end method

.method public onCloseWindow()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;->this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;

    invoke-virtual {v0}, Lcom/game/sdk/ui/register/RegistryFragmentV2;->dismiss()V

    return-void
.end method

.method public onOpenWindow()V
    .locals 0

    return-void
.end method

.method public onRegisterSuccess(Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;->this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;

    iget-object v0, v0, Lcom/game/sdk/ui/register/RegistryFragmentV2;->registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/register/RegistryFragmentV2$1;->this$0:Lcom/game/sdk/ui/register/RegistryFragmentV2;

    iget-object v0, v0, Lcom/game/sdk/ui/register/RegistryFragmentV2;->registerListener:Lcom/game/sdk/comon/listener/ILoginListener;

    invoke-interface {v0, p1}, Lcom/game/sdk/comon/listener/ILoginListener;->onRegisterSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
