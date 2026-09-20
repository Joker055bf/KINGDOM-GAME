.class Lcom/mobgame/MobGameSDK$10$1;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/MobGameSDK$10;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK$10;)V
    .locals 0

    .line 970
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$10$1;->this$1:Lcom/mobgame/MobGameSDK$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 973
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_hide_float_button"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/mobgame/utils/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    .line 974
    invoke-static {p1}, Lcom/game/sdk/comon/utils/Utils;->isDashboardEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 975
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    const-string v0, "shared_pref_show_dashboard"

    invoke-static {p1, v0}, Lcom/mobgame/utils/Preference;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
