.class Lcom/mobgame/MobGameSDK$9$2;
.super Ljava/lang/Object;
.source "MobGameSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/MobGameSDK$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/MobGameSDK$9;


# direct methods
.method constructor <init>(Lcom/mobgame/MobGameSDK$9;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/mobgame/MobGameSDK$9$2;->this$1:Lcom/mobgame/MobGameSDK$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 932
    sget-object p1, Lcom/mobgame/MobGameSDK;->activity:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mobgame/MobGameSDK$9$2;->this$1:Lcom/mobgame/MobGameSDK$9;

    iget-object v0, v0, Lcom/mobgame/MobGameSDK$9;->val$itemNoti:Lcom/game/sdk/comon/object/MessInGameObj;

    invoke-virtual {v0}, Lcom/game/sdk/comon/object/MessInGameObj;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
