.class public final Lcom/game/sdk/comon/js/command/CmdLogin;
.super Ljava/lang/Object;
.source "CmdLogin.java"


# static fields
.field private static INSTANCE:Lcom/game/sdk/comon/js/command/CmdLogin; = null

.field private static final TAG:Ljava/lang/String; = "CmdLogin"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game/sdk/comon/js/command/CmdLogin;
    .locals 1

    .line 32
    sget-object v0, Lcom/game/sdk/comon/js/command/CmdLogin;->INSTANCE:Lcom/game/sdk/comon/js/command/CmdLogin;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/game/sdk/comon/js/command/CmdLogin;

    invoke-direct {v0}, Lcom/game/sdk/comon/js/command/CmdLogin;-><init>()V

    sput-object v0, Lcom/game/sdk/comon/js/command/CmdLogin;->INSTANCE:Lcom/game/sdk/comon/js/command/CmdLogin;

    .line 35
    :cond_0
    sget-object v0, Lcom/game/sdk/comon/js/command/CmdLogin;->INSTANCE:Lcom/game/sdk/comon/js/command/CmdLogin;

    return-object v0
.end method

.method private handleException(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/game/sdk/comon/js/command/CmdLogin$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/game/sdk/comon/js/command/CmdLogin$1;-><init>(Lcom/game/sdk/comon/js/command/CmdLogin;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public mobUpgradeFacebook(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
