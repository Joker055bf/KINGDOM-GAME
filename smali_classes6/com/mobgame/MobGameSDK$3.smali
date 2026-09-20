.class Lcom/mobgame/MobGameSDK$3;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK;->showFragmentHaveBackButton(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/MobGameSDK;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$3;->this$0:Lcom/mobgame/MobGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 379
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$3;->this$0:Lcom/mobgame/MobGameSDK;

    iget-boolean p1, p1, Lcom/mobgame/MobGameSDK;->isShowSocialDialog:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_hide_float_button"

    const/4 v1, 0x1

    .line 381
    invoke-static {p1, v0, v1}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 385
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isDashboardEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_show_dashboard"

    invoke-static {p1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/mobgame/MobGameSDK$3;->this$0:Lcom/mobgame/MobGameSDK;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/mobgame/MobGameSDK;->isShowSocialDialog:Z

    return-void
.end method
