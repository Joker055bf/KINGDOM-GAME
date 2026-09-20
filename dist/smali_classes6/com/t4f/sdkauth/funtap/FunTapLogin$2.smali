.class Lcom/t4f/sdkauth/funtap/FunTapLogin$2;
.super Ljava/lang/Object;
.source "FunTapLogin.java"

# interfaces
.implements Lcom/game/sdk/comon/listener/ILogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/sdkauth/funtap/FunTapLogin;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutSuccess()V
    .locals 3

    .line 68
    sget-object v0, Lcom/t4f/sdkauth/funtap/FunTapLogin;->mInterface:Lcom/t4f/sdkauth/funtap/FunTapInterface;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/t4f/sdkauth/funtap/FunTapInterface;->logoutCallback(ILjava/lang/String;)V

    return-void
.end method
