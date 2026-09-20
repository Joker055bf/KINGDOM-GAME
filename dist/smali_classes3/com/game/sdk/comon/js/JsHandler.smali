.class public Lcom/game/sdk/comon/js/JsHandler;
.super Ljava/lang/Object;
.source "JsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/js/JsHandler$switchCommandJS;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "JsHandler"


# instance fields
.field private activity:Landroid/app/Activity;

.field private dialogStartWebFragment:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

.field private dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

.field private webDialogHaveBackButton:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

.field private webFragment:Lcom/mobgame/gui/MobGameWebFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mobgame/gui/MobGameWebFragment;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    .line 104
    iput-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->webFragment:Lcom/mobgame/gui/MobGameWebFragment;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogStartWebFragment:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->webDialogHaveBackButton:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    return-void
.end method


# virtual methods
.method public mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "mobAppSDKexecute: command = "

    .line 117
    :try_start_0
    sget-object v1, Lcom/game/sdk/comon/js/JsHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; params = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-object v0, Lcom/game/sdk/comon/js/JsHandler$1;->$SwitchMap$com$game$sdk$comon$js$JsHandler$switchCommandJS:[I

    invoke-static {p1}, Lcom/game/sdk/comon/js/JsHandler$switchCommandJS;->valueOf(Ljava/lang/String;)Lcom/game/sdk/comon/js/JsHandler$switchCommandJS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/game/sdk/comon/js/JsHandler$switchCommandJS;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 255
    :pswitch_1
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 256
    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/DeviceUtils;->coppySelectedText(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :pswitch_2
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    const-string p2, " updateSuccess Cho c\u1ea3 connect fb v\u00e0 update profile"

    invoke-static {p1, p2}, Lcom/game/sdk/comon/utils/ToastUtils;->showToDoToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_3
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdLogin;->getInstance()Lcom/game/sdk/comon/js/command/CmdLogin;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    iget-object v2, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogStartWebFragment:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/game/sdk/comon/js/command/CmdLogin;->mobUpgradeFacebook(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.mobgame.broadcast"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "category"

    const-string v0, "float_button"

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 238
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogStartWebFragment:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->dismiss()V

    goto/16 :goto_0

    .line 232
    :pswitch_5
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->dismiss()V

    goto/16 :goto_0

    .line 229
    :pswitch_6
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->setUpReminder(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :pswitch_7
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->trackingFromWeb(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :pswitch_8
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->trackingDetailWeb(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :pswitch_9
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenDialogWebView(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :pswitch_a
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenDialogWebView(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :pswitch_b
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobChooseFriend(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :pswitch_c
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobChooseFriend(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :pswitch_d
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, p2, v1}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobRefreshBugForm(Landroid/app/Activity;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    goto/16 :goto_0

    .line 199
    :pswitch_e
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, p2, v1}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobRefreshBugForm(Landroid/app/Activity;Ljava/lang/String;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V

    goto/16 :goto_0

    .line 195
    :pswitch_f
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->clearImageData(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 192
    :pswitch_10
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object p2, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->clearImageData(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 189
    :pswitch_11
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->webFragment:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->deleteImageData(Landroid/app/Activity;Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :pswitch_12
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->webFragment:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->deleteImageData(Landroid/app/Activity;Lcom/mobgame/gui/MobGameWebFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :pswitch_13
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobGetIssue(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :pswitch_14
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobGetIssue(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_15
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobSelectImage2(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :pswitch_16
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/JsHandler;->dialogWebviewFragment:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1, v0, v1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobSelectImage2(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :pswitch_17
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobCopyToClipboard(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :pswitch_18
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    iget-object p1, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobCopyToClipboard(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :pswitch_19
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobMakePhoneCall(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :pswitch_1a
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobMakePhoneCall(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :pswitch_1b
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenModal(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :pswitch_1c
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBGroup(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_1d
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBGroup(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_1e
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBFanpage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_1f
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBFanpage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_20
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_21
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_22
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobSendSMS(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_23
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobSendEmail(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_24
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenContact(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_25
    invoke-static {}, Lcom/game/sdk/comon/js/command/CmdDashboard;->getInstance()Lcom/game/sdk/comon/js/command/CmdDashboard;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenContact(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_26
    invoke-static {}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->getInstance()Lcom/game/sdk/comon/cmd/CmdPaymentV3;

    move-result-object p1

    iget-object v0, p0, Lcom/game/sdk/comon/js/JsHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lcom/game/sdk/comon/cmd/CmdPaymentV3;->mobPaymentSuccess(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
